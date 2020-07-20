parser = clink.arg.new_parser

local goals = parser(
	{
		
		"+E",
		
		"-p" .. parser()
	}
):loop(1)

clink.arg.register_parser("nvim", goals)
