variable "generative_ai_semantic_stores" {
  description = <<EOT
Map of generative_ai_semantic_stores, attributes below
Required:
    - compartment_id
    - display_name
    - data_source (block):
        - connection_type (required)
        - enrichment_connection_id (required)
        - querying_connection_id (required)
    - schemas (block):
        - connection_type (required)
        - schemas (required, block):
            - name (required)
Optional:
    - defined_tags
    - description
    - freeform_tags
    - refresh_schedule (block):
        - type (required)
        - value (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id = string
    display_name   = string
    defined_tags   = optional(map(string))
    description    = optional(string)
    freeform_tags  = optional(map(string))
    data_source = object({
      connection_type          = string
      enrichment_connection_id = string
      querying_connection_id   = string
    })
    schemas = object({
      connection_type = string
      schemas = list(object({
        name = string
      }))
    })
    refresh_schedule = optional(object({
      type  = string
      value = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.generative_ai_semantic_stores : (
        length(v.schemas.schemas) >= 1
      )
    ])
    error_message = "Each schemas list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.generative_ai_semantic_stores : (
        contains([for v in ["DATABASE_TOOLS_CONNECTION"] : lower(v)], lower(v.data_source.connection_type))
      )
    ])
    error_message = "must be one of: \"DATABASE_TOOLS_CONNECTION\""
  }
  validation {
    condition = alltrue([
      for k, v in var.generative_ai_semantic_stores : (
        contains([for v in ["DATABASE_TOOLS_CONNECTION"] : lower(v)], lower(v.schemas.connection_type))
      )
    ])
    error_message = "must be one of: \"DATABASE_TOOLS_CONNECTION\""
  }
  validation {
    condition = alltrue([
      for k, v in var.generative_ai_semantic_stores : (
        v.refresh_schedule == null || (contains([for v in ["INTERVAL", "NONE", "ON_CREATE"] : lower(v)], lower(v.refresh_schedule.type)))
      )
    ])
    error_message = "must be one of: \"INTERVAL\", \"NONE\", \"ON_CREATE\""
  }
}

