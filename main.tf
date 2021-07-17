terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}


module "ec2PubNode" {
  source = "./mymodules/ec2"
cidr = "10.0.0.0/16"
  instance_count         = 1
  name                   = "my-public-cluster"
  ami                    = "ami-0af5624552d23f90f"
  availability_zone      = "eu-west-2a"
  instance_type          = "t2.micro"
  key_name               = "june2021"
  httport                = "8080"
 
  
}

module "ec2PriNode" {
  source = "./mymodules/ec2"
cidr = "10.0.0.0/16"
  instance_count         = 2
  name                   = "my-private-cluster"
  ami                    = "ami-03ac5a9b225e99b02"
  availability_zone      = "eu-west-2b"
  instance_type          = "t2.micro"
  key_name               = "june2021"
  httport                = "8080"
 
}



