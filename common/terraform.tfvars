project_name            = "admiral-landingzone"
region                  = "europe-west4"
zone                    = "europe-west4-a"
service_account_name    = "terraform"
spoke_name              = "spokenetwork"
labels = {
    owner               = "andrii_kondratenko",
    topology            = "hub_spoke"
}

cluster_name            = "akcluster"
cluster_node_count      = 1
cluster_subnet_name     = "clustersubnet"
cluster_subnet_cidr     =  "192.168.1.0/24"

artifact_registry_name  = "akartifactregistry"