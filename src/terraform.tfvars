###################### Resource Groups #####################

rg1              = "demo-RG-APIM-DV"
rg2              = "demo-RG-DAAS-DV"
rg3              = "demo-RG-INFRA-DV"
rg4              = "demo-RG-DAAS-NP"
rg5              = "demo-RG-NET-DV"
location         = "West Europe"

############################################################

########################### AZURE_APPLICATION_GATEWAY ###########################

app_gateway_name           = "demo-AGW-EUS-DAAS-DV_01"
app_gateway_sku_name       = "WAF_v2"
app_gateway_sku_tier       = "WAF_v2"
app_gateway_capacity       = "2"
backend_address_pool_name1 = "demo-pool-daas-daas-case-api-8080-bp-8080"
backend_address_pool_name2 = "demo-pool-daas-daas-communication-api-8080-bp-8080"
backend_address_pool_name3 = "demo-pool-daas-daas-order-api-8080-bp-8080"
backend_address_pool_name4 = "demo-pool-daas-daas-party-api-8080-bp-8080"
backend_address_pool_name5 = "demo-pool-daas-daas-quote-api-8080-bp-8080"
backend_address_pool_name6 = "demo-pool-daas-daas-schedule-api-8080-bp-8080"
backend_address_pool_name7 = "demo-pool-daas-pods-quote-pricing-api-8080-bp-8080"

######### request_routing_rule_name #######
rule_type                  = "Basic"
priority1                  =  19500
priority2                  =  19505

########### http backend settings##########

http_setting_name1          = "demo-bp-daas-daas-case-api-8080-8080-daas-case-api-ingress"
http_setting_name2          = "demo-bp-daas-daas-communication-api-8080-8080-daas-communication-api-ingress"
http_setting_name3          = "demo-bp-daas-daas-order-api-8080-8080-daas-order-api-ingress"
http_setting_name4          = "demo-bp-daas-daas-party-api-8080-8080-daas-party-api-ingress"
http_setting_name5          = "demo-bp-daas-daas-quote-api-8080-8080-daas-quote-api"
http_setting_name6          = "demo-bp-daas-daas-schedule-api-8080-8080-daas-schedule-api-ingress"
http_setting_name7          = "demo-bp-daas-pods-quote-pricing-api-8080-8080-pods-quote-pricing-api-ingress"
http_setting_port           = 8080
http_setting_protocol       = "Http"






############################################################



########################### APIM ###########################

apim01                  = "demo-APIM-EUS-DV-01"
publisher_email         = "demo-abc@gmail.com"
publisher_name          = "demo-abc"
apim01_sku              = "Developer_1"
apim01_protocol         = "http"
apim01_url              = "https://in-locum.pods.com/api"

apim_group_name1        = "demo-Administrators"
apim_group_name2        = "demo-Developers"
apim_group_name3        = "demo-Guests"

apim_group1_description = "demo-Administrators is a built-in group containing the admin email account provided at the time of service creation. Its membership is managed by the system."
apim_group2_description = "demo-Developers is a built-in group. Its membership is managed by the system. Signed-in users fall into this group."
apim_group3_description = "demo-Guests is a built-in group. Its membership is managed by the system. Unauthenticated users visiting the developer portal fall into this group."


############################################################

###########################  containerRegistry1  ###########

acr1                    = "demopodscreusdv"
acr_sku                 = "Premium"
admin_enabled           =  true
geo_location1           =  "East US"
geo_location2           =  "North Europe"
zone_redundancy_enabled =  "true"

#################################################################

############################# virtual-network  ##################

vnet1            = "demo-VN_EUS-DV-01"
addr             = ["10.226.0.0/18"]
dns_servers      = ["10.224.34.5","10.40.7.2"]

#################################################################

########################### subnets  ############################

subnet_names     = ["SN-DV-AKS-01", "SN-DV-HVRAPP-01", "SN-DV-CALDB-01", "SN-DV-CSPDB-01", "SN-DV-CSPAPP-01", "SN-DV-CALWEB-01", "SN-DV-PEP-01", "SN-DV-CALAPP-01", "SN-DV-MAPAPP-01", "SN-DV-MAPAPP-02", "AzureBastionSubnet", "SN-DV-HVRDB-01", "SN-DV-AGW-01", "SN-DV-JAMS-01", "SN-DV-APIGW-01", "SN-DV-AVD-01", "SN-DV-LB-01", "SN-DV-PODSSQL-01", "SN-DV-PODSAPP-01", "SN-DV-PODSAPPIM-01", "SN-DV-MAPDB-01", "SN-DV-POCOrderAutomation-01"] 
subnet_address   = [
    ["10.226.32.0/21"], ["10.226.4.0/27"], ["10.226.3.64/21"], ["10.226.20.0/27"], ["10.226.16.0/22"], ["10.226.3.0/27"], ["10.226.2.0/24"], ["10.226.3.32/27"], ["10.226.5.0/27"], ["10.226.5.32/27"], ["10.226.0.0/26"], ["10.226.4.32/27"], ["10.226.1.0/24"], ["10.2266.0/27"], ["10.226.7.0/27"], ["10.226.8.0/24"], ["10.226.11.0/34"], ["10.226.9.0/24"], ["10.226.10.0/24"], ["10.226.12.0/28"], ["10.226.13.0/29"], ["10.226.14.0/27"]
] 


#########################################################################################

########################### azurerm_network_security_group  ############################

nsg_names         = ["NSG-DV-AKS-01","NSG-DV-HVRAPP-01","NSG-DV-CALDB-01","NSG-DV-CSPDB-01","NSG-DV-CSPAPP-01","NSG-DV-CALWEB-01","NSG-DV-PEP-01","NSG-DV-CALAPP-01","A","B","C","D","NSG-DV-AGW-01","E","F","G","H","SQL-nsg","APP-nsg","NSG-SN-DV-PODSAP-01","",""]  

##############################################################################################

###########################  azurerm_kubernetes_cluster  ################################

cluster_name      = "demo-AKS-EUS-DV-01"
node_pool_name    = "demo-default"
node_count        = 1
vm_size           = "Standard_D2_v2"

##############################################################################################



########################## azurerm FrontDoor  ################################

frontdoor_name    = "demo-FD-APIM-DV-01"







