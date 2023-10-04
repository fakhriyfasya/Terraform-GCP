resource "google_compute_network" "devops-tools" {
  name                    = var.network_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "devops-tools" {
  name                     = var.subnetwork_name
  region                   = var.region
  network                  = google_compute_network.devops-tools.name
  ip_cidr_range            = var.subnet_cidr_range
  private_ip_google_access = true

  secondary_ip_range {
    range_name    = "k8s-pod-range"
    ip_cidr_range = "10.48.0.0/14"
  }
  secondary_ip_range {
    range_name    = "k8s-service-range"
    ip_cidr_range = "10.52.0.0/20"
  }
}
