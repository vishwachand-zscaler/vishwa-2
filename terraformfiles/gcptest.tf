resource "google_sql_database_instance" "logdurartion" {

   name             = "bbtest1-db-nc-pgsql"
   database_version = "POSTGRES_11"
   region           = "us-central1"
   settings {
       
        database_flags {
            name = "log_checkpoints"
            value = "off"
        }
        
         ip_configuration {
            require_ssl  = "true"

        }

    tier = "db-f1-micro"
}
}