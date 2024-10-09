data external uuid {
    program = [ "bash", "${path.module}/uuid.pkgx" ]

    query = {
        deployment_file_path = var.deployment_file_path
    }
}