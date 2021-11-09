provider "aws" {
  region = "us-east-1"
}

module "security-hub" {
  source = "../"

  name                 = "test"
  security_hub_enabled = true

  #member account add
  enable_member_account = true
  member_account_id     = "123344847783"
  member_mail_id        = "hello@clouddrove.com"

  #standards 
  enabled_standards = [
    "standards/aws-foundational-security-best-practices/v/1.0.0",
    "ruleset/cis-aws-foundations-benchmark/v/1.2.0"
  ]
  #products
  enabled_products = [
    "product/aws/guardduty",
    "product/aws/inspector",
    "product/aws/macie"
  ]
}