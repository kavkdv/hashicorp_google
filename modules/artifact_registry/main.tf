resource "google_artifact_registry_repository" "artifact_registry_repository" {
    provider            = google-beta
    project             = var.project_name

    location            = var.region
    repository_id       = var.name
    description         = "test docker repository"
    format              = "DOCKER"
    labels              = var.labels 
}