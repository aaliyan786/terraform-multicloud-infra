terraform {
  required_version = ">= 0.15"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
    oci = {
      source  = "hashicorp/oci"
      version = ">= 4.0.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.0.0"
    }
  }
  # backend "s3" {
  #   bucket         = "hybridinfrastatebucket"
  #   dynamodb_table = "hybridinfrastatelockdb"
  #   key            = "remote_backend/terraform.tfstate"
  #   region         = "us-east-1"
  #   encrypt        = true
  # }
}


provider "aws" {
  region = "us-east-1"
  alias  = "us"
}


provider "oci" {
  region = "us-phoenix-1"
  alias  = "oci_us"
}


provider "azurerm" {
  features {}
  subscription_id = var.subscription_id_1
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  alias           = "azure_ind"
}


provider "azurerm" {
  features {}
  subscription_id = var.subscription_id_2
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  alias           = "azure_ind_2"
}