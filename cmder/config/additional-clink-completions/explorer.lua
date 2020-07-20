parser = clink.arg.new_parser

music = '"C:\\Users\\vhd\\Music"'
tondong = '"D:\\Users\\a\\Music\\WWW\\1"'

local goals = parser(
	{
		
		music,
		
		tondong,
		
		"%appdata%",

		"%programdata%"

	}
):loop(1)

clink.arg.register_parser("e", goals)
