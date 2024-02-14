terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.0.0-rc2"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
  token = var.github_token
  owner = "BUILDING BLOCK TSS"
}

resource "github_repository" "jelpi-mf" {
  name         = "jelpi-mf1"
  description  = "Mi repositorio de prueba"
  visibility   = "private"
}
