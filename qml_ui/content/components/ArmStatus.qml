import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Rectangle {
    id: rectangle
    property string aptext
    property string axisangle
    property string degreeSymbol: "\u00B0"
    property int borderWidth: 1
    property string armstatus
    radius: 8
    border.color: "black"
    gradient: Gradient {

        GradientStop {
            position: 0.34
            color: Style.primary
        }

        GradientStop {
            position: 0.32
            color: "black"
        }

        GradientStop {
            position: 0.32
            color: Style.secondary
        }
        orientation: Gradient.Horizontal
    }
    color: Style.colorshallow

    width: 1000
    height: 500

    Row {
        id: column
        spacing: 2
        width: parent.width * 0.92
        height: parent.height * 0.95
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        Rectangle {
            id: rectangle1
            width: parent.width * 0.33
            height: parent.height
            color: "transparent"

            Item {
                id: squareCorners8
                width: parent.width
                height: parent.height * 0.96
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter

                Column {
                    id: column1
                    spacing: 3
                    topPadding: 2
                    width: parent.width * 0.90
                    height: parent.height * 0.90
                    anchors.bottom: parent.bottom

                    PlcOnOff {
                        id: plcOnOff
                        width: parent.width
                        height: parent.height * 0.4

                        Connections {
                            target: plcOnOff
                            function onCheckedChanged() {

                                if (plcOnOff.checked == true) {
                                    armstatuscode.text = qsTr("PARK")
                                } else {
                                    armstatuscode.text = qsTr("In Transit")
                                }
                            }
                        }
                    }
                    Text {
                        id: rr1text
                        text: qsTr("0.9 ")
                        height: parent.height * 0.4
                        width: parent.width
                        color: Style.tertiary
                        font.pixelSize: 10
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                    }
                }
            }
        }
        Item {
            id: tem2t
            width: parent.width * 0.63
            height: parent.height
            Item {
                id: squareCorners3
                anchors.fill: parent

                Column {
                    id: column2
                    width: parent.width * 0.95

                    height: parent.height * 0.95
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    Text {
                        id: armstatuscode
                        text: qsTr("DISABLED")
                        height: parent.height * 0.45
                        width: parent.width
                        color: Style.tertiary
                        font.pixelSize: 10
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                    }
                    Item {
                        width: parent.width
                        height: parent.height * 0.5
                        Item {
                            id: bar
                            width: parent.width
                            height: parent.height * 0.7
                            Row {
                                id: tt
                                anchors.fill: parent

                                Rectangle {
                                    id: rectangle3
                                    width: parent.width * 0.1
                                    height: parent.height
                                    color: "#c14085"
                                }

                                Rectangle {
                                    id: rectangle4
                                    width: parent.width * 0.4
                                    height: parent.height
                                    color: "#a897fe"
                                }

                                Rectangle {
                                    id: rectangle5
                                    width: parent.width * 0.3
                                    height: parent.height
                                    color: "#fab800"
                                }

                                Rectangle {
                                    id: rectangle6
                                    width: parent.width * 0.2
                                    height: parent.height
                                    color: "#00a492"
                                }
                            }
                        }
                        Item {
                            id: namewid
                            width: parent.width
                            height: parent.height * 0.3
                            anchors.bottom: parent.bottom
                            Text {
                                id: armstatuscode0
                                text: qsTr("0 ")
                                leftPadding: 5
                                color: Style.tertiary
                                font.pixelSize: 5
                                fontSizeMode: Text.Fit
                                minimumPixelSize: 2
                            }

                            Text {
                                id: armstatuscode30
                                rightPadding: 5
                                anchors.right: parent.right
                                text: qsTr("30 ")
                                color: Style.tertiary
                                font.pixelSize: 5
                                fontSizeMode: Text.Fit
                                minimumPixelSize: 2
                            }
                        }
                    }
                }
            }
        }
    }
}
