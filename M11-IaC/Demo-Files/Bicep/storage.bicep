//  USe this bicep for convert to ARM template 

resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: 'slasscombootcamp'
  location: resourceGroup().id
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}
