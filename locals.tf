locals {
    module_path   = path.module
    project_path  = abspath("${local.module_path}/../../../")
    tenant_name   = var.tenant_name
     # == "unset" ? element(split("-",uuid()),1) : var.tenant
    deployment_id = join("-",[
        local.tenant_name,
        element(split("-",uuid()),1)
    ])
    deployment_file_path = var.deployment_file_path != "" ? var.deployment_file_path : "${local.project_path}/${tenant_name}-deployment.json"
}