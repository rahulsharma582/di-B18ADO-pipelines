module "resource_group" {
  source = "../child_module/azurerm_resource_group"
  rgs    = var.rgs
}

module "virtual_network" {
  source = "../child_module/azurerm_virtual_network"
  vnet   = var.vnet
}
module "subnet" {
  source = "../child_module/azurerm_subnet"
  snet   = var.snet
}
module "public_ip" {
  source = "../child_module/azurerm_publicip"
  pip    = var.pip
}
module "network_interface" {
  source        = "../child_module/azurerm_networkinterface"
  nic           = var.nic
  internal_name = var.internal_name
  subnet_id     = module.subnet.subnet_id
  pip_id        = module.public_ip.pip_id
}
module "virtual_machine" {
  source = "../child_module/azurerm_virtual_machine"
  wvm    = var.wvm
  nic_id = module.network_interface.nic_id
}
