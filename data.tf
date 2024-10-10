data external deployment {
    program = [ "sh", "${path.module}/deployment.pkgx" ]

    query = {
        tenant_name = local.tenant_name
        deployment_file_path = local.deployment_file_path
    }
}