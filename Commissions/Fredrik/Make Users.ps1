############################################
## Script by Daniel Løvbrøtte Olsen, 1ELA ##
## For Fredrik Refstie                    ##
############################################

$Users = Import-Csv .\Users.csv
forEach ($User in $Users)
{
    $firstname = $User.first
    $first = $firstname[0..1]
    $lastname = $User.last
    $last = $lastname[0..2]
    $username = "$first$last"
    #Hack to fix weird spaces between characters
    $username = $username -replace " ", ""
    "dsadd user `"cn=$username, ou=Illuminati, dc=datavg2, dc=local -fn $firstname -ln $lastname -pwd Admin123" | out-file run.bat -Encoding "UTF8" -Append
    #Hack to wait .2 seconds between each command, because Active Directory can't keep up
    "ping 192.0.2.2 -n 1 -w 2 > nul" | out-file run.bat -Encoding "UTF8" -Append
}
"echo Script has  finished running, thanks based Daniel in 1ELA for making our lives easier" | out-file run.bat -Encoding "UTF8" -Append
"PAUSE" | out-file run.bat -Encoding "UTF8" -append
"@ECHO OFF" | out-file run.bat -Encoding "UTF8" -append
"DEL `"%~f0`"" | out-file run.bat -Encoding "UTF8" -append
Start-Process "cmd.exe" "/c run.bat"
