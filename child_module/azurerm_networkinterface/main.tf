resource "azurerm_network_interface" "nic" {
  for_each            = var.nic
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location

  ip_configuration {
    name                         = each.value.name
    subnet_id                    = var.subnet_id[each.key].id
    public_ip_address_id         = var.pip_id[each.key].id
    private_ip_address_allocation = each.value.private_ip_addres_allocation
  }
}


