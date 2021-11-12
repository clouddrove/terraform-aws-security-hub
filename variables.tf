

variable "enabled_standards" {
  description = <<-DOC
    The possible values are:
    - standards/aws-foundational-security-best-practices/v/1.0.0
    - ruleset/cis-aws-foundations-benchmark/v/1.2.0
    - standards/pci-dss/v/3.2.1
  DOC
  type        = list(any)
  default     = []
}

variable "enabled_products" {
  description = <<-DOC
    The possible values are:
    - product/aws/guardduty
    - product/aws/inspector
    - product/aws/macie
  DOC
  type        = list(any)
  default     = []
}

variable "security_hub_enabled" {
  type        = bool
  default     = true
  description = "To Enable seucirty-hub in aws account"
}
variable "member_account_id" {
  type        = string
  default     = ""
  description = "The ID of the member AWS account."
}

variable "member_mail_id" {
  type        = string
  default     = ""
  description = "The email of the member AWS account."
}

variable "enable_member_account" {
  type        = bool
  default     = false
  description = "To create member account "
}

variable "enable" {
  type        = bool
  default     = true
  description = "Set to false to prevent the module from creating any resources."
}

