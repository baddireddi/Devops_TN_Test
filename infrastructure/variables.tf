variable "resource_group_name" {
  description = "Azure Resource Group Name"
  type        = string
  default     = "devsecops-rg"
}

variable "location" {
  description = "Azure Region"
  type        = string
  default     = "eastus"
}