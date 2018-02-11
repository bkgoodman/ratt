import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2


ApplicationWindow {
    id: appWindow
    visible: true
    color: "#004488"
    width: 640
    height: 480

    Item {
        id: root
        focus: true
        anchors.top: parent.top
        anchors.left: parent.left
        width: 160
        height: 128

        RattToolBar {
            id: tool
            width: parent.width
            anchors.top: parent.top
        }

        RattStatusBar {
            id: status
            width: parent.width
            anchors.bottom: parent.bottom
        }


        state: "splash"

        Timer {
            interval: 1500
            repeat: false
            running: true
            onTriggered: {
                root.state = "stack";
            }
        }

        Keys.onPressed: {
            if (event.key === Qt.Key_Escape)
                appWindow.close();
            else if (event.key === Qt.Key_Down) {
                appEngine.testUpdateACL();
            } else if (event.key === Qt.Key_Up) {
                appEngine.testPostLog();
            }
        }

        ViewIdle {
            id: viewIdle
            visible: false
        }

        StackView {
            id: stack
            anchors.top: tool.bottom
            anchors.bottom: status.top
            anchors.left: parent.left
            anchors.right: parent.right
            initialItem: viewIdle
        }
    }

    Item {
        anchors.left: root.right
        anchors.top: parent.top
        width: parent.width - root.width
        height: root.height
        anchors.margins: 4

        Label {
            color: "white"
            text: "MakeIt Labs RATT - HDMI Debug Window"
            font.bold: true
            font.pixelSize: 12
        }
    }

    Item {
        anchors.top: root.bottom
        anchors.left: parent.left
        width: parent.width
        height: parent.height - root.height
        anchors.margins: 4

        ColumnLayout {
            Label {
                color: "white"
                text: "appWindow size=" + appWindow.width + "x" + appWindow.height
                font.pixelSize: 10
            }
            Label {
                color: "white"
                text: "rootWindow size=" + root.width + "x" + root.height
                font.pixelSize: 10
            }
        }


    }


}
