provider "google" {
  project     = "my-project-id"
  region      = "us-central1"
}
resource "google_sql_database_instance" "ext_scripts" {
  name             = "master-instance"
  database_version = "SQLSERVER_2017_STANDARD"
  region           = "us-central1"
  
  settings {
         database_flags {
            name  = "external scripts enabled"
            value = "on"
          }
         ip_configuration {
             require_ssl  = "true"
  }

  }
}
