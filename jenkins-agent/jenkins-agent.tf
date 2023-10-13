module "gcp_template" {
  source             = "../gce_template/modules"
  google_credentials = "devops-tools-398511-9d0c9011d0ba.json"
  project            = "devops-tools-398511"
  region             = "asia-southeast2"
  zone               = "asia-southeast2-a"

  name         = "jenkins-agent2"
  machine_type = "e2-micro"
  image        = "ubuntu-os-cloud/ubuntu-2204-lts"

  network_name      = "devops-tools-vpc2"
  subnetwork_name   = "devops-tools-subnet2-asia-southeast2"
  subnet_cidr_range = "10.101.21.0/24"
  tags              = ["allow-ssh"]
  public_ip         = true

  firewall_name_allow_ssh  = "devops-tools-allow-ssh"
  firewall_name_allow_http = "devops-tools-allow-http"

  metadata_startup_script = file("startup_script.sh")
}
