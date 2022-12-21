# DynamoDB
Amazon DynamoDB is a NoSQL Database in the cloud, suitable for anyone needing a reliable and fully managed NoSQL solution. DynamoDB is designed to provide automated storage scaling and low latency. It is particularly useful when your application must read and store massive amounts of data and you need speed and reliability. You can scale up or scale down your tables throughput capacity, without downtime or performance degradation.

DynamoDB automatically spreads the data and traffic for your tables over a sufficient number of servers, this is done in order to handle your throughput and storage requirements whilst maintaining fast and consistent performance. All of your data is stored on solid-state disks (SSDs), and is automatically replicated across multiple Availability Zones in an AWS Region, this provides built-in high availability and data durability.

## Create DynamoDB Table
The following command was used to create a DynamoDB table:
```
aws dynamodb create-table --table-name Movies --attribute-definitions AttributeName=MovieName,AttributeType=S AttributeName=MovieYear,AttributeType=S --key-schema AttributeName=MovieName,KeyType=HASH AttributeName=MovieYear,KeyType=RANGE --provisioned-throughput ReadCapacityUnits=5,WriteCapacityUnits=5
```

The following image was the output of the above command: <br>

![create-db-table](https://github.com/Adamcoakley/qa-community-images/blob/main/AWS/dynamo-db/create-table.png?raw=true)

## Add Data
The following command was used to add data a DynamoDB table:
```
cat << EOF > movies.json
{
    "MovieName": {"S": "Avengers Assemble"},
    "MovieYear": {"S": "2012"}
}
EOF
```

The following image was the output of the above command: <br>

![add-data-table](https://github.com/Adamcoakley/qa-community-images/blob/main/AWS/dynamo-db/add-data-table.png?raw=true)

The above commands was also combined with the following command, to upload data to DynamoDB:
```
aws dynamodb put-item --table-name Movies --item file://movies.json
```

## Get Table Information
The following command was used to get information about the table:
```
aws dynamodb describe-table --table-name Movies
```

The following image was the output of the above command: <br>

![get-info-table](https://github.com/Adamcoakley/qa-community-images/blob/main/AWS/dynamo-db/get-info-table.png?raw=true)

## Scan Table
The following command was used to get all items in a table:
```
aws dynamodb scan --table-name Movies
```

The following image was the output of the above command: <br>

![scan-table](https://github.com/Adamcoakley/qa-community-images/blob/main/AWS/dynamo-db/scan-table.png?raw=true)

## Delete Table
The following command was used to delete the table:
```
aws dynamodb delete-table --table-name Movies
```

The following image was the output of the above command: <br>

![delete-table](https://github.com/Adamcoakley/qa-community-images/blob/main/AWS/dynamo-db/delete-table.png?raw=true)

