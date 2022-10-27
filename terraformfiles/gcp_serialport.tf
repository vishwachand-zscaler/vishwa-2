provider "google" {
  project     = "my-project-id"
  region      = "us-central1"
}
resource "google_compute_instance" "serial" {
  name         = "test"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"
  serial-port-enable = true
}
