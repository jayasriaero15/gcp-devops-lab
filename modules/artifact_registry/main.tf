resource "google_artifact_registry_repository" "docker_repo" {
  repository_id = var.repository_name
  location      = var.region
  format        = "DOCKER"
  description   = "Docker image repository"
}
