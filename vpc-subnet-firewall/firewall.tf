resource "google_compute_firewall" "devops-tools_firewall_ssh" {
  name    = var.firewall_name_allow_ssh
  network = google_compute_network.devops-tools.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  source_ranges = ["0.0.0.0/0"]
  source_tags = ["allow-ssh"]
}

resource "google_compute_firewall" "devops-tools_firewall_http" {
  name    = var.firewall_name_allow_http
  network = google_compute_network.devops-tools.name

  allow {
    protocol = "tcp"
    ports    = ["8080","9000","8081","8082","8083"]
  }
  source_ranges = ["0.0.0.0/0"]
  source_tags = ["allow-http"]
}
