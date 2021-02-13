#Terraform setup
terraform {
  required_providers {
     aws = {
      source  = "hashicorp/aws"
      version = "3.23.0"
    }
  }
}
# Configure the AWS Provider
# REPLACE KEYS!!!!!!
provider "aws" {
  region = "us-east-2"
  access_key = "ABCBCBCBCBCBCBCBCCBC"
  secret_key = "SDLSDsdvsdvsdvsdVLERdfer3r3efdfdfdddvdfd"
}

resource "aws_instance" "example" {
  ami           = "ami-01aab85a5e4a5a0fe"
  instance_type = "t2.micro"
}

# 1. Create VPC
subnet_id = "${aws_subnet.prod-subnet-public-1.id}"

# 2. Create a private subnet


# 3. Create an s3 bucket


# 4. Create an EC2 and install docker (use the user_data)



