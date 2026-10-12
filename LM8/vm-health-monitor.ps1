Write-Host "Azure VM Health Monitoring Report"
Write-Host "========================================"
Write-Host "Generated: $(Get-Date)"
Write-Host ""
# Retrieve VM inventory
$vms = Get-AzVM -Status | Select-Object Name, ResourceGroupName, PowerState

# Evaluate VM Health
# Display Healthy Results
Write-Host "=== VM Healthy Results ==="
foreach ($vm in $vms) {
    if ($vm.PowerState -eq "VM running") {
        Write-Host "VM Name: $($vm.Name)"
        Write-Host "Resource Group: $(vm.ResourceGroupName)"
        Write-Host "Status: Healthy."
    }
}

Write-Host ""

#Display Needs Attention Results
Write-Host "=== VM Needs Attention Results ==="
foreach ($vm in $vms) {
    if ($vm.PowerState -ne "VM running") {
        Write-Host "VM Name: $($vm.Name)"
        Write-Host "Resource Group: $(vm.ResourceGroupName)"
        Write-Host "Status: Needs Attention."
    }
}
Write-Host "=== End of Report ==="
