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
      account_id = "924144197303"
      mail_id    = "hello@clouddrove.com"
      invite     = true
    },
    # {
    #   account_id = "924144197303"
    #   mail_id    = "temp@clouddrove.com"
    #   invite     = true
    # }
  ]

  #standards 
  enabled_standards = [
    "standards/aws-foundational-security-best-practices/v/1.0.0",
    "ruleset/cis-aws-foundations-benchmark/v/1.2.0",
    "aws-foundational-security-best-practices/v/1.0.0",
    "cis-aws-foundations-benchmark/v/1.2.0",
    "nist-800-53/v/5.0.0",
    "pci-dss/v/4.0.1"
  ]

  #products
  enabled_products = [
    "product/aws/guardduty",
    "product/aws/inspector",
    "product/aws/macie"
  ]
}