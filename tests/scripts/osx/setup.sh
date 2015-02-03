#!/bin/sh

echo 'Detecting number of processors...'
sysctl hw.ncpu

export HOMEBREW_PREFIX=`brew --prefix`
brew update
brew install python
brew install pyqt
brew tap homebrew/science
brew tap osgeo/osgeo4mac
brew install qgis --only-dependencies --without-globe --without-grass
