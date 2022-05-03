terraform {
    required_version = ">=1.1.9"

    required_providers {
        google = {
            source  = "hashicorp/google"
            version = ">= 4.10.0, < 5.0"
        }
        
        kubernetes = {
            source  = "hashicorp/kubernetes"
            version = "~> 2.10"
        }
    }
}