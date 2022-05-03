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
}