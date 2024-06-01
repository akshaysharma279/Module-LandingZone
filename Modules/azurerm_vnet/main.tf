variable "name"{}
variable "location"{}
variable "resourcegroupname"{}


resource "azurerm_virtual_network" "vnet" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resourcegroupname
  address_space       = ["10.0.0.0/16"]
}