output "pubsub_topic_name" {
  description = "Pub/Sub topic name for notifications"
  value       = google_pubsub_topic.security_notifications.name
}

output "notification_config_id" {
  description = "ID of the Security Command Center notification configuration"
  value       = google_securitycenter_notification_config.notification_config.name
}
