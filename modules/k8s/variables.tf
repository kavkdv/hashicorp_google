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