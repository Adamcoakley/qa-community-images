# S3 Bucket
In this tutorial, I will be creating an S3 bucket using the command line interface (CLI).

## Create S3 Bucket
To create an S3 bucket with the CLI is quite straightforward; we use the mb (make bucket) command. <br>
We still need to ensure that we are using a globally unique name for our bucket that meets all the required rules. <br>
The following command was used create an S3 bucket: 
```
aws s3 mb s3://adam-coakley-478562
```
The following image was the output of the above command: <br>

![create-s3-bucket](https://github.com/Adamcoakley/qa-community-images/blob/main/AWS/s3-bucket/create-s3-bucket.png?raw=true)

## View S3 bucket
The following command was used view the S3 bucket: 
```
aws s3 ls
```
The following image was the output of the above command: <br>

![view-s3-bucket](https://github.com/Adamcoakley/qa-community-images/blob/main/AWS/s3-bucket/list-s3-buckets.png?raw=true)

The S3 bucket is also visible on the AWS console. <br>

![s3-bucket-console](https://github.com/Adamcoakley/qa-community-images/blob/main/AWS/s3-bucket/s3-buckets-on-console.png?raw=true)

## Copy file to S3 bucket
The following command was used copy a file to the S3 bucket: 
```
aws s3 cp ./test.txt s3://adam-coakley-478562  
```
The following image was the output of the above command: <br>

![copy-file-to-s3-bucket](https://github.com/Adamcoakley/qa-community-images/blob/main/AWS/s3-bucket/upload-to-s3-bucket.png?raw=true)

The test.txt file is now visible on the AWS console. <br>

![s3-bucket-console](https://github.com/Adamcoakley/qa-community-images/blob/main/AWS/s3-bucket/file-on-console.png?raw=true)

# Delete S3 bucket 
Before deleting a bucket, the bucket needs to be empty. To remove the test.txt file from the bucket, the following command was used: 
```
aws s3 rm s3://adam-coakley-478562/test.txt
```
The following image was the output of the above command: <br>

![remove-file-s3-bucket](https://github.com/Adamcoakley/qa-community-images/blob/main/AWS/s3-bucket/remove-file-s3-bucket.png?raw=true)

The following command was used delete the S3 bucket: 
```
aws s3 rb s3://adam-coakley-478562 
```
The following image was the output of the above command: <br>

![delete-s3-bucket](https://github.com/Adamcoakley/qa-community-images/blob/main/AWS/s3-bucket/remove-s3-bucket.png?raw=true)