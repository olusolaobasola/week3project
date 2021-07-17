terraform {
  backend "s3" {
    bucket = "devops-june2021-training"
    key    = "digital/gigabit/mll-week3project-statefile"
    region = "eu-west-2"
  }
}

