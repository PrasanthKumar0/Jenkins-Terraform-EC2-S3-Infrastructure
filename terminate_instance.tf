# terminate_instance.tf

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  instance_id = "i-079634f07d0a4e975"
  # Other instance configuration as needed
}
