variable "rg_input"{}

module "rgnew"{
    source = "../../Modules/azurerm_rg"
rg_input=var.rg_input
}