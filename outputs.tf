#Module      : Security-hub
#Description : Terraform module to securitry hub outputs.
output "id" {
  value       = join("", aws_securityhub_account.security_hub.*.id)
  description = "The ID of the secuirty hub."
}
