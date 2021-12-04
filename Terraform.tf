resource "azurerm_resource_group" "example" {
  name     = "backendrg"
  location = "West Europe"
}

resource "azurerm_virtual_network" "example" {
  name                = "virtualNetwork1"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  address_space       = ["13.0.0.0/16"]

  subnet {
    name           = "subnet1"
    address_prefix = "13.0.1.0/24"
  }

  subnet {
    name           = "subnet2"
    address_prefix = "13.0.2.0/24"
  }

  subnet {
    name           = "subnet3"
    address_prefix = "13.0.3.0/24"
  }

  tags = {
    environment = "Production"
  }
}