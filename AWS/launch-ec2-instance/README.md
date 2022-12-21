# AWS CLI
The following tutorial we will be launching, viewing and terminating an EC2 instance using the AWS command line interface (CLI)

## Launch an instance
Running an instance requires quite a few options:
* **Image ID:** This is the base image that the machine will use, and it usually comes with an operating system install, such as Ubuntu.
* **Count:** The amount of instances to run from this command
* **Instance Type:** The size of the machine, how many CPUs and how much RAM
* **Key Name:** The Key Pair to install onto the machine. We need this to be able to securely connect to the instance with SSH. <br>

The following command was used to launch an instance:
```
aws ec2 run-instances --image-id ami-00463ddd1036a8eb6 --count 1 --instance-type t2.micro --key-name AMSKey
```

The following image was the output of the above command: <br>

![launch-ec2-instance](https://github.com/Adamcoakley/qa-community-images/blob/main/AWS/launch-ec2-instance/launch-ec2-instance.png?raw=true)

## View instances
To check what existing instances there are, we can use the describe-instances command:
```
aws ec2 describe-instances
```

The following image was the output of the above command: <br>

![view-ec2-instance](https://github.com/Adamcoakley/qa-community-images/blob/main/AWS/launch-ec2-instance/view-ec2-instances.png?raw=true)

## Terminate instance
We can terminate instances by providing their IDs to the terminate-instances command:
```
aws ec2 terminate-instances --instance-ids i-0918fbf59bbaa3acf
```

The following image was the output of the above command: <br>

![view-ec2-instance](https://github.com/Adamcoakley/qa-community-images/blob/main/AWS/launch-ec2-instance/terminate-instance.png?raw=true)