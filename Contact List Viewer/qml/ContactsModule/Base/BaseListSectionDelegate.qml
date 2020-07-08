import QtQuick 2.11

Rectangle {
    width: container.width
    height: childrenRect.height
    color: "lightsteelblue"

    Text {
        color: Style.textColor
        opacity: Style.secondaryOpacity
        text: section
        font.bold: true
        font.pixelSize: 20
    }
}
