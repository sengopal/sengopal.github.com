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
#Amazon Cloud Tour 2011
##Keynote
Amazon web services had arranged for a 1-day expo for customers, partners and enthusiasts alike at Hyatt Regency in Chennai. The main hosts Shane and Janakiram were warm and truly enthusiastic about the turnout for the event. The limelight of the event though was __Dr.Werner Vogel__, the CTO of Amazon and a wonderfully hearty person who enjoyed the keynote and the other interactions as much as the participants.

Some of the customer solutions who had booths set up are Right Scale (who provided a free trial), Cognizant Technology Solutions who were demonstrating their _Logging as a service_ which pulls the logs from app to a private cloud and uses hadoop to analyze the data based on a user query.

##Building Fault tolerent AWS applications
The first session after the keynote was _Building Fault tolerent AWS applications_ which described about the AWS building blocks, Amazon EC2 architecture and the High availability features of EDS

###AWS building blocks    
1. Amazon EC2
2. Amazon S3
3. Amazon EBS
4. Amazon VPS
5. Elastic LB
6. Amazon RDS 
7. Amazon Global physical infrastructure

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



####Making the ANI Dynamic 
1. Similar to JNDL - Metadata endpoint - 169.254.169.254 accessable by EC2 instance 
2. Instance Queries the End point to know what is the role it needs to play 
3. If the endpoint says it is a Web Server, it setups itself as Apache HTTPD server and queries the lastest website as returned by the End point 

####Dynamic discovery of the DB 
1. which is the master and slave DBs info for the EC2 web server instance 
2. while launching, additional parameters can be given 
   
####Elastic Load Balancer 
1. distribute across AZs 
2. detect health of instances and block traffic 
    1. supports sticky sessions 
    2. supports IPv4 and IPv6 
    3. Request count and latency metrics in CloudWatch 
    
####Amazon RDS - Relational Data services 
1. Web service
2. Automatic failover 
3. Sync replication 

####Quick Steps
1. Start with EC2 
2. Attach an elastic IP 
3. Create and attach EBS 
4. Bundle generic AMIs using Metadata 
5. Associate EC2 instances with the ELB 
6.Launch RDS DB instances in Multi AZ

##Arjun Chopra - Building AWS Apps
1. This presentation was by Arjun Chopra, the CTO of Cambridge Tech. Enterprises and uses aws for cloud enablement.
2. 24x7 management, starting at 9$ 
3. why cloud makes sense 
    1. no up front expense 
    2. pay as u go 
    3. on demand provisioning 
    4. Elastic scale 
    5. Pass benefits on to users 
4. Cloud Goal Flip the equation

###Build a Cloud ready App 
1. Shared responsiblity model 
2. Development and migration assissted by CTE 
3. 24/7 managed services delivered by cloud enable 
4. on demand pay as u go infrastructure provided by AWS 

###Design Best Practices 
1. Protect ur data 
2. Design for failure so nothing fails 
3. Decouple and make stateless 
4. Handle reboots grcefully 
5. Isolate traffic 
    1. Static vs dynamic 
    2. Read Vs write