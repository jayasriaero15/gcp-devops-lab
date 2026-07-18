resource "google_service_account" "github_action_sa" {
  account_id   = var.service_account_name
  display_name = var.display_name
}

resource "google_project_iam_member" "github_action_role_binding" {
  project = var.project
  role    = "roles/artifactregistry.writer"
  member  = "serviceAccount:${google_service_account.github_action_sa.email}"
}
