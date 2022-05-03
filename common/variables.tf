###### COMMON #######

variable "project_name" {
    type        = string
    description = "The project name"
}

variable "region" {
    type        = string
    description = "The region"
}

variable "zone" {
    type        = string
    description = "The zone"
}

variable "service_account_name" {
    type        = string
    description = "The service account name"
}

variable "labels" {
    type        = map
    description = "Labels"
}

variable "spoke_name" {
    type        = string
    description = "The spoke network name"
}

###### CLUSTER #######

variable "cluster_node_count" {
    type        = number
    description = "The cluster node count"
}

variable "cluster_name" {
    type        = string
    description = "The cluster name"
}

variable "cluster_subnet_name" {
    type        = string
    description = "The cluster subnet name"
}

variable "cluster_subnet_cidr" {
    type        = string
    description = "The cluster subnet cidr"
}

###### ARTIFACT REGISTRY #######

variable "artifact_registry_name" {
    type        = string
    description = "The artifact registry name"
}