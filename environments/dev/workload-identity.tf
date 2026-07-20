module "workload_identity" {
  source                = "../../modules/workload-identity"
  pool_id               = "github-pool"
  provider_id           = "github-provider"
  github_repository     = "jayasriaero15/gcp-devops-lab"
  service_account_email = module.github_actions_sa.id
}
