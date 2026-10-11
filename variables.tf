variable "registry_image_lookup" {
  description = <<EOT
Map of registry_image_lookup, attributes below
Required:
    - name
Optional:
    - insecure_skip_verify
EOT

  type = map(object({
    name                 = string
    insecure_skip_verify = optional(bool)
  }))
}

