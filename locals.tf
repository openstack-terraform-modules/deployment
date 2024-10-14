locals {
    module_path   = path.module
    project_path  = abspath("${local.module_path}/../../../")
    tenant_name   = var.tenant_name
     # == "unset" ? element(split("-",uuid()),1) : var.tenant
    deployment_uuid = var.deployment_uuid != "" ? var.deployment_uuid : lower(uuid())
    deployment_uuid_short = element(split("-",local.deployment_uuid),0)
    deployment_id = local.tenant_name != "" ? join("-",[
        local.tenant_name,
        local.deployment_uuid_short
    ]) : local.deployment_uuid_short
    deployment_file_name = local.tenant_name != "" ? join("-", [local.tenant_name, "deployment.json"]) : "deployment.json"
    deployment_file_path = var.deployment_file_path != "" ? var.deployment_file_path : join("/", [local.project_path, local.deployment_file_name])
}