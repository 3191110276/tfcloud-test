

module "create_cluster_a" {
  source = "./modules/iks/"

  app_name = "test"
  cluster_name = "a"
}
