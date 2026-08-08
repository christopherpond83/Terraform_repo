# 1. Standard Resource Group
resource "azurerm_resource_group" "my_lab_rg" {
  name     = "company-${var.environment}-rg"
  location = var.location
}

# 2. Permanent Storage Account for your Terraform State File
resource "azurerm_storage_account" "tf_state_sa" {
  name                     = "tfstateinterview777" # MUST BE UNIQUE! If it fails, change "777" to your favorite random numbers.
  resource_group_name      = azurerm_resource_group.my_lab_rg.name
  location                 = azurerm_resource_group.my_lab_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# 3. Private Blob Container inside the Storage Account to hold the map file
resource "azurerm_storage_container" "tf_state_container" {
  name                  = "tstate"
  storage_account_name  = azurerm_storage_account.tf_state_sa.name
  container_access_type = "private"
}
