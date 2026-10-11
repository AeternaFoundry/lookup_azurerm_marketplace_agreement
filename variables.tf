variable "marketplace_agreement_lookup" {
  description = <<EOT
Map of marketplace_agreement_lookup, attributes below
Required:
    - offer
    - plan
    - publisher
EOT

  type = map(object({
    offer     = string
    plan      = string
    publisher = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.marketplace_agreement_lookup : (
        length(v.offer) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.marketplace_agreement_lookup : (
        length(v.plan) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.marketplace_agreement_lookup : (
        length(v.publisher) > 0
      )
    ])
    error_message = "must not be empty"
  }
}

