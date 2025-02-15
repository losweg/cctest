terraform {
  required_providers {
    google = {
        source = "hashicorp/google"
        version = "~> 5.0"
    }
  }
}

provider "google" {
    project = "sunlit-amulet-444320-m2"
    region = "us-west1" # save money
}

resource "google_storage_bucket" "mybucket" {
    name = "my-terraform-bucket-332803084"
    location = "us-west1"
}

output "bucket_name" {
    value = google_storage_bucket.mybucket.name
}