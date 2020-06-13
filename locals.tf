locals {
  tags  = merge(
      map("key", "resource_name", "value", var.alb_name),
      var.extra_tags
  )
}