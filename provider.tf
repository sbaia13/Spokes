# Azure Provider source and version being used
terraform {
  backend "azurerm" {
    resource_group_name  = "backend"
    storage_account_name = "backendgithubworkflow1"
    container_name       = "tfstate"
    key                  = "SpokeProd.tfstate"
    subscription_id = "c435e127-e11a-4d08-9385-fea28f616dcc"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.51.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}
