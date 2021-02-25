variable "apikey" {
  type    = string
}

variable "secretkey" {
  type    = string
}


variable "dns_servers" {
  type    = list
}

variable "ntp_servers" {
  type    = list
}

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

variable "http_proxy_hostname" {
  type    = string
  default = ""
}

variable "http_proxy_protocol" {
  type    = string
  default = ""
}

variable "http_proxy_port" {
  type    = string
  default = 80
}

variable "https_proxy_hostname" {
  type    = string
  default = ""
}

variable "https_proxy_protocol" {
  type    = string
  default = ""
}

variable "https_proxy_port" {
  type    = string
  default = 443
}

variable "disk_size" {
 type     = string
 default  = "25"
}

variable "vcenter_target" {
  type    = string
}

variable "vcenter_cluster" {
  type    = string
}

variable "vcenter_datastore" {
  type    = string
}

variable "vcenter_network" {
  type    = list
}

variable "vcenter_passphrase" {
  type    = string
}

variable "ip_pool" {
  type    = string
}

variable "ssh_user" {
  type    = string
}

variable "ssh_keys" {
  type    = list
}
