terraform {
  required_version = ">= 1.15.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "terraform_ec2" {

  ami           = "ami-01a00762f46d584a1"
  instance_type = "t3.micro"

  tags = {
    Name = "terraform-docker-server"
  }

  user_data = <<-EOF
#!/bin/bash

apt update -y

apt install -y docker.io

docker pull shivammalikdocker/todo-app:latest

docker run -d \
  --name node-todo \
  -p 8000:8000 \
  shivammalikdocker/todo-app:latest

EOF

}