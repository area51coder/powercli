#!/usr/bin/pwsh -Command
# Filename: helloworld.ps1
set-psrepository -name "PSGallery" -InstallationPolicy Trusted
Install-Module -Name VMware.PowerCLI -Scope CurrentUser
import-module vmware.vimautomation.core
import-module vmware.vimautomation.sdk
Set-PowerCLIConfiguration -Scope User -ParticipateInCEIP $false -Confirm:$false
Set-PowerCLIConfiguration -InvalidCertificateAction Ignore -Confirm:$false
Write-Host
Write-Host 'Hello World!'
Write-Host "Good-bye World! `n"
#Set-PowerCLIConfiguration -InvalidCertificateAction Ignore -Scope AllUsers
#Set-PowerCLIConfiguration -InvalidCertificateAction > Ignore -Scope AllUsers*
#Find-Module "VMware.PowerCLI" | Install-Module -Scope "CurrentUser" -AllowClobber
Connect-VIServer 192.168.29.195 -User Administrator@vsphere.local -Password B@ond007
# end of script
