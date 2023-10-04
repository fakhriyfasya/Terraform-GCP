terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.80.0"
    }
  }
}

provider "google" {
  # Configuration options
  credentials = var.google_credentials
  project     = var.project
  region      = var.region
  zone        = var.zone
}
