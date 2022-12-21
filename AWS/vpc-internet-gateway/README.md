# Virtual Private Cloud - Internet Gateway
Prerequisites:
* A virtual private cloud (VPC) has been created.

An internet gateway is a horizontally scaled, redundant, and highly available VPC component that allows communication between instances in your VPC and the internet. It therefore imposes no availability risks or bandwidth constraints on your network traffic. 
<br>

To enable access to or from the internet for instances in a VPC subnet, you must do the following:
* Attach an internet gateway to your VPC.
* Ensure that your subnet's route table points to the internet gateway.
* Ensure that instances in your subnet have a globally unique IP address (public IPv4 address, Elastic IP address, or IPv6 address).
* Ensure that your network access control and security group rules allow the relevant traffic to flow to and from your instance.

## Create Internet Gateway
The following command was used to create an internet gateway:
```
aws ec2 create-internet-gateway
```

The following image was the output of the above command: <br>

![create-internet-gateway](url?raw=true)

## Attach Internet Gateway to VPC
The following command was used to attach the internet gateway to the VPC:
```
aws ec2 attach-internet-gateway --internet-gateway-id igw-0b10ac0b92bda7a77 --vpc-id vpc-088c2bca6ab1053cc
```

The following image was the output of the above command: <br>

![attach-internet-gateway-vpc](url?raw=true)

## View Internet Gateway
The following command was used to view the internet gateway:
```
aws ec2 describe-internet-gateways
```

The following image was the output of the above command: <br>

![view-internet-gateway](url?raw=true)

## Detach Internet Gateway
The following command was used to view the internet gateway:
```
aws ec2 detach-internet-gateway --internet-gateway-id igw-0b10ac0b92bda7a77 --vpc-id vpc-088c2bca6ab1053cc
```

The following image was the output of the above command: <br>

![detach-internet-gateway](url?raw=true)

## Delete Internet Gateway
The following command was used to view the internet gateway:
```
aws ec2 delete-internet-gateway --internet-gateway-id igw-0b10ac0b92bda7a77
```

The following image was the output of the above command: <br>

![view-internet-gateway](url?raw=true)

