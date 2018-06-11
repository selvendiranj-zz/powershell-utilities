Login-AzureRmAccount
 

# Global Variables

$myResourceGroup = "<VmResourceGroupName>"
$VMs = @("<vmname>")

Foreach ($VM in $VMs) {
    Start-AzureRmVM -ResourceGroupName $myResourceGroup -Name $VM
    #Stop-AzureRmVM -ResourceGroupName $myResourceGroup -Name $VM -Force
}

Read-Host 'Press Enter to continue...' | Out-Null
