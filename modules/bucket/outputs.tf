output "bucket_name" {
  value = google_storage_bucket.mani_terraform_state.name
}

output "bucket_url" {
  value = google_storage_bucket.mani_terraform_state.url
}
