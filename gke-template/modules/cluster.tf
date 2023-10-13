resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.location

  # We can't create a cluster with no node pool defined, but we want to only use
  # separately managed node pools. So we create the smallest possible default
  # node pool and immediately delete it.
  remove_default_node_pool = true
  initial_node_count       = 2
  network                  = "devops-tools-vpc2"
  subnetwork               = "devops-tools-subnet2-asia-southeast2"
  logging_service          = "logging.googleapis.com/kubernetes"
  monitoring_service       = "monitoring.googleapis.com/kubernetes"
  networking_mode          = "VPC_NATIVE"

  ip_allocation_policy {
    cluster_secondary_range_name  = "k8s-pod-range"
    services_secondary_range_name = "k8s-service-range"
  }
}

resource "google_container_node_pool" "general" {
  name       = var.node_name
  location   = var.location
  cluster    = google_container_cluster.primary.name
  node_count = 2
  
  node_config {
    disk_type = var.disk_type
    disk_size_gb = var.disk_size_gb
    image_type = var.image_type
    preemptible  = false
    machine_type = "e2-medium"
    tags = var.tags
  }
}
