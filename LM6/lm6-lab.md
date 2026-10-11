Get-AzVM

ResourceGroupName                    Name  Location           VmSize  OsType                 NIC ProvisioningState Zone  
-----------------                    ----  --------           ------  ------                 --- ----------------- ----  
POWERSHELL-INTRO-VIOLET1 Violet-Parker-VM centralus Standard_D2as_v7 Windows violet-parker-vm251         Succeeded    1  

What information might help determine whether a VM is operational: 

ProvisioningState seems pretty useful for making sure things are operational. 

Get-AzVM | Get-Member

Three useful properties:

1. NIC

2. Maintenance Allowed

3. PowerState

Which Property appears the most important:

PowerState

vm-status-report.ps1

Name             ResourceGroupName        PowerState  
----             -----------------        ----------  
Violet-Parker-VM POWERSHELL-INTRO-VIOLET1 VM running  

AI

Recommendation given: Additional report header

How I implemented the recommendation: 

I used the suggested header text that github provided me. 
