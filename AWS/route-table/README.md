# AWS Route Table
A route table contains a set of rules, called routes, that are used to determine where network traffic is directed. Each subnet in your VPC must be associated with a route table; the table controls the routing for the subnet. A subnet can only be associated with one route table at a time, but you can associate multiple subnets with the same route table. <br>

The following are the basic things that you need to know about route tables:
* Your VPC automatically comes with a main route table that you can modify.
* You can create additional custom route tables for your VPC.
* You cannot delete the main route table, but you can replace the main route table with a custom table.
* CIDR blocks for IPv4 and IPv6 are treated separately

## Create Route Table 
Prerequisets: 
* A virtual private cloud is created.
* An internet gateway is created and attached to the VPC.
<br>

The following command was used to create a route table: 
```
aws ec2 create-route-table --vpc-id vpc-088c2bca6ab1053cc
```

The following image was the output of the above command: <br>

![create-rt](https://github.com/Adamcoakley/qa-community-images/blob/main/AWS/vpc-subnets/create-subnet.png?raw=true)

## 

The following command was used to create a route: 
```
aws ec2 create-route --route-table-id rtb-0add6944f3fac342f --destination-cidr-block 0.0.0.0/0 --gateway-id igw-0e3d777db649b70c7
```

The following image was the output of the above command: <br>

![create-route](url?raw=true)

## 

The following command was used to delete a route: 
```
aws ec2 delete-route --route-table-id rtb-0add6944f3fac342f --destination-cidr-block 0.0.0.0/0
```

The following image was the output of the above command: <br>

![delete-route](url?raw=true)
