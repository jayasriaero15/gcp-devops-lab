module "github_actions_sa" {
  source               = "../../modules/serviceaccounts/"
  service_account_name = var.github_actions_sa_name
  display_name         = "GitHub Actions Service Account"
  project = var.project_id
}
