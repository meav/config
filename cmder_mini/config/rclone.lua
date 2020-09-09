parser = clink.arg.new_parser

command = '--update --ignore-size --progress -v "D:\\Me Doanh\\TH Tu Liem" "vtd:TH Tu Liem"'
commandq = '--log-file=log --update --ignore-size --progress -v "D:\\Me Doanh\\TH Tu Liem" "vtd:TH Tu Liem"'

local goals = parser(
	{
		
		"sync" ..
			parser(
				{
				"--dry-run" .. 
					parser(
						{
						"--log-file=log" .. parser({ command, "aa" }),
						command
						}
					),
				"--log-file=log" .. parser({ command, "aa" }),
				command
				}
			)
	}
):loop(1)

clink.arg.register_parser("rclone", goals)
