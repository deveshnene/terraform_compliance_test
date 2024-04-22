provider "google" {
    project = ""
}

resource "google_storage_bucket" "log_bucket" {
  name = "log-bucket"
  location = "ASIA-SOUTH1"
  enable_object_retention = true
  retention_policy {
    is_locked = true
    retention_period = 864000
  }
}

resource "google_storage_bucket" "log_bucket2" {
  name = "log-bucket-2"
  location = "ASIA-SOUTH1"
}

resource "google_storage_bucket" "log_bucket3" {
  name = "log-bucket-3"
  location = "ASIA-SOUTH1"
  enable_object_retention = true
}

resource "google_storage_bucket" "log_bucket4" {
  name = "log-bucket-4"
  location = "ASIA-SOUTH1"
  retention_policy {
    is_locked = true
    retention_period = 864000
  }
}

