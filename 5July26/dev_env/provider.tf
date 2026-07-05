terraform {

 required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "4.80.0"
    }
 }
  backend "azurerm" {
   
    storage_account_name = "stgdevs"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "containerdevs"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "devsterraform.tfstate"       
  }
}


provider "azurerm" {
    features {}
}

