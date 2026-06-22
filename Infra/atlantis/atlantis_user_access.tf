resource "snowflake_account_role" "lone_atlantis_role" {
  name = "ATLANTIS_ROLE"
 }

resource "snowflake_user" "lone_star_atlantis" {
  name         = "lone_star_atlantis"
  login_name   = "lone_star_atlantis"
  password     = var.atlantis_user_password
  disabled     = "false"
  display_name = "lone_star_assurance_dbt_platform"
  must_change_password = "false"
  email        = var.atlantis_user_email}

resource "snowflake_grant_account_role" "grant_securityadmin_role" {
 role_name        = "SECURITYADMIN"
 parent_role_name = snowflake_account_role.lone_atlantis_role.name
 }

resource "snowflake_grant_account_role" "grant_sysadmin_role" {
 role_name        = "SYSADMIN"
 parent_role_name = snowflake_account_role.lone_atlantis_role.name
}

resource "snowflake_grant_account_role" "grant_atlantis_role_to_atlantis_user" {
 role_name = snowflake_account_role.lone_atlantis_role.name
 user_name = snowflake_user.lone_star_atlantis.name
}