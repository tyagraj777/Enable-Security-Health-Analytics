provider "google" {
  project = var.project_id
}

provider "google" {
  alias  = "org_admin"
  scopes = ["https://www.googleapis.com/auth/cloud-platform"]
}

resource "google_securitycenter_organization_settings" "organization_settings" {
  org_id               = var.organization_id
  enable_asset_discovery = true

  asset_discovery_config {
    project_ids = [var.project_id]
  }
}

resource "google_pubsub_topic" "security_notifications" {
  name = "security-health-analytics-topic"
}

resource "google_securitycenter_notification_config" "notification_config" {
  name               = "critical-findings-notifications"
  parent             = "organizations/${var.organization_id}"
  description        = "Notification channel for critical findings"
  pubsub_topic       = google_pubsub_topic.security_notifications.id
  streaming_config {
    filter = "severity = 'CRITICAL'"
  }
}
