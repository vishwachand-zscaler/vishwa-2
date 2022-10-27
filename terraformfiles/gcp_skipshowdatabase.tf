provider "google" {
  project     = "my-project-id"
  region      = "us-central1"
}
resource "google_sql_database_instance" "skip_show" {
  name             = "master-instance"
  database_version = "MYSQL_8_0"
  region           = "us-central1"
  settings {
         database_flags {
            name  = "skip_show_database"
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
