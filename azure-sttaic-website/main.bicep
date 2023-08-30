// Existing Storage Account
param storageAccountName string

resource storageAccount 'Microsoft.Storage/storageAccounts@2019-06-01' = {
  name: storageAccountName
  location: resourceGroup().location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    supportsHttpsTrafficOnly: true
  }
}

// Blue Storage Account
resource blueStorageAccount 'Microsoft.Storage/storageAccounts@2019-06-01' = {
  name: '${storageAccountName}blue'
  location: resourceGroup().location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    supportsHttpsTrafficOnly: true
  }
}

// Green Storage Account
resource greenStorageAccount 'Microsoft.Storage/storageAccounts@2019-06-01' = {
  name: '${storageAccountName}green'
  location: resourceGroup().location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    supportsHttpsTrafficOnly: true
  }
}
