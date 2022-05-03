project_name            = "admiral-landingzone"
region                  = "europe-west4"
zone                    = "europe-west4-a"
service_account_name    = "terraform"
labels = {
    ak = "andrii_kondratenko"
}

cluster_name            = "akcluster"
cluster_node_count      = 1

artifact_registry_name  = "akartifactregistry"