#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

AUTHOR = u'Stefano Borini'
SITENAME = u'Gaia '
SITESUBTITLE= u"Adventures as part of a complex system"
SITEURL = 'http://forthescience.org/gaia'
ARTICLE_URL = '{date:%Y}/{date:%m}/{date:%d}/{slug}/'
ARTICLE_SAVE_AS = '{date:%Y}/{date:%m}/{date:%d}/{slug}/index.html'

PATH = 'content/gaia'
PAGE_PATHS = ['pages']
PAGE_URL = '{slug}'
PAGE_SAVE_AS = '{slug}/index.html'

ARTICLE_PATHS = ['posts']

STATIC_PATHS = ['wp-content/uploads']
WITH_FUTURE_DATES = False
GITHUB_URL="http://github.com/stefanoborini/"
GOOGLE_ANALYTICS="UA-13239309-1"
EXTRA_PATH_METADATA = {}
TIMEZONE = 'Europe/Rome'
FILENAME_METADATA='(?P<date>\d{4}-\d{2}-\d{2})_(?P<slug>.*)'
DEFAULT_LANG = u'en'

# Feed generation is usually not desired when developing
FEED_ATOM = None
FEED_MAX_ITEMS = 15
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None

# Blogroll
LINKS = (('GitHub', 'http://github.com/stefanoborini/'),
         )

# Social widget
SOCIAL = ()
PLUGIN_PATHS = ['../plugins']
PLUGINS = []

DEFAULT_PAGINATION = 10
DISPLAY_CATEGORIES_ON_MENU = False
DISPLAY_TAGS_ON_SIDEBAR = False
THEME = "themes/gaia/"
# Uncomment following line if you want document-relative URLs when developing
RELATIVE_URLS = False
