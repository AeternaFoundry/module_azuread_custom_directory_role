output "custom_directory_roles_id" {
  description = "Map of id values across all custom_directory_roles, keyed the same as var.custom_directory_roles"
  value       = { for k, v in azuread_custom_directory_role.custom_directory_roles : k => v.id }
}
output "custom_directory_roles_description" {
  description = "Map of description values across all custom_directory_roles, keyed the same as var.custom_directory_roles"
  value       = { for k, v in azuread_custom_directory_role.custom_directory_roles : k => v.description }
}
output "custom_directory_roles_display_name" {
  description = "Map of display_name values across all custom_directory_roles, keyed the same as var.custom_directory_roles"
  value       = { for k, v in azuread_custom_directory_role.custom_directory_roles : k => v.display_name }
}
output "custom_directory_roles_enabled" {
  description = "Map of enabled values across all custom_directory_roles, keyed the same as var.custom_directory_roles"
  value       = { for k, v in azuread_custom_directory_role.custom_directory_roles : k => v.enabled }
}
output "custom_directory_roles_object_id" {
  description = "Map of object_id values across all custom_directory_roles, keyed the same as var.custom_directory_roles"
  value       = { for k, v in azuread_custom_directory_role.custom_directory_roles : k => v.object_id }
}
output "custom_directory_roles_permissions" {
  description = "Map of permissions values across all custom_directory_roles, keyed the same as var.custom_directory_roles"
  value       = { for k, v in azuread_custom_directory_role.custom_directory_roles : k => v.permissions }
}
output "custom_directory_roles_template_id" {
  description = "Map of template_id values across all custom_directory_roles, keyed the same as var.custom_directory_roles"
  value       = { for k, v in azuread_custom_directory_role.custom_directory_roles : k => v.template_id }
}
output "custom_directory_roles_version" {
  description = "Map of version values across all custom_directory_roles, keyed the same as var.custom_directory_roles"
  value       = { for k, v in azuread_custom_directory_role.custom_directory_roles : k => v.version }
}

