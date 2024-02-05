#-----------------------------------------------------------------------------------------------------------------#
#                        @@@@@@@@@ SQL Server @@@@@@@@@
#-----------------------------------------------------------------------------------------------------------------#
resource "azurerm_mssql_server" "example" {
  name                         = var.mssql_server_name 
  resource_group_name          = azurerm_resource_group.rg.name
  location                     = azurerm_resource_group.rg.location
  version                      = var.mssql_server_version 
  administrator_login          = var.mssql_server_administrator_login 
  administrator_login_password = var.mssql_server_administrator_login_password 
}

#-----------------------------------------------------------------------------------------------------------------#
#                        @@@@@@@@@@ SQL Database DTU @@@@@@@@@@
#-----------------------------------------------------------------------------------------------------------------#

resource "azurerm_mssql_database" "db" {
  name           = var.mssql_database_name 
  server_id      = azurerm_mssql_server.example.id
  collation      = "SQL_Latin1_General_CP1_CI_AS"
  license_type   = "LicenseIncluded"
  sku_name       = var.mssql_database_sku_name 
  zone_redundant = false
}