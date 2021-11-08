module "labels" {
  source  = "clouddrove/labels/aws"
  version = "0.15.0"

  name        = var.name
  repository  = var.repository
  environment = var.environment
  managedby   = var.managedby
  label_order = var.label_order
}

locals {
  enabled_standards_arns = toset([
    for standard in var.enabled_standards :
    format("arn:%s:securityhub:%s::%s", data.aws_partition.security_hub.partition, length(regexall("ruleset", standard)) == 0 ? data.aws_region.security_hub.name : "", standard)
  ])
}
data "aws_partition" "security_hub" {}
data "aws_region" "security_hub" {}

resource "aws_securityhub_account" "security_hub" {
  count = var.security_hub_enabled ? 1 : 0
   
}

resource "aws_securityhub_standards_subscription" "standards" {
  for_each      = local.enabled_standards_arns
  depends_on    = [aws_securityhub_account.security_hub]
  standards_arn = each.key
}






