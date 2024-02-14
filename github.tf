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
