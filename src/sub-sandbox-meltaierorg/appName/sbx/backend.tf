terraform {
  backend "azurerm" {
    use_cli          = true
    use_azuread_auth = true
    use_oidc         = true
  }

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
