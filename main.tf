

module "create_cluster_a" {
  source = "./modules/iks/"

  app_name = "test"
  cluster_name = "a"

  dns_servers = var.dns_servers
  ntp_servers = var.ntp_servers

  proxy_enabled = var.proxy_enabled

  http_proxy_hostname = var.http_proxy_hostname
  http_proxy_protocol = var.http_proxy_protocol
  http_proxy_port = var.http_proxy_port
  https_proxy_hostname = var.https_proxy_hostname
  https_proxy_protocol = var.https_proxy_protocol
  https_proxy_port = var.https_proxy_port

  vcenter_target = var.vcenter_target
  vcenter_cluster = var.vcenter_cluster
  vcenter_datastore = var.vcenter_datastore
  vcenter_network = var.vcenter_network
  vcenter_passphrase = var.vcenter_passphrase

  ip_pool = var.ip_pool

  ssh_user = var.ssh_user
  ssh_keys = var.ssh_keys
}

output "cluster_info" {
  value = module.create_cluster_a.cluster_info
}

output "cluster_info2" {
  value = module.create_cluster_a.cluster_info2
}
