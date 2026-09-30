Write-Host "Azure VM Inventory Report"
Write-Host "Generated: $(Get-Date)"
Write-Host ""
$AZVM = Get-AzVM | Select-Object Name, ResourceGroupName, Type
$AZVM

