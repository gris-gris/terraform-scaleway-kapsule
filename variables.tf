variable "kapsule_name" {
  default = "default"
}

variable "kapsule_size" {
  default = 1
}

variable "kapsule_pg_name" {
  default = "kapsule"
}

variable "kapsule_pg_policy_type" {
  default = "max_availability"
}

variable "kapsule_pg_policy_mode" {
  default = "enforced"
}

variable "kapsule_pg_zone" {
  default = "fr-par-1"
}

variable "kapsule_k8s_version" {
  default = "1.16.9"
}

variable "kapsule_cni" {
  default = "weave"
}

variable "kapsule_dashboard" {
  default = false
}

variable "kapsule_ingress" {
  default = "nginx"
}

variable "kapsule_tags" {
  description = "The set of basic tags."
  type        = list(string)
}

variable "kapsule_container_runtime" {
  description = "Possible values: docker, crio, containerd"
  default = "docker"
}

variable "kapsule_default_pool_tags" {
  description = "The set of basic tags for default pool."
  type        = list(string)
}

variable "kapsule_node_type" {
  default = "DEV1-M"
}

variable "kapsule_autoscaling" {
  default = true
}

variable "kapsule_autohealing" {
  default = true
}

variable "kapsule_autoscaling_lowcap" {
  default = 0
}

variable "kapsule_autoscaling_highcap" {
  default = 1
}

variable "kapsule_autoscaling_disable_scaledown" {
  default = false
}
