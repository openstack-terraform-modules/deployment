data external deployment {
    #
    # https://registry.terraform.io/providers/hashicorp/external/latest/docs/data-sources/external
    #
    program = [
        "/usr/bin/env", "-S", "pkgx", "+jq^1.7", "+bash^5", "bash",
        "${path.module}/scripts/deployment.pkgx"
    ]

    query = {
        tenant_name = local.tenant_name
        domain_name = local.domain_name
        deployment_uuid = local.deployment_uuid
        deployment_id = local.deployment_id
        deployment_file_path = local.deployment_file_path
    }
}