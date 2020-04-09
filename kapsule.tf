resource "scaleway_k8s_cluster_beta" "kapsule" {
  name = var.kapsule_name
  version = var.kapsule_k8s_version
  cni = var.kapsule_cni
  enable_dashboard = var.kapsule_dashboard
  ingress = var.kapsule_ingress
  tags = var.kapsule_tags

  default_pool {
    node_type = var.kapsule_node_type
    size = var.kapsule_as == true ? var.kapsule_size : 1
    autoscaling = var.kapsule_as
    autohealing = var.kapsule_ah
    min_size = var.kapsule_as_lowcap
    max_size = var.kapsule_as_highcap
    placement_group_id = scaleway_instance_placement_group.kapsule-pg.id
  }

  autoscaler_config {
    disable_scale_down = var.kapsule_as_disable_scaledown
    scale_down_delay_after_add = "5m"
    estimator = "binpacking"
    expander = "random"
    ignore_daemonsets_utilization = true
    balance_similar_node_groups = true
    expendable_pods_priority_cutoff = -5
  }
}

resource "local_file" "kubeconfig" {
    content = scaleway_k8s_cluster_beta.kapsule.kubeconfig[0].config_file
    filename = "./sensitive/kubeconfig_${var.kapsule_name}"
}
