variable "ami-id" {
    description = "AMI ID of ubuntu 20.04LTS eu-west-1"
    default     = "ami-00463ddd1036a8eb6"
}

variable "instance-type" {
    description = "Free tier EC2 Instance type"
    default     = "t2.micro"
}

variable "pem-key" {
    description = "Associated Key to SSH into the EC2 Instance"
    default     = "AMSKey"
}