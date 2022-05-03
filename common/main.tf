####### PROVIDERS #######

provider "google" {
  project                 = var.project_name
  region                  = var.region
  zone                    = var.zone
}

####### RESOURCES #######

resource "google_compute_network" "spoke" {
  name                    = var.spoke_name
  auto_create_subnetworks = "false"
  project                 = var.project_name
}

####### MODULES #######

module "cluster" {
  source                  = "../modules/k8s"

  service_account_name    = var.service_account_name
  name                    = var.cluster_name
  region                  = var.region
  node_count              = var.cluster_node_count
  project_name            = var.project_name
  spoke_network_name      = var.spoke_name
  subnet_name             = var.cluster_subnet_name
  subnet_cidr             = var.cluster_subnet_cidr
  labels                  = var.labels

  depends_on = [ google_compute_network.spoke ]
}

module "artifact_registry" {
  source                  = "../modules/artifact_registry"

  name                    = var.artifact_registry_name
  region                  = var.region
  project_name            = var.project_name
  labels                  = var.labels
}