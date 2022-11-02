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
    border.color: Style.poprect1
    property alias slider: slider
        property alias applytoall: applytoall
            property alias apply: apply
                property alias cancel: cancel
                    property alias ap: slider.value

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
                                            text: qsTr("Change Torque")
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
                                                text: qsTr("Axis Current")
                                                height: parent.height / 2
                                                width: parent.width / 2
                                                color: Style.tertiary
                                                font.pixelSize: Style.font20 ? Style.font20 : 20
                                                verticalAlignment: Text.AlignVCenter
                                                fontSizeMode: Text.Fit
                                                minimumPixelSize: 2
                                            }
                                            Row {
                                                width: parent.width
                                                height: parent.height / 2
                                                spacing: 10
                                                Rectangle {
                                                    id: rectangle
                                                    width: parent.width / 2
                                                    height: parent.height
                                                    color: Style.poprect2
                                                    border.color: Style.bordercolor2
                                                    Text {
                                                        id: axis_current_value
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
                                                        id: ampere
                                                        text: qsTr("A")
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
                                                    anchors.fill: parent
                                                    color: Style.colorshallow
                                                }

                                                Text {
                                                    id: plus_logo
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
                                                    id: minus_logo
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
                                                    text: qsTr("100%")
                                                    anchors.verticalCenter: parent.verticalCenter
                                                    height: parent.height / 2
                                                    width: parent.width
                                                    color: Style.tertiary2
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

                                Column {
                                    id: column2
                                    width: parent.width
                                    height: parent.height * 0.30
                                    Item {
                                        id: item1c
                                        width: parent.width * 0.4
                                        height: parent.height

                                        Column {
                                            anchors.fill: parent

                                            Text {
                                                text: qsTr("Calculated Dynamic Torque")
                                                height: parent.height / 2
                                                width: parent.width / 1
                                                color: Style.tertiary
                                                font.pixelSize: Style.font20 ? Style.font20 : 20
                                                verticalAlignment: Text.AlignVCenter
                                                fontSizeMode: Text.Fit
                                                minimumPixelSize: 2
                                            }

                                            Row {
                                                width: parent.width
                                                height: parent.height / 2
                                                spacing: 10

                                                Rectangle {
                                                    id: rectanglev
                                                    width: parent.width / 2
                                                    height: parent.height
                                                    color: Style.poprect2
                                                    border.color: Style.bordercolor2
                                                    Text {
                                                        text: (slider.value )* 9.5
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
                                                        text: qsTr("Ncm")
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
                                }

                                Rectangle {
                                    id: item4
                                    width: parent.width
                                    height: parent.height * 0.17
                                    color: Style.colorshallow
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
