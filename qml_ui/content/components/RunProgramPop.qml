import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Rectangle {
    id: changeboxpop
    width: parent.width / 3
    height: parent.height / 3
    color: Style.poprect1
    x: Screen.width / 2 - width / 2
    y: Screen.height / 2 - height / 2
    border.color: Style.bordercolor2

    Rectangle {
        id: rec2
        width: parent.width * 0.90
        height: parent.height * 0.90
        color: Style.poprect1
        border.color: Style.poprect1
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        Column {
            id: column
            anchors.fill: parent
            spacing: 4
            Item {
                id: topbar
                width: parent.width
                height: parent.height * 0.15

                Item {
                    id: item2
                    width: parent.width * 0.6
                    height: parent.height
                    anchors.verticalCenter: parent.verticalCenter

                    Text {
                        id: rr1text
                        text: qsTr("Run Program")
                        height: parent.height / 2
                        width: parent.width
                        color: Style.tertiary
                        font.pixelSize: 20
                        verticalAlignment: Text.AlignVCenter
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                    }
                }
            }

            Column {
                id: column2
                width: parent.width
                height: parent.height * 0.68

                SortButton {
                    id: bytagbutton
                    width: parent.width
                    buttonIcon: Style.dropIcon
                    sortText: qsTr("Run Program")
                    items: [qsTr("Program 0"), qsTr("Program 1"), qsTr("Program 2")]
                    icon_left: false
                    icon_right: true
                    uncheckedcolor: Style.primary
                }
            }

            Rectangle {
                id: item4
                width: parent.width
                height: parent.height * 0.13
                color: Style.colorshallow

                Row {
                    id: row6
                    width: parent.width * 0.38
                    height: parent.height
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.right: parent.right
                    layoutDirection: Qt.RightToLeft

                    HoverButton {
                        id: runbtn
                        width: parent.width * 0.5
                        height: parent.height
                        anchors.verticalCenter: parent.verticalCenter
                        steptext: qsTr("Run")
                        stepcolor: "#7d00ff"
                        stepcolortext: "white"
                    }
                    spacing: 4
                    HoverButton {
                        id: cancel
                        width: parent.width * 0.5
                        height: parent.height
                        anchors.verticalCenter: parent.verticalCenter
                        steptext: qsTr("Cancel")
                        stepcolor: "#505050"
                        stepcolortext: "white"
                    }
                }
            }
        }
    }
}
