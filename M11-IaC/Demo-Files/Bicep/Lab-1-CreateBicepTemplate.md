# Create Bicep Template

This is a simple example of a Bicep template that creates a storage account.

```bicep
param storageAccountName string
param location string

resource storageAccount 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    supportsHttpsTrafficOnly: true
  }
}
```

## Convert a template to bicep

```bash
az bicep decompile --file storage01.json
```

## Convert a bicep file to a template

```bash
az bicep build --file storage.bicep
```

## Validate a bicep file

```bash

az bicep build --file storage.bicep --validate
```

## Deploy a bicep file

```bash
az deployment group create --resource-group myResourceGroup --template-file storage.bicep
```

```powershell
New-AzResourceGroupDeployment -ResourceGroupName myResourceGroup -TemplateFile storage.bicep
```