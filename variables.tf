variable "kapsule_name" {
  default = ""
}

variable "kapsule_pg_name" {
  default = ""
}

variable "kapsule_pg_policy_type" {
  default = "max_availability"
}

variable "kapsule_pg_policy_mode" {
  default = "enforced"
}

variable "kapsule_pg_zone" {
  default = ""
}

variable "kapsule_k8s_version" {
  default = ""
}

variable "kapsule_cni" {
  default = ""
}

variable "kapsule_dashboard" {
  default = ""
}

variable "kapsule_ingress" {
  default = ""
}

variable "kapsule_tags" {
  description = "The set of basic tags."
  type        = list(string)
}

variable "kapsule_default_flavor" {
  default = ""
}

variable "kapsule_as" {
  default = ""
}

variable "kapsule_ah" {
  default = ""
}

variable "kapsule_as_lowcap" {
  default = ""
}

variable "kapsule_as_highcap" {
  default = ""
}

variable "kapsule_as_disable_scaledown" {
  default = ""
}
