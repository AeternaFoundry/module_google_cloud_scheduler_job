variable "cloud_scheduler_jobs" {
  description = <<EOT
Map of cloud_scheduler_jobs, attributes below
Required:
    - name
Optional:
    - attempt_deadline
    - deletion_policy
    - description
    - paused
    - project
    - region
    - schedule
    - time_zone
    - app_engine_http_target (block):
        - app_engine_routing (optional, block):
            - instance (optional)
            - service (optional)
            - version (optional)
        - body (optional)
        - headers (optional)
        - http_method (optional)
        - relative_uri (required)
    - http_target (block):
        - body (optional)
        - headers (optional)
        - http_method (optional)
        - oauth_token (optional, block):
            - scope (optional)
            - service_account_email (required)
        - oidc_token (optional, block):
            - audience (optional)
            - service_account_email (required)
        - uri (required)
    - pubsub_target (block):
        - attributes (optional)
        - data (optional)
        - topic_name (required)
    - retry_config (block):
        - max_backoff_duration (optional)
        - max_doublings (optional)
        - max_retry_duration (optional)
        - min_backoff_duration (optional)
        - retry_count (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name             = string
    attempt_deadline = optional(string)
    deletion_policy  = optional(string)
    description      = optional(string)
    paused           = optional(bool)
    project          = optional(string)
    region           = optional(string)
    schedule         = optional(string)
    time_zone        = optional(string)
    app_engine_http_target = optional(object({
      app_engine_routing = optional(object({
        instance = optional(string)
        service  = optional(string)
        version  = optional(string)
      }))
      body         = optional(string)
      headers      = optional(map(string))
      http_method  = optional(string)
      relative_uri = string
    }))
    http_target = optional(object({
      body        = optional(string)
      headers     = optional(map(string))
      http_method = optional(string)
      oauth_token = optional(object({
        scope                 = optional(string)
        service_account_email = string
      }))
      oidc_token = optional(object({
        audience              = optional(string)
        service_account_email = string
      }))
      uri = string
    }))
    pubsub_target = optional(object({
      attributes = optional(map(string))
      data       = optional(string)
      topic_name = string
    }))
    retry_config = optional(object({
      max_backoff_duration = optional(string)
      max_doublings        = optional(number)
      max_retry_duration   = optional(string)
      min_backoff_duration = optional(string)
      retry_count          = optional(number)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

