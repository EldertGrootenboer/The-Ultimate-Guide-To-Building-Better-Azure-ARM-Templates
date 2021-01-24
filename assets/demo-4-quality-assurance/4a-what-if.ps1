# What we will be doing in this script.
#   1. Use the What-If switch to determine the changes that will happen to our resources

$subscriptionName = "Visual Studio Enterprise"
$resourceGroupName = "rg-ultimate-guide-to-building-better-azure-arm-templates"
$basePath = "C:\Users\elder\OneDrive\Sessions\The-Ultimate-Guide-To-Building-Better-Azure-ARM-Templates"

Clear-Host
Get-AzSubscription -SubscriptionName $subscriptionName | Set-AzContext
New-AzResourceGroupDeployment -Name Demo3 -ResourceGroupName $resourceGroupName -TemplateFile "$basePath\assets\demo-3-deployment\azuredeploy.json" -WhatIf
