output "namespace_name" {
  description = "Namespace criado para a aplicação"
  value       = kubernetes_namespace.pedidos_veloz.metadata[0].name
}
