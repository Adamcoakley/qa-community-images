#  Amazon Relational Database Service 
Amazon Relational Database Service (RDS) was designed to make it easier to set up, operate, and scale in the cloud.
This is very cost-efficient and has resizeable capacity, and the usual time-consuming
tasks are all automated. <br>

RDS is similar to EC2, where you have the option to choose from different hardware and
software types depending on your needs. You can create a database that's optimized for
memory, performance or I/O. There are even options to choose which database engine you want to use. These can be, MySQL, PostgreSQL and so on.

## Tutorial 
We will be creating RDS instances using the AWS CLI. There are some concepts to understand regarding the
parameters that will be used to create these instances:
* **DB Name:** This is where you define the name for your database.
* **DB Instance Identifier:** This is needed as this is the unique identifier which is part of the endpoint used to connect to the rds instance.
* **Allocated Storage:** This is to define the size of your RDS instance in GB
* **Engine:** This is needed to define which type of database engine you want to run, whether it be MySQL, PostgreSQL or other SQL types.
* **Database Instance Class:** This is defining the hardware specifications of the database. Similar to defining the hardware specifications
of an EC2 instance with predefined RAM, CPU Cores and so on.
* **Master Username:** You will be required to make a master account for your RDS instance, this account will have the highest privilege.
* **Master User Password:** This is the password associated with the master account. <br>

## Create RDS Instance
The following command was used to an RDS instance:
```
aws rds create-db-instance --db-name myDB --db-instance-identifier db-cli --allocated-storage 20 --engine mysql --db-instance-class db.t2.micro --master-username admin --master-user-password password123
```

The following image was the output of the above command: <br>

![create-rds-instance](https://github.com/Adamcoakley/qa-community-images/blob/main/AWS/rds/rds-instance.png?raw=true)

The new RDS instance is also visible on the AWS console: <br>

![rds-instance-console](https://github.com/Adamcoakley/qa-community-images/blob/main/AWS/rds/rds-console.png?raw=true)

## Install MySQL Client
Before installing the mysql client, I created an EC2 instance and ssh'd into the new instance. The following command was then used to install the mysql client:
```
sudo apt update -y && sudo apt install mysql-client-core-5.7 -y
```

The following image was the output of the above command: <br>

![install-mysql-client](https://github.com/Adamcoakley/qa-community-images/blob/main/AWS/rds/install-mysql-client.png?raw=true)

## View RDS Instances
The following command was used to view the RDS instance:
```
aws rds describe-db-instances
```

The following image was the output of the above command: <br>

![view-rds-instance](https://github.com/Adamcoakley/qa-community-images/blob/main/AWS/rds/view-instances.png?raw=true)

## View RDS Instances
The following command was used to delete the RDS instance:
```
aws rds delete-db-instance --db-instance-identifier db-cli --skip-final-snapshot
```

The following image was the output of the above command: <br>

![delete-rds-instance](https://github.com/Adamcoakley/qa-community-images/blob/main/AWS/rds/delete-instance.png?raw=true)