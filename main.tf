resource "oci_os_management_hub_profile_attach_lifecycle_stage_management" "os_management_hub_profile_attach_lifecycle_stage_managements" {
  for_each = var.os_management_hub_profile_attach_lifecycle_stage_managements

  lifecycle_stage_id = each.value.lifecycle_stage_id
  profile_id         = each.value.profile_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

