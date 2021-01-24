# What we will be doing in this script.
#   1. Update ./assets/arm-ttk/arm-ttk/testcases/deploymentTemplate/Location-Should-Not-Be-Hardcoded.test.ps1 to custom test
#   2. Use ARM-TTK to check our template for best practices

$basePath = "C:\Users\elder\OneDrive\Sessions\The-Ultimate-Guide-To-Building-Better-Azure-ARM-Templates"

Clear-Host
Import-Module "$basePath/assets/arm-ttk/arm-ttk/arm-ttk.psd1"
Test-AzTemplate -TemplatePath "$basePath/assets/demo-3-deployment"
