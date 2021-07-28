$rg = 'ac3task-rg'
$resourceGroupName = Read-Host -Prompt "Enter the Resource Group name"
$adminUsername = Read-Host -Prompt "Enter an admin username"
$adminPassword = Read-Host -Prompt "Enter an admin password" -AsSecureString

New-AzResourceGroup -Name $resourceGroupName -Location "australiaeast"

New-AzResourceGroupDeployment `
    -ResourceGroupName $resourceGroupName `
    -TemplateFile './template.json' `
    -adminUsername $adminUsername `
    -adminPassword $adminPassword `
    -networkInterfaceName "ac3task-vm-ni" `
    -networkSecurityGroupName "ac3task-vm-nsg" `
    -virtualNetworkName "ac3task-vnet" `
    -subnet1name "svnet1" `
    -subnet2name "svnet2" `
    -publicIpAddressName "ac3task-vm-ip" `
    -publicIpAddressType "Static" `
    -publicIpAddressSku "Standard" `
    -virtualMachineName "ac3task-vm" `
    -osDiskType "StandardSSD_LRS" `
    -virtualMachineSize "Standard_B1s" `
    -zone "1" `
    -storageAccountName "ac3tasksa"
