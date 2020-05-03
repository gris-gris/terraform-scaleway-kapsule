resource "scaleway_k8s_cluster_beta" "kapsule" {
  name = var.kapsule_name
  version = var.kapsule_k8s_version
  cni = var.kapsule_cni
  enable_dashboard = var.kapsule_dashboard
  ingress = var.kapsule_ingress
  tags = var.kapsule_tags

  autoscaler_config {
    disable_scale_down = var.kapsule_autoscaling_disable_scaledown
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

resource "scaleway_k8s_pool_beta" "kapsule-pool" {
  name = var.kapsule_default_pool_name
  cluster_id = scaleway_k8s_cluster_beta.kapsule.id
  node_type = var.kapsule_node_type
  size = var.kapsule_autoscaling == true ? var.kapsule_size : 1
  autoscaling = var.kapsule_autoscaling
  autohealing = var.kapsule_autohealing
  min_size = var.kapsule_autoscaling_lowcap
  max_size = var.kapsule_autoscaling_highcap
  placement_group_id = scaleway_instance_placement_group.kapsule-pg.id
  container_runtime = var.kapsule_container_runtime
  tags = var.kapsule_default_pool_tags
}
