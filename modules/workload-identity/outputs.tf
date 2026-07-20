output "pool_name" {
  value = google_iam_workload_identity_pool.github_pool.name
}

output "provider_name" {
  value = google_iam_workload_identity_pool_provider.github_provider.name
}