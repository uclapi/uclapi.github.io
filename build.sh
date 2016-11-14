#!/usr/bin/env bash

# Build all the files

# Build the site with gulp
cd site
gulp build
cd ..

#Build the docs
cd docs
bundle exec middleman build --clean
cd ..

cp -r ./docs/build/* ./
mv index.html docs.html
cp ./site/statics/stylesheets/* ./stylesheets/
cp ./site/statics/images/* ./images/
cp ./site/statics/index.html ./
