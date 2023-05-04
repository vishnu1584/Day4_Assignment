param location string = 'eastus'
param vnetName string = 'myVirtualNetwork'
param vnetAddressPrefix string = '10.0.0.0/16'
param subnetName string = 'mySubnet'
param subnetAddressPrefix string = '10.0.0.0/24'

resource vnet 'Microsoft.Network/virtualNetworks@2021-02-01' = {
  name: vnetName
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        vnetAddressPrefix
      ]
    }
    subnets: [
      {
        name: subnetName
        properties: {
          addressPrefix: subnetAddressPrefix
        }
      }
    ]
  }
}
