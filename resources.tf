resource terraform_data deployment {
    provisioner "local-exec" {
        when        = destroy
        interpreter = [ "bash" ]
        command     = "${path.module}/scripts/cleanup.pkgx"
    }
}