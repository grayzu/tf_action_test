terraform {
  backend "remote" {
    organization = "OSS-integrations"

    workspaces {
      name = "basic-demo"
    }
  }
}

provider "azurerm" {
  features {}
}

