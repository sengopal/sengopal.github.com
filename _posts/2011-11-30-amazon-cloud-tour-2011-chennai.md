---
layout: post
title: Amazon Cloud Tour 2011
type: post
tags:
 - amazon, conference
published: true
draft: true
meta:
categories:
 - draft
---
#Amazon Cloud Tour 2011
Amazon web services had arranged for a 1-day expo for customers, partners and enthusiasts alike at Hyatt Regency in Chennai. The main hosts Shane and Janakiram were warm and truly enthusiastic about the turnout for the event. 

The limelight of the event though was Dr.Werner vogel, the CTO of amazon and a wonderfully hearty person who enjoyed the keynote and the other interactions as much as the participants.

Some of the customer solutions who had booths set up are Right Scale (who provided a free trial), Cognizant Technology Solutions who were demonstrating their _Lgging as a service_ which pulls the logs from app to a private cloud and uses hadoop to analyze the data based on a user query.


##Building Fault tolerent AWS applications
The first session after the keynote was _Building Fault tolerent AWS applications_ which described about the AWS building blocks, Amazon EC2 architecture and the High availability features of EDS

###AWS building blocks

    
    
    Libs and DSKs        Web Interface        Tools     CLI        Beanstalk[1 click deployment] 
    
    
    IAS    Monitoring    Reports 
    parallet processing    Payments     CDN    Workforce    Messaging    NoSQLDB 
    Amazon Elastic, Mapreduce    Amazon, DevPaym Amazon FPS    Cloud Front    Amazon Mech Turj    SNS,SQS    SimpleDB 
    

    
    Compute     Storage    Network    Database 
    Amazon EC2    Amazon S3, amazon EBS    Amazon VPS, Elastic LB    Amazon RDS 
    Amazon Glbobal physical infrastructure 
    
Like Lego building blocks - mix and match



Amazon EC2 - Elastic Compute Cloud 
    scale out/in/up/down 
    
    
    EC2 Arch 
        Region    - where ur customers are from> 
        Choose Amazon Machine Image - To be launched in AZ - as a EC2 instance 
            Epheremal Storage 
            Elastic Block Storage 
                EBS Snapshot stored in S3 [durable] 
            Security Groups 
                Elastic IP 
                Elastic LB 
            Amazon Cloud Watch [tracking and monitoring] 
                Auto Scale 
            
        
    Elastic IP 
        Associated with an AWS account 
        Syn assign to a running instance 
        Quickly remap EIP to any instance 
        
        Always point Static IP as the Elastic IP 
        Domain CNAME mapped to Elastic IP 
            This is useful if the EC2 instance goes donw, it can be pointed to a secoundary server 
        
        Elastic Block Store 
            from 1GB to 1TB 
            formatted with native file system 
            automatically replicated in same AZ 
            ability to create point-in-time snapshots stored in S3 
            integration with CloudWatch to track performance metrics 
            
            
            Moving the Web server and the Database to the EBS, so that EC2 instance can be replaced with a new easy replacement 
            
            
    
        mkfs.ext3 /dev/sdf 
    
        Move the Web server and Database to the EBS and setup the secondary instance to use these 
    
    
        Instance Metadata 
            SPOT Instances/On demand instances - Bid, win, Perform and the instance is shut down 
        
        Making the ANI Dynamic 
            Similar to JNDL - Metadata endpoint - 169.254.169.254 accessable by EC2 instance 
            Instance Queries the End point to know what is the role it needs to play 
                If the endpoint says it is a Web Server, it setups itself as Apache HTTPD server and queries the lastest website as returned by the End point 
            
            Dynamic discovery of the DB 
                which is the master and slave DBs info for the EC2 web server instance 
                
                while launching, additional parameters can be given 
                
                http://169.254.169.254 - endpoint which gives this kind of metadata 
                
        
        Elastic Load Balancer 
            distribute across AZs 
            detect health of instances and block traffic 
                supports sticky sessions 
                supports IPv4 and IPv6 
                Request count and latency metrics in CloudWatch 
            
        Amazon RDS - Relational Data services 
            web service 
        
            Automatic failover 
            sync replication 
        
        
        
        Start with EC2 
        Attach an elastic IP 
        Create and attach EBS 
        Bundle generic AMIs using Metadata 
        Associate EC2 instances with the ELB 
        Launch RDS DB instances in Multi AZ







Arjun Chopra â€“ Building AWS Apps

Arjun Chopra - Cl- CTO Cambridge Tech. Enterprises 
Cloud Enable


24x7 management, starting at 9$ 
Who is cloud enable 
why cloud makes sense 
    no up front expense 
    pay as u go 
    on demand provisioning 
    Elastic scale 
    Pass benefits on to users 
Cloud Goal Flip the equation

build a Cloud ready App 
    Shared responsiblity model 
    Development and migration assissted by CTE 
    24/7 managed services delivered by cloud enable 
    on demand pay as u go infrastructure provided by AWS 
    
Design Best Practices 
    Protect ur data 
    Design for failure so nothing fails 
    Decouple and make stateless 
    Handle reboots grcefully 
    Isolate traffic 
        Static vs dynamic 
        Read Vs write

Operation Best practices 
    Secure the systems 
    Leverage the Regions and AZs for disaster receovery 
    Create the automation roadmap 
    Seperate enviornments and keep consistent 
    Establish monitoring and management parameters and alarms 
    Document, Test and Improve 
    

Security 
    Deny all as default, except as mentioned below 
    Web Server Security Group [80+443] 
    app server secruity grp[App server ports;comm from WS group members only] 
    DB secrutiy grp[ DB ports; comm with App Server Grop members] 
    Admin sec grp [SSH port; admin security only] 
    
Harden all stack components 
Secure the DB 
    use TDE for easy app development 
    Use RDS aor ensure HA 
    Run on a hardened AMI 
    seperation of duties 
    access control and audit tools

Supporting Multiple customers 
    Dedeicated Cloudlets for Tenants 
    Hardend OS for entire stack 
    Dedicated cloudlet for multi tenant software 
    
    In flight and rest data secruity 
    

Cloud Enables full SLA driven Opeartions 
    Pro active mgmt 
    Pro active monitoring 
    config Mgmt 
    
Business Continuity and Disaster recovery 
    Avoid single points of failure 
    DEsign and test failure and recoeveyr scenearitos -Netfilis used Chaos Script random down of instnaces 
    Define RTOs and RPOs - receovery time 
    Define and develop data backup management 
    account for security, encryption, key rotation and account termination

    Deliver automation when required 
    
Case studies 
    University of Cloud 
    Cloud readiness assessment 
    on boarding 
    Cloud enable management 




Vishal Malik CoE Cognizant 
    Petabyte scale computing on EC2 with Big Data 
    2013, 650 Exabyte's on internet 
    Challenge 
        Ability to prcess huge data, filter at scale 
        Turning raw unstructured data into insights using ML etc., 
        adding relavance to data via personalizing content 
        Analyzing data by adding ML about what user likes and give more of it [driving online-ad revenues for example] 
        
        Nike Logo change and checking public reaction 
        
        Sentimental analysis in realtime will become more prevalent 
        
    Agile BI 
        Analytics near real time, process 5 TB+ in less than 1 minute 
        
    RDBMS 
        good for transactions 
    Bad for 
        Queues polling caching 
        Social graph tree traversal, NxN relationships 
        Dont require ACID everything 
        Not good for scaling to PetaBytes of data 
    
    Traditional SQL based systems have 
        replication delay, cache eviction, produce inconsistent results, slow [single threaded], locks create contention for popular data 
        hence cant scale to Petabytes 
        
    Solution 
        Cost effective 
        Processing Side 
            Use Hadoop 
            sql-like layer on top 
            Access time is in micro-seconds 
        Storage side 
            S3, Simple DB 
            Private cloud using NoSQL dbs namely Hbase, CouchDb, mongoDB, Riak,Redis etc., 
            
        Big Data by industry 
        
        Cloud based solutions built using AWS 
            Logging as a Service 
            Gigabyte Scale Log management 
            Logs are saved in a S3 system and the processing is performed in EC2 
        
        Current state of Storage Tiering 
            Data can be hot, warm and cold 
            Hot data needs to be saved in SSD 
        
            NoSQL Datastores 
                All dont using the iMoveS Engine 
                    S/w Based checkpoint system 
                    Policy based data object migration 
                
                
                
                RAID, replication and monitoring is very important 
        
        
        S/w based Storage Tiering 
            iMoveS Architecture 
        
        Mahout Platform as a Service 
            Comparable to Google Analytics APU 
            Classification - Basic prediction 









Panel Discussion



Vaidyanathan  - classle - 
    Creating a Social Learning network 
    Virtualize the architecture rather than the CPU and Storage 
    
Consim 
    Matrimony services 
Mahul Shah 
    Ventuno Tech 
    Monetize the Video 
    Experimented with AWS Ec2 - 8 million requests/day 
    Cloud Front 
Raj Bala 
    Cognizant 
    System Integrator for Enterprise Customers - Fortune 100 
    Providing business processes on the cloud along with Complete Stack 
    Internal Assets are placed on AWS


Articulity, Agility in deploying quickly, fast Fail, Cost 2, Scale 3

Banks not adapted, but the educations, media are fine

Payments is a issue

Failover

Offering in the form Elastic rather than CPU or memory - it was more towards usage perspective

Great Q and A session

Creating an application architecture based on AWS products 

If there is an asset management/Trans DB is needed, break it into simple Async/eventual transactions and move only the unavoidable transactions to SQL

But always DECOMPOSE correctly and move to eventual transactions

Change ARCH to support the EVENTUAL transcations.

TRY IT OUT Now!!!!

First use the Management Console -> Start Programming with the APIs later









How Amazon.com moved to AWS



How amazon.com moved to AWS

CC2.8xlarge 
    88 EC2 Compute untis 
    60.5 GB memory 
    3370 GB instance storage 
    64 bit 
    I/O






Distribution Center isolation 
Relational databases are Scaling nightmare 
Scaling and reliability was based on Databases 
CMS - Customer management services - First service 
No other service can access your Private Data model



Decouple 
SOA - For isolation 
Scala Horizontally 
Increase Speed of Execution 
Develop Iteratively 
Seek Simplicity

Completely de-centralized Data model

Working from the Customer Backwards - First write a Press Release, FAQ, User Manual - Get Feedback and then start Building



Scalability through Smart Systems Engg

Use scalable Primitives 
cache near the edges 
Employ hierearchies and functioanl partitioning 
User aggreration and data fusion techniquies 
Dont conceal heterogenity 
Strict in what u emit, lberabl in what u accept 
Avoid strong cosnsitency properties

<not complete>


Principles of Scalable Service Design 
Autonomy 
Asynchrony 
Controlled concurrency 
Controlled parallelism 
Decentralize 
Decompose into small well understood building blocks 
Failure tolreant 
Local responsibility - Trouble shoot only ur domain 
Recovery built in 
simplicity 
Symmetry

What could we do just with S3? 
------------------------------ 
    Experimenting and scaling for successful experiments 
    Thearrical information from IMDB service - IMDB Widget 
    
    
    Problem    
        Release process is coupled 
        Runtime latency and scale requirements 
        Service integration issues 
    Solution 
        Use S3 as aservice 
        IMDB - Store raw HTML for the feature in S3 - AMazon picks up from the S3 HTML Store 
        
    Results 
        reduced page latency 
        IMDB doesnt worry abt Scaling 
        Reduced Web server CPU utilization 
        Improvde availability thur reduced dependencies 
        Simplfieid release model [Blue/Green Release Model - failure switch over for failure deployments, errors] 
        AJAX readiness

More Complex case? 
------------------ 
Monitoring Tool    
    Client Experience Analytics 1.0 
    
    Problem 
        system has lot of moving parts 
        run in a external data center 
        scale up quickly 
        dev team is 2 people 
        
    solution 
        Use as many AWS services as possible 
        Cloud Watch is used 
    
    Rssults 
        few dev resources 
        launched w/o any colo datacenter 
        True extenral performance metrics 
        test site features in dev before launched 
        system scales horizontally large amounts of traffic 
        
What about amazon.com web servers 
------------------------------------ 
    15% + highest peak for weekly traffic 
    
    39% of capcity is not used at all due to the highs and lows 
    
    November Traffic [Holiday season] - only 24% used and 76% goes unused as they have to be kept ready 
    
    Problem 
        reatil web site HW is underutilized 
        traffic spikes require heroic effort 
        scaling is non linear 
    
    Solution 
        migrate the entire www.amazon.com web server fleet to AWS 
    
    VPC between amazon.com classic [old system] and AWS EC2 
    
    Nov 10, 2010 - all the physical amazon.com web servers are all turned off 
    
    Oct 31, 2011 - last piece of h/w serving all over INTL is switched off 
    
    Results 
        traffice for several Amazon retail sites is now served from AWS 
        dynamically scale the fleet in increments as small as a single host 
        Traffic spikes can be handled with ease 
    
    
    What is a DB use case? 
    ---------------------- 
    All the old orders from 1997 available - historical data 
    
    Order storage Arch 
    ------------------ 
        Order Database - current and historical 
        USe either Scale out or Scale UP 
        
        Old data is very rarely queried 
        
        Problems 
        -------- 
            Cumulative data impacts scale 
            No DB scaling pattern is ideal 
            DB infrastructures is expensive 
            
        Solution 
        --------- 
            Tiered storage system with AWS 
        
    Ordering Service - uses Order database or S3 depending on Data query 
    
    Allowing user only Querying based on the Primary data and not all the various combinations 
    
    Results 
        670 million 4 TB orders in S3 
        We are spending less on DB hosts 
        migration to RDS/SDB 
        
        
    
    Lessons Learned 
    ---------------- 
    Business Lessons 
    ----------------- 
    Less time on capcity planning 
    fewer finance convestatons 
    more innovation 
    happier developers 
    get credit for AWS price reductions 
    sure to consider compliance issues 
    no more lease returns 
    
    Tech lessons 
    ------------ 
    start with simple apps 
    iterate towards ur desired end state 
    identity reusale componentnts 
    engage security early and treat as partners 
    migrate to the cloud in concert with ur arch objectives 
    cloud cant cover up for sloppy engineering 

