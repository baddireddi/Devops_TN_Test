terraform {
  required_version = ">= 1.0"

  backend "azurerm" {
    resource_group_name  = "rg-devsecops"
    storage_account_name = "devsecopsstorage123"
    container_name       = "tfstate"
    key                  = "infra/terraform.tfstate"  # Keeping state file organized
  }
}

provider "azurerm" {
  features {}
}

variable "env" {
  type    = string
  default = "dev"  # Change this for different environments
}
