output "instance_name" {
  value       = google_compute_instance.app_server.name
  description = "GCE instance name"
}

output "instance_id" {
  value       = google_compute_instance.app_server.id
  description = "GCE instance ID"
}

output "instance_self_link" {
  value       = google_compute_instance.app_server.self_link
  description = "GCE instance self link"
}

output "instance_network_ip" {
  value       = google_compute_instance.app_server.network_interface[0].network_ip
  description = "Instance private IP address"
}