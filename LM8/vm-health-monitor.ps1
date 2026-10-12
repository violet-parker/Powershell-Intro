Write-Host ""
Write-Host "=== Azure VM Health Monitoring Report ==="
Write-Host "========================================"
Write-Host "Generated: $(Get-Date)"
Write-Host ""
# Retrieve VM inventory
$vms = Get-AzVM -Status | Select-Object Name, ResourceGroupName, Location, PowerState, ProvisioningState |
Where-Object {$_.Location -eq "centralus"}

# Evaluate VM Health
# Display Healthy Results
Write-Host "=== VM Healthy Results ==="
foreach ($vm in $vms) {
    if ($vm.PowerState -eq "VM running") {
        Write-Host "$($vm.Name) is healthy." -ForegroundColor Green
        Write-Host "Resource Group: $($vm.ResourceGroupName)"
        Write-Host "Provisioning State: $($vm.ProvisioningState)"
        Write-Host ""
    }
}

Write-Host ""

#Display Needs Attention Results
Write-Host "=== VM Needs Attention Results ==="
foreach ($vm in $vms) {
    if ($vm.PowerState -ne "VM running") {
        Write-Host "$($vm.Name) needs attention." -ForegroundColor Yellow
        Write-Host "Resource Group: $($vm.ResourceGroupName)"
        Write-Host "Provisioning State: $($vm.ProvisioningState)"
        Write-Host ""
    }
}
$totalVMs = @($vms)
$healthyVMs = @($vms | Where-Object {$_.PowerState -eq 'VM running'})
$needsAttentionVMs = @($vms | Where-Object {$_.PowerState -ne 'VM running'})

Write-Host ""
Write-Host "=== Summary ==="
Write-Host "Total VMs: $($totalVMs.Count)"
Write-Host "Healthy VMs: $($healthyVMs.Count)"
Write-Host "VMs Needing Attention: $($needsAttentionVMs.Count)"
Write-Host ""
Write-Host "=== End of Report ==="
