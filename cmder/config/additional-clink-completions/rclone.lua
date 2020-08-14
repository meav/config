parser = clink.arg.new_parser

tree = '--dry-run --dirsfirst --human --level 1 "onedrivebusiness:/Content/Phan mem"'
copy = '--dry-run --progress -v --include /Facebook/** --log-file=log --multi-thread-streams=0 --bwlimit=M --transfers 1 "C:\\Users\\a\\Desktop\\mpv-i686-20170913.iso" "onedrivebusiness:/Phan mem/Portable"'

local goals = parser(
	{
		
		"tree" .. parser(
			{

			tree,

			"aa"

			}
		),
		
		"copy" .. parser(
			{

			copy,

			"aa"

			}
		),
		
		"listremotes --long",
		
		"about onedrivebusiness:",
		
		"version --check",

		"--drive-shared-with-me" ..
			parser(
				{
				tree,
				copy
				}
			)
	}
):loop(1)

clink.arg.register_parser("rclone", goals)
