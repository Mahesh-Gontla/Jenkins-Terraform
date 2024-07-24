# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create a VPC
resource "aws_instance" "web_server" {
  ami           = "ami-04a81a99f5ec58529" # Replace with the desired AMI ID
  instance_type = var.ec2_instance_type
  tags = {
    Name = "web-server"
  }
}
