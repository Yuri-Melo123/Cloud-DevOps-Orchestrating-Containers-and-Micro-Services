variable "namespace" {
  description = "Namespace da aplicação"
  type        = string
  default     = "pedidos-veloz"
}

variable "db_name" {
  description = "Nome do banco de dados"
  type        = string
  default     = "pedidos_db"
}

variable "db_user" {
  description = "Usuário do banco"
  type        = string
  default     = "pedidos_user"
}

variable "db_password" {
  description = "Senha do banco"
  type        = string
  sensitive   = true
}
