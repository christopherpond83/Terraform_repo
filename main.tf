# 1. Tell Terraform to use Azure
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

# 2. Configure the Azure Provider
provider "azurerm" {
  features {}
}

# 3. Create a Resource Group (The Lego Box)
resource "azurerm_resource_group" "my_lab_rg" {
  name     = "employer-demo-rg"
  location = "East US"
}
