import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0
// import QtGraphicalEffects

Button {

    id: customButton
    property color buttoncolor
    property string buttonText
    property string buttonIcon
    checkable: true
    autoExclusive: true
    Rectangle {
        id: line
        visible: customButton.checked? true : false
        height: parent.height
        width: parent.width * 0.015
        gradient: Gradient {
            GradientStop {
                position: 0.005
                color: "transparent"
            }
            GradientStop {
                position: 0.19
                color: "#0fd77b"
            }
            GradientStop {
                position: 0.53
                color: "#0d99a9"
            }
            GradientStop {
                position: 0.83
                color: "#f879b4b9"
            }
            GradientStop {
                position: 0.99
                color: "transparent"
            }
        }
    }

    Item {
        id: name
        height: parent.height / 2
        anchors.verticalCenter: parent.verticalCenter
        width: parent.width * 0.68
        anchors.left: custom_icon.right

        Text {
            id: text_in
            text: qsTr(buttonText)
            anchors.fill: parent
            color: Style.tertiary
            font.pixelSize: Style.font20 ? Style.font20 : 20
            verticalAlignment: Text.AlignVCenter
            fontSizeMode: Text.Fit
            minimumPixelSize: 2
        }
    }

    background: Rectangle {

        anchors.fill: customButton

        color: buttoncolor
    }
    Text {
        id: custom_icon
        text: buttonIcon
        font.family: Style.fonticon.name
        color: Style.tertiary
        width: parent.width * 0.2
        height: parent.height * 0.70
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        font.pixelSize: Style.font20 ? Style.font20 : 20
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        fontSizeMode: Text.Fit
        minimumPixelSize: 2
    }
}
