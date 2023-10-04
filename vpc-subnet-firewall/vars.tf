variable "google_credentials" {
  description = "GCE Service Account key credentials"
}

variable "project" {
  description = "Project name of the GCP account"
  type        = string
}

variable "region" {
  description = "Region in which the resources will create"
  type        = string
}

variable "zone" {
  description = "Zone in which the resources will create"
  type        = string
}

variable "network_name" {
  description = "Network name of VPC"
  type        = string
}

variable "subnetwork_name" {
  description = "SubNetwork name of VPC name"
  type        = string
}

variable "subnet_cidr_range" {
  description = "Subnet CIDR IP Range"
  type        = string
}

variable "firewall_name_allow_ssh" {
  type = string
}

variable "firewall_name_allow_http" {
  type = string
}

variable "public_ip" {
  type    = bool
  default = true
}
