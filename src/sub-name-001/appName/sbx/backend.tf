terraform {
  backend "azurerm" {
    key              = "appName001/sbx/terra.tfstate"
    use_cli          = true
    use_azuread_auth = true # Can also be set via `ARM_USE_AZUREAD` environment variable.
    use_oidc         = true
    #tenant_id            = "00000000-0000-0000-0000-000000000000" # Can also be set via `ARM_TENANT_ID` environment variable.
    #client_id            = "00000000-0000-0000-0000-000000000000" # Can also be set via `ARM_CLIENT_ID` environment variable.
    storage_account_name = "stgmeltaierorgtfstate" # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "tfstate"               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
  }

  required_version = "~> 1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}
