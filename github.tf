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
  owner = "BUILDING-BLOCK-TSS"
}

resource "github_repository" "jelpi-mf" {
  name         = "jelpi-mf2"
  description  = "Mi repositorio de prueba"
  visibility   = "private"
}

resource "github_repository_collaborators" "some_repo_collaborators" {
  repository = "jelpi-mf2"

  team {
    permission = "pull"
    team_id = "team-gus"
  }
}
