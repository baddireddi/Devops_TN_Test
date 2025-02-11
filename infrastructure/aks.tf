# AKS Cluster Deployment
resource "azurerm_kubernetes_cluster" "aks" {
  name                = "aks-devsecops-${var.env}"
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "aksdevsecops"

  default_node_pool {
    name       = "agentpool"
    node_count = 2  # Adjust based on workloads
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  addon_profile {
    azure_policy { enabled = true }
  }

  role_based_access_control_enabled = true
}
