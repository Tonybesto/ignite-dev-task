terraform {
  required_version = ">= 0.13"

  required_providers {
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.7.0"
    }
  }
}

provider "kubectl" {
  config_context_cluster = "kind-kind"
  config_path            = "~/.kube/config" # Path to your kubeconfig file
}

resource "kubectl_manifest" "nodeapp" {
  yaml_body = file("${path.module}/nodeapp.yml")
}
