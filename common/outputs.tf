output "cluster_id" {
    description     = "The cluster id"
    value           = module.cluster.cluster_id
}

output "artifact_registry_repository_id" {
    description     = "The artifact registry repository id"
    value           = module.artifact_registry.artifact_registry_repository_id
}