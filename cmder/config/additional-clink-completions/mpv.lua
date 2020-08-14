parser = clink.arg.new_parser

ytdl = '--ytdl-format="bestvideo[height<=?500][fps<=?30][vcodec!=?vp9]+bestaudio/best[height<=?500]"'

local goals = parser(
	{
		
		"--title=",
		
		'""',
		
		ytdl,
		
		"--volume=0" .. parser()

	}
):loop(1)

clink.arg.register_parser("mpv", goals)
