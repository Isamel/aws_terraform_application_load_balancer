resource "null_resource" "depends_on" {
    triggers = {
        depends_on = join("", var.alb_depends_on)
    }
}

resource "aws_lb" "lb_terraform" {
    count                            = var.alb_count
    depends_on                       = [null_resource.depends_on]
    name                             = var.alb_name
    internal                         = var.alb_internal
    idle_timeout                     = var.alb_idle_timeout
    load_balancer_type               = var.alb_idle_load_balancer_type
    security_groups                  = var.alb_idle_security_groups
    subnets                          = var.alb_idle_subnets
    enable_deletion_protection       = var.alb_idle_enable_deletion_protection
    enable_cross_zone_load_balancing = var.alb_idle_enable_cross_zone_load_balancing
    tags                             = local.tags
}