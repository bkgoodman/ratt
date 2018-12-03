// --------------------------------------------------------------------------
//  _____       ______________
// |  __ \   /\|__   ____   __|
// | |__) | /  \  | |    | |
// |  _  / / /\ \ | |    | |
// | | \ \/ ____ \| |    | |
// |_|  \_\/    \_\_|    |_|    ... RFID ALL THE THINGS!
//
// A resource access control and telemetry solution for Makerspaces
//
// Developed at MakeIt Labs - New Hampshire's First & Largest Makerspace
// http://www.makeitlabs.com/
//
// Copyright 2018 MakeIt Labs
//
// Permission is hereby granted, free of charge, to any person obtaining a
// copy of this software and associated documentation files (the "Software"),
// to deal in the Software without restriction, including without limitation
// the rights to use, copy, modify, merge, publish, distribute, sublicense,
// and/or sell copies of the Software, and to permit persons to whom the
// Software is furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
// WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
// CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
// --------------------------------------------------------------------------
//
// Author: Steve Richardson (steve.richardson@makeitlabs.com)
//

import QtQuick 2.6
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0

View {
    id: root
    name: "Shutdown"

    color: "#000099"

    property int enabledSecs: 0
    property int activeSecs: 0
    property int idleSecs: 0

    property int idleWarningSecs: config.Personality_TimeoutWarningSeconds
    property int idleTimeoutSecs: config.Personality_TimeoutSeconds

    property bool idleWarning: (idleSecs < idleWarningSecs)
    property bool idleTimeout: (idleSecs == 0)

    Connections {
        target: personality
        onToolActiveFlagChanged: {
            var isActive = personality.toolActiveFlag;

            status.keyEscActive = !isActive;

            if (isActive)
                idleSecs = idleTimeoutSecs;
        }
    }

    function _show() {
        status.setKeyActives(true, false, false, false);
        enabledSecs = 0;
        activeSecs = 0;
        idleSecs = idleTimeoutSecs;
        updateTime();

        sound.enableAudio.play();
    }

    function keyEscape(pressed) {
        if (!personality.toolActiveFlag && pressed) {
          appWindow.mqttPublishSubtopicEvent('personality/exit', activeMemberRecord.name)
          done();
        }
    }


    function done() {
        sound.disableAudio.play();
        appWindow.mqttPublishSubtopicEvent('personality/usage', activeMemberRecord.name + ' ' + enabledSecs + ' ' + activeSecs + ' ' + (enabledSecs - activeSecs))
        appWindow.uiEvent('ToolEnabledDone');
    }

    function hhmmss(secs) {
        var sec_num = parseInt(secs, 10);
        var hours   = Math.floor(sec_num / 3600);
        var minutes = Math.floor((sec_num - (hours * 3600)) / 60);
        var seconds = sec_num - (hours * 3600) - (minutes * 60);

        if (hours   < 10) {hours   = "0" + hours;}
        if (minutes < 10) {minutes = "0" + minutes;}
        if (seconds < 10) {seconds = "0" + seconds;}
        return hours + ':' + minutes + ':' + seconds;
    }

    function updateTime() {
        textActiveTime.text = hhmmss(activeSecs);
        textEnabledTime.text=  hhmmss(enabledSecs);
        textIdleTime.text = hhmmss(idleSecs);
    }

    Timer {
        id: idleTimer
        interval: 1000
        repeat: true
        running: shown
        onTriggered: {
            enabledSecs++;
            if (personality.toolActiveFlag)
                activeSecs++;
            else if (idleSecs > 0)
                idleSecs--;
            else if (idleSecs == 0) {
                appWindow.mqttPublishSubtopicEvent('personality/timeout', activeMemberRecord.name)
                done();
            }

            if (idleSecs == idleWarningSecs)
                sound.timeoutWarningAudio.play();

            updateTime();
        }
    }

    ColumnLayout {
        anchors.fill: parent
        Item {
          Layout.fillWidth: true
          Layout.preferredHeight: 16
          Label {
              id: memberNameLabel
              width: parent.width
              text: activeMemberRecord.name
              horizontalAlignment: Text.AlignHCenter
              font.pixelSize: 12
              font.weight: Font.DemiBold
              color: "#00ffff"
          }

          Glow {
            anchors.fill: memberNameLabel
            source: memberNameLabel
            radius: 2
            color: "black"
          }
        }

        RowLayout {
          Layout.fillWidth: true
          Layout.preferredHeight: 20
          Item {
            Layout.preferredWidth: 35
            Layout.fillHeight: true
            Label {
                id: totalLabel
                width: parent.width
                text: "TOTAL"
                font.pixelSize: 8
                font.weight: Font.DemiBold
                horizontalAlignment: Text.AlignRight
                color: "#aaaaaa"
            }
            Glow {
              anchors.fill: totalLabel
              source: totalLabel
              radius: 2
              color: "black"
            }
          }

          Item {
            Layout.fillWidth: true
            Layout.fillHeight: true
            Label {
                id: textEnabledTime
                width: parent.width
                font.pixelSize: 22
                font.weight: Font.DemiBold
                color: "#aaaaaa"
            }
            Glow {
              anchors.fill: textEnabledTime
              source: textEnabledTime
              radius: 2
              color: "black"
            }
          }
        }

        RowLayout {
          Layout.fillWidth: true
          Layout.preferredHeight: personality.toolActiveFlag ? 20 : 0
          visible: personality.toolActiveFlag
          Item {
            Layout.preferredWidth: 35
            Layout.fillHeight: true
            Label {
                id: activeLabel
                width: parent.width
                text: "ACTIVE"
                font.pixelSize: 8
                font.weight: Font.DemiBold
                horizontalAlignment: Text.AlignRight
                color: "#00ff00"
            }
            Glow {
              anchors.fill: activeLabel
              source: activeLabel
              radius: 2
              color: "black"
            }
          }

          Item {
            Layout.fillWidth: true
            Layout.fillHeight: true
            Label {
                id: textActiveTime
                width: parent.width
                font.pixelSize: 22
                font.weight: Font.DemiBold
                color: "#00ff00"
            }
            Glow {
              anchors.fill: textActiveTime
              source: textActiveTime
              radius: 2
              color: "black"
            }
          }
        }

        SequentialAnimation {
            running: !personality.toolActiveFlag && !idleWarning
            loops: Animation.Infinite
            PropertyAnimation {
                target: itemIdleTime
                property: "opacity"
                from: 1.0
                to: 0.3
                duration: 900
            }
            PauseAnimation {
                duration: 100
            }
            PropertyAnimation {
                target: itemIdleTime
                property: "opacity"
                from: 0.5
                to: 1.0
                duration: 900
            }
            PauseAnimation {
                duration: 100
            }
        }

        SequentialAnimation {
            running: !personality.toolActiveFlag && idleWarning
            loops: Animation.Infinite
            PropertyAnimation {
                target: itemIdleTime
                property: "opacity"
                from: 1.0
                to: 0.5
                duration: 50
            }
            PauseAnimation {
                duration: 250
            }
            PropertyAnimation {
                target: itemIdleTime
                property: "opacity"
                from: 0.5
                to: 1.0
                duration: 50
            }
            PauseAnimation {
                duration: 250
            }
        }


        RowLayout {
          Layout.fillWidth: true
          Layout.preferredHeight: 20
          visible: !personality.toolActiveFlag
          Item {
            Layout.preferredWidth: 35
            Layout.fillHeight: true
            Label {
                id: idleLabel
                width: parent.width
                text: "IDLE"
                font.pixelSize: 8
                font.weight: Font.DemiBold
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                color: idleWarning ? "#ff0a33" : "#ffdc42"
            }
            Glow {
              anchors.fill: idleLabel
              source: idleLabel
              radius: 2
              color: "black"
            }
          }

          Item {
            Layout.fillWidth: true
            Layout.fillHeight: true
            id: itemIdleTime
            Label {
                id: textIdleTime
                width: parent.width
                font.pixelSize: 22
                font.weight: Font.DemiBold
                color: idleWarning ? "#ff0a33" : "#ffdc42"
            }
            Glow {
              anchors.fill: textIdleTime
              source: textIdleTime
              radius: 2
              color: "black"
            }
          }
        }
    }
}
