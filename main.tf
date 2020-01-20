data "aws_caller_identity" "current" {
}

module "label" {
  source     = "../ses-lambda-forwarder.label"
  namespace  = var.namespace
  stage      = var.stage
  name       = var.name
  delimiter  = var.delimiter
  attributes = var.attributes
  tags       = var.tags
}
