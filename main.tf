resource "google_compute_instance" "app_server" {
  name         = "app-server-${var.environment}-01"
  machine_type = var.machine_type
  zone         = var.gcp_zone
  
  boot_disk {
    initialize_params {
      image = data.google_compute_image.debian.self_link
      size  = 20
      type  = "pd-standard"
    }
  }
  
  network_interface {
    network    = data.terraform_remote_state.vpc.outputs.vpc_name
    subnetwork = data.terraform_remote_state.vpc.outputs.app_subnet_id
  }
  
  tags = ["app-server", var.environment]
}

data "google_compute_image" "debian" {
  family  = var.image
  project = "debian-cloud"
}