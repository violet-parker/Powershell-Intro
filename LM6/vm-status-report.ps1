# Azure VM Status Report
$vms = Get-AzVM -Status

$vms | `
Where-Object Powerstate -eq "VM running" | `
Select-Object Name, ResourceGroupName, PowerState