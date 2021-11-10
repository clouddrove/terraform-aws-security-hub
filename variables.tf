
#Module      : LABEL
#Description : Terraform label module variables.
variable "name" {
  type        = string
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "repository" {
  type        = string
  default     = "https://github.com/clouddrove/terraform-aws-security-hub"
  description = "Terraform current module repo"

  validation {
    # regex(...) fails if it cannot find a match
    condition     = can(regex("^https://", var.repository))
    error_message = "The module-repo value must be a valid Git repo link."
  }
}

variable "environment" {
  type        = string
  default     = ""
  description = "Environment (e.g. `prod`, `dev`, `staging`)."
}

variable "label_order" {
  type        = list(any)
  default     = []
  description = "Label order, e.g. `name`,`application`."
}

variable "managedby" {
  type        = string
  default     = "hello@clouddrove.com"
  description = "ManagedBy, eg 'CloudDrove'."
}

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
  type    = bool
  default = true

}
variable "member_account_id" {
  type    = string
  default = ""
}

variable "member_mail_id" {
  type    = string
  default = ""
}

variable "enable_member_account" {
  type    = bool
  default = false
}