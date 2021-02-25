############################################################
# REQUIRED PROVIDERS
############################################################
terraform {
  required_providers {
    intersight = {
      source  = "CiscoDevNet/intersight"
      version = ">= 1.0.0"
    }
  }
}


#############################
# GET ORGANIZATION MOID
#############################
data "intersight_organization_organization" "organization" {
  name = var.org
}

#############################
# GET AVAILABLE K8S VERSIONS
#############################
data "intersight_kubernetes_version" "version" {
  kubernetes_version = join("", ["v", var.k8s_version])
}

#############################
# CREATE K8S VERSION POLICY
#############################
resource "intersight_kubernetes_version_policy" "k8s_version" {

  name = "${var.app_name}_${var.cluster_name}_k8s_version"

  nr_version {
    object_type = "kubernetes.Version"
    moid        = data.intersight_kubernetes_version.version.moid
  }

  organization {
    object_type = "organization.Organization"
    moid        = data.intersight_organization_organization.organization.moid
  }
}
