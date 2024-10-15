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

output file_path {
    value = local.deployment_file_path
}
output project_path {
  value = local.project_path
}

output outputs {
  value = {
    uuid = lookup(
      data.external.deployment.result,
      "deployment_uuid",
      "NOT FOUND ERROR"
    )
    id = lookup(
      data.external.deployment.result,
      "deployment_id",
      "NOT FOUND ERROR"
    )
    tenant_name = lookup(
      data.external.deployment.result,
      "tenant_name",
     "NOT FOUND ERROR"
    )
    file_path = local.deployment_file_path
  }
}