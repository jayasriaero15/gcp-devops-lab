terraform {
  backend "gcs" {
    bucket = "mani-terraform-state"
    prefix = "network/dev"
  }
}
