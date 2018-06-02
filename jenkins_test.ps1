# Create Temp Directory
if (-not(Test-Path -Path 'C:\temp'))
{
    New-Item -Path 'C:\temp' -ItemType directory
}

# Using the environment variables exposed by the Jenkins job 

$svc = Get-Service | where {$_.Status -eq "Running"}

Set-Content -Path "C:\temp\jenkins.txt" -Value $svc