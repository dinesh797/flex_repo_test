import QtQuick
import QtQuick.Controls
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
    color: "#ffffff"
    border.color: Style.bordershallow

    Column {
        id: column
        width: parent.width
        height: parent.height
        Rectangle {
            id: rectangle1
            width: parent.width
            height: parent.height / 2
            color: Style.secondary
            Rectangle {
                id: roundCorners
                color: Style.hoverprimary
                radius: 10
                border.width: borderWidth
                anchors.fill: parent
            }
            Rectangle {
                id: squareCorners
                color: Style.hoverprimary
                border.width: borderWidth
                anchors.fill: parent
                anchors.topMargin: 10
            }
            Rectangle {
                id: squareCorners8
                color: Style.hoverprimary
                anchors.fill: parent
                anchors.leftMargin: 1.1
                anchors.topMargin: 7
                anchors.rightMargin: 1.1
                anchors.bottomMargin: 7
            }
            Text {
                id: text1
                width: parent.width * 0.85
                color: Style.tertiary
                text: aptext
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenter: parent.horizontalCenter
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: Style.font10
                fontSizeMode: Text.Fit
                minimumPointSize: 2
            }
        }
        Rectangle {
            id: rectangle2
            width: parent.width
            height: parent.height / 2
            color: Style.secondary
            Rectangle {
                id: roundCorners2
                color: Style.secondary
                radius: 10
                border.width: borderWidth
                anchors.fill: parent
            }
            Rectangle {
                id: squareCorners2
                color: Style.secondary
                border.width: borderWidth
                anchors.fill: parent
                anchors.bottomMargin: 10
            }
            Rectangle {
                id: squareCorners3
                color: Style.secondary
                anchors.fill: parent
                anchors.leftMargin: 1.1
                anchors.topMargin: 7
                anchors.rightMargin: 1.1
                anchors.bottomMargin: 7
            }
            Rectangle {
                id: row
                width: parent.width * 0.9
                color: Style.secondary
                height: parent.height * 0.5
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter

                Item {
                    id: item1
                    width: parent.width ** 0.8
                    height: parent.height
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter

                    Text {
                        id: text4
                        height: parent.height
                        color: Style.tertiary
                        width: parent.width
                        text: axisangle
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: Style.font20 ? Style.font20 : 20
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                    }
                    Text {
                        id: text5
                        height: parent.height
                        color: Style.tertiary
                        width: parent.width * 0.6
                        text: degreeSymbol
                        anchors.left: text4.right
                        font.pixelSize: Style.font20 ? Style.font20 : 20
                        horizontalAlignment: Text.AlignLeft
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                    }
                }
            }
        }
    }
}
