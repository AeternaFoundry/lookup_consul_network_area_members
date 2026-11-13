output "network_area_members_lookup_id" {
  description = "Map of id values across all network_area_members_lookup, keyed the same as var.network_area_members_lookup"
  value       = { for k, v in data.consul_network_area_members.network_area_members_lookup : k => v.id }
}
output "network_area_members_lookup_datacenter" {
  description = "Map of datacenter values across all network_area_members_lookup, keyed the same as var.network_area_members_lookup"
  value       = { for k, v in data.consul_network_area_members.network_area_members_lookup : k => v.datacenter }
}
output "network_area_members_lookup_members" {
  description = "Map of members values across all network_area_members_lookup, keyed the same as var.network_area_members_lookup"
  value       = { for k, v in data.consul_network_area_members.network_area_members_lookup : k => v.members }
}
output "network_area_members_lookup_token" {
  description = "Map of token values across all network_area_members_lookup, keyed the same as var.network_area_members_lookup"
  value       = { for k, v in data.consul_network_area_members.network_area_members_lookup : k => v.token }
  sensitive   = true
}
output "network_area_members_lookup_uuid" {
  description = "Map of uuid values across all network_area_members_lookup, keyed the same as var.network_area_members_lookup"
  value       = { for k, v in data.consul_network_area_members.network_area_members_lookup : k => v.uuid }
}

