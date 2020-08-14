__luapack_modules__ = {
	(function()
		local Util = {ansi = "\x1b"}
		
		function Util.pathname(path)
			local prefix = ""
			local i = path:find("[\\/][^\\/]*$")
			if i then
				prefix = path:sub(1, i-1)
			end
			return prefix
		end
		
		function Util.containsPath(target, isDir, path)
			if path == nil then path = '.' end
			if path == '.' then path = clink.get_cwd() end
			if isDir == nil then isDir = true end
		
			local fullPath = path .. '/' .. target
			local found
		
			if isDir then
				local foundList = clink.find_dirs(fullPath)
				found = #foundList > 0
			else
				found = Util.isFile(fullPath)
			end
		
			if found then
				return fullPath
		
			else
				local parentDir = Util.pathname(path)
				if parentDir == path then return nil end
		
				return Util.containsPath(target, isDir, parentDir)
			end
		end
		
		function Util.isFile(path)
			local f = io.open(path,"r")
			if f ~= nil then
				io.close(f)
				return true
			else
				return false
			end
		end
		
		function Util.applyStyle(style)
			local styleCode = ""
		
			if style.bg ~= nil then
				styleCode = styleCode .. Util.ansi .. "[" .. (style.bg + 40) .. "m"
			end
		
			if style.fg ~= nil then
				styleCode = styleCode .. Util.ansi .. "[" .. (style.fg + 30) .. "m"
			end
		
			return styleCode
		end
		
		function Util.clearStyle()
			return Util.ansi .. "[0m"
		end
		
		function Util.splitPath(string)
			local fields = {}
			for token in string:gmatch("([^\\/]*)[\\/]*") do
				table.insert(fields, " " .. token .. " ")
			end
		
			fields[1] = fields[1]:sub(1, -1)
			fields[#fields] = ""
			return fields
		end
		
		return Util
	
	end),
	(function()
		local Util = __luapack_require__(1)
		
		local Cwd = {}
		
		function Cwd.apply(Powerline)
			local pathList = Util.splitPath(clink.get_cwd())
			if pathList[#pathList] == '' then
				table.remove(pathList)
			end
		
			return {
				fg = Powerline.Colors.lightWhite,
				bg = Powerline.Colors.green,
				value = table.concat(pathList, Powerline.Symbols.segmentcwd)
			}
		end
		
		return Cwd
	
	end),
	(function()
		local Util = __luapack_require__(1)
		
		local Git = {}
		
		function Git.apply(Powerline)
			local gitDir = Util.containsPath(".git")
			if not gitDir then return nil end
		
			local branch = Git.getBranch(gitDir)
			if not branch then return nil end
		
			local value = Powerline.Symbols.branch .. " " .. branch
		
			if Git.getStatus() then
				bg = Powerline.Colors.green
			else
				bg = Powerline.Colors.yellow
				value = value .. "±"
			end
		
			return {
				fg = Powerline.Colors.black,
				bg = bg,
				value = value
			}
		end
		
		function Git.getBranch(gitDir)
			local headFile = gitDir and io.open(gitDir .. '/HEAD')
			if not headFile then return end
		
			local head = headFile:read()
			headFile:close()
		
			local branchName = head:match('ref: refs/heads/(.+)')
			return branchName or 'HEAD detached at' .. head:sub(1, 7)
		end
		
		function Git.getStatus()
			local file = io.popen("git status --no-lock-index --porcelain 2>nul")
			for line in file:lines() do
				file:close()
				return false
			end
		
			file:close()
			return true
		end
		
		return Git
	
	end),
	(function()
		local Util = __luapack_require__(1)
		
		
		local Lambda = {}
		
		function Lambda.apply(Powerline, args)
			local value = "λ"
			local rootValue = "⚡"
			local rootCheck = 0
		
			if type(args) == "string" then
				argValue, argRoot, argRootFlag = args:match("^([^/]*)%/([^/]*)([12])")
				
				if argRoot ~= nil then
					rootCheck = tonumber(argRootFlag)
					value = argValue
					
					if #argRoot > 0 then
						rootValue = argRoot
					end
				else
					value = args
				end
			end
				
			if rootCheck ~= 0 then
				if (rootCheck == 1 and Lambda.isRoot) or (rootCheck == 2 and Lambda.checkRoot()) then
					value = rootValue
				end
			end
		
			local lastExit = clink.get_env("=ExitCode")
			if lastExit ~= nil then
				lastExit = tonumber(lastExit)
				if lastExit ~= 0 then
					value = value .. Util.applyStyle({fg = Powerline.Colors.red}) .. " ✘"
				end
			end
		
			return {
				fg = Powerline.Colors.yellow,
				bg = Powerline.Colors.black,
				value = value
			}
		end
		
		function Lambda.checkRoot()
			local isRoot = io.popen("cmd /c net.exe session 1>nul 2>nul || echo false")
			for line in isRoot:lines() do
				isRoot:close()
				return false
			end
			return true
		end
		
		Lambda.isRoot = Lambda.checkRoot();
		
		return Lambda
	
	end),
	(function()
		--[[ json.lua
		A compact pure-Lua JSON library.
		The main functions are: json.stringify, json.parse.
		## json.stringify:
		This expects the following to be true of any tables being encoded:
		 * They only have string or number keys. Number keys must be represented as
		strings in json; this is part of the json spec.
		 * They are not recursive. Such a structure cannot be specified in json.
		A Lua table is considered to be an array if and only if its set of keys is a
		consecutive sequence of positive integers starting at 1. Arrays are encoded like
		so: `[2, 3, false, "hi"]`. Any other type of Lua table is encoded as a json
		object, encoded like so: `{"key1": 2, "key2": false}`.
		Because the Lua nil value cannot be a key, and as a table value is considerd
		equivalent to a missing key, there is no way to express the json "null" value in
		a Lua table. The only way this will output "null" is if your entire input obj is
		nil itself.
		An empty Lua table, {}, could be considered either a json object or array -
		it's an ambiguous edge case. We choose to treat this as an object as it is the
		more general type.
		To be clear, none of the above considerations is a limitation of this code.
		Rather, it is what we get when we completely observe the json specification for
		as arbitrary a Lua object as json is capable of expressing.
		## json.parse:
		This function parses json, with the exception that it does not pay attention to
		\u-escaped unicode code points in strings.
		It is difficult for Lua to return null as a value. In order to prevent the loss
		of keys with a null value in a json string, this function uses the one-off
		table value json.null (which is just an empty table) to indicate null values.
		This way you can check if a value is null with the conditional
		`val == json.null`.
		If you have control over the data and are using Lua, I would recommend just
		avoiding null values in your data to begin with.
		--]]
		
		
		local json = {}
		
		
		-- Internal functions.
		
		local function kind_of(obj)
			if type(obj) ~= 'table' then return type(obj) end
			local i = 1
			for _ in pairs(obj) do
				if obj[i] ~= nil then i = i + 1 else return 'table' end
			end
			if i == 1 then return 'table' else return 'array' end
		end
		
		local function escape_str(s)
			local in_char	= {'\\', '"', '/', '\b', '\f', '\n', '\r', '\t'}
			local out_char = {'\\', '"', '/',  'b',  'f',  'n',  'r',  't' }
			for i, c in ipairs(in_char) do
				s = s:gsub(c, '\\' .. out_char[i])
			end
			return s
		end
		
		-- Returns pos, did_find; there are two cases:
		-- 1. Delimiter found: pos = pos after leading space + delim; did_find = true.
		-- 2. Delimiter not found: pos = pos after leading space;     did_find = false.
		-- This throws an error if err_if_missing is true and the delim is not found.
		local function skip_delim(str, pos, delim, err_if_missing)
			pos = pos + #str:match('^%s*', pos)
			if str:sub(pos, pos) ~= delim then
				if err_if_missing then
					error('Expected ' .. delim .. ' near position ' .. pos)
				end
				return pos, false
			end
			return pos + 1, true
		end
		
		-- Expects the given pos to be the first character after the opening quote.
		-- Returns val, pos; the returned pos is after the closing quote character.
		local function parse_str_val(str, pos, val)
			val = val or ''
			local early_end_error = 'End of input found while parsing string.'
			if pos > #str then error(early_end_error) end
			local c = str:sub(pos, pos)
			if c == '"'	then return val, pos + 1 end
			if c ~= '\\' then return parse_str_val(str, pos + 1, val .. c) end
			-- We must have a \ character.
			local esc_map = {b = '\b', f = '\f', n = '\n', r = '\r', t = '\t'}
			local nextc = str:sub(pos + 1, pos + 1)
			if not nextc then error(early_end_error) end
			return parse_str_val(str, pos + 2, val .. (esc_map[nextc] or nextc))
		end
		
		-- Returns val, pos; the returned pos is after the number's final character.
		local function parse_num_val(str, pos)
			local num_str = str:match('^-?%d+%.?%d*[eE]?[+-]?%d*', pos)
			local val = tonumber(num_str)
			if not val then error('Error parsing number at position ' .. pos .. '.') end
			return val, pos + #num_str
		end
		
		
		-- Public values and functions.
		
		function json.stringify(obj, as_key)
			local s = {}  -- We'll build the string as an array of strings to be concatenated.
			local kind = kind_of(obj)  -- This is 'array' if it's an array or type(obj) otherwise.
			if kind == 'array' then
				if as_key then error('Can\'t encode array as key.') end
				s[#s + 1] = '['
				for i, val in ipairs(obj) do
					if i > 1 then s[#s + 1] = ', ' end
					s[#s + 1] = json.stringify(val)
				end
				s[#s + 1] = ']'
			elseif kind == 'table' then
				if as_key then error('Can\'t encode table as key.') end
				s[#s + 1] = '{'
				for k, v in pairs(obj) do
					if #s > 1 then s[#s + 1] = ', ' end
					s[#s + 1] = json.stringify(k, true)
					s[#s + 1] = ':'
					s[#s + 1] = json.stringify(v)
				end
				s[#s + 1] = '}'
			elseif kind == 'string' then
				return '"' .. escape_str(obj) .. '"'
			elseif kind == 'number' then
				if as_key then return '"' .. tostring(obj) .. '"' end
				return tostring(obj)
			elseif kind == 'boolean' then
				return tostring(obj)
			elseif kind == 'nil' then
				return 'null'
			else
				error('Unjsonifiable type: ' .. kind .. '.')
			end
			return table.concat(s)
		end
		
		json.null = {}  -- This is a one-off table to represent the null value.
		
		function json.parse(str, pos, end_delim)
			pos = pos or 1
			if pos > #str then error('Reached unexpected end of input.') end
			local pos = pos + #str:match('^%s*', pos)  -- Skip whitespace.
			local first = str:sub(pos, pos)
			if first == '{' then  -- Parse an object.
				local obj, key, delim_found = {}, true, true
				pos = pos + 1
				while true do
					key, pos = json.parse(str, pos, '}')
					if key == nil then return obj, pos end
					if not delim_found then error('Comma missing between object items.') end
					pos = skip_delim(str, pos, ':', true)  -- true -> error if missing.
					obj[key], pos = json.parse(str, pos)
					pos, delim_found = skip_delim(str, pos, ',')
				end
			elseif first == '[' then  -- Parse an array.
				local arr, val, delim_found = {}, true, true
				pos = pos + 1
				while true do
					val, pos = json.parse(str, pos, ']')
					if val == nil then return arr, pos end
					if not delim_found then error('Comma missing between array items.') end
					arr[#arr + 1] = val
					pos, delim_found = skip_delim(str, pos, ',')
				end
			elseif first == '"' then  -- Parse a string.
				return parse_str_val(str, pos + 1)
			elseif first == '-' or first:match('%d') then  -- Parse a number.
				return parse_num_val(str, pos)
			elseif first == end_delim then  -- End of an object or array.
				return nil, pos + 1
			else  -- Parse true, false, or null.
				local literals = {['true'] = true, ['false'] = false, ['null'] = json.null}
				for lit_str, lit_val in pairs(literals) do
					local lit_end = pos + #lit_str - 1
					if str:sub(pos, lit_end) == lit_str then return lit_val, lit_end + 1 end
				end
				local pos_info_str = 'position ' .. pos .. ': ' .. str:sub(pos, pos + 10)
				error('Invalid json syntax starting at ' .. pos_info_str)
			end
		end
		
		return json
	
	end),
	(function()
		local json = __luapack_require__(5)
		
		local Util = __luapack_require__(1)
		
		
		local Node = {}
		
--		local version = io.popen("node -v"):read("*a")
--		version = version:sub(2, -1):gsub("\n", ""):gsub("\r", "")
--		
--		function Node.apply(Powerline)
--			local value = " " .. version
--			local nodeDir = Util.containsPath("package.json", false)
--			if nodeDir ~= nil then
--				local fd, err = io.open(nodeDir)
--		
--				if fd ~= nil then
--					local packageFile = fd:read("*a")
--					io.close(fd)
--			
--					value = value .. " " .. Powerline.Symbols.segmentSoft .. " "
--					
--					local err, parsedPackage = pcall(json.parse, packageFile)
--					
--					if not err then
--						value = value .. "Invalid Package"
--					elseif parsedPackage.name ~= nil and parsedPackage.name ~= json.null then
--						value = value .. parsedPackage.name
--					end
--				end
--			end
--		
--			return {
--				fg = Powerline.Colors.white,
--				bg = Powerline.Colors.green,
--				value = value
--			}
--		end
		
		return Node
	
	end),
	(function()
		local Util = __luapack_require__(1)
		
		
		local Text = {}
		
		function Text.apply(Powerline, args)
			return {
				fg = Powerline.Colors.white,
				bg = Powerline.Colors.black,
				value = args
			}
		end
		
		return Text
	
	end),
	(function()
		local Time = {}
		
		function Time.apply(Powerline)
			return {
				fg = Powerline.Colors.cyan,
				bg = Powerline.Colors.black,
				value = os.date("%I:%M:%S")
			}
		end
		
		return Time
	
	end),
	(function()
		local AMPM = {}
		
		function AMPM.apply(Powerline)
			return {
				fg = Powerline.Colors.cyan,
				bg = Powerline.Colors.black,
				value = os.date("%p")
			}
		end
		
		return AMPM
	
	end),
	(function()
		local Date = {}
		
		function Date.apply(Powerline)
			return {
				fg = Powerline.Colors.cyan,
				bg = Powerline.Colors.black,
				value = os.date("%A, %d/%m/%Y")
			}
		end
		
		return Date
	
	end),
	(function()
		local CwdSegment = __luapack_require__(2)
		
		local GitSegment = __luapack_require__(3)
		
		local LambdaSegment = __luapack_require__(4)
		
		local NodeSegment = __luapack_require__(6)
		
		local TextSegment = __luapack_require__(7)
		
		local TimeSegment = __luapack_require__(8)
		
		local AMPMSegment = __luapack_require__(9)
		
		local DateSegment = __luapack_require__(10)
		
		
		local Util = __luapack_require__(1)
		
		
		local Powerline = {}
		
		Powerline.Colors = {
			black = 0, red = 1, green = 2, yellow = 3,
			blue = 4, magenta = 5, cyan = 6, white = 7,
			lightBlack = 60, lightRed = 61, lightGreen = 62,
			lightYellow = 63, lightBlue = 64, lightMagenta = 65,
			lightCyan = 66, lightWhite = 67,
		
			default = 9
		}
		
		Powerline.Symbols = {
			segment = "",
			segmentSoft = "",
			segmentcwd = "",
			branch = ""
		}
		
		Powerline.Segments = {
			cwd = CwdSegment,
			git = GitSegment,
			lambda = LambdaSegment,
			node = NodeSegment,
			time = TimeSegment,
			ampm = AMPMSegment,
			date = DateSegment,
			textseg = TextSegment
		}
		
		function Powerline.init(powerlineArgs)
			powerlineArgs[#powerlineArgs + 1] = ''
			local powerline = {}
		
			for i, segmentExpression in pairs(powerlineArgs) do
				powerline[#powerline + 1] = Powerline.parseSegment(segmentExpression)
			end
		
			local function apply()
				local prompt = ""
				local previousSegment = nil
		
				for i, segmentParsed in pairs(powerline) do
					local segmentKey = segmentParsed.name
					local segmentGenerator = Powerline.Segments[segmentKey]
		
					if segmentGenerator == nil then
						prompt = prompt .. Powerline.updateSegment(previousSegment, nil) .. " " .. Util.clearStyle()
						prompt = prompt .. segmentParsed.args
						previousSegment = nil
					else
						local segment = segmentGenerator.apply(Powerline, segmentParsed.args)
		
						if segmentParsed.color then
							if segmentParsed.color.fg ~= nil then
								local foreground = Powerline.Colors[segmentParsed.color.fg]
		
								if foreground ~= nil then
									segment.fg = foreground
								end
							end
		
							if segmentParsed.color.bg ~= nil then
								local background = Powerline.Colors[segmentParsed.color.bg]
		
								if background ~= nil then
									segment.bg = background
								end
							end
						end
		
						if segment ~= nil then
							prompt = prompt .. Powerline.updateSegment(previousSegment, segment) .. " " .. segment.value .. " "
							previousSegment = segment
						end
					end
				end
		
				clink.prompt.value = prompt
			end
		
			clink.prompt.register_filter(apply, 55)
		end
		
		function Powerline.parseSegment(segmentSyntax)
			local segmentName = segmentSyntax:match("^([a-z]+)")
			if segmentName == nil then
				return {
					name = "text",
					args = segmentSyntax
				}
			end
			segmentSyntax = segmentSyntax:sub(#segmentName + 1)
		
			local segmentArgs = segmentSyntax:match("^%/([^:]+)")
			if segmentArgs ~= nil then
				segmentSyntax = segmentSyntax:sub(#segmentArgs + 2)
			end
		
			local segmentColor = nil
			local segmentColorMatch = segmentSyntax:match("^:([a-zA-Z]+)")
			if segmentColorMatch ~= nil then
				segmentColor = {}
				segmentSyntax = segmentSyntax:sub(#segmentColorMatch + 2)
				segmentColor.fg = segmentColorMatch
		
				local segmentBgMatch = segmentSyntax:match("^+([a-zA-Z]+)")
				if segmentBgMatch ~= nil then
					segmentColor.bg = segmentBgMatch
				end
			end
		
			return {
				name = segmentName,
				color = segmentColor,
				args = segmentArgs
			}
		end
		
		function Powerline.updateSegment(previousSegment, segment)
			styleCode = ""
		
			if previousSegment ~= nil then
				local style = {fg = previousSegment.bg, bg = Powerline.Colors.default}
				local divider = Powerline.Symbols.segment
		
				if segment ~= nil then
					style.bg = segment.bg
		
					if previousSegment.bg == segment.bg then
						style.fg = Powerline.Colors.red
						divider = Powerline.Symbols.segmentcwd
					end
				else
					-- Add soft divider on Black -> Black
					if previousSegment.bg == Powerline.Colors.black then
						style.fg = previousSegment.fg
						divider = Powerline.Symbols.segmentSoft
					end
				end
		
				styleCode = styleCode .. Util.applyStyle(style) .. divider
			end
		
			if segment ~= nil then
				styleCode = styleCode .. Util.applyStyle(segment)
			end
		
			return styleCode
		end
		
		return Powerline
	
	end),
}
__luapack_cache__ = {}
__luapack_require__ = function(idx)
	local cache = __luapack_cache__[idx]
	if cache then
		return cache
	end

	local module = __luapack_modules__[idx]()
	__luapack_cache__[idx] = module
	return module
end

local Powerline = __luapack_require__(11)


Powerline.init({"text/\n:black+black", "textseg/\x1b[29B\x1b[29A>:black+blue", "time:lightWhite+magenta", "ampm:lightWhite+red", "date:lightWhite+blue", "text/\n\n", "cwd", "git", "text/\n\n", "lambda//Admin1"})
-- Powerline.init({"textseg/>:black+yellow", "time", "cwd", "git", "node", "text/\n", "lambda/λ/root ⚡1"})
