#--------------Resourse group Variable declaration-------
variable "resource_group_name" {
  type        = string
  description = "RG name in Azure"
}

variable "resource_group_location" {
  type        = string
  description = "RG location in Azure"
}

#--------------Webapp Variable declaration-------
variable "app_service_plan_name" {
  type        = string
  description = "App Service Plan name in Azure"
}

variable "app_service_os_type" {
  type        = string
  description = "Api Service OS type in Azure"
}

variable "app_service_sku_name" {
  type        = string
  description = "Api Service sku name in Azure"
}

variable "app_service_name" {
  type        = string
  description = "App Service name in Azure"
}

variable "api_service_name" {
  type        = string
  description = "Api Service name in Azure"
}



#--------------MSSQL server Variable declaration-------

variable "mssql_server_name" {
  type        = string
}

variable "mssql_server_version" {
  type        = string
}

variable "mssql_server_administrator_login" {
  type        = string
}

variable "mssql_server_administrator_login_password" {
  type        = string
}

#--------------MSSQL database Variable declaration-------

variable "mssql_database_name" {
  type        = string
}

variable "mssql_database_sku_name" {
  type        = string
}

#-----------------Storage account variable declaration-------------------

variable "storage_account_name" {
  type        = string
  description = "Storage account name in Azure"
}

variable "storage_account_tier" {
  type        = string
  description = "Storage account tier in Azure"
}

variable "storage_account_replication_type" {
  type        = string
  description = "Storage account replication type in Azure"
}

#-----------------Keyvault variable declaration-------------------

variable "keyvault_name" {
  type        = string
  description = "Key Vault name in Azure"
}

# variable "keyvault_skuname"{
#   type = string
#   description = "Key Vault sku"
# }