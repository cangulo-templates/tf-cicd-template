locals {
  service_name     = "microservices"
  resources_prefix = "${var.client}-${var.stage}-${var.service_group}-${local.service_name}"
}
