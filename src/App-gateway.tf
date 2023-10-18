locals {
  backend_address_pool_name      = "${azurerm_virtual_network.vnet1.name}-beap"
  frontend_port_name             = "frontendportname-temporary"
  frontend_ip_configuration_name = "appGwPublicFrontendIpIPv4"
  http_setting_name              = "${azurerm_virtual_network.vnet1.name}-be-htst"
  listener_name1                 = "fl-e1903c8aa3446b7b3207aec6d6ecba8a"
  listener_name2                 = "fl-c61dda7ff9748ec5f51989767db5afd0" 
  request_routing_rule_name1     = "rr-c61dda7ff9748ec5f51989767db5afd0"
  request_routing_rule_name2     = "rr-e1903c8aa3446b7b3207aec6d6ecba8a"
  redirect_configuration_name    = "${azurerm_virtual_network.vnet1.name}-rdrcfg"
}

resource "azurerm_subnet" "frontend" {
  name                 = "frontend"
  resource_group_name  = azurerm_resource_group.rg5.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = ["10.254.0.0/24"]
}




resource "azurerm_application_gateway" "app_gateway" {
  name                  = var.app_gateway_name
  resource_group_name   = azurerm_resource_group.rg2.name
  location              = azurerm_resource_group.rg2.location

  sku {
    name                = var.app_gateway_sku_name
    tier                = var.app_gateway_sku_tier
    capacity            = var.app_gateway_capacity
  }
  gateway_ip_configuration {
    name      = "my-gateway-ip-configuration"
    subnet_id = azurerm_subnet.frontend.id
  }

  frontend_port {
    name = local.frontend_port_name
    port = 80
  }

  frontend_ip_configuration {
    name                 = local.frontend_ip_configuration_name
    public_ip_address_id = "74.235.113.193"
  }
  http_listener {
    name                           = local.listener_name1
    frontend_ip_configuration_name = local.frontend_ip_configuration_name
    frontend_port_name             = local.frontend_port_name
    protocol                       = "Http"
  }
  http_listener {
    name                           = local.listener_name2
    frontend_ip_configuration_name = local.frontend_ip_configuration_name
    frontend_port_name             = local.frontend_port_name
    protocol                       = "Https"
  }
  backend_address_pool {
    name = var.backend_address_pool_name1
  }
  backend_address_pool {
    name = var.backend_address_pool_name2
  }
  backend_address_pool {
    name = var.backend_address_pool_name3
  }
  backend_address_pool {
    name = var.backend_address_pool_name4
  }
  backend_address_pool {
    name = var.backend_address_pool_name5
  }
  backend_address_pool {
    name = var.backend_address_pool_name6
  }
  backend_address_pool {
    name = var.backend_address_pool_name7
  }
  request_routing_rule {
    name                       = local.request_routing_rule_name1
    rule_type                  = var.rule_type
    priority                   = var.priority1
    http_listener_name         = local.listener_name1
    backend_http_settings_name = local.http_setting_name

  }

  request_routing_rule {
    name                       = local.request_routing_rule_name2
    rule_type                  = var.rule_type
    priority                   = var.priority2
    http_listener_name         = local.listener_name2
    backend_address_pool_name  = local.backend_address_pool_name
    backend_http_settings_name = local.http_setting_name
  }

  backend_http_settings {
    name                  = var.http_setting_name1
    cookie_based_affinity = "Disabled"
    port                  = var.http_setting_port
    protocol              = var.http_setting_protocol
    request_timeout       = 1
  }
  backend_http_settings {
    name                  = var.http_setting_name2
    cookie_based_affinity = "Disabled"
    port                  = var.http_setting_port
    protocol              = var.http_setting_protocol
    request_timeout       = 1
  }
  backend_http_settings {
    name                  = var.http_setting_name3
    cookie_based_affinity = "Disabled"
    port                  = var.http_setting_port
    protocol              = var.http_setting_protocol
    request_timeout       = 1
  }
  backend_http_settings {
    name                  = var.http_setting_name4
    cookie_based_affinity = "Disabled"
    port                  = var.http_setting_port
    protocol              = var.http_setting_protocol
    request_timeout       = 1
  }
  backend_http_settings {
    name                  = var.http_setting_name5
    cookie_based_affinity = "Disabled"
    port                  = var.http_setting_port
    protocol              = var.http_setting_protocol
    request_timeout       = 1
  }
  backend_http_settings {
    name                  = var.http_setting_name6
    cookie_based_affinity = "Disabled"
    port                  = var.http_setting_port
    protocol              = var.http_setting_protocol
    request_timeout       = 1
  }
  backend_http_settings {
    name                  = var.http_setting_name7
    cookie_based_affinity = "Disabled"
    port                  = var.http_setting_port
    protocol              = var.http_setting_protocol
    request_timeout       = 1
  }
}
