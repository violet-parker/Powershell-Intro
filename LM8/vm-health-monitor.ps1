Write-Host "Azure VM Health Monitoring Report"
Write-Host "Generated: $(Get-Date)"
Write-Host ""
$vms = Get-AzVM -Status | Select-Object Name, ResourceGroupName, PowerState
foreach ($vm in $vms) {
    Write-Host "VM Name: $($vm.Name)"
    Write-Host ""
}

$vms

