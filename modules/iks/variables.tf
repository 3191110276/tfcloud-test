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

#dns_servers

#ntp_servers

variable "timezone" {
  type    = string
  default = "Europe/Vienna"
}

variable "pod_network_cidr" {
  type    = string
  default = "172.16.0.0/17"
}

variable "service_cidr" {
  type    = string
  default = "172.16.128.0/17"
}

variable "proxy_enabled" {
  type    = bool
  default = false
}
