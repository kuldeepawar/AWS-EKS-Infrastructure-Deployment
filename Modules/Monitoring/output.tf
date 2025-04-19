output "grafana_url" {
  value = helm_release.prometheus.status[0].url
}
