## Forked From: arkadianriver.com

My personal web site, based off the http://html5up.net/spectral design by
[@ajlkn](http://twitter.com/ajlkn).
The site is made for blog and portfolio content. The blog can contain both
personal entries and entries by syndicated authors.
The site uses jekyll, a method of creating and maintaining a web site,
which works by using local templates to generate static files that you upload
and sync with your remote site.
This repo is the same code I use for my site, excluding my posts.

### If you clone or fork this repo to use it:

0. Install [Jekyll](https://jekyllrb.com/) (version 3.1.2 or higher).

0. Tweak the site to make it your own. Jekyll uses [YAML files](http://www.yaml.org/start.html)
   for its site variables:

   a. Edit the `_config.yml` file, replacing the values for each key with your info.

   b. Add a `_data/tokens.yml` file with your IDs & mail program.
      See the `_data/tokens-template.yml.` file for example entries.

   c. Add author info for yourself in `_data/authors.yml` as the first
      author entry in the file.

   d. Provide your own images.

   e. Continue tweaking to your heart's desire, or not.

0. Create your posts:

   a. Use the posts in the 31st century as guides for yours. They're built by jekyll only when
      the `--future` option is used.

   b. You can run `ruby compose.rb` to create new draft posts.
