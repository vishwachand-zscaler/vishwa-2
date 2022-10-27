resource "kubernetes_service_account" "example" {
  metadata {
    name = "terraform-example"
  }
  automount_service_account_token = false
}
