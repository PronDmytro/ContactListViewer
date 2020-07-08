import QtQuick 2.11
import QtQuick.Controls 1.4
import QtQuick.Window 2.11
import QtQuick.Layouts 1.3
import StyleModule 1.0
import ResourceProvider 1.0
import ContactsModule.Base 1.0
Window {
    id: _CallWindow
    signal signalExit
    width: 480
    height: 640

    Rectangle {
        id: _background
        z: -100
        anchors.fill: parent
        color: Style.backgroundColor
        opacity: Style.emphasisOpacity
    }
    Image {
        id: _cannelImgBtn
        width: 100
        anchors.verticalCenterOffset: 252
        anchors.horizontalCenterOffset: -14
        anchors.centerIn: _background
        source:  "qrc:/qml/resources/cannel.png"
        fillMode: Image.PreserveAspectFit
        MouseArea {
            anchors.fill: _cannelImgBtn
            onClicked: {
              _CallWindow.signalExit()
            }
        }
    }

    Image {
        id: _contactBubble
        width: 250
        height: 250
        anchors.verticalCenterOffset: -188
        anchors.horizontalCenterOffset: -14
        anchors.centerIn: _background


        source: Resources.contacts.defaultContactIcon
    }

    BaseText {
        id: element
        x: 86
        y: 320
        width: 280
        height: 60
        text: qsTr("Call in Progres")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter

        font.pointSize: 24
    }
}



/*##^##
Designer {
    D{i:2;anchors_height:100;anchors_y:499}D{i:4;anchors_width:100;anchors_x:176;anchors_y:68}
}
##^##*/
