terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.56.0"
    }
  }
}

provider "azurerm" {

  subscription_id = "e5476362-58a0-48f7-8197-5aa05a4abfa5"
  features {}

}

