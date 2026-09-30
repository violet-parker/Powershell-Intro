Get-AzVM | Get-Member

Object Type: Microsoft.Azure.Commands.Compute.Models.PSVirtualMachineList

Three properties that would be useful in a VM report:

1. Name

2. ID

3. LicenseType

Name             ResourceGroupName        Type

----             -----------------        ----

Violet-Parker-VM POWERSHELL-INTRO-VIOLET1 Microsoft.Compute/virtualMachines

$AZVM = Get-AzVM | Select-Object Name, ResourceGroupName, Type