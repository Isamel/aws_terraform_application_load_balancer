variable "alb_count" {
    type        = bool
    description = "alb count."
}

variable "alb_depends_on" {
    type        = list(string)
    description = "alb depends on"
}

variable "alb_name" {
    type        = string
    description = "alb name."
}

variable "alb_internal" {
    type        = bool
    description = "alb internal."
}

variable "alb_idle_timeout" {
    type        = number
    description = "alb idle timeout."
}

variable "alb_idle_load_balancer_type" {
    type        = string
    description = "alb idle load balancer type."
}

variable "alb_idle_security_groups" {
    type        = list(string)
    description = "alb idle security groups."
}

variable "alb_idle_subnets" {
    type        = list(string)
    description = "alb idle subnets."
}

variable "alb_idle_enable_deletion_protection" {
    type        = bool
    description = "alb idle enable deletion protection."
}

variable "alb_idle_enable_cross_zone_load_balancing" {
    type        = bool
    description = "alb idle enable cross zone load balancing."
}

variable "extra_tags" {
    type        = map(string)
    description = "extra tags."
}