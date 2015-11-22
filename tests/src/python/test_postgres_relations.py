# -*- coding: utf-8 -*-

"""
***************************************************************************
    test_postgres_relations
    ---------------------
    Date                 : November 2015
    Copyright            : (C) 2015 by Matthias Kuhn
    Email                : matthias@opengis.ch
***************************************************************************
*                                                                         *
*   This program is free software; you can redistribute it and/or modify  *
*   it under the terms of the GNU General Public License as published by  *
*   the Free Software Foundation; either version 2 of the License, or     *
*   (at your option) any later version.                                   *
*                                                                         *
***************************************************************************
"""

__author__ = 'Matthias Kuhn'
__date__ = 'November 2015'
__copyright__ = '(C) 2015, Matthias Kuhn'

# This will get replaced with a git SHA1 when you do a git archive

__revision__ = ':%H$'

import qgis
import os
import sys
from qgis.core import NULL

from qgis.core import QgsVectorLayer, QgsFeatureRequest, QgsFeature, QgsProviderRegistry
from PyQt4.QtCore import QSettings
from utilities import (unitTestDataPath,
                       getQgisTestApp,
                       unittest,
                       TestCase
                       )
from providertestbase import ProviderTestCase

QGISAPP, CANVAS, IFACE, PARENT = getQgisTestApp()
TEST_DATA_DIR = unitTestDataPath()


class TestPyQgsPostgresRelations(TestCase):

    @classmethod
    def setUpClass(cls):
        """Run before all tests"""
        cls.dbconn = u'dbname=\'qgis_test\' host=localhost port=5432 user=\'postgres\' password=\'postgres\''
        if 'QGIS_PGTEST_DB' in os.environ:
            cls.dbconn = os.environ['QGIS_PGTEST_DB']

    def test_me(self):
        pass

if __name__ == '__main__':
    unittest.main()
