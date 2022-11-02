import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Rectangle {
    id: rectangle3
    width: 400
    color: Style.secondary
    border.color: Style.bordershallow
    property alias toprightarm: toprightarm
    property alias topleftarm: topleftarm
    property alias bottomrightarm: bottomrightarm
    property alias bottomleftarm: bottomleftarm

    property string robottext
    Column {

        height: parent.height * 0.95
        width: parent.width

        Rectangle {
            id: item7
            width: parent.width
            height: parent.height
            color: Style.secondary

            Image {
                id: arm
                x: parent.width*0.30
                z: 1
                antialiasing: true
                source: "../images/arm.svg"
                anchors.topMargin: 0
                anchors.horizontalCenterOffset: 32
                clip: true
                anchors.top: parent.top
                sourceSize.height: parent.height * 0.85
                sourceSize.width: parent.width * 0.50
            }
            Button {
                id: bottomleftarm
                x: parent.width * 0.09
                y: parent.height * 0.64
                height: parent.height * 0.2
                width: parent.width * 0.18
                background: Rectangle {
                    anchors.fill: parent
                    color: Style.secondary
                }

                Item {
                    id: img
                    height: parent.height
                    width: parent.width

                    Text {

                        text: "\ue927"
                        rotation: 10
                        font.family: Style.fonticon.name
                        anchors.fill: parent
                        color: "#0d74c9"
                        font.pixelSize: 100
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                    }
                }
            }
            Button {
                id: bottomrightarm
                x: parent.width * 0.455
                y: parent.height * 0.785
                height: parent.height * 0.18
                width: parent.width * 0.22
                background: Rectangle {
                    anchors.fill: parent

                    color: Style.secondary
                }

                Item {
                    id: img45
                    height: parent.height

                    width: parent.width

                    Text {

                        text: "\ue928"
                        font.family: Style.fonticon.name
                        anchors.fill: parent
                        color: "#0d74c9"
                        rotation: 33
                        font.pixelSize: 100
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                    }
                }
            }
            Button {
                id: topleftarm
                x: parent.width * 0.08
                y: parent.height * 0.1
                height: parent.height * 0.2
                width: parent.width * 0.18
                Item {

                    height: parent.height

                    width: parent.width

                    Text {

                        text: "\ue927"
                        font.family: Style.fonticon.name
                        anchors.fill: parent
                        color: "#0d74c9"
                        font.pixelSize: 100
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                    }
                }
                background: Rectangle {
                    anchors.fill: parent
                    color: Style.secondary
                }
            }
            Button {
                id: toprightarm

                x: parent.width * 0.57
                y: parent.height * 0.115
                height: parent.height * 0.18
                width: parent.width * 0.22
                background: Rectangle {
                    anchors.fill: parent
                    color: Style.secondary
                }
                Item {
                    id: im89

                    height: parent.height

                    width: parent.width

                    Text {

                        text: "\ue928"

                        font.family: Style.fonticon.name
                        anchors.fill: parent
                        color: "#0d74c9"
                        font.pixelSize: 100
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                    }
                }
            }
        }
    }
}
