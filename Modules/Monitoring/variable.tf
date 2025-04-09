variable "grafana_admin_password" {
  type        = string
  description = "Admin password for Grafana"
  default     = "admin123" # Use a secret manager in production!
}
