provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  #   shared_config_files      = ["/Users/snrak/.aws/config"]
  #   shared_credentials_files = ["/Users/snrak/.aws/credentials"]
  #   profile                  = "default"
}

resource "aws_instance" "ec2_example" {

  ami           = "ami-03f4878755434977f"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform EC2"
  }
}
