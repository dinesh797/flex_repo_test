import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 6.0
import "../theme"

Rectangle {
    color: "#000000"
    width: parent.width
    height: parent.height
    radius: 5
    border.color: "black"
    property string ss
    property string step1_axB
    property string step1_axA
    property string step2_axA
    property string step2_axB
    property string step3_axB
    property string step3_axA

    gradient: Gradient {
        orientation: Gradient.Vertical
        GradientStop {
            position: 0.25
            color: Style.secondary
        }

        GradientStop {
            position: 0.25
            color: Style.primary
        }
        GradientStop {
            position: 0.25
            color: "black"
        }
        GradientStop {
            position: 0.25
            color: Style.primary
        }
    }

    Column {
        id: column
        width: parent.width
        height: parent.height

        Item {
            width: parent.width
            height: parent.height * 0.25

            Row {
                anchors.fill: parent
                Item {

                    width: parent.width * 0.47
                    height: parent.height
                    Text {

                        width: parent.width * 0.97
                        height: parent.height
                        text: qsTr("A")
                        anchors.verticalCenter: parent.verticalCenter
                        color: Style.tertiary
                        font.pixelSize: Style.font15 ? Style.font15 : 15
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                    }
                }
                Rectangle {
                    color: "black"
                    width: parent.width * 0.0099
                    height: parent.height
                }
                Item {
                    width: parent.width * 0.5
                    height: parent.height
                    Text {
                        width: parent.width * 0.97
                        height: parent.height
                        text: qsTr("B")
                        anchors.verticalCenter: parent.verticalCenter
                        color: Style.tertiary
                        font.pixelSize: Style.font15 ? Style.font15 : 15
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                    }
                }
            }
        }
        Rectangle {
            color: "black"
            border.color: "black"
            width: parent.width
            height: parent.height * 0.0099
        }

        Item {

            width: parent.width
            height: parent.height * 0.231

            Row {
                anchors.fill: parent
                Item {
                    width: parent.width * 0.47
                    height: parent.height
                    Text {
                        id: step1_axA_text
                        width: parent.width * 0.97
                        height: parent.height
                        text: step1_axA
                        anchors.verticalCenter: parent.verticalCenter
                        color: Style.tertiary
                        font.pixelSize: Style.font15 ? Style.font15 : 15
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                    }
                }
                Rectangle {
                    color: "black"
                    width: parent.width * 0.0099
                    height: parent.height
                }
                Item {
                    width: parent.width * 0.5
                    height: parent.height
                    Text {
                        id: step1_axB_text
                        width: parent.width * 0.97
                        height: parent.height
                        text: qsTr(step1_axB)
                        anchors.verticalCenter: parent.verticalCenter
                        color: Style.tertiary
                        font.pixelSize: Style.font15 ? Style.font15 : 15
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                    }
                }
            }
        }
        Rectangle {
            color: "black"
            border.color: "black"
            width: parent.width
            height: parent.height * 0.0099
        }
        Item {

            width: parent.width
            height: parent.height * 0.231

            Row {
                anchors.fill: parent
                Item {
                    width: parent.width * 0.47
                    height: parent.height
                    Text {
                        id: step2_axA_text
                        width: parent.width * 0.97
                        height: parent.height
                        text: step2_axA
                        anchors.verticalCenter: parent.verticalCenter
                        color: Style.tertiary
                        font.pixelSize: Style.font15 ? Style.font15 : 15
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                    }
                }
                Rectangle {
                    color: "black"
                    width: parent.width * 0.0099
                    height: parent.height
                }
                Item {
                    width: parent.width * 0.5
                    height: parent.height
                    Text {
                        id: step2_axB_text
                        width: parent.width * 0.97
                        height: parent.height
                        text: step2_axB
                        anchors.verticalCenter: parent.verticalCenter
                        color: Style.tertiary
                        font.pixelSize: Style.font15 ? Style.font15 : 15
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                    }
                }
            }
        }
        Rectangle {
            color: "black"
            border.color: "black"
            width: parent.width
            height: parent.height * 0.0099
        }

        Item {

            width: parent.width
            height: parent.height * 0.231

            Row {
                anchors.fill: parent
                Item {

                    width: parent.width * 0.47
                    height: parent.height
                    Text {
                        id: step3_axA_text
                        width: parent.width * 0.97
                        height: parent.height
                        text: step3_axA
                        anchors.verticalCenter: parent.verticalCenter
                        color: Style.tertiary
                        font.pixelSize: Style.font15 ? Style.font15 : 15
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                    }
                }
                Rectangle {
                    color: "black"
                    border.color: "black"
                    width: parent.width * 0.0099
                    height: parent.height
                }
                Item {
                    width: parent.width * 0.5
                    height: parent.height
                    Text {
                        id: step3_axB_text
                        width: parent.width * 0.97
                        height: parent.height
                        text: step3_axB
                        anchors.verticalCenter: parent.verticalCenter
                        color: Style.tertiary
                        font.pixelSize: Style.font15 ? Style.font15 : 15
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