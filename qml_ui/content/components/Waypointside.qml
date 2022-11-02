import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Row {
    id: row2
    property int ax1
    property int ax1_sl1: 0
    property int ax2_sl2: 0
    property int ax2
    property alias anglerender: anglerender.text
    property alias anglerender2: anglerender2.text
    property alias dial1: dial1
    property alias dial11: dial11
    property alias slider: slider
    property alias slider2: slider2
    property alias ap_A: ap_A
    property alias ap_B: ap_B

    spacing: 10

    Rectangle {
        id: item9
        color: Style.secondary
        width: parent.width * 0.24
        height: parent.height
        RobotControl_Programs {
            id: rectangle3
            color: Style.secondary
            anchors.verticalCenter: parent.verticalCenter
            anchors.top: parent.top
            anchors.topMargin: 0
            robottext: qsTr("RL2 Robot Control")
            height: parent.height * 0.95
            width: parent.width * 0.97

            Connections {
                target: rectangle3.topleftarm
                function onClicked() {
                    slider.decrease()
                }
            }
            Connections {
                target: rectangle3.toprightarm
                function onClicked() {
                    slider.increase()
                }
            }
            Connections {
                target: rectangle3.bottomrightarm
                function onClicked() {
                    slider2.increase()
                }
            }
            Connections {
                target: rectangle3.bottomleftarm
                function onClicked() {
                    slider2.decrease()
                }
            }
        }
    }

    Rectangle {
        id: rectangle4
        width: parent.width * 0.780
        height: parent.height
        color: Style.secondary

        Column {
            id: column1
            width: parent.width * 0.95
            height: parent.height * 0.98
            anchors.horizontalCenter: parent.horizontalCenter

            Rectangle {
                id: rectangle5

                width: parent.width
                height: parent.height
                color: Style.secondary

                Column {
                    id: column2
                    anchors.fill: parent

                    Row {
                        id: row1
                        width: parent.width
                        height: parent.height / 2

                        AxisPositionText {
                            id: ap_A
                            aptext: qsTr("Axis A \n Position")
                            color: "#ffffff"
                            anchors.verticalCenter: parent.verticalCenter
                            axisangle: dial1.dialvalue
                                       || dial1.dialvl2 //dial1.dialvalue
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

                                    width: parent.width
                                    height: parent.height
                                    dialvalue: ax1
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
                                    width: parent.width * 0.3
                                    height: parent.height * 0.7
                                    color: Style.secondary
                                    border.color: "black"
                                    border.width: 1
                                    radius: 5
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
                            width: parent.width - ap_A.width - rectangle7.width
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
                                    // value : dial.dialvalue
                                    anchors.verticalCenter: parent.verticalCenter

                                    onClicked: {
                                        if (button.clicked) {
                                            slider.decrease()
                                        }
                                    }
                                }

                                Slider {
                                    id: slider

                                    value: dial1.dialvl2 //|| ax1

                                    width: parent.width * 0.5
                                    anchors.verticalCenter: parent.verticalCenter
                                    stepSize: 1
                                    to: 110
                                    from: -110
                                    ToolTip {
                                        parent: slider.handle
                                        visible: slider.pressed
                                        text: slider.value
                                    }
                                    Connections {
                                        target: slider
                                        function onValueChanged() {
                                            dial1.dialvalue = slider.value
                                            ax1_sl1 = slider.value ? slider.value : 0
                                        }
                                    }
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
                                    spacing: 5
                                    width: parent.width * 0.5
                                    height: parent.height
                                    anchors.verticalCenter: parent.verticalCenter
                                    //                                    anchors.left: parent.left
                                    Item {
                                        width: parent.width * 0.4
                                        height: parent.height
                                    }

                                    HoverButton {
                                        id: movearm
                                        anchors.verticalCenter: parent.verticalCenter
                                        stepcolor: "#7d00ff"
                                        stepcolortext: "white"
                                        steptext: qsTr("Move Arm")
                                        onClicked: {
                                            console.log("Armed Moved At: " + dial1.dialvalue)
                                        }
                                    }

                                    HoverButton {
                                        id: homebtn
                                        anchors.verticalCenter: parent.verticalCenter
                                        stepcolor: "#889ab9"
                                        stepcolortext: "white"
                                        steptext: qsTr("Home")
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
                            id: ap_B
                            color: "#ffffff"
                            aptext: "Axis B \n Position"
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
                                    dialvalue: ax2
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
                                    width: parent.width * 0.3
                                    height: parent.height * 0.7
                                    color: Style.secondary
                                    border.color: "black"
                                    border.width: 1
                                    radius: 5
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
                            width: parent.width - ap_A.width - rectangle7.width
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
                                    value: dial11.dialvl2 //|| ax2
                                    width: parent.width * 0.5
                                    anchors.verticalCenter: parent.verticalCenter
                                    stepSize: 1
                                    to: 110
                                    from: -110
                                    ToolTip {
                                        parent: slider2.handle
                                        visible: slider2.pressed
                                        text: slider2.value
                                    }
                                    Connections {
                                        target: slider2
                                        function onValueChanged() {
                                            dial11.dialvalue = slider2.value
                                            ax2_sl2 = slider2.value ? slider2.value : 0
                                        }
                                    }
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
                                    spacing: 5
                                    width: parent.width * 0.5
                                    height: parent.height
                                    anchors.verticalCenter: parent.verticalCenter
                                    Item {
                                        width: parent.width * 0.4
                                        height: parent.height
                                    }

                                    HoverButton {
                                        id: movearm2
                                        anchors.verticalCenter: parent.verticalCenter
                                        stepcolor: "#7d00ff"
                                        stepcolortext: "white"
                                        steptext: qsTr("Move Arm")
                                        onClicked: {
                                            console.log("Armed Moved At: " + dial11.dialvalue)
                                        }
                                    }

                                    HoverButton {
                                        id: homebtn2
                                        anchors.verticalCenter: parent.verticalCenter
                                        stepcolor: "#889ab9"
                                        stepcolortext: "white"
                                        steptext: qsTr("Home")
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
