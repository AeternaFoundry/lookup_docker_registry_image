output "registry_image_lookup_id" {
  description = "Map of id values across all registry_image_lookup, keyed the same as var.registry_image_lookup except keys with no id are omitted"
  value       = { for k, v in data.docker_registry_image.registry_image_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "registry_image_lookup_insecure_skip_verify" {
  description = "Map of insecure_skip_verify values across all registry_image_lookup, keyed the same as var.registry_image_lookup except keys with no insecure_skip_verify are omitted"
  value       = { for k, v in data.docker_registry_image.registry_image_lookup : k => v.insecure_skip_verify if v.insecure_skip_verify != null }
}
output "registry_image_lookup_name" {
  description = "Map of name values across all registry_image_lookup, keyed the same as var.registry_image_lookup except keys with no name are omitted"
  value       = { for k, v in data.docker_registry_image.registry_image_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "registry_image_lookup_sha256_digest" {
  description = "Map of sha256_digest values across all registry_image_lookup, keyed the same as var.registry_image_lookup except keys with no sha256_digest are omitted"
  value       = { for k, v in data.docker_registry_image.registry_image_lookup : k => v.sha256_digest if v.sha256_digest != null && length(v.sha256_digest) > 0 }
}

