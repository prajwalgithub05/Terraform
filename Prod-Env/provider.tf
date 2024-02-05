provider "azurerm" {
  subscription_id = "a7971729-5ed4-4161-8536-e4d9703accc3"
  features {}
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version =  "3.15.0" #"2.78.0" #3.15.0
    }
  }
}