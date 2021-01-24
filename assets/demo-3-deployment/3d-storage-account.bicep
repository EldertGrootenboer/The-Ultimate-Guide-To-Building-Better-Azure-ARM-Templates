/*
What we will be doing in this template.
    1. Create Bicep template in which we deploy a standard Storage Account
    2. Build the ARM template from the Bicep template
*/
param location string
param namePrefix string = 'st'
param tags object = { 
    LastModifiedDate: '${utcNow()}'
    Project: 'The Ultimate Guide To Building Better Azure ARM Templates'
    Purpose: 'Session' 
}
param globalRedundancy bool = false

var storageAccountName = '${namePrefix}${uniqueString(resourceGroup().id)}'

resource stg 'Microsoft.Storage/storageAccounts@2019-06-01' = {
    name: storageAccountName
    location: location
    kind: 'Storage'
    tags: tags
    sku: {
        name: globalRedundancy ? 'Standard_GRS' : 'Standard_LRS' // if true --> GRS, else --> LRS
    }
}