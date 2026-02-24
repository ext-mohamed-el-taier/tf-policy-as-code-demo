
module "rg" {
  source            = "../../../../modules/azure/azure-resource-group"
  resourceGroupName = var.resourceGroupName
  tags              = var.tags
  location          = var.location
}
