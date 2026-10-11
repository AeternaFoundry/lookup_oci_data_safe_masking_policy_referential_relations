variable "data_safe_masking_policy_referential_relations_lookup" {
  description = <<EOT
Map of data_safe_masking_policy_referential_relations_lookup, attributes below
Required:
    - masking_policy_id
Optional:
    - column_name
    - object
    - relation_type
    - schema_name
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    masking_policy_id = string
    column_name       = optional(list(string))
    object            = optional(list(string))
    relation_type     = optional(list(string))
    schema_name       = optional(list(string))
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

