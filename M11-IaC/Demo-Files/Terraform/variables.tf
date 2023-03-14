variable "location" {
  type = string
  description = "Azure Region"
}

variable "rg_name" {
  type = string
  description = "Resource Group Name"
}

variable "env" {
  type = string
  description = "Resource Environment"
}

variable "sa_name" {
  type = string
  description = "Storage account name"
}