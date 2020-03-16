# terraform-kapsule-module
```
module "kapsule-quantile" {
  source = "gris-gris/kapsule/scaleway"

  kapsule_name = "name"
  kapsule_pg_name = "name"
  kapsule_pg_policy_type = "max_availability"
  kapsule_pg_policy_mode = "enforced"
  kapsule_pg_zone = "fr-par-1"
  kapsule_k8s_version = "1.16.7"
  kapsule_cni = "weave"
  kapsule_dashboard = true
  kapsule_ingress = "nginx"
  kapsule_tags = [
    "Scope=rnd"
  ]
  kapsule_default_flavor = "DEV1-M"
  kapsule_as = true
  kapsule_ah = true
  kapsule_as_lowcap = 1
  kapsule_as_highcap = 3
  kapsule_as_disable_scaledown = false
}
```
