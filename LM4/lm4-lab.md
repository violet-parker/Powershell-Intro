Get-Date | Get-Member  

Object Type:  

System.DateTime (ScriptProperty?)  

Three Properties I found interesting:   
1. Minute  

2. Ticks  

3. Nanosecond  

Get-Process | Get-Member   

Object Type: System.Diagnostics.Process  

Three useful properties:  

1. Name  

2. Path  

3. ID  

Get-AzSubscription | Get-Member

Object Type: Microsoft.Azure.Commands.Profile.Models.PSAzureSubscription

Three useful properties: 

1. ID

2. Name

3. Subscription ID

$subscription | Get-Member

Object Type: Microsoft.Azure.Commands.Profile.Models.PSAzureSubscription (no change)

One Property I found useful: 

1. ManagedByTenantIDs
