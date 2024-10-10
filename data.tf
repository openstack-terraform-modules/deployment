data external deployment {
    program = [ "sh", "${path.module}/deployment.pkgx" ]

    query = {
        deployment_file_path = var.deployment_file_path
    }
}