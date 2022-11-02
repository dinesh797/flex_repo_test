import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Rectangle {
    id: rectangle
    color: Style.colorshallow
    border.color: Style.bordershallow
    property alias rl2button: rl2button
    property alias rl1button: rl1button
    property alias rr1button: rr1button
    property alias rr2button: rr2button
    property alias fr1button: fr1button
    property alias fr2button: fr2button
    property alias fl1button: fl1button
    property alias fl2button: fl2button
    property alias grp: group
    ButtonGroup {
        id: group
        exclusive: true
    }
    Item {
        id: rectangle1
        width: parent.width * 0.90
        height: parent.height * 0.90
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        Image {
            id: assembly
            width: parent.width * 0.97
            height: parent.height * 0.98
            anchors.verticalCenter: parent.verticalCenter
            horizontalAlignment: Image.AlignLeft
            source: "../images/assembly.svg"
            anchors.horizontalCenter: parent.horizontalCenter
            antialiasing: true
        }
        Item {
            id: item1
            width: parent.width
            height: parent.height * 0.40

            Button {
                id: fl2button
                ButtonGroup.group: group
                width: parent.width * 0.174
                height: parent.height
                autoExclusive: false
                checkable: true
                background: Rectangle {
                    anchors.fill: parent
                    border.color: parent.checked ? "#8204e4" : (parent.hovered ? "#8204e4" : "#252529")
                    border.width: 2
                    radius: 6
                    color: Style.colorshallow
                }
            }
            Item {
                id: item4
                width: parent.width * 0.055
                height: parent.height * 0.2
                anchors.right: fl2button.left
                anchors.bottom: item1.bottom
                Text {
                    id: fl2text
                    text: qsTr("FL2")
                    anchors.fill: parent
                    color: Style.tertiary
                    font.pixelSize: 12
                    verticalAlignment: Text.AlignBottom
                    fontSizeMode: Text.Fit
                    minimumPixelSize: 2
                }
            }
            Item {
                id: item3
                width: parent.width * 0.055
                height: parent.height * 0.2
                anchors.left: fl2button.right
                anchors.bottom: item1.bottom
                Text {
                    id: fl1text
                    text: qsTr("FL1")
                    anchors.fill: parent
                    color: Style.tertiary
                    font.pixelSize: 10
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignBottom
                    fontSizeMode: Text.Fit
                    minimumPixelSize: 2
                }
            }
            Button {
                id: fl1button
                ButtonGroup.group: group
                width: parent.width * 0.174
                height: parent.height
                anchors.left: verti1.right
                autoExclusive: false
                checkable: true
                background: Rectangle {
                    anchors.fill: parent
                    border.color: parent.checked ? "#8204e4" : (parent.hovered ? "#8204e4" : "#252529")
                    border.width: 2
                    radius: 6
                    color: Style.colorshallow
                }
            }
            Button {
                id: fr2button
                ButtonGroup.group: group
                width: parent.width * 0.174
                height: parent.height
                anchors.right: parent.right
                autoExclusive: false
                checkable: true

                background: Rectangle {
                    anchors.fill: parent
                    border.color: parent.checked ? "#8204e4" : (parent.hovered ? "#8204e4" : "#252529")
                    border.width: 2
                    radius: 6
                    color: Style.colorshallow
                }
            }
            Item {
                width: parent.width * 0.055
                height: parent.height * 0.2
                anchors.right: fr2button.left
                anchors.bottom: item1.bottom
                Text {
                    id: fr2text
                    text: qsTr("FR2")
                    anchors.fill: parent
                    color: Style.tertiary
                    font.pixelSize: 10
                    verticalAlignment: Text.AlignBottom
                    fontSizeMode: Text.Fit
                    minimumPixelSize: 2
                }
            }
            Button {
                id: fr1button
                ButtonGroup.group: group
                width: parent.width * 0.174
                height: parent.height
                anchors.left: verti2.right
                autoExclusive: false
                checkable: true
                background: Rectangle {
                    anchors.fill: parent
                    border.color: parent.checked ? "#8204e4" : (parent.hovered ? "#8204e4" : "#252529")
                    border.width: 2
                    radius: 6
                    color: Style.colorshallow
                }
            }
            Item {
                width: parent.width * 0.055
                height: parent.height * 0.2
                anchors.right: fr1button.left
                anchors.bottom: item1.bottom
                Text {
                    id: fr1text
                    text: qsTr("FR1")
                    anchors.fill: parent
                    color: Style.tertiary
                    font.pixelSize: 10
                    verticalAlignment: Text.AlignBottom
                    fontSizeMode: Text.Fit
                    minimumPixelSize: 2
                }
            }
            Item {
                id: verti1
                width: parent.width * 0.245
                height: parent.height
                anchors.left: parent.left
            }

            Item {
                id: verti2
                width: parent.width * 0.575
                height: parent.height
            }
        }
        Item {
            id: item2

            width: parent.width
            height: parent.height * 0.40
            anchors.bottom: parent.bottom

            Button {
                id: rl2button
                ButtonGroup.group: group
                width: parent.width * 0.174
                height: parent.height
                autoExclusive: false
                checkable: true
                background: Rectangle {
                    anchors.fill: parent
                    border.color: parent.checked ? "#8204e4" : (parent.hovered ? "#8204e4" : "#252529")
                    border.width: 2
                    radius: 6
                    color: Style.colorshallow
                }
            }
            Item {
                width: parent.width * 0.055
                height: parent.height * 0.2
                anchors.right: rl2button.left
                anchors.top: item2.top
                Text {
                    id: rl2text
                    text: qsTr("RL2")
                    anchors.fill: parent
                    color: Style.tertiary
                    font.pixelSize: 10
                    verticalAlignment: Text.AlignBottom
                    fontSizeMode: Text.Fit
                    minimumPixelSize: 2
                }
            }
            Item {
                id: item33
                width: parent.width * 0.055
                height: parent.height * 0.2
                anchors.left: rl2button.right
                anchors.top: item2.top
                Text {
                    id: rl1text
                    text: qsTr("RL1")
                    anchors.fill: parent
                    color: Style.tertiary
                    font.pixelSize: 10
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignBottom
                    fontSizeMode: Text.Fit
                    minimumPixelSize: 2
                }
            }
            Button {
                id: rl1button
                ButtonGroup.group: group
                width: parent.width * 0.174
                height: parent.height
                anchors.left: verti11.right
                autoExclusive: false
                checkable: true
                background: Rectangle {
                    anchors.fill: parent
                    border.color: parent.checked ? "#8204e4" : (parent.hovered ? "#8204e4" : "#252529")
                    border.width: 2
                    radius: 6
                    color: Style.colorshallow
                }
            }
            Button {
                id: rr2button
                ButtonGroup.group: group
                width: parent.width * 0.174
                height: parent.height
                anchors.right: parent.right
                autoExclusive: false
                checkable: true

                background: Rectangle {
                    anchors.fill: parent
                    border.color: parent.checked ? "#8204e4" : (parent.hovered ? "#8204e4" : "#252529")
                    border.width: 2
                    radius: 6
                    color: Style.colorshallow
                }
            }
            Item {
                width: parent.width * 0.055
                height: parent.height * 0.2
                anchors.right: rr2button.left
                anchors.top: item2.top
                Text {
                    id: rr2text
                    text: qsTr("RR2")
                    anchors.fill: parent
                    color: Style.tertiary
                    font.pixelSize: 10
                    verticalAlignment: Text.AlignBottom
                    fontSizeMode: Text.Fit
                    minimumPixelSize: 2
                }
            }
            Button {
                id: rr1button
                ButtonGroup.group: group
                width: parent.width * 0.174
                height: parent.height
                anchors.left: verti22.right
                autoExclusive: false
                checkable: true
                background: Rectangle {
                    anchors.fill: parent
                    border.color: parent.checked ? "#8204e4" : (parent.hovered ? "#8204e4" : "#252529")
                    border.width: 2
                    radius: 6
                    color: Style.colorshallow
                }
            }
            Item {
                width: parent.width * 0.055
                height: parent.height * 0.2
                anchors.right: rr1button.left
                anchors.top: item2.top
                Text {
                    id: rr1text
                    text: qsTr("RR1")
                    anchors.fill: parent
                    color: Style.tertiary
                    font.pixelSize: 10
                    verticalAlignment: Text.AlignBottom
                    fontSizeMode: Text.Fit
                    minimumPixelSize: 2
                }
            }
            Item {
                id: verti11
                width: parent.width * 0.245
                height: parent.height
                anchors.left: parent.left
            }

            Item {
                id: verti22
                width: parent.width * 0.575
                height: parent.height
            }
        }
    }
}
