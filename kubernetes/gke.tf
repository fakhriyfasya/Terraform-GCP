module "GKE-TEMPLATE" {
  source             = "../gke-template/modules"
  google_credentials = "devops-tools-398511-9d0c9011d0ba.json"
  project            = "devops-tools-398511"
  region             = "asia-southeast2"
  zone               = "asia-southeast2-a"
  location           = "asia-southeast2-a"

  cluster_name = "cluster-2"
  node_name    = "web-node2"
  machine_type = "e2-medium"
  image_type   = "COS_CONTAINERD"
  disk_type    = "pd-balanced"
  disk_size_gb = "30"


  network_name      = "devops-tools-vpc"
  subnetwork_name   = "devops-tools-subnet1-asia-southeast2"
  subnet_cidr_range = "172.16.20.0/24"
  tags              = ["allow-ssh", "allow-http"]
  public_ip         = true

  firewall_name_allow_ssh  = "devops-tools-allow-ssh"
  firewall_name_allow_http = "devops-tools-allow-http"

  metadata_startup_script = file("startup_script.sh")
}
