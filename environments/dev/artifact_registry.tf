module "artifact_registry" {
  source          = "../../modules/artifact_registry"
  repository_name = "dev-docker-repo"
  region          = var.region
}
