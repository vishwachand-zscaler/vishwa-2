resource "google_container_cluster" "example" {
  name               = var.name
  location           = var.location
  project            = data.google_project.project.name
  enable_binary_authorization = true
  enable_intranode_visibility = true
  enable_shielded_nodes = true
  node_config {
    shielded_instance_config {
      enable_integrity_monitoring = true
    }
     workload_metadata_config {
      node_metadata = "GKE_METADATA_SERVER"
    }
  }
  authenticator_groups_config{
    security_group="gke-security-groups@yourdomain.com"
  }

  private_cluster_config {
       enable_private_nodes    = true
       enable_private_endpoint = true
       master_ipv4_cidr_block  = true
    }
}
