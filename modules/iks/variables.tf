############################################################
# VARIABLE DEFINITON
############################################################
variable "app_name" {
  type    = string
  default = "brewery"
}

variable "cluster_name" {
  type    = string
  default = ""
}

variable "org" {
  type    = string
  default = "default"
}

variable "k8s_version" {
  type    = string
  default = "1.18.12"
}
