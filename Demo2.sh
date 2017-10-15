#!/bin/bash

export S3Bucket="s3://svcc-2017-demo" 

aws s3 ls $S3Bucket

aws s3 cp ./s3.txt s3://svcc-2017-demo

aws s3 sync ./files s3://svcc-2017-demo/files

// Move all .jpg files in s3://my-bucket/path to ./MyDirectory
aws s3 mv s3://svcc-2017-demo/files /MyDirectory --exclude '*' --include '*.jpg' --recursive

// List the contents of my-bucket
aws s3 ls s3:// svcc-2017-demo/my-bucket

// List the contents of path in my-bucket
aws s3 ls s3:// svcc-2017-demo/my-bucket/path/

// Delete s3://my-bucket/path/MyFile.txt
aws s3 rm s3:// svcc-2017-demo/my-bucket/path/MyFile.txt

// Delete s3://my-bucket/path and all of its contents
aws s3 rm s3:// svcc-2017-demo/my-bucket/path --recursiv
# update one of the files and rerun sync
echo "Adding more data" >> files/3.txt
