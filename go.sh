#!/bin/bash

echo "Create bucket"
echo
aws s3 mb s3://mattstestbucketforclass2 --region us-west-2 --profile saml
echo
echo "Create Files"
echo > test1.txt
echo > test2.txt
echo

sleep 3

echo "Copy files to bucket"
echo
aws s3 cp test1.txt s3://mattstestbucketforclass2 --profile saml
aws s3 cp test2.txt s3://mattstestbucketforclass2 --profile saml
echo
sleep 3
echo "list contents of bucket"
aws s3 ls s3://mattstestbucketforclass2 --profile saml
echo
sleep 3
echo "List buckets in us-west-2"
aws s3 ls --region us-west-2 --profile saml
echo
sleep 3
echo "List Policy of bucket"
aws s3api get-bucket-policy --bucket mattstestbucketforclass2 --profile saml
echo
sleep 3
echo "Delete Files"
aws s3 rm s3://mattstestbucketforclass2/test1.txt --profile saml
aws s3 rm s3://mattstestbucketforclass2/test2.txt --profile saml
echo
echo "Delete Bucket"
aws s3api delete-bucket --bucket mattstestbucketforclass2 --region us-west-2 --profile saml

