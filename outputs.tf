output uuid {
    value = lookup(
    data.external.deployment.result,
    "deployment_uuid",
    "NOT FOUND ERROR"
  )
}

output id {
  value = lookup(
    data.external.deployment.result,
    "deployment_id",
    "NOT FOUND ERROR"
  )
}

output tenant_name {
  value = lookup(
    data.external.deployment.result,
    "tenant_name",
    "NOT FOUND ERROR"
  )
}

output deployment_file_path {
    value = local.deployment_file_path
}
output project_path {
  value = local.project_path
}