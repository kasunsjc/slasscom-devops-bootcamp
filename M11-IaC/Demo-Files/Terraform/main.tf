# Create Random string

resource "random_string" "random-string" {
  length = 4
  upper = false
  numeric = false
  special = false
}

# Create Resource Group

resource "azurerm_resource_group" "slasscom-rg" {
  location = var.location
  name     = "rg-${var.rg_name}-${var.env}"
}

resource "azurerm_storage_account" "slasscom-storage" {
  name                     = "sa${var.sa_name}${random_string.random-string.result}${var.env}"
  resource_group_name      = azurerm_resource_group.slasscom-rg.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = var.env
  }
}