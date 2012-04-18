---
layout: post
title: Basics of ClearCase
tags:
- dev tips
status: publish
type: post
published: true
meta:
  jabber_published: '1311439482'
  _wpas_done_twitter: '1'
  hl_twitter_has_auto_tweeted: ! 'wrote Basics of ClearCase, read it here: http://blog.zenhacking.com/?p=248'
  _edit_last: '2'
---
<p>Rational ClearCase is a software tool for revision control (e.g. configuration management, SCM) of source code and other software development assets.</p>  <p>ClearCase provides more than just version control. The other features available are:</p>  <ol>   <li>Version Control </li>    <li>Workspace Management </li>    <li>Build Management </li>    <li>Process Control </li> </ol>  <h5><strong>Version Control</strong></h5>  <ol>   <li>Versions all file types </li>    <li>Versions directories </li>    <li>Stores objects in reliable, scalable Versioned Object Bases (VOBs) </li>    <li>Elements are read-only until checked out </li>    <li>Unlimited branching and merging </li>    <li>Easy checkout-edit-checkin model </li>    <li>Unlimited branching capability for parallel development </li>    <li>Graphical compare and intelligent merge utilities automatically merges non-conflicting changes </li> </ol>  <h5><strong>Workspace Management</strong></h5>  <ol>   <li>Provides access to all versioned objects from standard development tools </li>    <li>A way of seeing the objects in one or more VOBs </li>    <li>Version selection is based on user-defined rules </li>    <li>Easy way to manage multiple tasks </li>    <li>Controls the public/private nature of work </li> </ol>  <ol>There are two types of views available in ClearCase</ol>  <h6><strong>Dynamic Views</strong></h6>  <ol>   <li>VOB objects are displayed from the VOB cache </li>    <li>Transparent access to elements </li>    <li>Virtual filesystem </li>    <li>Always up-to-date </li>    <li>Provides build auditing <strong></strong></li> </ol>  <ol><strong>Snapshot Views</strong>     <li>VOB objects are copied to the client </li>    <li>Downloads files based on user-based rules </li>    <li>Allows work while disconnected from the network </li>    <li>Optimal build performance for prototype or test builds <strong></strong><strong></strong></li> </ol>  <ol><strong>Build Management</strong>     <li><em>clearmake</em> and <em>omake</em> </li>    <li>Compatible with standard makefiles </li>    <li>Automatic detection of header- and source-file dependencies </li>    <li>Software bill-of-materials guarantees complete reproducibility of every build <strong></strong><strong></strong><strong>Process Control</strong> </li>    <li>Enforces appropriate policies and processes across diverse development environments </li>    <li>Integrated with ClearCase as a set of flexible, customizable tools </li> </ol>
