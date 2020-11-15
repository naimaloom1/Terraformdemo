terraform {
backend "azurerm" {
 storage_account_name  = "__terraformstorageaccount__"
   container_name        = "terraform"
   key                  = "terraform.tfstate"
  access_key  ="__storagekey__"
 features{}
  }
  }
provider "azurerm" {
  version = "=2.20.0"
  features {}
}
resource "azurerm_resource_group" "Prod" {
  name     = var.resource_group_name
  location = var.location
}
output "id" {
    value = data.azurerm_resource_group.Prod.id
}