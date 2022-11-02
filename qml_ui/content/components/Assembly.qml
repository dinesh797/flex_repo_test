import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Rectangle {
    id: rectangle
    color: Style.secondary
    Image {
        id: assembly
        anchors.fill: parent
        source: "../images/assembly.svg"
        antialiasing: true
        clip: true
        sourceSize.height: parent.height
        sourceSize.width: parent.width
    }

    Item {
        id: item1
        width: parent.width * 0.95
        height: parent.height * 0.40
        anchors.horizontalCenter: parent.horizontalCenter

        Item {
            id: fl2button

            width: parent.width * 0.12
            height: parent.height

            Text {
                id: fl2text
                text: qsTr("FL2")
                color: Style.tertiary
                anchors.right: fl2button.left
                anchors.bottom: parent.bottom
                height: parent.height * 0.1
                width: rectangle.width * 0.040
                font.pixelSize: Style.font20 ? Style.font20 : 20
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignBottom
                fontSizeMode: Text.Fit
                minimumPixelSize: 2
            }
        }

        Item {
            id: fl1button
            width: parent.width * 0.06
            height: parent.height * 0.09
            anchors.left: verti1.right
            anchors.bottom: parent.bottom

            Text {
                id: fl1text
                anchors.fill: parent
                text: qsTr("FL1")
                color: Style.tertiary
                font.pixelSize: Style.font20 ? Style.font20 : 20
                verticalAlignment: Text.AlignBottom
                fontSizeMode: Text.Fit
                minimumPixelSize: 2
            }
        }
        Item {
            id: fr2button
            width: parent.width * 0.898
            height: parent.height
            anchors.left: parent.left
            anchors.bottom: parent.bottom

            Text {
                id: fr2text
                text: qsTr("FR2")
                anchors.left: parent.right
                anchors.bottom: parent.bottom
                width: parent.width * 0.06
                height: parent.height * 0.09
                color: Style.tertiary
                font.pixelSize: Style.font20 ? Style.font20 : 20
                verticalAlignment: Text.AlignBottom
                anchors.rightMargin: 0
                fontSizeMode: Text.Fit
                minimumPixelSize: 2
            }
        }
        Item {
            id: fr1button
            width: parent.width * 0.06
            height: parent.height * 0.09
            anchors.left: verti2.right
            anchors.bottom: parent.bottom

            Text {
                id: fr1text
                anchors.fill: parent
                text: qsTr("FR1")
                color: Style.tertiary
                font.pixelSize: Style.font20 ? Style.font20 : 20
                verticalAlignment: Text.AlignBottom
                fontSizeMode: Text.Fit
                minimumPixelSize: 2
            }
        }

        Item {
            id: verti1
            width: parent.width * 0.27
            height: parent.height
            anchors.left: parent.left
        }

        Item {
            id: verti2
            width: parent.width * 0.620
            height: parent.height
        }
    }

    Item {
        id: item2
        width: parent.width * 0.95
        height: parent.height * 0.40
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        Item {
            id: verti4
            width: parent.width * 0.615
            height: parent.height
        }
        Item {
            id: verti3
            width: parent.width * 0.263
            height: parent.height
            anchors.left: parent.left
        }
        Item {
            id: rr2button
            width: parent.width * 0.11
            height: parent.height * 0.09
            anchors.right: parent.right

            Text {
                id: rr2text
                text: qsTr("RR2")
                color: Style.tertiary
                width: parent.width * 0.4
                height: parent.height
                fontSizeMode: Text.Fit
                minimumPixelSize: 2
                font.pixelSize: Style.font20 ? Style.font20 : 20
            }
        }
        Item {
            id: rr1button
            width: parent.width * 0.06
            height: parent.height * 0.09
            anchors.left: verti4.right
            anchors.top: parent.top

            Text {
                id: rr1text
                text: qsTr("RR1")
                color: Style.tertiary
                anchors.fill: parent
                font.pixelSize: Style.font20 ? Style.font20 : 20
                fontSizeMode: Text.Fit
                minimumPixelSize: 2
            }
        }
        Item {
            id: rl1button
            width: parent.width * 0.06
            height: parent.height * 0.09
            anchors.left: verti3.right

            Text {
                id: rl1text
                text: qsTr("RL1")
                color: Style.tertiary
                anchors.fill: parent
                font.pixelSize: Style.font20 ? Style.font20 : 20
                fontSizeMode: Text.Fit
                minimumPixelSize: 2
            }
        }

        Item {
            id: rl2button
            width: parent.width * 0.16
            height: parent.height

            Text {
                id: rl2text
                text: qsTr("RL2")
                color: Style.tertiary
                anchors.top: parent.top
                anchors.right: rl2button.left
                height: parent.height * 0.1
                width: rectangle.width * 0.040
                font.pixelSize: Style.font20 ? Style.font20 : 20
                horizontalAlignment: Text.AlignRight
                fontSizeMode: Text.Fit
                minimumPixelSize: 2
            }
        }
    }
}
