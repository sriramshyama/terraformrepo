provider "azurerm" {
  features {}
  version         = "=2.46.0"
  subscription_id = "a3bdd4bb-db8d-447c-bfd5-0a875a500a75"
  client_id       = "84ed36e2-4e0a-4666-851c-841f37ac5a8e"
  client_secret   = "xex7Q~boX3J0vyQlDBjMf09caZiBRUloXWT3Y"
  tenant_id       = "84960016-8942-4b2e-9be8-259fca23e386"
}

terraform {
  backend "azurerm" {
    storage_account_name = "sarg123456"
    container_name       = "container1"
    key                  = "dev.terraform.tfstate"
    access_key           = "/u7SChOhwWfqTNVZgR2GB+Wjd1CEZ3P4tGQM33LCuaAv75KQELQZycOpCjQPX1zHl0oK3FSKgw78DxpdTWAyjg=="
  }
}
