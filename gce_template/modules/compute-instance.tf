resource "google_compute_instance" "default" {
  name         = var.name
  machine_type = var.machine_type


  boot_disk {
    initialize_params {
      image = var.image
      size  = 25
    }
  }

  network_interface {
    network    = "devops-tools-vpc2"
    subnetwork = "devops-tools-subnet2-asia-southeast2"

    dynamic "access_config" {
      for_each = var.public_ip ? [""] : []
      content {}
    }

  }
  tags = var.tags

  metadata_startup_script = var.metadata_startup_script
}
