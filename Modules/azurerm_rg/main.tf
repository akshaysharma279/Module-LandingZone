variable "rg_input"{}

resource "azurerm_resource_group" "res" {
    
    for_each = var.rg_input
    name= each.value.name
    location = each.value.location 
}