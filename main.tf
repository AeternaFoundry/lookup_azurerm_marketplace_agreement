data "azurerm_marketplace_agreement" "marketplace_agreement_lookup" {
  for_each = var.marketplace_agreement_lookup

  offer     = each.value.offer
  plan      = each.value.plan
  publisher = each.value.publisher
}

