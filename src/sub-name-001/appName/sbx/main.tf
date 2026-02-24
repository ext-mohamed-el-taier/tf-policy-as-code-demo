/*
 * # Resource Group Module
 *
 * This module creates an empty Resource Group.
 */
terraform {
  required_version = "~> 1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}


module "rg" {
  source            = "../../../../modules/azure/azure-resource-group"
  resourceGroupName = var.resourceGroupName
  tags              = var.tags
}
