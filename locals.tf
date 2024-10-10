locals {
    module_path     = path.module
    project_path    = abspath("${local.module_path}/../../../")
    tenant_id       = var.tenant
     # == "unset" ? element(split("-",uuid()),1) : var.tenant
    deployment_id   = join("-",[
        local.tenant_id,
        element(split("-",uuid()),1)
    ])
    #deployment_json = "${local.project_path}/deployment.json"
}