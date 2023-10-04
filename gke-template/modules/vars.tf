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

variable "machine_type" {
  type = string
}

variable "image_type" {
  type    = string
  default = "COS_CONTAINERD"
}

variable "tags" {
  type    = list
}

variable "public_ip" {
  type    = bool
  default = true
}

variable "metadata_startup_script" {
  type    = string
}

variable "location" {
  description = "Location in which the resources will create"
  type        = string
}

variable "cluster_name" {
  description = "Name of GKE"
  type        = string
}

variable "node_name" {
  description = "Name of node in GKE"
  type        = string
}

variable "disk_type" {
  description = "type of disk in node"
  type        = string
  default = "pd-balanced"
}

variable "disk_size_gb" {
  description = "size disk in each node"
  type        = string
  default = "30"
}