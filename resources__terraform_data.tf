resource terraform_data deployment {
    #
    # https://developer.hashicorp.com/terraform/language/resources/provisioners/local-exec
    #
    provisioner "local-exec" {
        when        = destroy
        interpreter = [ "/usr/bin/env", "-S", "pkgx", "+gnu.org/coreutils", "+bash^5", "bash" ]
        command     = "${path.module}/scripts/cleanup.pkgx"
    }
}