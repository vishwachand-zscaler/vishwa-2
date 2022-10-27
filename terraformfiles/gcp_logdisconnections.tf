terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
resource "google_sql_database_instance" "default" {
  name             = "master-instance"
  database_version = "POSTGRES_11"
  region           = "us-central1"
  settings {
         database_flags {
            name  = "log_disconnections"
            value = "off"
          }
         ip_configuration {
             require_ssl  = "true"
  }
}
}
resource "google_sql_ssl_cert" "client_cert" {
  common_name = "client-name"
  instance    = google_sql_database_instance.default.name
}
