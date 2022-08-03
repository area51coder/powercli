#!/usr/bin/pwsh -Command
# Filename: helloworld.ps1
Write-Host
Write-Host 'Hello World!'
Write-Host "Good-bye World! `n"
pwsh Connect-VIServer 192.168.29.195 -User Administrator@vsphere.local -Password B@ond007
# end of script
