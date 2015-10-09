title=Eight steps in choosing a database
date=2012-01-08
tags=architecture,database
slug=eight-steps-in-choosing-a-database
summary=Eight steps in choosing a database
category=Architecture
author=Senthilkumar Gopal
type=post
status=draft
~~~~~~

Today, experts instead suggest a multi-database solution, or polyglot persistence approach.

Scaling a traditional RDBMS is difficult at best. Partitioning schemes, multi-master configurations, and redundancy systems offered by Oracle, SQL Server, and DB2 are expensive and problematic at best. They often fail to meet the needs of high-scale applications


Organizations need to identify the patterns and characteristics of their systems, data, and applications and use the right data technologies for the job


key-value stores
The market is crowded with K-V stores such as Aerospike, Redis, and Riak, all of which are simple to implement.

coluMn-faMily Databases
The two most popular, Cassandra and HBase, are both based on Hadoop but
have different write semantics. HBase offers strong write integrity; Cassandra offers “eventual consistency.

coluMn-orienteD rDbMs
Conceptually, think of turning a table sideways: make your rows columns and columns into rows. 
In addition to HANA, there is also Splice Machine, which is built on top of HBase and Hadoop. 

DocuMent Databases
  However, document databases scale quite well and are great for web-based operational systems that operate on a single big entity, or systems that don’t require transactional integrity across entities. T
 MongoDB and Couchbase are typically the leaders in this sector.
 
 graPh Databases
 Social networks
and recommendation systems are classic use cases for graph databases, but you should note that there are a few different types of graph databases. Some are aimed more at operational purposes (Neo4j) while others are aimed more at analytics (Apache Giraph).


rDbMs


what about haDooP?
. HDFS (Hadoop Distributed File System) distributes blocks of data redundantly across nodes, similar to Red Hat’s Gluster, EMC’s IFS, or Ceph.
 