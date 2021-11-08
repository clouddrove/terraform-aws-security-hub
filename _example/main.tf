provider "aws" {
region = "us-east-1"   
}

module "security-hub" {
    source = "../"  
   
    name = "test"
    security_hub_enabled = true 
    enabled_standards    = [
                            "standards/aws-foundational-security-best-practices/v/1.0.0",
                            "ruleset/cis-aws-foundations-benchmark/v/1.2.0"
                            ]
 }