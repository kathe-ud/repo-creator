terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
  token = var.github_token
  owner = "BUILDING-BLOCK-TSS"
}

data "github_team" "mi_equipo" {
  organization = "BUILDING-BLOCK-TSS"
  slug         = "team-gus"
}

resource "github_repository" "example" {
  name         = "example4"
  description  = "Mi repositorio de prueba"
  visibility   = "private"
}

resource "github_team_repository" "some_team_repo" {
  team_id    = "team-gus"
  repository = "example4"
  permission = "pull"
}
