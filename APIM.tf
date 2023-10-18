resource "azurerm_api_management" "apim01" {
  name                = var.apim01
  location            = var.location
  resource_group_name = azurerm_resource_group.rg1.name
  publisher_name      = var.publisher_name
  publisher_email     = var.publisher_email
  sku_name            = var.apim01_sku
}

resource "azurerm_api_management_backend" "apim-backend" {
  name                = "apim-backend"
  resource_group_name = azurerm_resource_group.rg1.name
  api_management_name = azurerm_api_management.apim01.name
  protocol            = var.apim01_protocol
  url                 = var.apim01_url
}

resource "azurerm_api_management_group" "apim_group1" {
  name                = "apim_group1"
  resource_group_name = azurerm_resource_group.rg1.name
  api_management_name = azurerm_api_management.apim01.name
  display_name        = var.apim_group_name1
  description         = var.apim_group1_description

}

resource "azurerm_api_management_group" "apim_group2" {
  name                = "apim_group2"
  resource_group_name = azurerm_resource_group.rg1.name
  api_management_name = azurerm_api_management.apim01.name
  display_name        = var.apim_group_name2
  description         = var.apim_group2_description

}

resource "azurerm_api_management_group" "apim_group3" {
  name                = "apim_group3"
  resource_group_name = azurerm_resource_group.rg1.name
  api_management_name = azurerm_api_management.apim01.name
  display_name        = var.apim_group_name3
  description         = var.apim_group3_description

}