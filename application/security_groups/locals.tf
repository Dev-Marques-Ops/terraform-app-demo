locals {
    load_balancer_security_group = [{
        port        = var.ports.http
        protocol    = "tcp"
    },
    {
        port        = var.ports.https
        protocol    = "tcp"
    }]

    app_vm_security_group = [{
        port        = var.ports.http
        protocol    = "tcp"
        cidr_blocks = var.all_ips
    },
    {
        port        = var.ports.ssh
        protocol    = "tcp"
        cidr_blocks = var.public_cidr_block
    }]
}