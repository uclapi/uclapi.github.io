#!/usr/bin/env bash

# Build all the files

# Build the site with gulp
echo "Building the main site..."
cd site
gulp build
cd ..

#Build the docs
echo "Building the docs site..."
cd docs
bundle exec middleman build --clean
cd ..

echo "Organising files..."
cp -r ./docs/build/* ./
mv index.html docs.html
cp ./site/statics/stylesheets/* ./stylesheets/
cp ./site/statics/images/* ./images/
cp ./site/statics/index.html ./
