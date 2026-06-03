variable "gcp_project" {
  type        = string
  description = "GCP Project ID"
}

variable "gcp_region" {
  type        = string
  description = "GCP region"
  default     = "us-central1"
}

variable "gcp_zone" {
  type        = string
  description = "GCP zone"
  default     = "us-central1-a"
}

variable "environment" {
  type        = string
  description = "Environment name (dev, staging)"
  default     = "dev"
}

variable "machine_type" {
  type        = string
  description = "GCE machine type"
  default     = "e2-medium"
}

variable "image" {
  type        = string
  description = "Machine image"
  default     = "debian-11"
}