provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "kml_rg_main-ac7509fd82ef47a5"
  location = "West US"
}

# Log Analytics Workspace for Monitoring
resource "azurerm_log_analytics_workspace" "law" {
  name                = "aks-log-analytics"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

# AKS Cluster
resource "azurerm_kubernetes_cluster" "ABB-aks" {
  name                = "ABB-aks-cluster"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "abbaksdns"

  identity {
    type = "SystemAssigned"
  }

  default_node_pool {
    name       = "systempool"
    node_count = 2
    vm_size    = "Standard_DS2_v2"
  }

  # Enable Azure Monitor with Container Insights
  oms_agent {
    log_analytics_workspace_id = azurerm_log_analytics_workspace.law.id
  }

  role_based_access_control_enabled = true

  kubernetes_version = "1.28"
}

# Outputs
output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.aks.name
}

output "kube_config" {
  value     = azurerm_kubernetes_cluster.aks.kube_config_raw
  sensitive = true
}

output "log_analytics_workspace_id" {
  value = azurerm_log_analytics_workspace.law.id
}
