#Module      : Security-hub
#Description : Terraform module to securitry hub outputs.
output "id" {
  value       = module.security-hub.*.id
  description = "The ID of the secuirty hub."
}
