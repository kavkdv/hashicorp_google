variable "service_account_name" {
    type        = string
    description = "The service account name"
}

variable "name" {
    type        = string
    description = "The cluster name"
}

variable "region" {
    type        = string
    description = "The cluster region"
}

variable "node_count" {
    type        = number
    description = "The cluster node count"
}

variable "project_name" {
    type        = string
    description = "The project name"
}

variable "labels" {
    type        = map
    description = "Labels"
}

variable "spoke_network_name" {
    type        = string
    description = "The spoke network name"
}

variable "subnet_name" {
    type        = string
    description = "The cluster subnet name"
}

variable "subnet_cidr" {
    type        = string
    description = "The cluster subnet cidr"
}