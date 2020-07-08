import QtQuick 2.11
import QtQuick.Window 2.11
import ContactsModule.Impl 1.0
import StyleModule 1.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.4
import ContactsModule.Base 1.0
import QtQuick.Controls.Styles 1.4

Window {
    id:mainWindow
    visible: true
    width: 480
    height: 640
    title: qsTr("Contact List Viewer")

    RowLayout {
        id: rowLayout
        z:1
        TextField {
            placeholderText: "Type here.."
            Layout.fillWidth: true
            font.pointSize: 12
                background: Rectangle {
                    radius: 5
                    implicitWidth: 100
                    implicitHeight: 30
                    border.width: 1
                     }

            onTextChanged: {
                filterModel.setFilterString(text);
            }
        }
        CheckBox {
            id: desCB
            text: "Descending"
            contentItem: Text {
                    text: desCB.text
                    color: Style.textColor
                    leftPadding: desCB.indicator.width + desCB.spacing
                            verticalAlignment: Text.AlignVCenter
                     }
            onCheckedChanged:{
                filterModel.setSortOrder(checked)
            }
         }
      }


    BaseListView {
        id: contactList
        model: filterModel
        anchors.topMargin: 50
        anchors.fill: parent

        delegate: ContactDelegate {
            width: contactList.width
            height: 70
           }
     }


    Rectangle {
        id: _background
        z: -100
        anchors.fill: parent
        color: Style.backgroundColor
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        opacity: Style.emphasisOpacity
    }

    CallWindow {
        id: _CallWindow
        title: qsTr("Call in progres")


        onSignalExit: {
            _CallWindow.close()
            mainWindow.show()
        }
    }
}

