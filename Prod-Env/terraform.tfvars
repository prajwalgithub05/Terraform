
#----------------Resourse Group variables----------------------------------------------------

resource_group_name     = "My_Terraform_win_RG"
resource_group_location = "West Europe" #Central US #East US #East US2  #South Central US

#---------------Webapp variables----------------------------------------------------------------

app_service_plan_name   = "my-appserviceplan-win"
app_service_name        = "terraform-demoapp"
api_service_name        = "terraform-demoapi"
app_service_os_type      = "Windows" # "Windows", "Linux"
app_service_sku_name    = "S1"      #F1, P1V2,
#sg_name                 = "mysg"
#--------------MSSQL server Variables-------------------------------------------------------------

mssql_server_name       = "example-sqlserverp" #"ppdemo-database-server"
mssql_server_version    = "12.0"
mssql_server_administrator_login = "4dm1n157r470r" #"ppdemoadmin"
mssql_server_administrator_login_password = "4-v3ry-53cr37-p455w0rd" #"ppdemopass_098p"

#-------------MSSQL database Variables-------------------------------------------------------------

mssql_database_name     = "ProductsDB" # "ppdemodb"
mssql_database_sku_name = "S0" # GP_S_Gen5_2, HS_Gen4_1, BC_Gen5_2, ElasticPool, Basic, S0, P2, DW100c, DS100

#-- ---------Storage account variables-------------------------------------------------------------

storage_account_name    = "examplesa21" 
storage_account_tier    = "Standard"
storage_account_replication_type = "LRS" #"GRS"

#-------------Keyvault variables-------------------------------------------------------------

keyvault_name         = "pdemokv01090"
#keyvault_skuname       = "standard"