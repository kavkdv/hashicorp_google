data "google_service_account" "service_account" {
    account_id          = var.service_account_name
}

resource "google_container_cluster" "cluster" {
    name                = var.name
    location            = var.region
    initial_node_count  = var.node_count
    project             = var.project_name
    resource_labels     = var.labels

    node_config {
        service_account = data.google_service_account.service_account.email
        oauth_scopes    = ["https://www.googleapis.com/auth/cloud-platform"]
        labels          = var.labels
    }

    timeouts {
        create          = "30m"
        update          = "40m"
    }

    lifecycle {
        ignore_changes = [master_auth, network]
    }
}