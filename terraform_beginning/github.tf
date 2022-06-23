terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "4.26.1"
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


##if you want to destroy your repo with terraform destroy you must have an admin access to your personal token (delete repo etc)