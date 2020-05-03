terraform-kapsule-module
----

Terraform module for Scaleway's Kubernetes engine -- Kapsule

Example of usage:
```
module "kapsule-quantile" {
  source = "gris-gris/kapsule/scaleway"
  kapsule_name = "example"
  kapsule_default_pool_name = "example"
  kapsule_pg_name = "example"
  kapsule_pg_policy_type = "max_availability"
  kapsule_pg_policy_mode = "enforced"
  kapsule_pg_zone = "fr-par-1"
  kapsule_k8s_version = "1.16.9"
  kapsule_cni = "weave"
  kapsule_dashboard = false
  kapsule_ingress = "nginx"
  kapsule_tags = [
    "Scope=example"
  ]
  kapsule_default_pool_tags = [
    "Scope=example"
  ]
  kapsule_node_type = "DEV1-M"
  kapsule_autoscaling = true
  kapsule_autohealing = true
  kapsule_autoscaling_lowcap = 1
  kapsule_autoscaling_highcap = 3
  kapsule_autoscaling_disable_scaledown = false
}
}
```
