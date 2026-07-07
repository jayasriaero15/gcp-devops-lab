resource "google_compute_network" "devops_vpc" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
  project                 = var.project_id
}

resource "google_compute_subnetwork" "dev_subnet" {
  name          = "dev-subnet"
  project       = var.project_id
  ip_cidr_range = "10.10.1.0/24"
  network       = google_compute_network.devops_vpc.id
  region        = var.region #"asia-south1"
}

resource "google_compute_subnetwork" "qa_subnet" {
  name          = "qa-subnet"
  ip_cidr_range = "10.10.2.0/24"
  network       = google_compute_network.devops_vpc.id
  region        = var.region_asia_south2 #"asia-south2"
}

resource "google_compute_subnetwork" "prod_subnet" {
  name          = "prod-subnet"
  ip_cidr_range = "10.10.3.0/24"
  network       = google_compute_network.devops_vpc.id
  region        = var.region #"asia-south1"
}

resource "google_compute_firewall" "allow_http" {
  name = "allow-http"
  #subnetwork = google_compute_subnetwork.prod_subnet.id
  network = google_compute_network.devops_vpc.id
  allow {
    protocol = "TCP"
    ports    = ["80"]
  }
  source_ranges = ["0.0.0.0/0"]
}
