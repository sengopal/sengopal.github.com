title=My Agile training notes - Day 2
date=2011-09-05
tags=agile, nontech
slug=my-agile-training-notes-day-2
summary=Tips and notes from my agile training part 2
category=Process
author=Senthilkumar Gopal
type=post
status=published
~~~~~~

###Common Agile Practices
1. Every User story should have an Acceptance Test.
2. Before signing up, the Business and QA Acceptance Tests should have been finalized
3. Load and Performance Testing is performed every milestone at 3 months
4. Use a template for Acceptance Criteria

###For Multiple Use cases
What is observed by the Customer for a successful completion
An Acceptance Criteria should be Specific, Measurable, Achievable, Relevant and Timely
**Acceptance Test Template** should be `Given a condition - When  a user action - Then a application response `

A good Example will be
    * Given the customer has more than 20 Accts,
    * When they have complete logging in,
    * Then the screen should show the first 20 accounts (in acct. number order) only
They should have ```[Context: Given] [Event: When] [Outcome: Then] ```

###Different types of Development
The different types of product development are:
EDD - Example Driven
ATDD - Acceptance Test Driven
BDD - Behavior Driven

###Timelines
1. Acceptance Criteria + User Story is completed before "Ready for Dev" Status
2. Acceptance test cases Should be prepared for `N+1` sprint
3. The QA's responsibility lies
    a. in Automation of the `Nth` iteration
    b. Manual testing of the Nth iteration
    c. Preparing Acceptance Tests for the N+1 Iteration
4. A Spike is generally done to perform a POC for 2-3 days

###Collecting Stories

1. _A good User Story Template is given by:_
    1. Role
        * Specifies who the player/role is
        * Different kinds of users - 12 year old, 70 year old, school boy etc.,
        * Every User story contains a Persona and this is attached to a role
        * Should be Low-fi prototyping
    2. Goal: I want/need
    3. Value: So that
2. Should be aligned with the Acceptance Criteria
3. Should be put up as part of the Story Board
4. Contain Contextual Design and Inquiry
5. Every Story has an Activity -  Number of Tasks and Number of Sub Tasks
6. Should ensure Vertical Slicing of the development is addressed
    * EACH STORY represents a DIFFERENCT SLICE
    * EACH STORY MUST TOUCH ALL THE LAYERS
7. Classification of Story Cards

>>**User Story** _White_

>>**Bugs** _Red_

>>**Tasks** _Yellow_

>>**others** _Blue_


###What should I do
1. Iteration and Sprint Planning
2. Sprint Estimation and Task Creation
3. Daily Standup
    * Standup Every day in the morning
    * What I did yesterday
    * What am I going to do today
    * Road blocks
4. Deciding on Releases
5. Estimating the Effort
    * NUTS -
    * Estimation is done in terms of NUTS[Nebulous Units of Time] in Fibonacci order [1,2,3,5,8] Story Points
    * Use Sample Story and fix the 1 pointer and relatively the others
    * Estimate the Sprint Velocity [No. of Story Points or Stories]/Sprint = Velocity

###Should I follow the NUTS?
1. The Units of Estimation are totally up to the team, but the estimation should be for Ideal time
2. Velocity for the Iteration - Estimate Average Story Points in a Spring
3. Burn Down Graph: Story Points on Y-Axis and Sprint Number in X â€“ Axis

###Managing the Process
1. IPM attended by the entire team
2. Milestone planning meeting
3. Release Planning Tests
4. Showcase
5. Retrospectives _An Outsider can facilitate_
    * STAR technique What should the team - _Keep doing, start doing, stop doing, do more, do less_

###Maintaining Visibility and Communication
1. Information Radiators
2. Card Wall - Physical and Web based [RALLY] tool
3. Story Wall States -
    * Ready for Analysis
    * In Analysis
    * Ready for Dev
    * In Dev
    * Ready for Testing
    * In Testing
    * Ready for Signoff
    * Accepted
    * Deployed

###Levels of transitioning to an Agile Project
_From Assessment to Execution_

Level I _Understand Agile_

Level II _Identify Ideal targets_

Level III _Form Roadmap from current to Ideal State_

Level IV _Execute Agile Roadmap with periodic Reviews_

Level V _Create Environment for faster success_


###Agile Tools
Agile Project management, Continuous Integration, Automation and Testing Tools

###FAQs
**What is a Story Wall**

A story wall is a physical representation of the different states  in which the User Stories are present

**What is Dev Box Testing**

QA Testing on the DEV System

**What is a Planning Poker**

Performing the estimates  viz., Iteration Level Estimate [List of Tasks] and Release Level Estimate which deals with Sprint Velocity, No. of Sprints and Estimation for the User Stories

**What is needed for transitioning to Agile**

1. Vertical Commitment
2. Expect things to get slower before getting faster
3. Complete Transparency

**What are the obstacles for an Agile project**

1. Miscommunication
2. Lack of understanding
3. Mixed or half-cooked support
