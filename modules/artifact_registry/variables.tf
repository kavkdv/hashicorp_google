variable "name" {
    type        = string
    description = "The cluster name"
}

variable "region" {
    type        = string
    description = "The cluster region"
}

variable "labels" {
    type        = map
    description = "Labels"
}