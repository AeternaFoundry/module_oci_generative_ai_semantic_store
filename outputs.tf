output "generative_ai_semantic_stores_id" {
  description = "Map of id values across all generative_ai_semantic_stores, keyed the same as var.generative_ai_semantic_stores except keys with no id are omitted"
  value       = { for k, v in oci_generative_ai_semantic_store.generative_ai_semantic_stores : k => v.id if v.id != null && length(v.id) > 0 }
}
output "generative_ai_semantic_stores_compartment_id" {
  description = "Map of compartment_id values across all generative_ai_semantic_stores, keyed the same as var.generative_ai_semantic_stores except keys with no compartment_id are omitted"
  value       = { for k, v in oci_generative_ai_semantic_store.generative_ai_semantic_stores : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "generative_ai_semantic_stores_data_source" {
  description = "Map of data_source values across all generative_ai_semantic_stores, keyed the same as var.generative_ai_semantic_stores except keys with no data_source are omitted"
  value       = { for k, v in oci_generative_ai_semantic_store.generative_ai_semantic_stores : k => one(v.data_source) if v.data_source != null && length(v.data_source) > 0 }
}
output "generative_ai_semantic_stores_defined_tags" {
  description = "Map of defined_tags values across all generative_ai_semantic_stores, keyed the same as var.generative_ai_semantic_stores except keys with no defined_tags are omitted"
  value       = { for k, v in oci_generative_ai_semantic_store.generative_ai_semantic_stores : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "generative_ai_semantic_stores_description" {
  description = "Map of description values across all generative_ai_semantic_stores, keyed the same as var.generative_ai_semantic_stores except keys with no description are omitted"
  value       = { for k, v in oci_generative_ai_semantic_store.generative_ai_semantic_stores : k => v.description if v.description != null && length(v.description) > 0 }
}
output "generative_ai_semantic_stores_display_name" {
  description = "Map of display_name values across all generative_ai_semantic_stores, keyed the same as var.generative_ai_semantic_stores except keys with no display_name are omitted"
  value       = { for k, v in oci_generative_ai_semantic_store.generative_ai_semantic_stores : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "generative_ai_semantic_stores_freeform_tags" {
  description = "Map of freeform_tags values across all generative_ai_semantic_stores, keyed the same as var.generative_ai_semantic_stores except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_generative_ai_semantic_store.generative_ai_semantic_stores : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "generative_ai_semantic_stores_lifecycle_details" {
  description = "Map of lifecycle_details values across all generative_ai_semantic_stores, keyed the same as var.generative_ai_semantic_stores except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_generative_ai_semantic_store.generative_ai_semantic_stores : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "generative_ai_semantic_stores_refresh_schedule" {
  description = "Map of refresh_schedule values across all generative_ai_semantic_stores, keyed the same as var.generative_ai_semantic_stores except keys with no refresh_schedule are omitted"
  value       = { for k, v in oci_generative_ai_semantic_store.generative_ai_semantic_stores : k => one(v.refresh_schedule) if v.refresh_schedule != null && length(v.refresh_schedule) > 0 }
}
output "generative_ai_semantic_stores_schemas" {
  description = "Map of schemas values across all generative_ai_semantic_stores, keyed the same as var.generative_ai_semantic_stores except keys with no schemas are omitted"
  value       = { for k, v in oci_generative_ai_semantic_store.generative_ai_semantic_stores : k => one(v.schemas) if v.schemas != null && length(v.schemas) > 0 }
}
output "generative_ai_semantic_stores_state" {
  description = "Map of state values across all generative_ai_semantic_stores, keyed the same as var.generative_ai_semantic_stores except keys with no state are omitted"
  value       = { for k, v in oci_generative_ai_semantic_store.generative_ai_semantic_stores : k => v.state if v.state != null && length(v.state) > 0 }
}
output "generative_ai_semantic_stores_system_tags" {
  description = "Map of system_tags values across all generative_ai_semantic_stores, keyed the same as var.generative_ai_semantic_stores except keys with no system_tags are omitted"
  value       = { for k, v in oci_generative_ai_semantic_store.generative_ai_semantic_stores : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "generative_ai_semantic_stores_time_created" {
  description = "Map of time_created values across all generative_ai_semantic_stores, keyed the same as var.generative_ai_semantic_stores except keys with no time_created are omitted"
  value       = { for k, v in oci_generative_ai_semantic_store.generative_ai_semantic_stores : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "generative_ai_semantic_stores_time_updated" {
  description = "Map of time_updated values across all generative_ai_semantic_stores, keyed the same as var.generative_ai_semantic_stores except keys with no time_updated are omitted"
  value       = { for k, v in oci_generative_ai_semantic_store.generative_ai_semantic_stores : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

