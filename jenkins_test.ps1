Param
(
	[CmdletBinding()]
	[Parameter(Mandatory=$false)]
	[string]$service
)
write-host "Test Jenkins"

write-host $env:service

# Using the environment variables exposed by the Jenkins job 

$svc = Get-Service -Name $service
Start-Service -Name AppReadiness
Set-Content -Path "C:\temp\jenkins_1.txt" -Value $svc