variable "rg_input" {}

module "res_rg"{
    source = "../../Modules/azurerm_rg"
    rg_input = var.rg_input
}

 module "vnet"{
    source= "../../Modules/azurerm_vnet"
    name= "vnetnam1"
    location= "westeurope"
    resourcegroupname= "akkirg"
    depends_on = [ module.res_rg ]
 }

