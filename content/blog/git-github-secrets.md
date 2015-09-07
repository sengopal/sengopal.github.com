title=Git and Github secrets
date=2012-08-16
tags=nontech, lists
slug=git-github-secrets
summary=Some git and github usage secrets for quick reference
category=Utilities
author=Senthilkumar Gopal
type=post
summary=Git commandline and Github are two of most used tools for a web developer. Especially in a team environment, we use these more than a few times in a day. Recently I came across a screencast held at Aloha Ruby Conference. Some of the important and amazing shortcuts and useful tips discussed were summarized below.
status=published
~~~~~~
Git commandline and Github are two of most used tools for a web developer. Especially in a team environment, we use these more than a few times in a day. Recently I came across a screencast held at Aloha Ruby Conference. Some of the important and amazing shortcuts and useful tips discussed were summarized below. Rather than using them all, we should start couple of them and start practising them which definitely improves our tooling and productivity.

###Github
__Adding .diff or .patch to the URL provides more clearer textual representation__

```html
    https://github.com/sengopal/sengopal.github.com/commit/c1ed8ca37880bb6b369e5007fa88909aa1b73189
    https://github.com/sengopal/sengopal.github.com/commit/c1ed8ca37880bb6b369e5007fa88909aa1b73189.diff
    https://github.com/sengopal/sengopal.github.com/commit/c1ed8ca37880bb6b369e5007fa88909aa1b73189.patch
```

__Remove Whitespace differences using__ `?w=1`

__Cool octocat images @ octodex.github.com__

__URL Shortner : git.io__
Usage: `gitio <url> <name?`

__Lexer and Highlighting Languages:__ [Linguist](https://github.com/github/linguist "Linguist")

__Gist as Screenshot sharing and discussion tool__ `<https://gist.github.com/>`

__Git + Hub super commands__
Hub is a command line tool that wraps git in order to extend it with extra features and commands that make working with GitHub easier.
[hub repo](https://github.com/defunkt/hub "hub repo")

__Key Shortcuts__
Press in repo page
`t` - for File Finder
`w` - branch selector
`s` - quick search

__@mention__ - adds person to the conversation
__@Organization/Team__ - adds the organization/team to the conversation

`#<number>` - __autolinks to issue number__
Example: using a commit message such as "closes `#1291`" autolinks to the issue

__Adding__ `?author=sengopal` __or email address to__ `github.com/repo/commits/master` __gives the list of commits by that author.__
_Useful for your resume !_
Example:
{% highlight html %}
    https://github.scm.corp.ebay.com/Verification/verification-webapp/commits/master?author=sengopal


__Pulls needn't be from a fork, but can be done from branches as well__

__Github supports emoji's which are available under__ [Emoji-cheat-sheet](http://emoji-cheat-sheet.com "Emoji-cheat-sheet")

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

__Commit Comparison__
LINE Linking - #L16, #L16-25

_Advanced Compare View_
Range - `MASTER@{1.day.ago}...MASTER`
bookmark that page and see whats team upto in last 12 hours


###Key Git commands in order of importance
* Clone – Creates a repository from a network or local location
* Status – What is staged, and in the working directory
* Log – history of commits
* Add – make a file ready for staging
* Commit – Move staged files to a commit
* Reset – Clean an entire working directory
* Pull – Perform a fetch & merge operation
* Push – send your changes to the parent repository
* Branch – to create a new branch
* Checkout – to grab one or more files
* Clean – removing files that exist only in the working directory
* Fetch – Get changes from the parent repository to store within the current repo
* Merge – Combine two or more commits into one
