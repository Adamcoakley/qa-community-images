# Terraform Introduction
In this tutorial, I will be creating an EC2 instance using Terraform.

## main.tf file
The contents of the main.tf file are as follows: <br>
```
provider "aws" {
    shared_credentials_files = ["~/.aws/credentials"]
    region = "eu-west-1"
}

resource "aws_instance" "terraform-intro" {
    ami = "ami-00463ddd1036a8eb6"
    instance_type = "t2.micro"
}
```

First of all, we need to connect to AWS. Terraform has to successfully authenticate. It is done with the help of Programmatic API Keys (Access Key and Secret.) The following block of code is used to create the EC2 instance.

# Command Line Interface (CLI) commands
## terraform init
Run the following command for Terraform to get any required dependencies based on the cloud provider being used: 

```
terraform init
```

The following image was the output of the above command: <br>

![terraform-init](https://github.com/Adamcoakley/qa-community-images/blob/main/AWS/terraform/introduction/terraform-init.png?raw=true)

## terraform plan
Run the following command to scan the main.tf file for any issues: 

``` 
terraform plan
```

The following image was the output of the above command: <br>

![terraform-plan](https://github.com/Adamcoakley/qa-community-images/blob/main/AWS/terraform/introduction/terraform-plan.png?raw=true)

## terraform apply
Run the following command to create the real resource:

```
terraform apply
```

The following image was the output of the above command: <br>

![terraform-apply](https://github.com/Adamcoakley/qa-community-images/blob/main/AWS/terraform/introduction/terraform-apply.png?raw=true)

## terraform apply
Once Terraform gives you a prompt about the successful operation, check that the resource has been created in the AWS console under Compute > EC2. <br>

![instance-on-console](https://github.com/Adamcoakley/qa-community-images/blob/main/AWS/terraform/introduction/instance-on-console.png?raw=true)