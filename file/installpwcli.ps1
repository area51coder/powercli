pwsh Set-PSRepository -Name "PSGallery" -InstallationPolicy "Trusted"
Find-Module "VMware.PowerCLI" | Install-Module -Scope "CurrentUser" -AllowClobber
Import-Module "VMware.PowerCLI"
Set-PowerCLIConfiguration -InvalidCertificateAction:Ignore
