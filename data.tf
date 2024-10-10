data external deployment {
    program = [ "/usr/bin/env -S pkgx +jq^1.6 bash^5", "${path.module}/scripts/deployment.pkgx" ]

    query = {
        tenant_name = local.tenant_name
        deployment_uuid = local.deployment_uuid
        deployment_file_path = local.deployment_file_path
    }
}