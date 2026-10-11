output "cloud_scheduler_jobs_id" {
  description = "Map of id values across all cloud_scheduler_jobs, keyed the same as var.cloud_scheduler_jobs except keys with no id are omitted"
  value       = { for k, v in google_cloud_scheduler_job.cloud_scheduler_jobs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloud_scheduler_jobs_app_engine_http_target" {
  description = "Map of app_engine_http_target values across all cloud_scheduler_jobs, keyed the same as var.cloud_scheduler_jobs except keys with no app_engine_http_target are omitted"
  value       = { for k, v in google_cloud_scheduler_job.cloud_scheduler_jobs : k => one(v.app_engine_http_target) if v.app_engine_http_target != null && length(v.app_engine_http_target) > 0 }
}
output "cloud_scheduler_jobs_attempt_deadline" {
  description = "Map of attempt_deadline values across all cloud_scheduler_jobs, keyed the same as var.cloud_scheduler_jobs except keys with no attempt_deadline are omitted"
  value       = { for k, v in google_cloud_scheduler_job.cloud_scheduler_jobs : k => v.attempt_deadline if v.attempt_deadline != null && length(v.attempt_deadline) > 0 }
}
output "cloud_scheduler_jobs_deletion_policy" {
  description = "Map of deletion_policy values across all cloud_scheduler_jobs, keyed the same as var.cloud_scheduler_jobs except keys with no deletion_policy are omitted"
  value       = { for k, v in google_cloud_scheduler_job.cloud_scheduler_jobs : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "cloud_scheduler_jobs_description" {
  description = "Map of description values across all cloud_scheduler_jobs, keyed the same as var.cloud_scheduler_jobs except keys with no description are omitted"
  value       = { for k, v in google_cloud_scheduler_job.cloud_scheduler_jobs : k => v.description if v.description != null && length(v.description) > 0 }
}
output "cloud_scheduler_jobs_http_target" {
  description = "Map of http_target values across all cloud_scheduler_jobs, keyed the same as var.cloud_scheduler_jobs except keys with no http_target are omitted"
  value       = { for k, v in google_cloud_scheduler_job.cloud_scheduler_jobs : k => one(v.http_target) if v.http_target != null && length(v.http_target) > 0 }
}
output "cloud_scheduler_jobs_name" {
  description = "Map of name values across all cloud_scheduler_jobs, keyed the same as var.cloud_scheduler_jobs except keys with no name are omitted"
  value       = { for k, v in google_cloud_scheduler_job.cloud_scheduler_jobs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cloud_scheduler_jobs_paused" {
  description = "Map of paused values across all cloud_scheduler_jobs, keyed the same as var.cloud_scheduler_jobs except keys with no paused are omitted"
  value       = { for k, v in google_cloud_scheduler_job.cloud_scheduler_jobs : k => v.paused if v.paused != null }
}
output "cloud_scheduler_jobs_project" {
  description = "Map of project values across all cloud_scheduler_jobs, keyed the same as var.cloud_scheduler_jobs except keys with no project are omitted"
  value       = { for k, v in google_cloud_scheduler_job.cloud_scheduler_jobs : k => v.project if v.project != null && length(v.project) > 0 }
}
output "cloud_scheduler_jobs_pubsub_target" {
  description = "Map of pubsub_target values across all cloud_scheduler_jobs, keyed the same as var.cloud_scheduler_jobs except keys with no pubsub_target are omitted"
  value       = { for k, v in google_cloud_scheduler_job.cloud_scheduler_jobs : k => one(v.pubsub_target) if v.pubsub_target != null && length(v.pubsub_target) > 0 }
}
output "cloud_scheduler_jobs_region" {
  description = "Map of region values across all cloud_scheduler_jobs, keyed the same as var.cloud_scheduler_jobs except keys with no region are omitted"
  value       = { for k, v in google_cloud_scheduler_job.cloud_scheduler_jobs : k => v.region if v.region != null && length(v.region) > 0 }
}
output "cloud_scheduler_jobs_retry_config" {
  description = "Map of retry_config values across all cloud_scheduler_jobs, keyed the same as var.cloud_scheduler_jobs except keys with no retry_config are omitted"
  value       = { for k, v in google_cloud_scheduler_job.cloud_scheduler_jobs : k => one(v.retry_config) if v.retry_config != null && length(v.retry_config) > 0 }
}
output "cloud_scheduler_jobs_schedule" {
  description = "Map of schedule values across all cloud_scheduler_jobs, keyed the same as var.cloud_scheduler_jobs except keys with no schedule are omitted"
  value       = { for k, v in google_cloud_scheduler_job.cloud_scheduler_jobs : k => v.schedule if v.schedule != null && length(v.schedule) > 0 }
}
output "cloud_scheduler_jobs_state" {
  description = "Map of state values across all cloud_scheduler_jobs, keyed the same as var.cloud_scheduler_jobs except keys with no state are omitted"
  value       = { for k, v in google_cloud_scheduler_job.cloud_scheduler_jobs : k => v.state if v.state != null && length(v.state) > 0 }
}
output "cloud_scheduler_jobs_time_zone" {
  description = "Map of time_zone values across all cloud_scheduler_jobs, keyed the same as var.cloud_scheduler_jobs except keys with no time_zone are omitted"
  value       = { for k, v in google_cloud_scheduler_job.cloud_scheduler_jobs : k => v.time_zone if v.time_zone != null && length(v.time_zone) > 0 }
}

