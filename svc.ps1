try {
$svc = Get-Service -Name wuaufserv; Set-Content -Value $svc -Path c:\temp\output.txt    
}
catch {
    write-host $error[0]
    throw $LASTEXITCODE
}

#Start-Service wuauserv
#$svc = Get-Service -Name wuauserv
#Set-Content -Value $svc -Path c:\temp\output1.txt    
 