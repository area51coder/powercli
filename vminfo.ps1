#!/usr/bin/pwsh -Command
write-host -fore Green "executing PowerShell!";
set-psrepository -name "PSGallery" -InstallationPolicy Trusted
Install-Module -Name VMware.PowerCLI -Scope CurrentUser
import-module vmware.vimautomation.core
import-module vmware.vimautomation.sdk
Set-PowerCLIConfiguration -Scope User -ParticipateInCEIP $false -Confirm:$false
Set-PowerCLIConfiguration -InvalidCertificateAction Ignore -Confirm:$false
#$Server = 192.168.29.195
#$Credential = Get-Credential Administrator@vsphere.local
#$Credential.Password | ConvertFrom-SecureString | Set-Content B@ond007
#Connect-VIServer $Server -Credential $Credential
Connect-VIServer 192.168.29.195 -User Administrator@vsphere.local -Password B@ond007
