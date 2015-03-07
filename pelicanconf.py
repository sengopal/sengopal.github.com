#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

AUTHOR = u'Senthil Gopal'
SITENAME = u'Senthil Gopal'
SITEURL = '/'

TIMEZONE = 'Europe/Paris'

DEFAULT_LANG = u'en'

DATE_FORMATS = {
    'en': ('en_US','%d %b %Y')
}

# Feed generation is usually not desired when developing
FEED_ALL_ATOM = 'atom.xml'
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None

DISPLAY_PAGES_ON_MENU = True
DISPLAY_CATEGORIES_ON_MENU = False

GITHUB_USER = 'sengopal'
GITHUB_SKIP_FORK = True

# Blogroll
LINKS =  (('Pelican', 'http://getpelican.com/'),
          ('Python.org', 'http://python.org/'),
          ('Jinja2', 'http://jinja.pocoo.org/'),
          ('You can modify those links in your config file', '#'),)

# Social widget
SOCIAL = (
          ('twitter', 'https://twitter.com/sengopal'),
          ('github', 'http://github.com/sengopal/'),
          )

DEFAULT_PAGINATION = 10

STATIC_PATHS = ['static']

# Uncomment following line if you want document-relative URLs when developing
RELATIVE_URLS = True

#Theme
THEME = 'theme'
BOOTSTRAP_THEME = 'flatly'