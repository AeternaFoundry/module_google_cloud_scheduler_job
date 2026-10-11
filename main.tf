resource "google_cloud_scheduler_job" "cloud_scheduler_jobs" {
  for_each = var.cloud_scheduler_jobs

  name             = each.value.name
  attempt_deadline = each.value.attempt_deadline
  deletion_policy  = each.value.deletion_policy
  description      = each.value.description
  paused           = each.value.paused
  project          = each.value.project
  region           = each.value.region
  schedule         = each.value.schedule
  time_zone        = each.value.time_zone

  dynamic "app_engine_http_target" {
    for_each = each.value.app_engine_http_target != null ? [each.value.app_engine_http_target] : []
    content {
      dynamic "app_engine_routing" {
        for_each = app_engine_http_target.value.app_engine_routing != null ? [app_engine_http_target.value.app_engine_routing] : []
        content {
          instance = app_engine_routing.value.instance
          service  = app_engine_routing.value.service
          version  = app_engine_routing.value.version
        }
      }
      body         = app_engine_http_target.value.body
      headers      = app_engine_http_target.value.headers
      http_method  = app_engine_http_target.value.http_method
      relative_uri = app_engine_http_target.value.relative_uri
    }
  }

  dynamic "http_target" {
    for_each = each.value.http_target != null ? [each.value.http_target] : []
    content {
      body        = http_target.value.body
      headers     = http_target.value.headers
      http_method = http_target.value.http_method
      dynamic "oauth_token" {
        for_each = http_target.value.oauth_token != null ? [http_target.value.oauth_token] : []
        content {
          scope                 = oauth_token.value.scope
          service_account_email = oauth_token.value.service_account_email
        }
      }
      dynamic "oidc_token" {
        for_each = http_target.value.oidc_token != null ? [http_target.value.oidc_token] : []
        content {
          audience              = oidc_token.value.audience
          service_account_email = oidc_token.value.service_account_email
        }
      }
      uri = http_target.value.uri
    }
  }

  dynamic "pubsub_target" {
    for_each = each.value.pubsub_target != null ? [each.value.pubsub_target] : []
    content {
      attributes = pubsub_target.value.attributes
      data       = pubsub_target.value.data
      topic_name = pubsub_target.value.topic_name
    }
  }

  dynamic "retry_config" {
    for_each = each.value.retry_config != null ? [each.value.retry_config] : []
    content {
      max_backoff_duration = retry_config.value.max_backoff_duration
      max_doublings        = retry_config.value.max_doublings
      max_retry_duration   = retry_config.value.max_retry_duration
      min_backoff_duration = retry_config.value.min_backoff_duration
      retry_count          = retry_config.value.retry_count
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

