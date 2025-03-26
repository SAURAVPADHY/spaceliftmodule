# main.tf (Azure Resource Group Example)

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

# outputs.tf
output "resource_group_id" {
  value = azurerm_resource_group.example.id
}

# variables.tf
variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
}

variable "location" {
  type        = string
  description = "The Azure region to deploy the resource group."
}
