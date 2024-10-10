data external deployment {
    program = [ "${path.module}/scripts/deployment.pkgx" ]

    query = {
        tenant_name = local.tenant_name
        deployment_uuid = local.deployment_uuid
        deployment_id = local.deployment_id
        deployment_file_path = local.deployment_file_path
    }
}