import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Button {

    id: customButton
    property string buttonText
    property string iconText
    property url buttonIcon
    property real space_item: 0.185
    Item {
        id: item1

        anchors.fill: parent
        Item {
            id: custom_icon
            width: parent.width * 0.20
            height: parent.height
            anchors.left: parent.left

            Text {
                text: iconText
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 20
                font.family: Style.fonticon.name
                color: "#3393d3"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenter: parent.horizontalCenter
                fontSizeMode: Text.Fit
                minimumPixelSize: 2
            }
        }
        Item{
            id: space
            height: parent.height
            width: parent.width * space_item
            anchors.left: custom_icon.right
        }

        Item {
            id: name
            height: parent.height
            width: parent.width * 0.78
            anchors.left: space.right
            anchors.leftMargin: 0

            Text {
                id: text_in
                text: qsTr(buttonText)
                anchors.fill: parent
                color: Style.tertiary
                font.pixelSize: Style.font15 ? Style.font15: 13
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                fontSizeMode: Text.Fit
                minimumPixelSize: 2
            }
        }
    }

    background: Rectangle {
        anchors.fill: parent
        color: "transparent"
    }
}
