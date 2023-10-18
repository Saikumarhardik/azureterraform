######################  Resource Groups  ########################
variable "rg1" {
  type = string
}

variable "rg2" {
  type = string
}

variable "rg3" {
  type = string
}

variable "rg4" {
  type = string
}

variable "rg5" {
  type = string
}


variable "location" {
  type = string
}

###########################  END  ########################################################

########################### AZURE_APPLICATION_GATEWAY ######################################

variable "app_gateway_name" {
  type = string
}

variable "app_gateway_sku_name" {
  type = string
}

variable "app_gateway_sku_tier" {
  type = string
}

variable "app_gateway_capacity" {
  type = string 
} 

variable "backend_address_pool_name1" {
  type = string
}

variable "backend_address_pool_name2" {
  type = string
}

variable "backend_address_pool_name3" {
  type = string
}

variable "backend_address_pool_name4" {
  type = string
}

variable "backend_address_pool_name5" {
  type = string
}

variable "backend_address_pool_name6" {
  type = string
}

variable "backend_address_pool_name7" {
  type = string
}

variable "rule_type" {
  type = string
}

variable "priority1" {
  type = string
}

variable "priority2" {
  type = string
}

#######################backend_http_settings_name################

variable "http_setting_name1" {
  type = string
}

variable "http_setting_name2" {
  type = string
}

variable "http_setting_name3" {
  type = string
}

variable "http_setting_name4" {
  type = string
}

variable "http_setting_name5" {
  type = string
}

variable "http_setting_name6" {
  type = string
}

variable "http_setting_name7" {
  type = string
}

variable "http_setting_port" {
  type = string
}

variable "http_setting_protocol" {
  type = string
}

###########################  END  ###############################################################

###########################  APIM  ##############################

variable "apim01" {
  type = string
}

variable "publisher_email" {
  type = string
}

variable "publisher_name" {
  type = string
}

variable "apim01_sku" {
  type = string
}

variable "apim01_protocol" {
  type = string
}

variable "apim01_url" {
  type = string
}

variable "apim_group_name1" {
  type = string
}

variable "apim_group_name2" {
  type = string
}

variable "apim_group_name3" {
  type = string
}

variable "apim_group1_description" {
  type = string
}

variable "apim_group2_description" {
  type = string
}

variable "apim_group3_description" {
  type = string
}


###########################  END #################################

###########################  Container-Registry  #################

variable "acr1" {
  type = string
}

variable "acr_sku" {
  type = string  
}

variable "admin_enabled" {
  type = string
}

variable "geo_location1" {
  type = string
}

variable "geo_location2" {
  type = string  
}

variable "zone_redundancy_enabled" {
  type = string
}



###########################  END #################################

########################### virtual network  #####################

variable "vnet1" {
  type = string
}

variable "addr" {
   type = list(string) 
}

variable "dns_servers" {
   type = list(string) 
}

###########################  END #################################

########################### subnets  ############################

variable "subnet_names" {
  type = list(string)
}

variable "subnet_address" {
  type = list(list(string))
}

#################################################################

########################### azurerm_network_security_group  ############################

variable "nsg_names" {
  type = list(string)
}

########################################################################################

###################################  azure kubernetes service  ############################

variable "cluster_name" {
  type = string
}

variable "node_pool_name" {
  type = string
}

variable "node_count" {
  type = string
}

variable "vm_size" {
  type = string
}

#################################################################



#################### frontdoor ##################################

variable "frontdoor_name" {
  type = string
}





