parser = clink.arg.new_parser

command = '--dir=C:\\Users\\vhd\\Desktop --dry-run --split=5 --max-connection-per-server=5 --max-concurrent-downloads=2 --continue --all-proxy=[http://][USER:PASSWORD@]HOST[:PORT] --max-tries=0 --disk-cache=0 --download-result=full --file-allocation=trunc --summary-interval=0 --max-overall-download-limit=4M --show-files --seed-time=0 --torrent-file=<TORRENT_FILE> --version --out=<FILE>'

local goals = parser(
	{
		
	command,	

	"--"
		
	}
):loop(1)

clink.arg.register_parser("aria2c", goals)
