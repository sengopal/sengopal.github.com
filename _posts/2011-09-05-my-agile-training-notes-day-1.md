---
layout: post
title: My Agile training notes – Day 1
tags:
- dev tips
status: publish
type: post
published: true
meta:
  jabber_published: '1315226275'
  _wpas_skip_twitter: '1'
  _wpas_skip_fb: '1'
  hl_twitter_has_auto_tweeted: ! 'wrote My Agile training notes – Day 1, read it here:
    http://blog.zenhacking.com/?p=753'
  _edit_last: '2'
---
Recently i took part in a two day Agile training workshop and the following are some of my notes during that session. It is of both lecture based and workshop oriented where we would try to solve a given problem with our Agile learning applied to it.
<h5>Setting up a “Done Criteria” for a Sprint</h5>
It is a basic need to define a “Done Criteria” or a baseline for settling on completion of a Sprint. Some of the criteria we used were:
<ol>
	<li>Acceptance Criteria</li>
	<li>80% Junit coverage</li>
	<li>80% Automation Test coverage</li>
	<li>Code Coverage</li>
	<li>Successful Feature Completion</li>
	<li>Documentation</li>
	<li>No Find Bugs</li>
</ol>
<h5>Core Practices of Agile</h5>
Some of the criteria to satisfy before beginning a sprint are
<ol>
	<li>Should collect enough information to get started</li>
	<li>No assumptions</li>
	<li>How am I going to use the product</li>
	<li>Understand the business Values and the need &amp; usage</li>
</ol>
<h5>User Story Template</h5>
The key ingredients of a User Story are
<table width="626" border="2" cellspacing="3" cellpadding="2">
<tbody>
<tr>
<td valign="top" width="132">Define a Role</td>
<td valign="top" width="131">As a User</td>
<td valign="top" width="347"><strong><em>As a Showerer</em></strong></td>
</tr>
<tr>
<td valign="top" width="132">Define an Action</td>
<td valign="top" width="131">I Want</td>
<td valign="top" width="347"><strong>I Want </strong>my shower to be wide for scrubbing my back</td>
</tr>
<tr>
<td valign="top" width="132">Define an Outcome</td>
<td valign="top" width="131">So that</td>
<td valign="top" width="349"><strong>So that</strong> I wont have dust on my back</td>
</tr>
</tbody>
</table>
&nbsp;

Note: <em>User story should not have implementation details</em>
<h5>I.N.V.E.S.T</h5>
Every User Story should be INVEST-able.
<ul>
	<li><strong>I</strong> <em>stands for</em> Independent</li>
	<li><strong>N</strong> <em>stands for</em> Negotiable</li>
	<li><strong>V</strong> <em>stands for </em>Valuable</li>
	<li><strong>E </strong><em>stands for</em> Estimate-able</li>
	<li><strong>S</strong> <em>stands for </em>Small</li>
	<li><strong>T</strong> <em>stands for</em> Testable</li>
</ul>
<h5>Typical Agile Sprint</h5>
The setup of a typical Agile project will be as follows:
<table width="483" border="2" cellspacing="2" cellpadding="2">
<tbody>
<tr>
<td valign="top" width="198">Inception</td>
<td valign="top" width="275">2-4 weeks</td>
</tr>
<tr>
<td valign="top" width="198">Initiation</td>
<td valign="top" width="275">1-2 weeks</td>
</tr>
<tr>
<td valign="top" width="198">Develop &amp; Deploy</td>
<td valign="top" width="275">12+weeks with multiple iterations</td>
</tr>
<tr>
<td valign="top" width="198">Single Iteration</td>
<td valign="top" width="276">Analyze, Design, Code, Test and Deploy</td>
</tr>
</tbody>
</table>
&nbsp;
<h5>Project Roles</h5>
The major roles in an Agile project are given as
<ol>
	<li>Project Manager [a.k.a Business/Product Owner]</li>
	<li>Iteration Manager[a.k.a Scrum Master]</li>
	<li>User Experience Analyst</li>
	<li>Quality Assurance Analyst</li>
	<li>Product Developer</li>
</ol>
<h5>Agile Product Development Practices and Terms</h5>
Some of the terminology and practices that are followed commonly in an Agile project are described below.
<ol>
	<li>Software Craftsmanship Manifesto</li>
	<li>Agile Manifesto</li>
</ol>
<h5>Test Driven Development</h5>
Test Driven Development or TDD as it is commonly called, is the major contributor for adoption into Agile methodology. A developer following TDD develops lesser
<ol>
	<li>Always write a test and develop the code</li>
	<li>Perform Red-Green refactor using the test</li>
	<li>Develop just enough code for passing the test</li>
	<li>Ensure that you follow Uncle Bob Martin’s 3 laws of TDD</li>
	<li>Don’t change the test unless to make it PASS</li>
	<li>Perform Unit testing and test cases which are just sufficient to fail</li>
	<li>Don’t develop code more than which is sufficient to PASS the test</li>
</ol>
<h5>Pair Programming</h5>
One of the age old practice which caught on during into the Agile bandwagon is Pair-Programming which gives the developers a DRIVER-OBSERVER means of development. The positive outcomes of pair programming are:
<ol>
	<li>Catching defects early</li>
	<li>Code review Online</li>
	<li>Collective Code Ownership</li>
</ol>
<h5>Understanding smells</h5>
A piece of code which has the ability to “stink” or create incorrect outcomes and flows are called “<strong>Code Smells</strong>”. Some of the common code smells are:
<ol>
	<li>Long Methods</li>
	<li>Explaining Comments</li>
	<li>Magic Numbers</li>
</ol>
<h5>Refactoring</h5>
Refactoring is a concept shunned by many but has always proved to be the correct way to solve legacy and spaghetti code. Along with TDD this proves to be a blessing in disguise for developers who have to add/create on top of existing code base. Ensure the code stays DRY [<em>Don’t Repeat Yourself</em>] and always express an intent to refactor and perform it as a part of development rather than asking for confirmation/approval. Use unit testing to ensure that the existing functionality stays intact.
<h5>Code Quality and Feedback</h5>
Agile methodology is very rewarding if all the basic necessities are available especially a Continuous Integration system which can execute automated Tests at least 2-3 times a day is needed to ensure that the code quality stays top notch. Agile ensure code quality through constant feedback which is built in at multiple levels.
<table width="400" border="2" cellspacing="2" cellpadding="2">
<tbody>
<tr>
<td valign="top" width="195">Level I</td>
<td valign="top" width="195">Pair Programming</td>
</tr>
<tr>
<td valign="top" width="195">Level II</td>
<td valign="top" width="195">Unit Testing</td>
</tr>
<tr>
<td valign="top" width="195">Level III</td>
<td valign="top" width="197">Continuous Integration</td>
</tr>
</tbody>
</table>
<h5></h5>
<h5>Retrospective</h5>
Another important aspect of the feedback mechanism in Agile is performing an honest and unbiased retrospective of what actually transpired during the previous sprint. This enables all the involved folks to understand their strengths and weaknesses. The main questions that need to be answered are:
<ul>
	<li>What went well?</li>
	<li>What didn’t go well?</li>
	<li>Action Items from above</li>
</ul>
Please feel free to provide your bouquets and brickbats and as always all your comments are welcome.

[<a title="Day 2 notes available here" href="http://zengopal.wordpress.com/2011/09/22/my-agile-training-notes-day-2/" target="_blank">Day 2 notes available here</a>] 
