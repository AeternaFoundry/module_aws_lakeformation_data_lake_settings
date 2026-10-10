output "lakeformation_data_lake_settings_id" {
  description = "Map of id values across all lakeformation_data_lake_settings, keyed the same as var.lakeformation_data_lake_settings"
  value       = { for k, v in aws_lakeformation_data_lake_settings.lakeformation_data_lake_settings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "lakeformation_data_lake_settings_admins" {
  description = "Map of admins values across all lakeformation_data_lake_settings, keyed the same as var.lakeformation_data_lake_settings"
  value       = { for k, v in aws_lakeformation_data_lake_settings.lakeformation_data_lake_settings : k => v.admins if v.admins != null && length(v.admins) > 0 }
}
output "lakeformation_data_lake_settings_allow_external_data_filtering" {
  description = "Map of allow_external_data_filtering values across all lakeformation_data_lake_settings, keyed the same as var.lakeformation_data_lake_settings"
  value       = { for k, v in aws_lakeformation_data_lake_settings.lakeformation_data_lake_settings : k => v.allow_external_data_filtering if v.allow_external_data_filtering != null }
}
output "lakeformation_data_lake_settings_allow_full_table_external_data_access" {
  description = "Map of allow_full_table_external_data_access values across all lakeformation_data_lake_settings, keyed the same as var.lakeformation_data_lake_settings"
  value       = { for k, v in aws_lakeformation_data_lake_settings.lakeformation_data_lake_settings : k => v.allow_full_table_external_data_access if v.allow_full_table_external_data_access != null }
}
output "lakeformation_data_lake_settings_authorized_session_tag_value_list" {
  description = "Map of authorized_session_tag_value_list values across all lakeformation_data_lake_settings, keyed the same as var.lakeformation_data_lake_settings"
  value       = { for k, v in aws_lakeformation_data_lake_settings.lakeformation_data_lake_settings : k => v.authorized_session_tag_value_list if v.authorized_session_tag_value_list != null && length(v.authorized_session_tag_value_list) > 0 }
}
output "lakeformation_data_lake_settings_catalog_id" {
  description = "Map of catalog_id values across all lakeformation_data_lake_settings, keyed the same as var.lakeformation_data_lake_settings"
  value       = { for k, v in aws_lakeformation_data_lake_settings.lakeformation_data_lake_settings : k => v.catalog_id if v.catalog_id != null && length(v.catalog_id) > 0 }
}
output "lakeformation_data_lake_settings_create_database_default_permissions" {
  description = "Map of create_database_default_permissions values across all lakeformation_data_lake_settings, keyed the same as var.lakeformation_data_lake_settings"
  value       = { for k, v in aws_lakeformation_data_lake_settings.lakeformation_data_lake_settings : k => v.create_database_default_permissions if v.create_database_default_permissions != null && length(v.create_database_default_permissions) > 0 }
}
output "lakeformation_data_lake_settings_create_table_default_permissions" {
  description = "Map of create_table_default_permissions values across all lakeformation_data_lake_settings, keyed the same as var.lakeformation_data_lake_settings"
  value       = { for k, v in aws_lakeformation_data_lake_settings.lakeformation_data_lake_settings : k => v.create_table_default_permissions if v.create_table_default_permissions != null && length(v.create_table_default_permissions) > 0 }
}
output "lakeformation_data_lake_settings_external_data_filtering_allow_list" {
  description = "Map of external_data_filtering_allow_list values across all lakeformation_data_lake_settings, keyed the same as var.lakeformation_data_lake_settings"
  value       = { for k, v in aws_lakeformation_data_lake_settings.lakeformation_data_lake_settings : k => v.external_data_filtering_allow_list if v.external_data_filtering_allow_list != null && length(v.external_data_filtering_allow_list) > 0 }
}
output "lakeformation_data_lake_settings_parameters" {
  description = "Map of parameters values across all lakeformation_data_lake_settings, keyed the same as var.lakeformation_data_lake_settings"
  value       = { for k, v in aws_lakeformation_data_lake_settings.lakeformation_data_lake_settings : k => v.parameters if v.parameters != null && length(v.parameters) > 0 }
}
output "lakeformation_data_lake_settings_read_only_admins" {
  description = "Map of read_only_admins values across all lakeformation_data_lake_settings, keyed the same as var.lakeformation_data_lake_settings"
  value       = { for k, v in aws_lakeformation_data_lake_settings.lakeformation_data_lake_settings : k => v.read_only_admins if v.read_only_admins != null && length(v.read_only_admins) > 0 }
}
output "lakeformation_data_lake_settings_region" {
  description = "Map of region values across all lakeformation_data_lake_settings, keyed the same as var.lakeformation_data_lake_settings"
  value       = { for k, v in aws_lakeformation_data_lake_settings.lakeformation_data_lake_settings : k => v.region if v.region != null && length(v.region) > 0 }
}
output "lakeformation_data_lake_settings_trusted_resource_owners" {
  description = "Map of trusted_resource_owners values across all lakeformation_data_lake_settings, keyed the same as var.lakeformation_data_lake_settings"
  value       = { for k, v in aws_lakeformation_data_lake_settings.lakeformation_data_lake_settings : k => v.trusted_resource_owners if v.trusted_resource_owners != null && length(v.trusted_resource_owners) > 0 }
}

