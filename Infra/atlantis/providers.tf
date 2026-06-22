terraform {
  required_providers {
    snowflake = {
      source = "snowflakedb/snowflake"
    }
  }
}

provider "snowflake" {
  organization_name = "YGUEVLA" 
  account_name      = "ID96582" 
  user              = "CHIZOBAEZE" 
  password          = var.snowflake_admin_password
  }