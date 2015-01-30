#!/bin/sh
xvfb-run ctest -V -E 'Atlas|atlas|PyQgsPalLabelingCanvas|PyQgsPalLabelingServer|qgis_wcsprovidertest' -S qgis-test-travis.ctest --output-on-failure
