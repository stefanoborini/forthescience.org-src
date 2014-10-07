#/bin/bash

post=$1
blog=`echo $post | cut -d'/' -f 2`
date=`date +'%Y-%m-%d'`
published_post=content/$blog/posts/`basename "$post" | sed "s/^complete/$date/"`

mv -iv "$post" "$published_post"
git add "$published_post"
git commit -m "published"
