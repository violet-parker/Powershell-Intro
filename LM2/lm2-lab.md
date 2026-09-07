$studentname = "Violet Parker"  
$program = "IT System Administration"  
$semester = "Fall 2026"

$currentdate = Get-Date

Monday, September 7, 2026 5:01:42 AM

$subscription = Get-Subscription

TenantId: 5a77a2fd-1932-48b9-aa9a-c59b0fec9dba

Name                 Id                                   State  
----                 --                                   -----
student-25228133-sub c4fef099-d4ba-4274-94ec-40918c33c623 Enabled  

Variable With the Most Information: $subscription  

Variable With the Least Information: $semester  

One thing learned about Get-Date:  
You can check to see if the date is adjusted for daylight saving time with (Get-Date Variable).IsDaylightSavingTime()  

One thing learned about Get-AzSubscription:  
You can see all subscriptions for a specific tenant with Get-AzSubscription -TenantID (The TenantId)  

Subscription Name: student-25228133-sub  
Subscription State: Enabled  
TenantID: 5a77a2fd-1932-48b9-aa9a-c59b0fec9dba  
Account: MSI@50342  
Environment: AzureCloud  

$favoritetech = "The Wheel"  
$futurejob = "System Admin in Seattle"  

