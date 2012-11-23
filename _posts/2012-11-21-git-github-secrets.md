---
layout: post
title: Git and Github secrets
type: post
tags:
 - git, github, secrets
published: true
meta:
categories:
 - blog
---
Recently came across a screencast held at Aloha Ruby Conference. Some of the shortcuts/useful tips mentioned were given below 

###Github
__Adding .diff or .patch to the URL provides more clearer textual representation__

{% highlight html %}
	https://github.com/sengopal/sengopal.github.com/commit/c1ed8ca37880bb6b369e5007fa88909aa1b73189
	https://github.com/sengopal/sengopal.github.com/commit/c1ed8ca37880bb6b369e5007fa88909aa1b73189.diff
	https://github.com/sengopal/sengopal.github.com/commit/c1ed8ca37880bb6b369e5007fa88909aa1b73189.patch
{% endhighlight %}

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
{% endhighlight %}

__Pulls needn't be from a fork, but can be done from branches as well__

__Github supports emoji's which are available under__ [Emoji-cheat-sheet](http://emoji-cheat-sheet.com "Emoji-cheat-sheet")