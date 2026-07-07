module "network" {
  source             = "../../modules/network"
  project_id         = var.project_id
  vpc_name           = "devops-vpc"
  region             = "asia-south1"
  region_asia_south2 = "asia-south2"
}
