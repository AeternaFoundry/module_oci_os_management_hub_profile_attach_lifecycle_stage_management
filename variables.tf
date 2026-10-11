variable "os_management_hub_profile_attach_lifecycle_stage_managements" {
  description = <<EOT
Map of os_management_hub_profile_attach_lifecycle_stage_managements, attributes below
Required:
    - lifecycle_stage_id
    - profile_id
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    lifecycle_stage_id = string
    profile_id         = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

