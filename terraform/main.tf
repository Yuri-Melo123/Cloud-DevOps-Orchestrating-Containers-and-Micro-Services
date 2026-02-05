terraform {
  required_version = ">= 1.5.0"

  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.25"
    }
  }
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}

# Namespace da aplicação
resource "kubernetes_namespace" "pedidos_veloz" {
  metadata {
    name = "pedidos-veloz"
  }
}

# ConfigMap
resource "kubernetes_config_map" "app_config" {
  metadata {
    name      = "app-config"
    namespace = kubernetes_namespace.pedidos_veloz.metadata[0].name
  }

  data = {
    DB_PORT      = "5432"
    SERVICE_PORT = "3000"
  }
}

# Secret
resource "kubernetes_secret" "db_secrets" {
  metadata {
    name      = "db-secrets"
    namespace = kubernetes_namespace.pedidos_veloz.metadata[0].name
  }

  data = {
    DB_NAME     = base64encode("pedidos_db")
    DB_USER     = base64encode("pedidos_user")
    DB_PASSWORD = base64encode("pedidos_pass")
  }

  type = "Opaque"
}
