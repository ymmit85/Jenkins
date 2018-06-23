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

Set-Content -Path "C:\users\tim\temp\jenkins_1.txt" -Value $svc