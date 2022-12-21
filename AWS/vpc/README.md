# Virtual Private Cloud
In this tutorial, I will be creating an a virtual private cloud (VPC) using the command line interface (CLI).

## Create VPC
The following command was used create a VPC: 
```
aws ec2 create-vpc --cidr-block 10.0.0.0/16
```
The following image was the output of the above command: <br>

![create-vpc](https://github.com/Adamcoakley/qa-community-images/blob/main/AWS/vpc/create-vpc.png?raw=true)

## View VPCs
The following command was used view the new VPC: 
```
aws ec2 describe-vpcs
```
The following image was the output of the above command: <br>

![view-vpc](https://github.com/Adamcoakley/qa-community-images/blob/main/AWS/vpc/view-vpcs.png?raw=true)

## Create VPC and store ID in variable
Alternatively, when creating a VPC, it may be a good idea to store the ID in a variable: 
```
vpc_id=$(aws ec2 create-vpc --cidr-block 10.0.0.0/16 --query Vpc.VpcId --output text)
```
The following image was the output of the above command: <br>

![create-vpc-and-use-var](https://github.com/Adamcoakley/qa-community-images/blob/main/AWS/vpc/create-and-store-vpc-variable.png?raw=true)

# Delete VPC 
The following command was used to delete the VPC
```
aws ec2 delete-vpc --vpc-id ${vpc_id}
```
The following image was the output of the above command: <br>

![delete-vpc](https://github.com/Adamcoakley/qa-community-images/blob/main/AWS/vpc/delete-vpc.png?raw=true)
