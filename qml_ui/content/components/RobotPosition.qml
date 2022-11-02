import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Rectangle {
    id: rectangle4
    property alias slider2: slider2
    property alias upval: dial1.dialvalue
    property alias downval: dial11.dialvalue
    property alias dial11: dial11
    property alias dial1: dial1
    property alias slider: slider
    property string axisname
    property alias movearm2: movearm2
    property alias movearm: movearm
    color: "#1c1c1f"
    property alias rp_vc2: rp_vc2
    property alias rp_vc1: rp_vc1

    ColumnLayout {
        id: column1q
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width * 0.95
        height: parent.height * 0.95
        anchors.verticalCenter: parent.verticalCenter
        Text {
            id: adjusttext
            Layout.preferredHeight: parent.height * 0.040
            Layout.preferredWidth: parent.width
            text: qsTr("Robot positions ")
            font.pixelSize: Style.font15 ? Style.font15 : 15 ? Style.font15 : 15
            horizontalAlignment: Text.AlignLeft
            color: Style.tertiary
            verticalAlignment: Text.AlignTop
            leftPadding: 0
            font.hintingPreference: Font.PreferDefaultHinting
            style: Text.Normal
            fontSizeMode: Text.Fit
            minimumPixelSize: 2
        }

        Rectangle {
            id: rectangle5
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: Style.hoverprimary

            Column {
                id: column2
                anchors.fill: parent
                spacing: 5

                Rectangle {
                    id: toprec
                    width: parent.width
                    height: parent.height * 0.4
                    color: Style.secondary

                    Row {
                        id: row1q
                        anchors.fill: parent

                        AxisPositionText {
                            id: rectangle6
                            color: "#ffffff"
                            aptext: qsTr("Axis A \n Position")
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
                                    width: parent.width
                                    height: parent.height
                                    dialvalue: slider.value
                                }
                            }

                            Item {
                                id: rectangle8
                                width: parent.width
                                height: parent.height * 0.3
                                anchors.bottom: parent.bottom
                                Rectangle {
                                    id: rectangle9
                                    width: parent.width * 0.5
                                    height: parent.height * 0.6
                                    color: Style.secondary
                                    border.color: "black"
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
                            width: parent.width - rectangle6.width - rectangle7.width
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
                                        stepcolortext: "white"
                                        steptext: qsTr("Move Arm")
                                        onClicked: {
                                            console.log(dial1.dialvalue)
                                        }
                                    }

                                    HoverButton {
                                        id: homebtn
                                        anchors.verticalCenter: parent.verticalCenter
                                        stepcolor: "#889ab9"
                                        stepcolortext: "white"
                                        steptext: qsTr("Home")

                                        onClicked: {

                                            console.log("Home button clicked")
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                Rectangle {
                    color: Style.secondary
                    width: parent.width
                    height: parent.height * 0.088
                    Rectangle {
                        id: item1
                        color: Style.colorshallow
                        width: parent.width / 4
                        height: parent.height

                        Row {
                            id: rff
                            width: parent.width
                            height: parent.height * 0.55
                            anchors.verticalCenter: parent.verticalCenter

                            Row {
                                width: parent.width
                                height: parent.height
                                spacing: 0
                                Rectangle {
                                    id: ff
                                    color: Style.colorshallow
                                    width: parent.width / 2
                                    height: parent.height
                                    Text {
                                        id: text1
                                        width: parent.width
                                        verticalAlignment: Text.AlignVCenter
                                        anchors.horizontalCenter: parent.horizontalCenter
                                        color: Style.tertiary
                                        text: qsTr("Vaccume Cups:  ")
                                        anchors.verticalCenter: parent.verticalCenter
                                        font.pixelSize: Style.font20 ? Style.font20 : 20
                                        horizontalAlignment: Text.AlignHCenter
                                        fontSizeMode: Text.Fit
                                        minimumPixelSize: 2
                                    }
                                }

                                OnOff {
                                    id: rp_vc1
                                    width: parent.width / 2
                                    height: parent.height
                                    
                                }
                            }
                        }
                    }
                }
                Rectangle {

                    width: parent.width
                    height: parent.height * 0.4
                    color: Style.secondary
                    Row {
                        id: row3
                        anchors.fill: parent

                        AxisPositionText {
                            id: rectangle66
                            color: "#ffffff"
                            aptext: qsTr("Axis B \n Position")
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

                            Item {
                                id: rectangle88
                                width: parent.width
                                height: parent.height * 0.3
                                anchors.bottom: parent.bottom
                                Rectangle {
                                    id: rectangle99
                                    width: parent.width * 0.5
                                    height: parent.height * 0.6
                                    color: Style.secondary
                                    border.color: 'black'
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
                            width: parent.width - rectangle6.width - rectangle7.width
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
                                        stepcolortext: "white"
                                        steptext: qsTr("Move Arm")
                                        onClicked: {
                                            console.log(dial11.dialvalue)
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
                Rectangle {
                    color: Style.secondary
                    width: parent.width
                    height: parent.height * 0.088

                    Item {
                        id: item11
                        width: parent.width / 4
                        height: parent.height

                        Row {
                            id: rff1
                            width: parent.width
                            height: parent.height * 0.55
                            anchors.verticalCenter: parent.verticalCenter

                            Row {
                                width: parent.width
                                height: parent.height
                                spacing: 0
                                Item {
                                    id: ff1
                                    width: parent.width / 2
                                    height: parent.height
                                    Text {
                                        id: text11
                                        width: parent.width
                                        verticalAlignment: Text.AlignVCenter
                                        anchors.horizontalCenter: parent.horizontalCenter
                                        color: Style.tertiary
                                        text: qsTr("Vaccume Cups:  ")
                                        anchors.verticalCenter: parent.verticalCenter
                                        font.pixelSize: Style.font20 ? Style.font20 : 20
                                        horizontalAlignment: Text.AlignHCenter
                                        fontSizeMode: Text.Fit
                                        minimumPixelSize: 2
                                    }
                                }

                                OnOff {
                                    id: rp_vc2
                                    width: parent.width / 2
                                    height: parent.height
                                    
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
