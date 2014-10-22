AUTHOR = u'Stefano Borini'
ARTICLE_URL = '{date:%Y}/{date:%m}/{date:%d}/{slug}/'
ARTICLE_SAVE_AS = '{date:%Y}/{date:%m}/{date:%d}/{slug}/index.html'

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

# Social widget
SOCIAL = ()
PLUGIN_PATHS = ['../plugins']
PLUGINS = ['pelican_youtube'] #["googleplus_comments"]

DEFAULT_PAGINATION = 10
DISPLAY_CATEGORIES_ON_MENU = False
DISPLAY_TAGS_ON_SIDEBAR = False
# Uncomment following line if you want document-relative URLs when developing
RELATIVE_URLS = False
DISQUS_SITENAME = 'forthescience'

# Blogroll
LINKS = (
         ('My Programming Blog', 'http://forthescience.org/blog'),
         ('My Whatever Blog', 'http://forthescience.org/whatever'),
         ('My Gaia Blog', 'http://forthescience.org/gaia'),
         ('GitHub Account', 'http://github.com/stefanoborini/'),
         ('LinkedIn Account', 'http://linkedin.com/in/stefanoborini'),
         ('Reddit Links', 'http://reddit.com/r/esbio'),
         ('Scientific Papers', "http://www.researcherid.com/rid/A-4542-2009"),
         )

