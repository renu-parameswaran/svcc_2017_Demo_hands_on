#!/bin/bash

export S3Bucket="s3://svcc-2017-demo" 

aws s3 ls $S3Bucket

aws s3 cp ./s3.txt s3://svcc-2017-demo

aws s3 sync ./files s3://svcc-2017-demo/files

# update one of the files and rerun sync
echo "Adding more data" >> files/3.txt
