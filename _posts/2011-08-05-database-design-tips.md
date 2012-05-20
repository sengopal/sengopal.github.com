---
layout: post
title: Database Design Tips
type:post
tags:
- developer tips
status: publish
published: true
meta:
categories:
 - blog
---
During the course of re-designing a database, i was struck with the lack of good tips and basics of good database design. On googling, came across this wonderful [article](http://codebalance.blogspot.com/2011/07/20-database-design-best-practices.html) which describes not only tips about creation and design, but also about deployment, maintainence and how to ensure that the usability is optimal.

1. Use well defined and consistent names for tables and columns (e.g. School, StudentCourse, CourseID). 
2. Use singular for table names (i.e. use StudentCourse instead of StudentCourses). Table represents a collection of entities, there is no need for plural names. 
3. Don’t use spaces for table names. Otherwise you will have to use ‘{‘, ‘[‘, ‘“’ etc. characters to define tables (i.e. for accessing table Student Course you'll write “Student Course”. StudentCourse is much better). 
4. Don’t use unnecessary prefixes or suffixes for table names (i.e. use School instead of TblSchool, SchoolTable etc.). 
5. Keep passwords as encrypted for security. Decrypt them in application when required. 
6. Use integer id fields for all tables. If id is not required for the time being, it may be required in the future (for association tables, indexing ...). 
7. Choose columns with the integer data type (or its variants) for indexing. varchar column indexing will cause performance problems. 
8. Use bit fields for boolean values. Using integer or varchar is unnecessarily storage consuming. Also start those column names with “Is”. 
9. Provide authentication for database access. Don’t give admin role to each user. 
10. Avoid “select *” queries until it is really needed. Use &quot;select [required_columns_list]&quot; for better performance. 
11. Use an ORM (object relational mapping) framework (i.e. hibernate, iBatis ...) if application code is big enough. Performance issues of ORM frameworks can be handled by detailed configuration parameters. 
12. Partition big and unused/rarely used tables/table parts to different physical storages for better query performance. 
13. For big, sensitive and mission critic database systems, use disaster recovery and security services like failover clustering, auto backups, replication etc. 
14. Use constraints (foreign key, check, not null ...) for data integrity. Don’t give whole control to application code. 
15. Lack of database documentation is evil. Document your database design with ER schemas and instructions. Also write comment lines for your triggers, stored procedures and other scripts. 
16. Use indexes for frequently used queries on big tables. Analyser tools can be used to determine where indexes will be defined. For queries retrieving a range of rows, clustered indexes are usually better. For point queries, non-clustered indexes are usually better. 
17. Database server and the web server must be placed in different machines. This will provide more security (attackers can’t access data directly) and server CPU and memory performance will be better because of reduced request number and process usage. 
18. Image and blob data columns must not be defined in frequently queried tables because of performance issues. These data must be placed in separate tables and their pointer can be used in queried tables. 
19. Normalization must be used as required, to optimize the performance. Under-normalization will cause excessive repetition of data, over-normalization will cause excessive joins across too many tables. Both of them will get worse performance. 
20. Spend time for database modeling and design as much as required. Otherwise saved(!) design time will cause (saved(!) design time) * 10/100/1000 maintenance and re-design time.
