import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Row {
    id: row1
    width: parent.width
    height: parent.height * 0.35

    AxisPositionText {
        id: rectangle6
        width: parent.width * 0.15
        height: parent.height * 0.9
        color: "#ffffff"
        axisangle: dial1.dialvalue
        anchors.verticalCenter: parent.verticalCenter
    }

    Rectangle {
        id: rectangle7
        width: parent.width * 0.4
        height: parent.height
        color: Style.secondary
        Item {
            id: item5
            width: parent.width
            height: parent.height * 0.7
            CustomDial {
                id: dial1
                width: parent.width
                height: parent.height
                dialvalue: slider.value
            }
        }

        Rectangle {
            id: rectangle8
            width: parent.width
            height: parent.height * 0.3
            color: Style.secondary
            anchors.bottom: parent.bottom
            Rectangle {
                id: rectangle9
                width: parent.width * 0.5
                height: parent.height * 0.6
                color: Style.secondary
                radius: 6
                border.color: "#000000"
                border.width: 1
                anchors.verticalCenter: parent.verticalCenter
                Text {
                    id: anglerender
                    width: parent.width
                    height: parent.height
                    color: "#ffffff"
                    text: dial1.dialvalue || dial1.dialvl2
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: Style.font12 ? Style.font12 : 12
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    fontSizeMode: Text.Fit
                    minimumPixelSize: 2
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }

    Column {
        id: item7
        width: parent.width - rectangle6.width - rectangle7.width
        height: parent.height
        Row {
            id: row4
            width: parent.width
            height: parent.height / 2
            LeftSlider {
                id: button
                width: parent.width * 0.2
                height: parent.height * 0.5
                anchors.verticalCenter: parent.verticalCenter
                imgsrc: "\u0064"

                onClicked: {
                    if (button.clicked) {
                        slider.decrease()
                    }
                }
            }

            Slider {
                id: slider
                width: parent.width * 0.5
                anchors.verticalCenter: parent.verticalCenter
                stepSize: 1
                value: dial1.dialvl2
                to: 110
                from: -110
            }

            LeftSlider {
                id: button3
                width: parent.width * 0.2
                height: parent.height * 0.5
                anchors.verticalCenter: parent.verticalCenter
                imgsrc: "\u0066"

                onClicked: {
                    if (button.clicked) {
                        slider.increase()
                    }
                }
            }
        }

        Item {
            id: item8
            width: parent.width
            height: parent.height - row4.height
            Row {
                id: row5
                width: parent.width * 0.7
                height: parent.height * 0.8
                anchors.verticalCenter: parent.verticalCenter
                spacing: 3
                anchors.horizontalCenter: parent.horizontalCenter
                HoverButton {
                    id: movearm
                    stepcolortext: "white"
                    anchors.verticalCenter: parent.verticalCenter
                    onClicked: {
                        console.log(dial1.dialvalue)
                    }
                    steptext: qsTr("Move Arm")
                    stepcolor: "#7d00ff"
                }

                HoverButton {
                    id: homebtn
                    anchors.verticalCenter: parent.verticalCenter
                    steptext: qsTr("Home")
                    stepcolor: "#889ab9"
                    stepcolortext: "white"
                }
            }
        }
    }
}
