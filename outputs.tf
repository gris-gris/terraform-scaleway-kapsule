output "kapsule_pg_id" {
  value = scaleway_instance_placement_group.kapsule-pg.id
}
output "kapsule_id" {
  value = scaleway_k8s_cluster_beta.kapsule.id
}
output "kapsule_created_at" {
  value = scaleway_k8s_cluster_beta.kapsule.created_at
}
output "kapsule_updated_at" {
  value = scaleway_k8s_cluster_beta.kapsule.updated_at
}
output "kapsule_apiserver_url" {
  value = scaleway_k8s_cluster_beta.kapsule.apiserver_url
}
output "kapsule_wildcard_dns" {
  value = scaleway_k8s_cluster_beta.kapsule.wildcard_dns
}
output "kapsule_status" {
  value = scaleway_k8s_cluster_beta.kapsule.status
}
