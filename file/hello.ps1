#!/usr/bin/pwsh -Command
# Filename: helloworld.ps1
Write-Host
Write-Host 'Hello World!'
Write-Host "Good-bye World! `n"
Set-PowerCLIConfiguration -InvalidCertificateAction > Ignore -Scope AllUsers*
#Find-Module "VMware.PowerCLI" | Install-Module -Scope "CurrentUser" -AllowClobber
#pwsh -command Connect-VIServer 192.168.29.195 -User Administrator@vsphere.local -Password B@ond007
# end of script
