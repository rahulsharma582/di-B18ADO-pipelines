rgs = {
  rg1 = {
    name     = "alec-rg"
    location = "westus"
  }
}

vnet = {
  vnet1 = {
    name                = "alec-vnet"
    location            = "westus"
    resource_group_name = "alec-rg"
    address_space       = ["10.0.0.0/16"]
  }
}


snet = {
  snet1 = {
    name                 = "alec-snet1"
    resource_group_name  = "alec-rg"
    virtual_network_name = "alec-vnet"
    address_prefixes     = ["10.0.1.0/24"]

  }
  snet2 = {
    name                 = "alec-snet2"
    resource_group_name  = "alec-rg"
    virtual_network_name = "alec-vnet"
    address_prefixes     = ["10.0.2.0/24"]
  }
}

pip = {
  pip1 = {
    name                = "alec-pip1"
    resource_group_name = "alec-rg"
    location            = "westus"
    allocation_method   = "Static"
  }

  pip2 = {
    name                = "alec-pip2"
    resource_group_name = "alec-rg"
    location            = "westus"
    allocation_method   = "Static"
  }
}
nic = {
  nic1 = {
    name                         = "alec-nic1"
    resource_group_name          = "alec-rg"
    virtual_network_name         = "alec-vnet"
    subnet_name                  = "alec-snet1"
    pip_name                     = "alec-pip1"
    internal_name                = "internal"
    private_ip_addres_allocation = "Dynamic"
    location                     = "westus"

  }

  nic2 = {
    name                 = "alec-nic2"
    resource_group_name  = "alec-rg"
    virtual_network_name = "alec-vnet"
    subnet_name          = "alec-snet2"
    pip_name             = "alec-pip2"
    location             = "westus"
  }
}

internal_name = {
  internal_name= {
    internal_name                = "internal"
    private_ip_addres_allocation = "Dynamic"
  }
}
wvm = {
  wvm1 = {
    name                = "alec-wvm1"
    resource_group_name = "alec-rg"
    location            = "westus"
    size                = "Standard_D4_v5"
    admin_username      = "alec@123"
    admin_password      = "alec@123"
    nic_name            = "alec-nic1"
  }
  wvm2 = {
    name                = "alec-wvm2"
    resource_group_name = "alec-rg"
    location            = "westus"
    size                = "Standard_D4_v5"
    admin_username      = "alec@123"
    admin_password      = "alec@123"
    nic_name            = "alec-nic2"
  }
}
