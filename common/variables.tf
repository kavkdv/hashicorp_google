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


###### CLUSTER #######

variable "cluster_node_count" {
    type        = number
    description = "The cluster node count"
}

variable "cluster_name" {
    type        = string
    description = "The cluster name"
}