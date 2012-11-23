---
layout: post
title: Amazon Cloud Tour 2011
tags:
- amazon
- cloud
type: post
published: true
meta:
categories:
 - aws
---
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

###Operation Best practices 
1. Secure the systems 
2. Leverage the Regions and AZs for disaster receovery 
3. Create the automation roadmap 
4. Seperate enviornments and keep consistent 
5. Establish monitoring and management parameters and alarms 
6. Document, Test and Improve

###Security 
1. Deny all as default, except as mentioned below 
2. Web Server Security Group \[80\+443\]
3. app server secruity grp \[App server ports;comm from WS group members only\] 
4. DB secrutiy grp \[DB ports; comm with App Server Grop members\] 
5. Admin sec grp \[SSH port; admin security only\] 
    
###Harden all stack components 
__Securing the DB__
1. use TDE for easy app development 
2. Use RDS aor ensure HA 
3. Run on a hardened AMI 
4. Seperation of duties 
5. Access control and audit tools

###Supporting Multiple customers 
1. Dedeicated Cloudlets for Tenants 
2. Hardend OS for entire stack 
3. Dedicated cloudlet for multi tenant software 
4. In flight and rest data secruity

###Cloud Enables full SLA driven Opeartions 
1. Pro active mgmt 
2. Pro active monitoring 
3. config Mgmt 
    
###Business Continuity and Disaster recovery 
1. Avoid single points of failure 
2. Design and test failure and recoeveyr scenearitos -Netfilis used Chaos Script random down of instnaces 
3. Define RTOs and RPOs - receovery time 
4. Define and develop data backup management 
5. Account for security, encryption, key rotation and account termination
6. Deliver automation when required 
    
###Case studies 
1. University of Cloud 
2. Cloud readiness assessment 
3. On boarding 
4. Cloud enable management 


##Vishal Malik CoE Cognizant 
1. Petabyte scale computing on EC2 with Big Data 
2. 2013, 650 Exabyte's on internet 

###Challenge 
1. Ability to prcess huge data, filter at scale 
2. Turning raw unstructured data into insights using ML etc., 
3. Adding relavance to data via personalizing content 
4. Analyzing data by adding ML about what user likes and give more of it [driving online-ad revenues for example] 
5. Nike Logo change and checking public reaction 
6. Sentimental analysis in realtime will become more prevalent 

###Agile BI 
1. Analytics near real time, process 5 TB+ in less than 1 minute 

###RDBMS 
1. good for transactions 
2. Bad for 
    1. Queues polling caching 
    2. Social graph tree traversal, NxN relationships 
    3. Dont require ACID everything 
    4. Not good for scaling to PetaBytes of data 
    5. Traditional SQL based systems have replication delay, cache eviction, produce inconsistent results, slow [single threaded], locks create contention for popular data
    6. Hence cant scale to Petabytes 

###Solution
1. Cost effective 
2. Processing Side 
    1. Use Hadoop 
    2. Sql-like layer on top 
    3. Access time is in micro-seconds 
3. Storage side 
    1. S3, Simple DB 
    2. Private cloud using NoSQL dbs namely Hbase, CouchDb, mongoDB, Riak,Redis etc., 

4. Big Data by industry 
5. Cloud based solutions built using AWS 
   1. Logging as a Service 
   2. Gigabyte Scale Log management 
   3. Logs are saved in a S3 system and the processing is performed in EC2 

6. Current state of Storage Tiering 
   1. Data can be hot, warm and cold 
   2. Hot data needs to be saved in SSD 

   3. NoSQL Datastores 
      All dont using the iMoveS Engine 
      S/w Based checkpoint system 
      Policy based data object migration 
      RAID, replication and monitoring is very important 

7. S/w based Storage Tiering 
   iMoveS Architecture 

8. Mahout Platform as a Service 
   Comparable to Google Analytics APU 
   Classification - Basic prediction 


##Panel Discussion
There was a panel dicussion which contains Vaidyanathan from Classle who discussed about _Creating a Social Learning network_ and _Virtualize the architecture rather than the CPU and Storage_. The panel also had folks from Consim (Matrimony services), Mahul Shah (Ventuno Tech) which monetizes the video platform. Ventuno tech experimented with AWS Ec2 catering to 8 million requests/day. They also had Raj Bala from Cognizant which came up with System Integrator for Enterprise Customers from Fortune 100. They provide business processes on the cloud along with Complete Stack with internal assets placed on AWS since it provides articulity, agility in deploying quickly and fast failure.

Then followed a great Q&A session and the emphasis is 
1. on creating an application architecture based on AWS products.
2. If there is an asset management/Trans database is needed, break it into simple Async/eventual transactions and move only the unavoidable transactions to SQL
3. But always DECOMPOSE correctly and move to eventual transactions. 
4. Change architecture to support the EVENTUAL transcations.
5. First use the Management Console and Start Programming with the APIs later


##How Amazon.com moved to AWS - Dr. Verner Wogel
####Size of CC2.8xlarge 
1. 88 EC2 Compute untis 
2. 60.5 GB memory 
3. 3370 GB instance storage 
4. 64 bit

####Problems
1. Distribution Center isolation 
2. Relational databases are Scaling nightmare 
3. Scaling and reliability was based on Databases 
4. CMS - Customer management services - First service 
5. No other service can access your Private Data model

####Solutions
1. Decouple 
2. SOA - For isolation 
3. Scale Horizontally 
4. Increase Speed of Execution 
5. Develop Iteratively
6.Seek Simplicity
7. Completely de-centralized Data model
8. Working from the Customer backwards - First write a press release, FAQ, User Manual - Get feedback and then start building

####Scalability through Smart Systems Engg

1. Use scalable primitives 
2. Cache near the edges 
3. Employ hierearchies and functioanl partitioning 
4. User aggreration and data fusion techniquies 
5. Dont conceal heterogenity
6. Strict in what you emit, liberal in what you accept 
7. Avoid strong consistency properties

####Principles of Scalable Service Design 
1. Autonomy 
2. Asynchrony 
3. Controlled concurrency 
4. Controlled parallelism 
5. Decentralize 
6. Decompose into small well understood building blocks 
7. Failure tolreant 
8. Local responsibility - Trouble shoot only your domain 
9. Recovery built in 
10. Simplicity 
11. Symmetry

###What could we do just with S3 (Scalable Service Design) 
1. Experimenting and scaling for successful experiments 
2. Thearrical information from IMDB service - IMDB Widget 

####Problem    
1. Release process is coupled 
2. Runtime latency and scale requirements 
3. Service integration issues 

####Solution 
1. Use S3 as aservice 
2. IMDB - Store raw HTML for the feature in S3 - Amazon picks up from the S3 HTML Store 
    
####Results 
1. Reduced page latency 
2. IMDB doesnt worry abt Scaling 
3. Reduced Web server CPU utilization 
4.Improvde availability thur reduced dependencies 
5. Simplified release model \[Blue/Green Release Model - failure switch over for failure deployments, errors\] 
6. AJAX readiness

###More Complex case -Monitoring Tool
**Client Experience Analytics 1.0**
    
####Problem 
1. System has lot of moving parts 
2. Run in a external data center 
3. Cannot scale up quickly 
4. Dev team is 2 people 

####Solution 
1. Use as many AWS services as possible 
2. Cloud Watch is used 

####Results 
1. Few dev resources 
2. launched w/o any colo datacenter 
3. True external performance metrics 
4. Test site features in dev before launched 
5. System scales horizontally large amounts of traffic 
        
###What about amazon.com web servers 
1. 15% + highest peak for weekly traffic 
2. 39% of capcity is not used at all due to the highs and lows 
3. November Traffic \[Holiday season\] - only 24% used and 76% goes unused as they have to be kept ready 

####Problem
1. Retail web site HW is underutilized 
2. Traffic spikes require heroic effort 
3. Scaling is non linear 

####Solution 
1. Migrate the entire www.amazon.com web server fleet to AWS 
2. VPC between amazon.com classic and AWS EC2 
3. Nov 10, 2010 - all the physical amazon.com web servers are all turned off 
4. Oct 31, 2011 - last piece of h/w serving all over internationally is switched off 

####Results 
1.Traffic for several Amazon retail sites is now served from AWS 
2. Dynamically scale the fleet in increments as small as a single host 
3. Traffic spikes can be handled with ease 
    
###What is a DB use case? 
1. All the old orders from 1997 available - historical data 

###Order storage Arch 
1. Order Database - current and historical 
2. Use either Scale out or Scale UP 
3. Old data is very rarely queried 

####Problems 
1. Cumulative data impacts scale 
2. No DB scaling pattern is ideal 
3. DB infrastructures is expensive 
    
####Solution 
1. Tiered storage system with AWS 
2. Ordering service - uses order database or S3 depending on data query 
3. Allowing user only Querying based on the Primary data and not all the various combinations 

####Results
1. 670 million / 4 TB orders in S3 
2. We are spending less on DB hosts 
3. Migration to RDS/SDB 

###Business Lessons learned
1. Less time on capcity planning 
2. Fewer finance conversations 
3. More innovation 
4. Happier developers 
5. Get credit for AWS price reductions 
6. Sure to consider compliance issues 
7. No more lease returns 

###Tech lessons 
1. Start with simple apps 
2. Iterate towards ur desired end state 
3. Identity reusale componentnts 
4. Engage security early and treat as partners 
5. Migrate to the cloud in concert with ur arch objectives 
6. Cloud cant cover up for sloppy engineering 