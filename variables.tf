variable "project_id" {
  description = "Google Cloud project ID"
  type        = string
}

variable "organization_id" {
  description = "Google Cloud organization ID"
  type        = string
}

variable "pubsub_topic_name" {
  description = "Pub/Sub topic name for notifications"
  type        = string
  default     = "security-health-analytics-topic"
}
