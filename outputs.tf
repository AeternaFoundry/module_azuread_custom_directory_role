output "custom_directory_roles_id" {
  description = "Map of id values across all custom_directory_roles, keyed the same as var.custom_directory_roles"
  value       = { for k, v in azuread_custom_directory_role.custom_directory_roles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "custom_directory_roles_description" {
  description = "Map of description values across all custom_directory_roles, keyed the same as var.custom_directory_roles"
  value       = { for k, v in azuread_custom_directory_role.custom_directory_roles : k => v.description if v.description != null && length(v.description) > 0 }
}
output "custom_directory_roles_display_name" {
  description = "Map of display_name values across all custom_directory_roles, keyed the same as var.custom_directory_roles"
  value       = { for k, v in azuread_custom_directory_role.custom_directory_roles : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "custom_directory_roles_enabled" {
  description = "Map of enabled values across all custom_directory_roles, keyed the same as var.custom_directory_roles"
  value       = { for k, v in azuread_custom_directory_role.custom_directory_roles : k => v.enabled if v.enabled != null }
}
output "custom_directory_roles_object_id" {
  description = "Map of object_id values across all custom_directory_roles, keyed the same as var.custom_directory_roles"
  value       = { for k, v in azuread_custom_directory_role.custom_directory_roles : k => v.object_id if v.object_id != null && length(v.object_id) > 0 }
}
output "custom_directory_roles_permissions" {
  description = "Map of permissions values across all custom_directory_roles, keyed the same as var.custom_directory_roles"
  value       = { for k, v in azuread_custom_directory_role.custom_directory_roles : k => v.permissions if v.permissions != null && length(v.permissions) > 0 }
}
output "custom_directory_roles_template_id" {
  description = "Map of template_id values across all custom_directory_roles, keyed the same as var.custom_directory_roles"
  value       = { for k, v in azuread_custom_directory_role.custom_directory_roles : k => v.template_id if v.template_id != null && length(v.template_id) > 0 }
}
output "custom_directory_roles_version" {
  description = "Map of version values across all custom_directory_roles, keyed the same as var.custom_directory_roles"
  value       = { for k, v in azuread_custom_directory_role.custom_directory_roles : k => v.version if v.version != null && length(v.version) > 0 }
}

