
#-----------------------------------------------------------------------------------------------------------------#
#                        @@@@@@@@@@ Resource Group @@@@@@@@@@
#-----------------------------------------------------------------------------------------------------------------#

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

#-----------------------------------------------------------------------------------------------------------------#
#                        @@@@@@@@@@ App srvice plan @@@@@@@@@@
#-----------------------------------------------------------------------------------------------------------------#

resource "azurerm_service_plan" "plan" {
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  os_type             = var.app_service_os_type #"Windows" # "Windows", "Linux"
  sku_name            = var.app_service_sku_name #"S1"      #F1, P1V2, 
}

#-----------------------------------------------------------------------------------------------------------------#
#                        @@@@@@@@@@ APP @@@@@@@@@@
#-----------------------------------------------------------------------------------------------------------------#

resource "azurerm_windows_web_app" "app" {
  name                = var.app_service_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id     = azurerm_service_plan.plan.id

  site_config {
    always_on = false
    application_stack {
      dotnet_version = "v6.0" # "v3.0", "v4.0", "5.0", "v6.0"
    }
  }
} 

#-----------------------------------------------------------------------------------------------------------------#
#                        @@@@@@@@@@ API @@@@@@@@@@
#-----------------------------------------------------------------------------------------------------------------#

 resource "azurerm_windows_web_app" "api" {
  name                = var.api_service_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id     = azurerm_service_plan.plan.id

  site_config {
    always_on = false
    application_stack {
      dotnet_version = "v6.0" # "v3.0", "v4.0", "5.0", "v6.0"
    }
  }
} 

#----------------#-----------------#---------------#-----------------#---------------#-------------#---------------#