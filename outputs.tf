output "network_area_members_lookup_id" {
  description = "Map of id values across all network_area_members_lookup, keyed the same as var.network_area_members_lookup except keys with no id are omitted"
  value       = { for k, v in data.consul_network_area_members.network_area_members_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "network_area_members_lookup_datacenter" {
  description = "Map of datacenter values across all network_area_members_lookup, keyed the same as var.network_area_members_lookup except keys with no datacenter are omitted"
  value       = { for k, v in data.consul_network_area_members.network_area_members_lookup : k => v.datacenter if v.datacenter != null && length(v.datacenter) > 0 }
}
output "network_area_members_lookup_members" {
  description = "Map of members values across all network_area_members_lookup, keyed the same as var.network_area_members_lookup except keys with no members are omitted"
  value       = { for k, v in data.consul_network_area_members.network_area_members_lookup : k => v.members if v.members != null && length(v.members) > 0 }
}
output "network_area_members_lookup_token" {
  description = "Map of token values across all network_area_members_lookup, keyed the same as var.network_area_members_lookup except keys with no token are omitted"
  value       = { for k, v in data.consul_network_area_members.network_area_members_lookup : k => v.token if v.token != null && length(v.token) > 0 }
  sensitive   = true
}
output "network_area_members_lookup_uuid" {
  description = "Map of uuid values across all network_area_members_lookup, keyed the same as var.network_area_members_lookup except keys with no uuid are omitted"
  value       = { for k, v in data.consul_network_area_members.network_area_members_lookup : k => v.uuid if v.uuid != null && length(v.uuid) > 0 }
}

