# Variables
In this tutorial, I will be covering how to use the following, using Terraform:
* Providers
* Resource
* Variables
* Outputs 
<br>

## Files
To begin with, I have created three files, main.tf, outputs.tf and variables.tf. <br>
The contents of the main.tf file are as follows: <br>
```
provider "aws" {
    version                 = "~> 2.0"
    region                  = "eu-west-1"
    shared_credentials_file = "~/.aws/credentials"
}
```
