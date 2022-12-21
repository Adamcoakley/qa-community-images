# Virtual Private Cloud - Subnets
Prerequisites:
* A virtual private cloud (VPC) has been created.

A subnet is a range of IP addresses in your VPC. You can launch AWS resources, such as EC2 instances, into a specific subnet. Each subnet must reside entirely within one Availability Zone and cannot span zones. By launching instances in separate Availability Zones, you can protect your applications from the failure of a single zone.

## Create Subnet
The following command was used to create a subnet using the VPCs ID:
```
aws ec2 create-subnet --vpc-id vpc-088c2bca6ab1053cc --cidr-block 10.0.1.0/24
```

The following image was the output of the above command: <br>

![create-subnet](url?raw=true)

## View Existing Subnets
The following command was used to view all existing subnets
```
aws ec2 describe-subnets
```

The following image was the output of the above command: <br>

![view-subnets](url?raw=true)