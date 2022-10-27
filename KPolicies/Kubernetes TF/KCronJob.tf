resource "kubernetes_cron_job" "example" {
  metadata {
    name      = "terraform-example"
    namespace = "default"
    labels = {
      test = "MyExampleApp"
    }
  }

  spec {
    selector {
      match_labels = {
        test = "MyExampleApp"
      }
    }
  }
}
