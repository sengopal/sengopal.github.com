---
layout: post
title:Git and Github secrets
type: post
tags:
 - git, tools
published: true
meta:
categories:
 - blog,git
---
Recently came across a screencast held at Aloha Ruby Conference. Some of the shortcuts/useful tips mentioned were given below 

###Github
__Adding .diff or .patch to the URL provides more clearer textual representation__

Example: https://github.com/sengopal/sengopal.github.com/commit/c1ed8ca37880bb6b369e5007fa88909aa1b73189
https://github.com/sengopal/sengopal.github.com/commit/c1ed8ca37880bb6b369e5007fa88909aa1b73189.diff
https://github.com/sengopal/sengopal.github.com/commit/c1ed8ca37880bb6b369e5007fa88909aa1b73189.patch

__Remove Whitespace differences using `?w=1`__

__Cool octocat images @ octodex.github.com__

__URL Shortner : git.io__
Usage: `gitio <url> <name?`

__Lexer and Highlighting Languages : [Linguist](https://github.com/github/linguist "Linguist")__

__Gist as Screenshot sharing and discussion tool `<https://gist.github.com/>`__

__Git + Hub super commands__
Hub is a command line tool that wraps git in order to extend it with extra features and commands that make working with GitHub easier.
<https://github.com/defunkt/hub>

__Key Shortcuts__
Press in repo page 
't' - for File Finder
'w' - branch selector
's' - quick search

__@mention__ - adds person to the conversation
__@Organization/Team__ - adds the organization/team to the conversation

`#<number>` - autolinks to issue number
Example: using a commit message such as "closes `#1291`" autolinks to the issue

Adding ?author=sengopal or email address to github.com/repo/commits/master gives the list of commits by that author.
_Useful for your resume !_
Example: <https://github.scm.corp.ebay.com/Verification/verification-webapp/commits/master?author=sengopal>

Pulls needn't be from a fork, but can be done from branches as well

Github supports emoji's which are available under <emoji-cheat-sheet.com>

### Git line quirks
1. `git branch --merged`

2. `git branch --no-merged`

3. `git branch --contains <sha>` - which branch has this SHA

4. `git checkout <branch_name> --<path to file>` - checkout that file from that branch into your current branch

5. `git log branchA ^branchB` - commits in A not in B

6. `git fsck ==lost-found`

7. `git diff HEAD^ --stat`

8. `git blame -w` - to avoid whitespace as commits

9. `git blame -M` - original commit and not the move commit

10. `git blame -C` - same as M except looks in the same commit
    _-CC, -CCC are the other variations available_

11. `git status -sb`

12. `git diff HEAD^ --word-diff`

13. `git config --global help.autocorrect 1`

14. `git config --global rerere.enabled 1` - long running branches, remembers merge conflicts

15. `git config --global color.ui 1`

16. `git-amend` - alias to `git commit --amend -C HEAD`

17. `git undo` - alias to `git reset --soft HEAD^` - retains commit as staged

18. `git-count` - alias to `git shortlog -sn`

19. `git add -p` - useful for logical commits

20. `git show :/<query>` - checks for the message or file name

##Commit Comparison
LINE Linking - #L16, #L16-25

Advanced Compare View
	Range - MASTER@{1.day.ago}...MASTER
bookmark that page and see whats team upto in last 12 hours