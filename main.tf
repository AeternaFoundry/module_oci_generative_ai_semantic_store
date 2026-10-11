resource "oci_generative_ai_semantic_store" "generative_ai_semantic_stores" {
  for_each = var.generative_ai_semantic_stores

  compartment_id = each.value.compartment_id
  display_name   = each.value.display_name
  defined_tags   = each.value.defined_tags
  description    = each.value.description
  freeform_tags  = each.value.freeform_tags

  data_source {
    connection_type          = each.value.data_source.connection_type
    enrichment_connection_id = each.value.data_source.enrichment_connection_id
    querying_connection_id   = each.value.data_source.querying_connection_id
  }

  schemas {
    connection_type = each.value.schemas.connection_type
    dynamic "schemas" {
      for_each = each.value.schemas.schemas
      content {
        name = schemas.value.name
      }
    }
  }

  dynamic "refresh_schedule" {
    for_each = each.value.refresh_schedule != null ? [each.value.refresh_schedule] : []
    content {
      type  = refresh_schedule.value.type
      value = refresh_schedule.value.value
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

