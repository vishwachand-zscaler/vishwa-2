provider "google" {
  project     = "my-project-id"
  region      = "us-central1"
}
resource "google_compute_instance" "publicIp" {
  name         = "test"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"
  boot_disk {}
  access_config {
    content {
        nat_ip       = "192.168.0.0" 
      }
    }
}
