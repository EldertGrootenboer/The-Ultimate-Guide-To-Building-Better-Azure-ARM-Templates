# What we will be doing in this script.
#   1. Create a resource group
#   2. Deploy Azure services

# Update these according to the environment
$subscriptionName = "Visual Studio Enterprise"
$resourceGroupName = "rg-ultimate-guide-to-building-better-azure-arm-templates"
$basePath = "C:\Users\elder\OneDrive\Sessions\The-Ultimate-Guide-To-Building-Better-Azure-ARM-Templates"

# Login to Azure
Get-AzSubscription -SubscriptionName $subscriptionName | Set-AzContext

# Create the resource group and deploy the resources
New-AzResourceGroup -Name $resourceGroupName -Location 'West Europe' -Tag @{CreationDate=[DateTime]::UtcNow.ToString(); Project="The Ultimate Guide To Building Better Azure ARM Templates"; Purpose="Session"}
New-AzResourceGroupDeployment -Name "UltimateArmGuide" -ResourceGroupName $resourceGroupName -TemplateFile "$basePath\assets\iac\azuredeploy.json"

# Optional for debugging, loops through each local file individually
#Get-ChildItem "$basePath\assets\iac" -Filter *.json | 
#Foreach-Object {
#    Write-Output "Deploying: " $_.FullName
#   New-AzResourceGroupDeployment -Name Demo -ResourceGroupName $resourceGroupName -TemplateFile $_.FullName -ErrorAction Continue
#}