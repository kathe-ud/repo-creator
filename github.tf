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

output "repo_name" {
    value = github_repository.example.name
  }
