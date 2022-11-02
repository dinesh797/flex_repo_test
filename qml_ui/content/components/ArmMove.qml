import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Rectangle {
    id: rectangle5
    property alias slider: slider
    property alias slider2: slider2
    property alias d1: dial1
    property alias upval: dial1.dialvalue
    property alias downval: dial11.dialvalue

    property alias dial11: dial11.dialvalue
    property alias dial1: dial1.dialvalue
    color: Style.secondary
    border.color: Style.bordershallow

    property alias apabove: apabove.axisangle

    Column {
        id: column2
        anchors.fill: parent

        Row {
            id: row1
            width: parent.width
            height: parent.height / 2

            AxisPositionText {
                id: apabove
                color: "#ffffff"
                anchors.verticalCenter: parent.verticalCenter
                axisangle: dial1.dialvalue
                height: parent.height * 0.9
                width: parent.width * 0.15
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
                        property int value
                        width: parent.width
                        height: parent.height
                        dialvalue: slider.value
                    }
                }

                Rectangle {
                    id: rectangle8
                    width: parent.width
                    height: parent.height * 0.3
                    anchors.bottom: parent.bottom
                    color: Style.secondary

                    Rectangle {
                        id: rectangle9
                        width: parent.width * 0.5
                        height: parent.height * 0.6
                        color: Style.secondary
                        border.color: Style.bordershallow
                        border.width: 1
                        radius: 6
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter

                        Text {
                            id: anglerender
                            text: dial1.dialvalue || dial1.dialvl2
                            width: parent.width
                            height: parent.height
                            color: Style.tertiary
                            font.pixelSize: Style.font12 ? Style.font12 : 12
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            minimumPixelSize: 2
                            fontSizeMode: Text.Fit
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.horizontalCenter: parent.horizontalCenter
                        }
                    }
                }
            }

            Column {
                id: item7
                width: parent.width - apabove.width - rectangle7.width
                height: parent.height

                Row {
                    id: row4
                    width: parent.width
                    height: parent.height / 2

                    LeftSlider {

                        id: button
                        width: parent.width * 0.2
                        imgsrc: "\u0064"
                        height: parent.height * 0.5
                        anchors.verticalCenter: parent.verticalCenter

                        onClicked: {
                            if (button.clicked) {
                                slider.decrease()
                            }
                        }
                    }

                    Slider {
                        id: slider

                        value: dial1.dialvl2

                        width: parent.width * 0.5
                        anchors.verticalCenter: parent.verticalCenter
                        stepSize: 1
                        to: 110
                        from: -110
                    }
                    LeftSlider {
                        id: button3
                        width: parent.width * 0.2
                        height: parent.height * 0.5
                        imgsrc: "\u0066"
                        anchors.verticalCenter: parent.verticalCenter

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
                        spacing: 3
                        width: parent.width * 0.7
                        height: parent.height * 0.8
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter

                        HoverButton {
                            id: movearm
                            anchors.verticalCenter: parent.verticalCenter
                            stepcolor: "#7d00ff"
                            steptext: qsTr("Move Arm")
                            onClicked: {
                                console.log("Armed Moved At: " + dial1.dialvalue)
                            }
                        }

                        HoverButton {
                            id: homebtn
                            anchors.verticalCenter: parent.verticalCenter
                            stepcolor: "#889ab9"
                            steptext: "Home"
                        }
                    }
                }
            }
        }

        Row {
            id: row3
            width: parent.width
            height: parent.height / 2
            AxisPositionText {
                id: apdown
                color: "#ffffff"
                anchors.verticalCenter: parent.verticalCenter
                axisangle: dial11.dialvalue
                height: parent.height * 0.9
                width: parent.width * 0.15
            }
            Rectangle {
                id: rectangle77
                width: parent.width * 0.4
                height: parent.height
                color: Style.secondary

                Item {
                    id: item55
                    width: parent.width
                    height: parent.height * 0.7

                    CustomDial {
                        id: dial11

                        width: parent.width
                        height: parent.height
                        dialvalue: slider2.value
                    }
                }

                Rectangle {
                    id: rectangle88
                    width: parent.width
                    height: parent.height * 0.3
                    anchors.bottom: parent.bottom
                    color: Style.secondary

                    Rectangle {
                        id: rectangle99
                        width: parent.width * 0.5
                        height: parent.height * 0.6
                        color: Style.secondary
                        border.color: Style.bordershallow
                        border.width: 1
                        radius: 6
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter

                        Text {
                            id: anglerender2
                            text: dial11.dialvalue || dial11.dialvl2
                            width: parent.width
                            height: parent.height
                            color: Style.tertiary
                            font.pixelSize: Style.font12 ? Style.font12 : 12
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            minimumPixelSize: 2
                            fontSizeMode: Text.Fit
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.horizontalCenter: parent.horizontalCenter
                        }
                    }
                }
            }

            Column {
                id: item77
                width: parent.width - apdown.width - rectangle7.width
                height: parent.height

                Row {
                    id: row44
                    width: parent.width
                    height: parent.height / 2

                    LeftSlider {

                        id: button2
                        width: parent.width * 0.2
                        imgsrc: "\u0064"
                        height: parent.height * 0.5
                        anchors.verticalCenter: parent.verticalCenter

                        onClicked: {
                            if (button2.clicked) {
                                slider2.decrease()
                            }
                        }
                    }

                    Slider {
                        id: slider2
                        value: dial11.dialvl2
                        width: parent.width * 0.5
                        anchors.verticalCenter: parent.verticalCenter
                        stepSize: 1
                        to: 110
                        from: -110
                    }
                    LeftSlider {
                        id: button33
                        width: parent.width * 0.2
                        height: parent.height * 0.5
                        imgsrc: "\u0066"
                        anchors.verticalCenter: parent.verticalCenter

                        onClicked: {
                            if (button33.clicked) {
                                slider2.increase()
                            }
                        }
                    }
                }

                Item {
                    id: item88
                    width: parent.width
                    height: parent.height - row4.height

                    Row {
                        id: row55
                        spacing: 3
                        width: parent.width * 0.7
                        height: parent.height * 0.8
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter

                        HoverButton {
                            id: movearm2
                            anchors.verticalCenter: parent.verticalCenter
                            stepcolor: "#7d00ff"
                            steptext: qsTr("Move Arm")
                            onClicked: {
                                console.log("Armed Moved At: " + dial11.dialvalue)
                            }
                        }

                        HoverButton {
                            id: homebtn2
                            anchors.verticalCenter: parent.verticalCenter
                            stepcolor: "#889ab9"
                            steptext: "Home"
                        }
                    }
                }
            }
        }
    }
}
