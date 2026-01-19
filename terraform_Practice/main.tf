terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  required_version= ">=1.2.0"
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  
}


resource "aws_instance" "app_server" {
   ami = "ami-0c398cb65a93047f2"

   instance_type="t3.micro"
   
   tags={
     Name="Terraform_practice"
   }
}
