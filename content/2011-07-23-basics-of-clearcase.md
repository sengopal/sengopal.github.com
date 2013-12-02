Title: Basics of ClearCase
Date: 2011-07-23 15:00
Tags: nontech, clearcase
Slug: basics-of-clearcase
Summary: Simple writeup on Clearcase source control system
Category: Ramblings
Author: Senthil Gopal


Rational ClearCase is a software tool for revision control (e.g. configuration management, SCM) of source code and other software development assets.

ClearCase provides more than just version control. The other features available are:

1. Version Control
2. Workspace Management
3. Build Management
3. Process Control

###Version Control
1. Versions all file types
2. Versions directories
3. Stores objects in reliable, scalable Versioned Object Bases (VOBs)
4. Elements are read-only until checked out
5. Unlimited branching and merging
6. Easy checkout-edit-checkin model
7. Unlimited branching capability for parallel development
8. Graphical compare and intelligent merge utilities automatically merges non-conflicting changes

###Workspace Management
* Provides access to all versioned objects from standard development tools
* A way of seeing the objects in one or more VOBs
* Version selection is based on user-defined rules
* Easy way to manage multiple tasks
* Controls the public/private nature of work

There are two types of views available in ClearCase

**Dynamic Views**

1. VOB objects are displayed from the VOB cache
2. Transparent access to elements
3. Virtual filesystem
4. Always up-to-date
5. Provides build auditing

**Snapshot Views**

1. VOB objects are copied to the client
2. Downloads files based on user-based rules
3. Allows work while disconnected from the network
4. Optimal build performance for prototype or test builds

###Build Management
1. __clearmake__ and __omake__
2. Compatible with standard makefiles
3. Automatic detection of header- and source-file dependencies
4. Software bill-of-materials guarantees complete reproducibility of every build

###Process Control
1. Enforces appropriate policies and processes across diverse development environments
2. Integrated with ClearCase as a set of flexible, customizable tools
