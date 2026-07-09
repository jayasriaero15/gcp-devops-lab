resource "google_storage_bucket" "mani_terraform_state" {
  name     = var.bucket_name
  location = var.region
  versioning {
    enabled = true
  }
  uniform_bucket_level_access = true
  force_destroy               = true
}
