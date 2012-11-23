---
layout: post
title: AWS Cloud Tour Chennai 2011
type: post
tags:
 - aws, amazon, cloud
published: true
meta:
categories:
 - blog
---
All these above are just like Lego building blocks enabling mix and match of these components to build the necessary system.

###Amazon EC2 - Elastic Compute Cloud 
EC2 can scale out/in/up/down

1. Choose the EC2 instance depending on region of your customers
2. Choose Amazon Machine Image - To be launched in AZ - as a EC2 instance 
    1. Epheremal Storage 
    2. Elastic Block Storage - Snapshot stored in S3
    3. Security Groups - Elastic IP and Elastic LB 
    4. Amazon Cloud Watch (tracking and monitoring)

#####Elastic IP 
1. Associated with an AWS account 
2. Sync assign to a running instance 
3. Quickly remap EIP to any instance 
4. Always point Static IP as the Elastic IP 
5. Domain CNAME mapped to Elastic IP 
   This is useful if the EC2 instance goes donw, it can be pointed to a secoundary server 

#####Elastic Block Store 
1. From 1GB to 1TB 
2. formatted with native file system 
3. automatically replicated in same AZ 
4. ability to create point-in-time snapshots stored in S3 
5. integration with CloudWatch to track performance metrics 
  
####Instance Metadata 
SPOT Instances/On demand instances - Bid, win, Perform and the instance is shut down 
