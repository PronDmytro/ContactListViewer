import QtQuick 2.11

ListView {
    id:contactList
    spacing: 1
    section.criteria: ViewSection.FirstCharacter
    section.property: "name"
}
