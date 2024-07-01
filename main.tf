resource "digitalocean_kubernetes_cluster" "example" {
  name    = var.cluster_name
  region  = var.region
  version = "latest"

  node_pool {
    name       = "default-pool"
    size       = var.node_size
    node_count = var.node_count
  }
}

output "cluster_name" {
  value = digitalocean_kubernetes_cluster.example.name
}

output "cluster_id" {
  value = digitalocean_kubernetes_cluster.example.id
}

output "cluster_endpoint" {
  value = digitalocean_kubernetes_cluster.example.endpoint
}

output "cluster_kubeconfig" {
  value     = digitalocean_kubernetes_cluster.example.kube_config
  sensitive = true
}