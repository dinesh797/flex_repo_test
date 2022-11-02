import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Button {
    id: step1button
    property string steptext
    height: parent.height
    property int ss1
    width: parent.width
    checkable: true
    autoExclusive: true

    property int slid12
    property int slid11

            onCheckedChanged: {
                if (step1button.checked)
                {
                    iconwaypointshover.visible = true
                } else {
                iconwaypointshover.visible = false
            }
        }

        background: Rectangle {
            id: outer
            anchors.fill: parent
            border.color: parent.checked ? Style.reccol3: (parent.hovered ? Style.reccol3: "transparent")
            border.width: 1
            radius: 6
            color: parent.checked ? Style.hover_leftbutton: (parent.hovered ? Style.hover_leftbutton: Style.hoversecondary)

            Item {
                id: custom_arrow
                width: parent.width * 0.15
                height: parent.height
                anchors.right: parent.right

                Text {
                    id: iconwaypointshover
                    width: parent.width
                    height: parent.height
                    text: step1button.checked ? "\u0066" : ""
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.right: parent.right
                    font.pixelSize: 20
                    rightPadding: 7
                    font.family: Style.fonticon.name
                    color: "#3393d3"
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    anchors.rightMargin: 0
                    fontSizeMode: Text.Fit
                    minimumPixelSize: 2
                    visible: false
                }
            }
            // Rectangle {
            //     id: iner
            //     anchors.fill: parent
            //     border.width: 2
            //     radius: 6
            //     border.color: "#8204e4"
            //     color: Style.steprect1

            //     IconImage {
            //         id: iconwaypoints
            //         anchors.verticalCenter: parent.verticalCenter
            //         anchors.right: parent.right
            //         source: Style.steparrow
            //         anchors.rightMargin: 3
            //         width: parent.width * 0.05
            //     }

            //     visible: false
            // }
        }

        // onHoveredChanged: {
        //     if (step1button.hovered) {

        //         outer.color = Style.reccol
        //         iconwaypointshover.visible = true
        //     } else {
        //         outer.color = Style.reccol2
        //         iconwaypointshover.visible = false
        //     }
        // }
        //    onCheckedChanged: {
        //        if (step1button.checked) {
        //            iner.visible = true
        //        } else {
        //            iner.visible = false
        //        }
        //    }

        Item {
            id: init
            width: parent.width * 0.2
            height: parent.height

            Text {
                id: text1
                text: qsTr(steptext)
                topPadding: 4
                font.pixelSize: 12
                horizontalAlignment: Text.AlignHCenter
                color: Style.tertiary
                minimumPixelSize: 2
                fontSizeMode: Text.Fit
                width: parent.width
            }
        }
        Item {
            id: line
            width: parent.width
            height: parent.height * 0.1
            anchors.verticalCenter: parent.verticalCenter
        }
        Item {
            id: item1
            width: parent.width * 0.7
            height: parent.height
        }

        Text {
            id: axisBtext
            text: qsTr("Axis B: ")
            font.pixelSize: Style.font12 ? Style.font12 : 12
            color: Style.tertiary
            anchors.right: item1.right
            anchors.top: line.bottom
            minimumPixelSize: 2
            fontSizeMode: Text.Fit
            width: parent.width * 0.16
        }
        Text {
            id: axisBtextValue
            color: Style.tertiary
            font.pixelSize: Style.font12 ? Style.font12 : 12
            leftPadding: 5
            anchors.left: item1.right
            anchors.top: line.bottom
            minimumPixelSize: 2
            fontSizeMode: Text.Fit
            width: parent.width * 0.1
            text: slid12 + qsTr("\u00B0")
        }
        Text {
            id: axisAtext
            text: qsTr("Axis A: ")
            color: Style.tertiary
            font.pixelSize: Style.font12 ? Style.font12 : 12
            anchors.right: init.right
            anchors.top: line.bottom
            minimumPixelSize: 2
            fontSizeMode: Text.Fit
            width: parent.width * 0.16
        }
        Text {
            id: axisAtextValue
            color: Style.tertiary
            font.pixelSize: Style.font12 ? Style.font12 : 12
            leftPadding: 5
            anchors.left: init.right
            anchors.top: line.bottom
            minimumPixelSize: 2
            fontSizeMode: Text.Fit
            width: parent.width * 0.1
            text: slid11 + qsTr("\u00B0")
        }
    }
