resource "scaleway_instance_placement_group" "kapsule-pg" {
  name        = var.kapsule_pg_name
  policy_type = var.kapsule_pg_policy_type
  policy_mode = var.kapsule_pg_policy_mode
  zone        = var.kapsule_pg_zone
}
