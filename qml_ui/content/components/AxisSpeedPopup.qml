import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
// import "../pages"
import "../theme"
// import QtQuick.Layouts 6.0

Rectangle {
    id: changeboxpop
    width: parent.width / 3
    height: parent.height / 3
    color: Style.poprect1
    border.color: Style.poprect1

    property alias slider: slider
        property alias applytoall: applytoall
            property alias apply: apply
                property alias cancel: cancel
                    property alias ap1: slider.value
                        property alias ap2: slider2.value

                            Rectangle {
                                id: rec2
                                width: parent.width * 0.96
                                height: parent.height * 0.96
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
                                                text: qsTr("Change Axis Speed ")
                                                height: parent.height
                                                width: parent.width
                                                color: Style.tertiary
                                                font.pixelSize: Style.font20 ? Style.font20 : 20
                                                verticalAlignment: Text.AlignVCenter
                                                fontSizeMode: Text.Fit
                                                minimumPixelSize: 2
                                            }
                                        }
                                    }

                                    Row {
                                        id: row
                                        width: parent.width
                                        height: parent.height * 0.3

                                        Item {
                                            id: item1
                                            width: parent.width * 0.39
                                            height: parent.height

                                            Column {
                                                id: column1
                                                anchors.fill: parent

                                                Text {
                                                    id: rr1text1
                                                    text: qsTr("Axis A Speed")
                                                    height: parent.height / 2
                                                    width: parent.width / 2
                                                    color: Style.tertiary
                                                    font.pixelSize: Style.font20 ? Style.font20 : 20
                                                    verticalAlignment: Text.AlignVCenter
                                                    fontSizeMode: Text.Fit
                                                    minimumPixelSize: 2
                                                }
                                                Row {
                                                    id: row2
                                                    width: parent.width
                                                    height: parent.height / 2
                                                    spacing: 10

                                                    Rectangle {
                                                        id: rectanglev
                                                        width: parent.width / 2
                                                        height: parent.height
                                                        border.color: Style.bordercolor2
                                                        color: Style.poprect2
                                                        Text {
                                                            id: rr1text11
                                                            text: slider.value
                                                            anchors.verticalCenter: parent.verticalCenter
                                                            height: parent.height / 2
                                                            width: parent.width / 2
                                                            color: Style.tertiary
                                                            font.pixelSize: 25
                                                            horizontalAlignment: Text.AlignHCenter
                                                            verticalAlignment: Text.AlignVCenter
                                                            anchors.horizontalCenter: parent.horizontalCenter
                                                            fontSizeMode: Text.Fit
                                                            minimumPixelSize: 2
                                                        }
                                                    }
                                                    Item {
                                                        height: parent.height
                                                        width: parent.width / 5
                                                        Text {
                                                            id: ncm
                                                            text: qsTr("RPM")
                                                            anchors.verticalCenter: parent.verticalCenter
                                                            height: parent.height / 2
                                                            width: parent.width
                                                            color: Style.tertiary
                                                            font.pixelSize: 25
                                                            horizontalAlignment: Text.AlignHCenter
                                                            verticalAlignment: Text.AlignVCenter
                                                            anchors.horizontalCenter: parent.horizontalCenter
                                                            fontSizeMode: Text.Fit
                                                            minimumPixelSize: 2
                                                        }
                                                    }
                                                }
                                            }
                                        }

                                        Item {
                                            id: item3
                                            width: parent.width - column1.width
                                            height: parent.height / 2
                                            anchors.bottom: parent.bottom

                                            Row {
                                                id: row1
                                                width: parent.width
                                                spacing: 2
                                                height: parent.height / 0.9
                                                anchors.verticalCenter: parent.verticalCenter

                                                Button {
                                                    id: button
                                                    height: parent.height / 2
                                                    anchors.verticalCenter: parent.verticalCenter
                                                    width: parent.width * 0.15
                                                    background: Rectangle {
                                                        anchors.fill: button
                                                        color: "transparent"
                                                    }

                                                    Text {
                                                        id: minus_logo_axisA
                                                        text: "\uf887"
                                                        anchors.verticalCenter: parent.verticalCenter
                                                        font.family: Style.fonticon.name
                                                        color: Style.tertiary
                                                        font.pixelSize: Style.font20 ? Style.font20 : 20
                                                        horizontalAlignment: Text.AlignHCenter
                                                        verticalAlignment: Text.AlignVCenter
                                                        anchors.horizontalCenter: parent.horizontalCenter
                                                        fontSizeMode: Text.Fit
                                                        minimumPixelSize: 2
                                                    }

                                                    onClicked: slider.decrease()
                                                }

                                                Slider {
                                                    id: slider
                                                    width: parent.width * 0.5
                                                    height: parent.height
                                                    to: 10
                                                    stepSize: 1
                                                    value: 0
                                                    ToolTip {
                                                        parent: slider.handle
                                                        visible: slider.pressed
                                                        text: slider.value
                                                    }
                                                }

                                                Button {
                                                    id: button1
                                                    width: parent.width * 0.095
                                                    height: parent.height * 0.6
                                                    anchors.verticalCenter: parent.verticalCenter
                                                    background: Rectangle {
                                                        color: "transparent"
                                                        anchors.verticalCenter: parent.verticalCenter
                                                        anchors.left: parent.left
                                                        anchors.right: parent.right
                                                        anchors.top: parent.top
                                                    }

                                                    Text {
                                                        id: plus_logo_axisA
                                                        text: "\uf886"
                                                        anchors.verticalCenter: parent.verticalCenter
                                                        font.family: Style.fonticon.name
                                                        color: Style.tertiary
                                                        font.pixelSize: Style.font20 ? Style.font20 : 20
                                                        horizontalAlignment: Text.AlignHCenter
                                                        verticalAlignment: Text.AlignVCenter
                                                        anchors.horizontalCenter: parent.horizontalCenter
                                                        fontSizeMode: Text.Fit
                                                        minimumPixelSize: 2
                                                    }

                                                    onClicked: slider.increase()
                                                }
                                                Item {
                                                    id: name3
                                                    height: parent.height
                                                    width: parent.width * 0.18

                                                    Text {
                                                        id: text1
                                                        text: "100%"
                                                        anchors.verticalCenter: parent.verticalCenter
                                                        height: parent.height / 2
                                                        width: parent.width
                                                        color: Style.tertiary
                                                        font.pixelSize: Style.font20 ? Style.font20 : 20
                                                        horizontalAlignment: Text.AlignHCenter
                                                        verticalAlignment: Text.AlignVCenter
                                                        fontSizeMode: Text.Fit
                                                        minimumPixelSize: 2
                                                    }
                                                }
                                            }
                                        }
                                    }

                                    Row {
                                        id: row222
                                        width: parent.width
                                        height: parent.height * 0.3

                                        Item {
                                            id: item12
                                            width: parent.width * 0.39
                                            height: parent.height

                                            Column {
                                                id: column12
                                                anchors.fill: parent

                                                Text {
                                                    id: rr1text12
                                                    text: qsTr("Axis B Speed")
                                                    height: parent.height / 2
                                                    width: parent.width / 2
                                                    color: Style.tertiary
                                                    font.pixelSize: Style.font20 ? Style.font20 : 20
                                                    verticalAlignment: Text.AlignVCenter
                                                    fontSizeMode: Text.Fit
                                                    minimumPixelSize: 2
                                                }
                                                Row {
                                                    id: row22
                                                    width: parent.width
                                                    height: parent.height / 2
                                                    spacing: 10

                                                    Rectangle {
                                                        id: rectanglev2
                                                        width: parent.width / 2
                                                        height: parent.height
                                                        border.color: Style.bordercolor2
                                                        color: Style.poprect2
                                                        Text {
                                                            id: rr1text11v2
                                                            text: slider2.value
                                                            anchors.verticalCenter: parent.verticalCenter
                                                            height: parent.height / 2
                                                            width: parent.width / 2
                                                            color: Style.tertiary
                                                            font.pixelSize: 25
                                                            horizontalAlignment: Text.AlignHCenter
                                                            verticalAlignment: Text.AlignVCenter
                                                            anchors.horizontalCenter: parent.horizontalCenter
                                                            fontSizeMode: Text.Fit
                                                            minimumPixelSize: 2
                                                        }
                                                    }
                                                    Item {
                                                        id: f2
                                                        height: parent.height
                                                        width: parent.width / 5
                                                        Text {
                                                            id: ncm2
                                                            text: qsTr("RPM")
                                                            anchors.verticalCenter: parent.verticalCenter
                                                            height: parent.height / 2
                                                            width: parent.width
                                                            color: Style.tertiary
                                                            font.pixelSize: 25
                                                            horizontalAlignment: Text.AlignHCenter
                                                            verticalAlignment: Text.AlignVCenter
                                                            anchors.horizontalCenter: parent.horizontalCenter
                                                            fontSizeMode: Text.Fit
                                                            minimumPixelSize: 2
                                                        }
                                                    }
                                                }
                                            }
                                        }

                                        Item {
                                            id: item32
                                            width: parent.width - column12.width
                                            height: parent.height / 2
                                            anchors.bottom: parent.bottom

                                            Row {
                                                id: row12
                                                width: parent.width
                                                spacing: 2
                                                height: parent.height / 0.9
                                                anchors.verticalCenter: parent.verticalCenter

                                                Button {
                                                    id: button2
                                                    height: parent.height / 2
                                                    anchors.verticalCenter: parent.verticalCenter
                                                    width: parent.width * 0.15
                                                    background: Rectangle {
                                                        anchors.fill: button2
                                                        color: "transparent"
                                                    }

                                                    Text {
                                                        id: minus_logo_axisB
                                                        text: "\uf887"
                                                        anchors.verticalCenter: parent.verticalCenter
                                                        font.family: Style.fonticon.name
                                                        color: Style.tertiary
                                                        font.pixelSize: Style.font20 ? Style.font20 : 20
                                                        horizontalAlignment: Text.AlignHCenter
                                                        verticalAlignment: Text.AlignVCenter
                                                        anchors.horizontalCenter: parent.horizontalCenter
                                                        fontSizeMode: Text.Fit
                                                        minimumPixelSize: 2
                                                    }

                                                    onClicked: slider2.decrease()
                                                }

                                                Slider {
                                                    id: slider2
                                                    width: parent.width * 0.5
                                                    height: parent.height
                                                    to: 10
                                                    stepSize: 1
                                                    value: 0
                                                    ToolTip {
                                                        parent: slider2.handle
                                                        visible: slider2.pressed
                                                        text: slider2.value
                                                    }
                                                }

                                                Button {
                                                    id: button12
                                                    width: parent.width * 0.095
                                                    height: parent.height * 0.6
                                                    anchors.verticalCenter: parent.verticalCenter
                                                    background: Rectangle {
                                                        color: "transparent"
                                                        anchors.verticalCenter: button12.verticalCenter
                                                        anchors.left: button12.left
                                                        anchors.right: button12.right
                                                        anchors.top: button12.top
                                                    }
                                                    Text {
                                                        id: plus_logo_axisB
                                                        text: "\uf886"
                                                        anchors.verticalCenter: parent.verticalCenter
                                                        font.family: Style.fonticon.name
                                                        color: Style.tertiary
                                                        font.pixelSize: Style.font20 ? Style.font20 : 20
                                                        horizontalAlignment: Text.AlignHCenter
                                                        verticalAlignment: Text.AlignVCenter
                                                        anchors.horizontalCenter: parent.horizontalCenter
                                                        fontSizeMode: Text.Fit
                                                        minimumPixelSize: 2
                                                    }

                                                    onClicked: slider2.increase()
                                                }
                                                Item {
                                                    id: name32

                                                    height: parent.height
                                                    width: parent.width * 0.18

                                                    Text {
                                                        id: text12
                                                        text: qsTr("100%")
                                                        anchors.verticalCenter: parent.verticalCenter
                                                        height: parent.height / 2
                                                        width: parent.width
                                                        color: Style.tertiary
                                                        font.pixelSize: Style.font20 ? Style.font20 : 20
                                                        horizontalAlignment: Text.AlignHCenter
                                                        verticalAlignment: Text.AlignVCenter
                                                        fontSizeMode: Text.Fit
                                                        minimumPixelSize: 2
                                                    }
                                                }
                                            }
                                        }
                                    }

                                    Rectangle {
                                        width: parent.width
                                        height: parent.height * 0.17
                                        color: Style.poprect1
                                        anchors.right: parent.right

                                        Row {
                                            width: parent.width * 0.32
                                            height: parent.height*0.70
                                            anchors.rightMargin: 4
                                            anchors.right: parent.right
                                            anchors.bottom: parent.bottom
                                            layoutDirection: Qt.RightToLeft
                                            HoverButton {
                                                id: applytoall
                                                width: parent.width * 0.5
                                                height: parent.height
                                                anchors.verticalCenter: parent.verticalCenter
                                                steptext: qsTr("Apply to all")
                                                stepcolor: "#7d00ff"
                                    stepcolortext: "white"
                                                onClicked: slider.value
                                            }

                                            HoverButton {
                                                id: apply
                                                width: parent.width * 0.5
                                                height: parent.height
                                                anchors.verticalCenter: parent.verticalCenter
                                                steptext: qsTr("Apply")
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
                                                stepcolor: "#889ab9"
                                    stepcolortext: "white"
                                            }
                                        }
                                    }
                                }
                            }
                        }
