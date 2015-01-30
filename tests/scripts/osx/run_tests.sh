#!/bin/sh
ctest -V -EL 'FAILS_ON_MAC' -S qgis-test-travis.ctest --output-on-failure
