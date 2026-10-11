data "docker_registry_image" "registry_image_lookup" {
  for_each = var.registry_image_lookup

  name                 = each.value.name
  insecure_skip_verify = each.value.insecure_skip_verify
}

