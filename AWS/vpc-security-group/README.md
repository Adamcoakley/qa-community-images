# Virtual Private Cloud - Security Groups
Prerequisites:
* A virtual private cloud (VPC) has been created.

When you launch an instance in a VPC, you can assign up to five security groups to the instance. A security group acts as a virtual firewall for your instance to control inbound and outbound traffic. In this tutorial, I will be creating a security groups, allowing incoming traffic from port 443 and deleting the security group.

## Create Security Group
The following command was used create a security group: 
```
aws ec2 create-security-group --group-name my-vpc-sg --description "VPC Security Group" --vpc-id vpc-088c2bca6ab1053cc
```
The following image was the output of the above command: <br>

![create-vpc-sg](https://github.com/Adamcoakley/qa-community-images/blob/main/AWS/vpc-security-group/create-vpc-sg.png?raw=true)

## View Security Group
The following command was used view the new security group: 
```
aws ec2 describe-security-groups --group-id sg-042d738e0d825a717
```
The following image was the output of the above command: <br>

![view-vpc-sg](https://github.com/Adamcoakley/qa-community-images/blob/main/AWS/vpc-security-group/view-vpc-sg.png?raw=true)

## Basic Usage
You can add or remove rules for a security group (also referred to as authorizing or revoking inbound or outbound access). A rule applies either to inbound traffic (ingress) or outbound traffic (egress).

The following command was used to allow incoming traffic from port 443: 
```
aws ec2 authorize-security-group-ingress --group-id sg-042d738e0d825a717 --protocol tcp --port 443 --cidr 0.0.0.0/0
```
The following image was the output of the above command: <br>

![port-433-vpc-sg](https://github.com/Adamcoakley/qa-community-images/blob/main/AWS/vpc-security-group/allow-port-433.png?raw=true)

The following command was used to allow ssh from anywhere: 
```
aws ec2 authorize-security-group-ingress --group-id sg-042d738e0d825a717 --protocol tcp --port 22 --cidr 0.0.0.0/0
```
The following image was the output of the above command: <br>

![allow-ssh-vpc-sg](https://github.com/Adamcoakley/qa-community-images/blob/main/AWS/vpc-security-group/allow-ssh.png?raw=true)

# Delete Security Group
The following command was used to delete the security group:
```
aws ec2 delete-security-group --group-id sg-042d738e0d825a717
```
The following image was the output of the above command: <br>

![delete-vpc-sg](https://github.com/Adamcoakley/qa-community-images/blob/main/AWS/vpc-security-group/delete-vpc-sg.png?raw=true)