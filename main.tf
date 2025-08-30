terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.42.0"
    }
  }
  backend "azurerm"{
  subscription_id      = "5e4fafbb-ef69-4e17-8835-68030d81f758"
  resource_group_name  = "Agrawest"
  storage_account_name = "aug15"
  container_name       = "statefile"
  key                  = "new.tfstate"    
  }
}

provider "azurerm" {
  features{}
subscription_id = "5e4fafbb-ef69-4e17-8835-68030d81f758"
  # Configuration options
}

resource "azurerm_resource_group" "test" {
  name     = "Test"
  location = "West Europe"
}


