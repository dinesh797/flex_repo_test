import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Rectangle {
    id: rectangle4
    property string axisname
    property alias slider2: slider2
    property alias slider: slider

    property alias axisB_Button: axisB_Button
    property alias axisA_Button: axisA_Button
    color: Style.hoverprimary

    property int axsA_val: slider.value
    property int axsB_val: slider2.value

    ColumnLayout {
        id: column1q
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width
        height: parent.height

        Rectangle {
            id: rectangle
            Layout.preferredHeight: parent.height * 0.050
            Layout.preferredWidth: parent.width
            color: Style.secondary
            Text {
                id: adjusttext
                Layout.preferredHeight: parent.height
                Layout.preferredWidth: parent.width
                text: qsTr("Robot positions ")
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: Style.font15 ? Style.font15 : 15 ? Style.font15 : 15
                horizontalAlignment: Text.AlignLeft
                color: Style.tertiary
                verticalAlignment: Text.AlignTop
                leftPadding: 10
                font.hintingPreference: Font.PreferDefaultHinting
                style: Text.Normal
                fontSizeMode: Text.Fit
                minimumPixelSize: 2
            }
        }

        Rectangle {
            id: rectangle5
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: Style.hoverprimary

            ColumnLayout {
                id: column2
                anchors.fill: parent
                spacing: 5

                Rectangle {
                    id: toprec
                    Layout.preferredHeight: parent.height * 0.5
                    Layout.fillWidth: true
                    color: Style.secondary
                    Column {
                        id: item7
                        anchors.fill: parent
                        Item {
                            id: name
                            width: parent.width
                            height: parent.height / 8
                            Text {
                                id: axisatext
                                anchors.fill: parent
                                text: qsTr("Axis A Home Position ")
                                font.pixelSize: Style.font15 ? Style.font15 : 15 ? Style.font15 : 15
                                horizontalAlignment: Text.AlignLeft
                                color: Style.tertiary
                                verticalAlignment: Text.AlignVCenter
                                leftPadding: 10
                                anchors.rightMargin: 20
                                fontSizeMode: Text.Fit
                                minimumPixelSize: 2
                            }
                        }

                        Row {
                            id: row4
                            width: parent.width * 0.6
                            height: parent.height / 2
                            anchors.horizontalCenter: parent.horizontalCenter

                            LeftSlider {

                                id: leftbuttonA
                                width: parent.width * 0.2
                                imgsrc: "\u0064"
                                height: parent.height * 0.5
                                anchors.verticalCenter: parent.verticalCenter

                                onClicked: {
                                    if (leftbuttonA.clicked) {
                                        slider.decrease()
                                    }
                                }
                            }

                            Slider {
                                id: slider
                                width: parent.width * 0.5
                                anchors.verticalCenter: parent.verticalCenter
                                stepSize: 1
                                to: 110
                                from: -110
                                ToolTip {
                                    parent: slider.handle
                                    visible: slider.pressed
                                    text: slider.value.toFixed(1)
                                }
                            }
                            LeftSlider {
                                id: rightbuttonA
                                width: parent.width * 0.2
                                height: parent.height * 0.5
                                imgsrc: "\u0066"
                                anchors.verticalCenter: parent.verticalCenter

                                onClicked: {
                                    if (rightbuttonA.clicked) {
                                        slider.increase()
                                    }
                                }
                            }
                            Item {

                                width: parent.width * 0.35
                                height: parent.height / 2
                                anchors.verticalCenter: parent.verticalCenter

                                Rectangle {
                                    width: parent.width * 0.50
                                    height: parent.height * 0.7
                                    anchors.verticalCenter: parent.verticalCenter
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    color: Style.secondary
                                    radius: 5
                                    border.color: "black"
                                    border.width: 0.5
                                    Text {
                                        id: axis_A_Position_value
                                        text: slider.value
                                        anchors.verticalCenter: parent.verticalCenter
                                        height: parent.height
                                        width: parent.width
                                        color: Style.tertiary
                                        font.pixelSize: Style.font15 ? Style.font15 : 15 ? Style.font15 : 15
                                        horizontalAlignment: Text.AlignHCenter
                                        verticalAlignment: Text.AlignVCenter
                                        anchors.horizontalCenter: parent.horizontalCenter
                                        fontSizeMode: Text.Fit
                                        font.family: Style.fonticon.name
                                        minimumPixelSize: 2
                                    }
                                }
                            }
                        }

                        Item {
                            id: item84r
                            width: parent.width * 0.62
                            height: parent.height - row4.height

                            Item {
                                id: row54
                                width: parent.width * 1.4
                                height: parent.height * 0.8
                                anchors.right: parent.right
                                anchors.rightMargin: 0

                                HoverButton {
                                    id: axisA_Button
                                    width: parent.width / 3
                                    height: parent.height * 0.5
                                    anchors.right: parent.right
                                    anchors.rightMargin: 0
                                    stepcolor: "#1277ee"
                                    stepcolortext: "white"
                                    steptext: qsTr("Set Axis A Home Position")
                                    Connections {
                                        target: axisA_Button
                                        function onClicked() {// setting.post_robot_position(slider.value, slider2.value, "fl2")
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                Rectangle {
                    id: bottomrec
                    Layout.preferredHeight: parent.height * 0.5
                    Layout.fillWidth: true
                    color: Style.secondary
                    Column {
                        id: item74
                        anchors.fill: parent
                        Item {
                            id: name4
                            width: parent.width
                            height: parent.height / 8
                            Text {
                                id: axisatext4
                                anchors.fill: parent
                                text: qsTr("Axis B Home Position ")
                                font.pixelSize: Style.font15 ? Style.font15 : 15 ? Style.font15 : 15
                                horizontalAlignment: Text.AlignLeft
                                color: Style.tertiary
                                verticalAlignment: Text.AlignVCenter
                                leftPadding: 10
                                anchors.rightMargin: 20
                                fontSizeMode: Text.Fit
                                minimumPixelSize: 2
                            }
                        }

                        Row {
                            id: row44
                            width: parent.width * 0.6
                            height: parent.height / 2
                            anchors.horizontalCenter: parent.horizontalCenter

                            LeftSlider {

                                id: leftbuttonB
                                width: parent.width * 0.2
                                imgsrc: "\u0064"
                                height: parent.height * 0.5
                                anchors.verticalCenter: parent.verticalCenter

                                onClicked: {
                                    if (leftbuttonB.clicked) {
                                        slider2.decrease()
                                    }
                                }
                            }

                            Slider {
                                id: slider2
                                width: parent.width * 0.5
                                anchors.verticalCenter: parent.verticalCenter
                                stepSize: 1
                                to: 110
                                from: -110
                                ToolTip {
                                    parent: slider2.handle
                                    visible: slider2.pressed
                                    text: slider2.value.toFixed(1)
                                }
                            }
                            LeftSlider {
                                id: rightbuttonB
                                width: parent.width * 0.2
                                height: parent.height * 0.5
                                imgsrc: "\u0066"
                                anchors.verticalCenter: parent.verticalCenter

                                onClicked: {
                                    if (rightbuttonB.clicked) {
                                        slider2.increase()
                                    }
                                }
                            }
                            Item {

                                width: parent.width * 0.35
                                height: parent.height / 2
                                anchors.verticalCenter: parent.verticalCenter

                                Rectangle {
                                    width: parent.width * 0.50
                                    height: parent.height * 0.7
                                    anchors.verticalCenter: parent.verticalCenter
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    color: Style.secondary
                                    radius: 5
                                    border.color: "black"
                                    border.width: 0.5
                                    Text {
                                        id: axis_B_Position_value
                                        text: slider2.value
                                        anchors.verticalCenter: parent.verticalCenter
                                        height: parent.height
                                        width: parent.width
                                        color: Style.tertiary
                                        font.pixelSize: Style.font15 ? Style.font15 : 15 ? Style.font15 : 15
                                        horizontalAlignment: Text.AlignHCenter
                                        verticalAlignment: Text.AlignVCenter
                                        anchors.horizontalCenter: parent.horizontalCenter
                                        fontSizeMode: Text.Fit
                                        font.family: Style.fonticon.name
                                        minimumPixelSize: 2
                                    }
                                }
                            }
                        }

                        Item {
                            id: item84
                            width: parent.width * 0.62
                            height: parent.height - row4.height

                            Item {
                                id: row54r
                                width: parent.width * 1.4
                                height: parent.height * 0.8
                                anchors.right: parent.right
                                anchors.rightMargin: 0

                                HoverButton {
                                    id: axisB_Button
                                    width: parent.width / 3
                                    height: parent.height * 0.5
                                    anchors.right: parent.right
                                    anchors.rightMargin: 0
                                    stepcolor: "#1277ee"
                                    stepcolortext: "white"
                                    steptext: qsTr("Set Axis B Home Position")
                                    Connections {
                                        target: axisB_Button
                                        function onClicked() {
                                            console.log(slider2.value)
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
}
