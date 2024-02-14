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
