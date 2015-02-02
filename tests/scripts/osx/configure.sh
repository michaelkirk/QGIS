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

mkdir -p build
cd build
cmake .. -DCXX_EXTRA_FLAGS="-I'/usr/local/opt/gettext/include' -F/usr/local/opt/qt/lib -isystem/usr/local/include -isystem/opt/X11/include -isystem/opt/X11/include/freetype2 -isystem/System/Library/Frameworks/OpenGL.framework/Versions/Current/Headers -I/usr/local/opt/readline/include -I/usr/local/opt/sqlite/include -I/usr/local/opt/expat/include -I/usr/local/opt/openssl/include -I/usr/local/opt/libxml2/include -I/usr/local/opt/liblwgeom/include -I/usr/local/opt/gettext/include -I/usr/local/opt/icu4c/include -L/usr/local/opt/bison/lib -L/usr/local/opt/readline/lib -L/usr/local/opt/sqlite/lib -L/usr/local/opt/expat/lib -L/usr/local/opt/openssl/lib -L/usr/local/opt/libxml2/lib -L/usr/local/opt/liblwgeom/lib -L/usr/local/opt/gettext/lib -L/usr/local/opt/libffi/lib -L/usr/local/opt/icu4c/lib -L/usr/local/lib -L/opt/X11/lib -L/System/Library/Frameworks/OpenGL.framework/Versions/Current/Libraries -Wl,-headerpad_max_install_names"\
  -DWITH_SERVER=ON \
  -DWITH_STAGED_PLUGINS=OFF \
  -DWITH_GRASS=OFF \
  -DSUPPRESS_QT_WARNINGS=ON \
  -DENABLE_MODELTEST=ON \
  -DWITH_QWTPOLAR=OFF \
  -DBISON_EXECUTABLE=/usr/local/opt/bison/bin/bison \
  -DQWT_INCLUDE_DIR=/usr/local/opt/qwt/lib/qwt.framework/Headers \
  -DQWT_LIBRARY=/usr/local/opt/qwt/lib/qwt.framework/qwt \
  -DQWTPOLAR_INCLUDE_DIR=/usr/local/opt/qwtpolar/lib/qwtpolar.framework/Headers \
  -DQWTPOLAR_LIBRARY=/usr/local/opt/qwtpolar/lib/qwtpolar.framework/qwtpolar \
  -DQSCINTILLA_INCLUDE_DIR=/usr/local/opt/qscintilla2/include \
  -DQSCINTILLA_LIBRARY=/usr/local/opt/qscintilla2/lib/libqscintilla2.dylib \
  -DQSCI_SIP_DIR=/usr/local/opt/qscintilla2/share/sip \
  -DPYTHON_EXECUTABLE='/usr/local/Frameworks/Python.framework/Versions/2.7/bin/python' \
  -DPYTHON_CUSTOM_FRAMEWORK='/usr/local/Frameworks/Python.framework/Versions/2.7' \
  -DFCGI_INCLUDE_DIR=/usr/local/opt/fcgi/include \
  -DFCGI_LIBRARY=/usr/local/opt/fcgi/lib/libfcgi.dylib \
  -DPOSTGRES_CONFIG=/usr/local/opt/postgresql/bin/pg_config \
  -DWITH_GLOBE=FALSE \
  -DWITH_ORACLE=FALSE \
  -DWITH_APIDOC=FALSE

