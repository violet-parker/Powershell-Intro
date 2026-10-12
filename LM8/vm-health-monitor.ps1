Write-Host "Azure VM Health Monitoring Report"
Write-Host "Generated: $(Get-Date)"
Write-Host ""
$vms = Get-AzVM -Status

$vms

