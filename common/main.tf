####### PROVIDERS #######

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

####### RESOURCES #######

resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network = "default"
    access_config {}
  }
}