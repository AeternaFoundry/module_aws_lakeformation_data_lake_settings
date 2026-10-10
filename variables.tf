variable "lakeformation_data_lake_settings" {
  description = <<EOT
Map of lakeformation_data_lake_settings, attributes below
Optional:
    - admins
    - allow_external_data_filtering
    - allow_full_table_external_data_access
    - authorized_session_tag_value_list
    - catalog_id
    - external_data_filtering_allow_list
    - parameters
    - read_only_admins
    - region
    - trusted_resource_owners
    - create_database_default_permissions (block):
        - permissions (optional)
        - principal (optional)
    - create_table_default_permissions (block):
        - permissions (optional)
        - principal (optional)
EOT

  type = map(object({
    admins                                = optional(set(string))
    allow_external_data_filtering         = optional(bool)
    allow_full_table_external_data_access = optional(bool)
    authorized_session_tag_value_list     = optional(list(string))
    catalog_id                            = optional(string)
    external_data_filtering_allow_list    = optional(set(string))
    parameters                            = optional(map(string))
    read_only_admins                      = optional(set(string))
    region                                = optional(string)
    trusted_resource_owners               = optional(list(string))
    create_database_default_permissions = optional(list(object({
      permissions = optional(set(string))
      principal   = optional(string)
    })))
    create_table_default_permissions = optional(list(object({
      permissions = optional(set(string))
      principal   = optional(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.lakeformation_data_lake_settings : (
        v.create_database_default_permissions == null || (length(v.create_database_default_permissions) <= 3)
      )
    ])
    error_message = "Each create_database_default_permissions list must contain at most 3 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.lakeformation_data_lake_settings : (
        v.create_table_default_permissions == null || (length(v.create_table_default_permissions) <= 3)
      )
    ])
    error_message = "Each create_table_default_permissions list must contain at most 3 items"
  }
  # Note: 11 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

