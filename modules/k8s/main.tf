data "google_service_account" "service_account" {
    account_id          = var.service_account_name
}

data "google_compute_network" "spoke_network" {
    name                = var.spoke_network_name
    project             = var.project_name
}

resource "google_compute_subnetwork" "cluster_subnet" {
    name                = var.subnet_name
    ip_cidr_range       = var.subnet_cidr
    region              = var.region
    network             = data.google_compute_network.spoke_network.id
}

resource "google_container_cluster" "cluster" {
    name                = var.name
    location            = var.region
    initial_node_count  = var.node_count
    project             = var.project_name
    resource_labels     = var.labels
    subnetwork          = google_compute_subnetwork.cluster_subnet.self_link

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