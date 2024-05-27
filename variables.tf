### VPC variables ###
variable "network_name" {
  type        = string
  description = "network name"
}

### K8s variable ###

variable "auto_scale_min" {
  type        = string
  description = "description"
}

variable "auto_scale_max" {
  type        = string
  description = "description"
}
variable "auto_scale_initial" {
  type        = string
  description = "description"
}
variable "node_labels_role" {
  type        = string
  description = "description"
}

variable "node_labels_env" {
  type        = string
  description = "description"
}

variable "sa_kube" {
  type = string
}

variable "folder_id" {
  type = string
}

variable "cloud_id" {
  type = string
}