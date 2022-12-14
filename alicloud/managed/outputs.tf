output "name" {
  value       = alicloud_cs_managed_kubernetes.k8s.*.name
}
output "version" {
  value       = alicloud_cs_managed_kubernetes.k8s.*.version
}
output "vpc_id" {
  description = "The ID of the VPC."
  value       = alicloud_cs_managed_kubernetes.k8s[0].vpc_id
}
output "nat_gateway_id" {
  value       = alicloud_cs_managed_kubernetes.k8s[0].nat_gateway_id
}
output "cluster_id" {
  description = "ID of the kunernetes cluster."
  value       = [alicloud_cs_managed_kubernetes.k8s.*.id]
}
output "security_group_id" {
  description = "ID of the Security Group used to deploy kubernetes cluster."
  value       = alicloud_cs_managed_kubernetes.k8s[0].security_group_id
}
output "worker_nodes" {
  description = "List worker nodes of cluster."
  value       = [alicloud_cs_managed_kubernetes.k8s.*.worker_nodes]
}
output "connections" {
  value       = alicloud_cs_managed_kubernetes.k8s.*.connections
}
output "worker_ram_role_name" {
  value       = alicloud_cs_managed_kubernetes.k8s.*.worker_ram_role_name
}

