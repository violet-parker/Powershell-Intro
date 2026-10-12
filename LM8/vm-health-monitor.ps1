Write-Host "Azure VM Health Monitoring Report"
Write-Host "Generated: $(Get-Date)"
Write-Host ""
$vms = Get-AzVM -Status | Select-Object Name, ResourceGroupName, PowerState
foreach ($vm in $vms) {
    if ($vm.PowerState -eq "VM running") {
        Write-Host "VM Name: $($vm.Name)"
        Write-Host ""
        Write-Host "This VM is Healthy."
    }
}

foreach ($vm in $vms) {
    if ($vm.PowerState -ne "VM running") {
        Write-Host "VM Name: $($vm.Name)"
        Write-Host ""
        Write-Host "This VM Needs Attention."
    }
}

$vms

