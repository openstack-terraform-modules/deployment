output uuid {
    value = lookup(
    data.external.deployment.result,
    "deployment_uuid",
    "NOT FOUND ERROR"
  )
}

output "id" {
  value = lookup(
    data.external.deployment.result,
    "deployment_id",
    "NOT FOUND ERROR"
  )
}

output "project_path" {
  value = local.project_path
}