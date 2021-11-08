variable "enabled_standards" {
    type = list(any)
    default = [
               "standards/aws-foundational-security-best-practices/v/1.0.0",
               "ruleset/cis-aws-foundations-benchmark/v/1.2.0"
              ]
  
}