provider "aws" {
    shared_credentials_files = ["~/.aws/credentials"]
    region = "eu-west-1"
}

resource "aws_instance" "terraform-intro" {
    ami = "ami-00463ddd1036a8eb6"
    instance_type = "t2.micro"
}