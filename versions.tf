terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
    scaleway = {
      source = "scaleway/scaleway"
    }
  }
  required_version = ">= 0.13"
}
