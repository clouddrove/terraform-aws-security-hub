provider "aws" {
  region = "us-east-1"
}

module "security-hub" {
  source = "../"

  name                 = "test"
  security_hub_enabled = true

  #member account add
  member_details = [
    {
      account_id = "1122334466"
      mail_id    = "hello@clouddrove.com"
      invite     = true
    },
    {
      account_id = "1122334455"
      mail_id    = "temp@clouddrove.com"
      invite     = true
    }
  ]

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