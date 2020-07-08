import QtQuick 2.11
import StyleModule 1.0

Rectangle {
    id: root
    color: Style.backgroundColor
    opacity: _delegateArea.pressed ? Style.secondaryOpacity : Style.emphasisOpacity
    radius:50

    MouseArea {
         id: _delegateArea
         anchors.fill: root
         onClicked: {
             _CallWindow.show()
             mainWindow.hide()
         }
    }
}
