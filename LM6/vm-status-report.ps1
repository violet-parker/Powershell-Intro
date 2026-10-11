# Azure VM Status Report
# This script retrieves the status of all Azure VMs and filters for those that are currently running.
$vms = Get-AzVM -Status

$vms | `
Where-Object Powerstate -eq "VM running" | `
Select-Object Name, ResourceGroupName, PowerState