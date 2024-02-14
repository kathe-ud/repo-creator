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
  token = "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"
}

resource "github_repository" "example" {
  name        = "example"
  description = "My awesome codebase"
  visibility = "public"
}
