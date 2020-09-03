parser = clink.arg.new_parser

command = '--port=80 --theme=green --upload --delete'

local goals = parser(
	{
		
	command,	

	"aa"
		
	}
):loop(1)

clink.arg.register_parser("gohttpserver", goals)
