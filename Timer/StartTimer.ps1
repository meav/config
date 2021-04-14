do {
  echo "`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`eD`e[25A"
  $name = Read-Host 'What is your username?'
  if ($name -ne "timer" -and $name -ne "quit")
    {echo "`n"
     echo "`e[31;40mWrong`e[0m"
    }
}
until ($name -eq "timer" -or $name -eq "quit")
if ($name -eq "timer") {explorer C:\Users\VHDX\Music\config\Timer\Timer.vbs
                        exit
		       }
  else {exit}
