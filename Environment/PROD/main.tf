variable "rg_input"{}

module "res_rg1"{
    source = "../../Modules/azurerm_rg"
    rg_input= var.rg_input
}