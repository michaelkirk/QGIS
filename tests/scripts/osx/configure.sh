#!/bin/sh
export QGIS_SRC_DIRECTORY=$TRAVIS_BUILD_DIR
export QGIS_BUILD_DIRECTORY=$TRAVIS_BUILD_DIR/build
export HOMEBREW_PREFIX=`brew --prefix`
export DYLD_LIBRARY_PATH=${QGIS_BUILD}/output/lib:${QGIS_BUILD}/PlugIns/qgis
export PATH=${HOMEBREW_PREFIX}/bin:${HOMEBREW_PREFIX}/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin::/usr/X11/bin
export PYTHONHOME=${HOMEBREW_PREFIX}/Frameworks/Python.framework/Versions/2.7
export PYTHONPATH=${HOMEBREW_PREFIX}/lib/python2.7/site-packages
export PYQGIS_STARTUP=${HOMEBREW_PREFIX}/Library/Taps/osgeo/homebrew-osgeo4mac/enviro/python_startup.py
export GDAL_DRIVER_PATH=${HOMEBREW_PREFIX}/lib/gdalplugins

OPT_PREFIX=/usr/local/opt
mkdir -p build
cd build
cmake .. -DQWT_INCLUDE_DIR=$OPT_PREFIX/qwt/lib/qwt.framework/Headers/ \
         -DQWT_LIBRARY=$OPT_PREFIX/qwt/lib/qwt.framework/qwt \
         -DBISON_EXECUTABLE=$OPT_PREFIX/bison/bin/bison \
         -DENABLE_TESTS=YES \
         -DWITH_GRASS=OFF \
         -DSUPPRESS_QT_WARNINGS=ON \
         -DENABLE_MODELTEST=ON

