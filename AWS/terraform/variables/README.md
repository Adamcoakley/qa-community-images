# Variables
In this tutorial, I will be covering how to use the following, using Terraform:
* Providers
* Resource
* Variables
* Outputs 

## Files
To begin with, I have created three files, **main.tf, variables.tf** and **outputs.tf.** <br>
The content of the **main.tf** file is as follows: <br>
```
provider "aws" {
    version                 = "~> 2.0"
    region                  = "eu-west-1"
    shared_credentials_file = "~/.aws/credentials"
}
```

The content of the **variables.tf** file is as follows: <br>
```
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
```

The content of the **outputs.tf** file is as follows: <br>
```
output "ec2_id" {
    value = aws_instance.EC2.id
}
```
