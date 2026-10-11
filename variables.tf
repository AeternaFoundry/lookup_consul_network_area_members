variable "network_area_members_lookup" {
  description = <<EOT
Map of network_area_members_lookup, attributes below
Required:
    - uuid
Optional:
    - datacenter
    - token
EOT

  type = map(object({
    uuid       = string
    datacenter = optional(string)
    token      = optional(string)
  }))
}

