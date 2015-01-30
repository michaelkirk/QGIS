#!/bin/sh
export HOMEBREW_PREFIX=`brew --prefix`
brew update
brew install python
brew tap homebrew/science
brew tap osgeo/osgeo4mac
brew install qgis-26 --only-dependencies --with-grass --with-globe
