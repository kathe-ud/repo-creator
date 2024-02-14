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
}

resource "github_repository" "main" {
  name         = "jelpi-mf"
  description  = "Mi repositorio de prueba"
  visibility   = "private"
  organization = "BUILDING BLOCK TSS"
  team         = "Team Gus"
  project_type = "private"


  owners = [
    "kathe-ud",
  ]

}
