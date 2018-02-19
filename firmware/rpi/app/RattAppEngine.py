# -*- coding: utf-8 -*-
# --------------------------------------------------------------------------
#  _____       ______________
# |  __ \   /\|__   ____   __|
# | |__) | /  \  | |    | |
# |  _  / / /\ \ | |    | |
# | | \ \/ ____ \| |    | |
# |_|  \_\/    \_\_|    |_|    ... RFID ALL THE THINGS!
#
# A resource access control and telemetry solution for Makerspaces
#
# Developed at MakeIt Labs - New Hampshire's First & Largest Makerspace
# http://www.makeitlabs.com/
#
# Copyright 2018 MakeIt Labs
#
# Permission is hereby granted, free of charge, to any person obtaining a
# copy of this software and associated documentation files (the "Software"),
# to deal in the Software without restriction, including without limitation
# the rights to use, copy, modify, merge, publish, distribute, sublicense,
# and/or sell copies of the Software, and to permit persons to whom the
# Software is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
# WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
# CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#
# --------------------------------------------------------------------------
#
# Author: Steve Richardson (steve.richardson@makeitlabs.com)
#

from PyQt5.QtCore import pyqtSlot, pyqtSignal, QVariant
from PyQt5 import QtCore
from PyQt5.QtQml import QQmlApplicationEngine, qmlRegisterType
from NetWorker import NetWorker
from RFID import RFID
import ConfigParser

class RattAppEngine(QQmlApplicationEngine):
    validScan = pyqtSignal('QVariant', name='validScan', arguments=['record'])

    def __init__(self):
        QQmlApplicationEngine.__init__(self)

        self.netWorker = NetWorker()
        self.netWorker.setAuth(user='api', password='s33krit')

        self.rfid = RFID("/dev/ttyAMA0")

        self.rootContext().setContextProperty("appEngine", self)
        self.rootContext().setContextProperty("netWorker", self.netWorker)
        self.rootContext().setContextProperty("rfid", self.rfid)

        self.rfid.tagScan.connect(self.tagScanHandler)

        self.rfid.monitor()

        self.testUpdateACL()

    #@pyqtSlot()
    def tagScanHandler(self, tag, hash, time, debugText):
        print('tag scanned tag=%d hash=%s time=%d debug=%s' % (tag, hash, time, debugText))

        result = self.netWorker.searchAcl(hash)

        if result != []:
            print result
            v = QVariant(result,)
            self.validScan.emit(v)

    @pyqtSlot()
    def testUpdateACL(self):
        print('testing acl download')
        self.netWorker.get(url='http://192.168.0.170:5000/api/v1/resources/tormach_1100/acl')
        #self.netWorker.get(url='http://jsonplaceholder.typicode.com/posts/1')

    @pyqtSlot()
    def testPostLog(self):
        print('testing log post')
        self.netWorker.post(url='http://192.168.0.170:5000/api/v1/resources/tormach_1100/log')
        #self.netWorker.post(url='http://jsonplaceholder.typicode.com/posts')
