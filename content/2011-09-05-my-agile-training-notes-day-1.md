Title: My Agile training notes - Day 1
Date: 2011-09-05 15:00
Tags: agile, nontech
Slug: my-agile-training-notes-day-1
Summary: Tips and notes from my agile training part 1
Category: Misc
Author: Senthil Gopal

Recently I took part in a two day Agile training workshop and the following are some of my notes during that session. It is both lecture based and workshop oriented where we would try to solve a given problem with our Agile learning applied to it.

###Setting up a “Done Criteria” for a Sprint
It is a basic need to define a “Done Criteria” or a baseline for settling on completion of a Sprint. Some of the criteria we used were:

1. Acceptance Criteria
2. 80% Junit coverage
3. 80% Automation Test coverage
4. Code Coverage
5. Successful Feature Completion
6. Documentation
7. No Find Bugs

###Core Practices of Agile

Some of the criteria to satisfy before beginning a sprint are

1. Should collect enough information to get started
2. No assumptions
3. How am I going to use the product
4. Understand the business Values and the need & usage

###User Story Template

The key ingredients of a User Story are

1. Define a Role - *As a Showerer*
2. Define an Action - *I Want my shower to be wide for scrubbing my back*
3. Define a Outcome - *So that   I wont have dust on my back*

Note: _User story should not have implementation details_

###I.N.V.E.S.T

Every User Story should be INVEST-able.

I stands for Independent
N stands for Negotiable
V stands for Valuable
E stands for Estimate-able
S stands for Small
T stands for Testable

###Typical Agile Sprint

The setup of a typical Agile project will be as follows:

1. Inception -  2-4 weeks
2. Initiation -  1-2 weeks
3. Develop & Deploy - 12+weeks with multiple iterations


###Single Iteration
A single cycle of iteration is always Analyze, Design, Code, Test and Deploy

###Project Roles

The major roles in an Agile project are given as

1. Project Manager [a.k.a Business/Product Owner]
2. Iteration Manager[a.k.a Scrum Master]
3. User Experience Analyst
4. Quality Assurance Analyst
5. Product Developer

###Agile Product Development Practices and Terms

Some of the terminology and practices that are followed commonly in an Agile project are described below.

1. Software Craftsmanship Manifesto
2. Agile Manifesto

###Test Driven Development

Test Driven Development or TDD as it is commonly called, is the major contributor for adoption into Agile methodology. A developer following TDD develops lesser

1. Always write a test and develop the code
2. Perform Red-Green refactor using the test
3. Develop just enough code for passing the test
4. Ensure that you follow Uncle Bob Martin’s 3 laws of TDD
5. Don’t change the test unless to make it PASS
6. Perform Unit testing and test cases which are just sufficient to fail
7. Don’t develop code more than which is sufficient to PASS the test

###Pair Programming

One of the age old practice which caught on during into the Agile bandwagon is Pair-Programming which gives the developers a DRIVER-OBSERVER means of development. The positive outcomes of pair programming are:

1. Catching defects early
2. Code review Online
3. Collective Code Ownership

###Understanding smells

A piece of code which has the ability to “stink” or create incorrect outcomes and flows are called “Code Smells”. Some of the common code smells are:

1. Long Methods
2. Explaining Comments
3. Magic Numbers

###Refactoring

Refactoring is a concept shunned by many but has always proved to be the correct way to solve legacy and spaghetti code. Along with TDD this proves to be a blessing in disguise for developers who have to add/create on top of existing code base. Ensure the code stays DRY [Don’t Repeat Yourself] and always express an intent to refactor and perform it as a part of development rather than asking for confirmation/approval. Use unit testing to ensure that the existing functionality stays intact.

###Code Quality and Feedback

Agile methodology is very rewarding if all the basic necessities are available especially a Continuous Integration system which can execute automated Tests at least 2-3 times a day is needed to ensure that the code quality stays top notch. Agile ensure code quality through constant feedback which is built in at multiple levels.

* Level I - Pair Programming
* Level II - Unit Testing
* Level III - Continuous Integration

###Retrospective

Another important aspect of the feedback mechanism in Agile is performing an honest and unbiased retrospective of what actually transpired during the previous sprint. This enables all the involved folks to understand their strengths and weaknesses. The main questions that need to be answered are:

* What went well?
* What didn’t go well?
* Action Items from above

Please feel free to provide your bouquets and brickbats and as always all your comments are welcome.
