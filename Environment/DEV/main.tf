variable "rg_input" {}

module "res_rg"{
    source = "../../Modules/azurerm_rg"
    rg_input = var.rg_input
}

 module "vnet"{
    source= "../../Modules/azurerm_vnet"
    name= "vnetnam12"
    location= "easteurope"
    resourcegroupname= "akkirg"
    depends_on = [ module.res_rg ]
 }

