# What we will be doing in this script.
#   1. Create a resource group
#   2. Deploy the Cosmos DB ARM template

$subscriptionName = "Visual Studio Enterprise"
$resourceGroupName = "rg-ultimate-guide-to-building-better-azure-arm-templates"
$basePath = "C:\Users\elder\OneDrive\Sessions\The-Ultimate-Guide-To-Building-Better-Azure-ARM-Templates"

Get-AzSubscription -SubscriptionName $subscriptionName | Set-AzContext
New-AzResourceGroup -Name $resourceGroupName -Location 'West Europe' -Tag @{CreationDate=[DateTime]::UtcNow.ToString(); Project="The Ultimate Guide To Building Better Azure ARM Templates"; Purpose="Session"}
New-AzResourceGroupDeployment -Name Demo2 -ResourceGroupName $resourceGroupName -TemplateFile "$basePath\assets\demo-2-authoring-templates\2a-cosmos-db.json"