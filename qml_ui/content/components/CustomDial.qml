import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Rectangle {
    width: parent.width
    height: parent.height
    border.color: Style.bordershallow
    property string degreesym: "\u00B0"
    property int dialvalue: dial.value
    property int dialvl2: dial.value

    Rectangle {
        id: rectangle
        width: parent.width
        height: parent.height
        color: Style.secondary
        Item {
            anchors.top: parent.top
            anchors.topMargin: 10
            height: parent.height * 0.7
            width: parent.width * 0.7
            anchors.horizontalCenter: parent.horizontalCenter
            Dial {
                id: dial
                        anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                height:Math.min(parent.width * 0.98, parent.height * 0.98)
                width: Math.min(parent.width * 0.98, parent.height * 0.98)
                value: dialvalue
                to: 110
                stepSize: 1
                from: -110
                background: Rectangle {
                    x: dial.width / 2 - width / 2
                    y: dial.height / 2 - height / 2
                    // width: Math.max(64, Math.min(dial.width, dial.height))
                    // height: width
                    color: "#1f1f1f"
                    radius: 90
                    border.color: "#545454"
                    opacity: dial.enabled ? 1 : 0.3
                }
            }
        }

        Item {
            id: item1
            width: parent.width * 0.4
            height: parent.height * 0.2
            anchors.bottom: parent.bottom

            Text {
                id: dialmin
                text: qsTr("Min: -110")
                font.pixelSize: Style.font12 ? Style.font12 : 12
                width: parent.width * 0.78
                horizontalAlignment: Text.AlignRight
                minimumPixelSize: 2
                height: parent.height
                color: Style.tertiary
                fontSizeMode: Text.Fit
                anchors.right: text5.left
            }
            Text {
                id: text5
                text: degreesym
                font.pixelSize: Style.font12 ? Style.font12 : 12
                fontSizeMode: Text.Fit
                color: Style.tertiary
                minimumPixelSize: 2
                width: parent.width * 0.2
                height: parent.height
                anchors.right: parent.right
            }
        }

        Item {
            id: item2
            width: parent.width * 0.62
            height: parent.height * 0.2
            anchors.bottom: parent.bottom

            Text {
                id: dialmax
                text: qsTr("Max:110")
                color: Style.tertiary
                font.pixelSize: Style.font12 ? Style.font12 : 12
                horizontalAlignment: Text.AlignRight
                minimumPixelSize: 2
                fontSizeMode: Text.Fit
                width: parent.width * 0.4
                height: parent.height
                anchors.left: parent.right
            }
            Text {
                id: text3
                text: degreesym
                font.pixelSize: Style.font12 ? Style.font12 : 12
                fontSizeMode: Text.Fit
                color: Style.tertiary
                minimumPixelSize: 2
                width: parent.width * 0.2
                height: parent.height
                anchors.left: dialmax.right
            }
        }
    }
}
