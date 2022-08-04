
#!/usr/bin/pwsh -Command
#write-host -fore Green "executing PowerShell!";
#$Server = 192.168.29.195
#$Credential = Get-Credential Administrator@vsphere.local
#$Credential.Password | ConvertFrom-SecureString | Set-Content B@ond007
#Connect-VIServer $Server -Credential $Credential
pwsh -NoExit -Command Connect-VIServer 192.168.29.195 -User Administrator@vsphere.local -Password B@ond007
#pwsh -Command Start-Sleep -Seconds 30
#pwsh -NoExit -Command Connect-VIServer 192.168.29.195 -User Administrator@vsphere.local -Password B@ond007
.\vminfotest.ps1
