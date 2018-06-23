$svc = Get-Service -Name wuauserv
Set-Content -Value $svc -Path c:\temp\output.txt    
#Start-Service wuauserv
#$svc = Get-Service -Name wuauserv
#Set-Content -Value $svc -Path c:\temp\output1.txt    
 