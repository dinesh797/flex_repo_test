import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Rectangle {
    id: statuspop
    width: 800
    height: 400
    property string status: ""
    color: Style.hoverprimary
    border.color: "transparent"
    property alias statusbutton: statusbutton

    Rectangle {
        id: rec2
        width: parent.width * 0.99
        height: parent.height * 0.99
        color: Style.poprect1
        border.color: Style.poprect1

        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        Item {
            id: topspace
            width: parent.width
            height: parent.height * 0.30
            Item {
                id: item2
                width: parent.width * 0.98
                height: parent.height
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        Item {
            id: topbar
            width: parent.width
            height: parent.height * 0.30
            anchors.top: topspace.bottom
            Item {
                id: item22
                width: parent.width * 0.98
                height: parent.height
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter

                Text {
                    id: rr1text2
                    text: status
                    height: parent.height
                    width: parent.width
                    color: Style.tertiary
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    fontSizeMode: Text.Fit
                    minimumPixelSize: 2
                }
            }
        }

        Item {
            id: mediumspace
            width: parent.width
            anchors.top: topbar.bottom
            height: parent.height * 0.15
        }
        Rectangle {
            id: item4
            width: parent.width * 0.99
            height: parent.height * 0.25
            color: Style.poprect1
            anchors.left: parent.left
            anchors.top: mediumspace.bottom
            Row {
                id: row6
                width: parent.width * 0.45
                height: parent.height * 0.6
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                rightPadding: 10
                layoutDirection: Qt.RightToLeft

                HoverButton {
                    id: statusbutton
                    width: parent.width * 0.5
                    height: parent.height
                    anchors.verticalCenter: parent.verticalCenter
                    steptext: qsTr("Ok")
                    stepcolor: "#0F4C75"
                    stepcolortext: "white"
                }
                spacing: 10
            }
        }
    }
}
