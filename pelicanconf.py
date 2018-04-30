#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

AUTHOR = 'Lazar Zivadinovic'
SITENAME = 'L Z'
SITEURL = 'https://lzivadinovic.com'
LOCAL_BOOTSTRAP = True
ARTICLE_URL = 'blog/{slug}.html'
ARTICLE_SAVE_AS = 'blog/{slug}.html'


PATH = 'content'

TIMEZONE = 'Europe/Paris'
DEFAULT_DATE_FORMAT = '%B %d, %Y'
DIRECT_TEMPLATES = ('index', 'tags', 'categories', 'archives', 'sitemap')
SITEMAP_SAVE_AS = 'sitemap.xml'
STATIC_PATHS = [
    'robots.txt',  'images', 'pdf', 'code'
    ]

DEFAULT_LANG = 'en'

MARKUP = ('md', 'ipynb', 'rst')
# plugin parameters
PLUGIN_PATHS = ['./pelican-plugins/']
PLUGINS = ['related_posts', 'share_post',  'templated_post', 
           'i18n_subsites', 'image_process', 'render_math',
           'ipynb.markup', 'liquid_tags'
           ]



# image process plugin setup
IMAGE_PROCESS = {
        'article-image': ["scale_in 600 600 True"]
}

# Feed generation is usually not desired when developing
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None
DEFAULT_PAGINATION = 10 

RELATIVE_URLS = False 

THEME = "pelican-bootstrap3"
JINJA_ENVIRONMENT = {'extensions': ['jinja2.ext.i18n']}

DISPLAY_PAGES_ON_MENU = True

# Uncomment following line if you want document-relative URLs when developing
RELATIVE_URLS = True


SOCIAL = (('linkedin', 'https://linkedin.com/in/lazar-zivadinovic-8a6437161'),
          ('github', 'https://github.com/lzivadinovic'))


SIDEBAR_IMAGES = ['/images/walk.gif']


# fetch links from file
with open(PATH+'/blog_list/blog_list', 'r') as file:
    data = file.read().splitlines()

LINKS = list(zip(*[iter(data)]*2))

