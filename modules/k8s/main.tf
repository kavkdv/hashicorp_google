data "google_service_account" "service_account" {
    account_id          = var.service_account_name
}

resource "google_container_cluster" "cluster" {
    name                = var.name
    location            = var.region
    initial_node_count  = var.node_count
    resource_labels = {
        ak              = "andrii_kondratenko"
    }

    node_config {
        service_account = data.google_service_account.service_account.email
        oauth_scopes    = ["https://www.googleapis.com/auth/cloud-platform"]

        labels = {
            ak          = "Andrii.Kondratenko"
        }

        tags            = ["ak"]
    }

    timeouts {
        create          = "30m"
        update          = "40m"
    }
}