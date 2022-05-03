####### PROVIDERS #######

provider "google" {
  project                 = var.project_name
  region                  = var.region
  zone                    = var.zone
}

####### MODULES #######

module "cluster" {
  source                  = "../modules/k8s"

  service_account_name    = var.service_account_name
  name                    = var.cluster_name
  region                  = var.region
  node_count              = var.cluster_node_count
  project_name            = var.project_name
  labels                  = var.labels
}

module "artifact_registry" {
  source                  = "../modules/artifact_registry"

  name                    = var.artifact_registry_name
  region                  = var.region
  project_name            = var.project_name
  labels                  = var.labels
}