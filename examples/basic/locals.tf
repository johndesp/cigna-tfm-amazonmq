locals {
  common_tags = {
    environment = "${var.environment}"
    service     = "${var.service}"
    component   = "${var.component}"
    owner       = "${var.owner}"
    deployment  = "${var.deployment}"
    supports    = "${var.supports}"
  }
}
