variable "do_token" {
  type        = string
  description = "API token for DigitalOcean"
  sensitive = true
}

variable "region" {
  type        = string
  description = "The region to deploy resources in"
  default     = "nyc1"
}

variable "cluster_name" {
  type        = string
  description = "The name of the Kubernetes cluster"
  default     = "example-cluster"
}

variable "node_size" {
  type        = string
  description = "The size of the nodes in the Kubernetes cluster"
  default     = "s-2vcpu-2gb"
}

variable "node_count" {
  type        = number
  description = "The number of nodes in the Kubernetes cluster"
  default     = 3
}