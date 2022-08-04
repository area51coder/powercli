#!/usr/bin/pwsh -Command
write-host -fore Green "executing PowerShell!";
#$Server = 192.168.29.195
#$Credential = Get-Credential Administrator@vsphere.local
#$Credential.Password | ConvertFrom-SecureString | Set-Content B@ond007
#Connect-VIServer $Server -Credential $Credential
Connect-VIServer 192.168.29.195 -User Administrator@vsphere.local -Password B@ond007
$VmInfo = ForEach ($Datacenter in (Get-Datacenter | Sort-Object -Property Name)) {
  ForEach ($Cluster in ($Datacenter | Get-Cluster | Sort-Object -Property Name)) {
    ForEach ($VM in ($Cluster | Get-VM | Sort-Object -Property Name)) {
      ForEach ($HardDisk in ($VM | Get-HardDisk | Sort-Object -Property Name)) {
        "" | Select-Object -Property @{N="VM";E={$VM.Name}},
          @{N="Datacenter";E={$Datacenter.name}},
          @{N="Cluster";E={$Cluster.Name}},
          @{N="Hard Disk";E={$HardDisk.Name}},
          @{N="Datastore";E={$HardDisk.FileName.Split("]")[0].TrimStart("[")}},
          @{N="VMConfigFile";E={$VM.ExtensionData.Config.Files.VmPathName}},
          @{N="VMDKpath";E={$HardDisk.FileName}},
                  @{N="Storage Format";E={$HardDisk.StorageFormat}},
          @{N="VMDK Size";E={($vm.extensiondata.layoutex.file|?{$_.name -contains $harddisk.filename.replace(".","-flat.")}).size/1GB}}
      }
    }
  }
}
$VmInfo | Export-Csv -NoTypeInformation -UseCulture -Path "file/VmInfo.csv"
