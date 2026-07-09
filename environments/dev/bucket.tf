module "bucket" {
  source      = "../../modules/bucket"
  bucket_name = "mani-terraform-state"
  region      = "asia-south1"
}
