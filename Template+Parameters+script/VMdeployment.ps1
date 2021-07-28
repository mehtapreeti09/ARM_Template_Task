$rg = 'ac3task-rg'
$resourceGroupName = Read-Host -Prompt "Enter the Resource Group name"

New-AzResourceGroup -Name $resourceGroupName -Location "australiaeast"
New-AzResourceGroupDeployment `
    -ResourceGroupName $resourceGroupName `
    -TemplateFile './template.json' `
    -TemplateParameterFile './parameters.json'