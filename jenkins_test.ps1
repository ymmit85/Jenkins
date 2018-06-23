Param
(
	[CmdletBinding()]
	[Parameter(Mandatory=$false)]
	[string]$service
)
write-host $(get-date)
write-host "env $env:service"
# Create Temp Directory
if (-not(Test-Path -Path 'C:\temp'))
{
    New-Item -Path 'C:\temp' -ItemType directory
}

# Using the environment variables exposed by the Jenkins job 

$svc = Get-Service  -Name $service| where {$_.Status -eq "Running"}

Set-Content -Path "C:\temp\jenkins_1.txt" -Value $svc