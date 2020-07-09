pragma Singleton
import QtQuick 2.11

Item {
    property alias contacts: _contacts
    QtObject {
        id: _contacts
        readonly property string defaultContactIcon: "qrc:/qml/resources/contact-icon.png"
    }
}
