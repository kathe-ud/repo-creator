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
  name        = "example2"
  description = "My awesome codebase"
  visibility = "public"
}
