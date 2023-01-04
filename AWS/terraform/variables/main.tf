provider "aws" {
    version                 = "~> 2.0"
    region                  = "eu-west-1"
    shared_credentials_file = "~/.aws/credentials"
}

resource "aws_instance" "terraform-ec2" {
    ami           = "ami-02df9ea15c1778c9c"
    instance_type = "t2.micro"
    key_name      = "example"
}