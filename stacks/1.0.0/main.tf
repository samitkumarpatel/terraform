terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
  # backend "azurerm" {
  #   resource_group_name  = "tfstate01"
  #   storage_account_name = "saazwetfstate001"
  #   container_name       = "tfstate"
  #   key                  = "k8s.terraform.tfstate"
  # }
}

provider "azurerm" {
  features {}
}

module "rg" {
  source = "../../modules/rg"
  name   = var.rg_name
  tags   = var.tags
}