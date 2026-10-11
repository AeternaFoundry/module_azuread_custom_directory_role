variable "custom_directory_roles" {
  description = <<EOT
Map of custom_directory_roles, attributes below
Required:
    - display_name
    - enabled
    - version
    - permissions (block):
        - allowed_resource_actions (required)
Optional:
    - description
    - template_id
EOT

  type = map(object({
    display_name = string
    enabled      = bool
    version      = string
    description  = optional(string)
    template_id  = optional(string)
    permissions = list(object({
      allowed_resource_actions = set(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.custom_directory_roles : (
        length(v.permissions) >= 1
      )
    ])
    error_message = "Each permissions list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.custom_directory_roles : (
        length(v.display_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.custom_directory_roles : (
        alltrue([for item in v.permissions : (alltrue([for x in item.allowed_resource_actions : length(x) > 0]))])
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.custom_directory_roles : (
        length(v.version) >= 1 && length(v.version) <= 128
      )
    ])
    error_message = "must be between 1 and 128 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.custom_directory_roles : (
        v.template_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.template_id)))
      )
    ])
    error_message = "must be a valid UUID"
  }
}

