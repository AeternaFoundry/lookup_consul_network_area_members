data "consul_network_area_members" "network_area_members_lookup" {
  for_each = var.network_area_members_lookup

  uuid       = each.value.uuid
  datacenter = each.value.datacenter
  token      = each.value.token
}

