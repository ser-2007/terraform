terraform {
  required_providers {
    github = {
        source = "integrations/github"
        version = "4.17.0"
    }
  }
}

provider "github" {
  ###token = "write your github token" 
}

resource "github_repository" "terraform_basics" {
    name = "terraform_basics"
    visibility = "private"
  
}