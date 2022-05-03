output "artifact_registry_repository_id" {
    description     = "The artifact registry repository id"
    value           = google_artifact_registry_repository.artifact_registry_repository.id
}