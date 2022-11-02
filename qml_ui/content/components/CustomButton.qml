import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Button {
    id: customButton
    property url buttonIcon: "../images/Home.svg"
    property string buttonText
    property bool icon_left: true
    property bool icon_right
    property color checkedcolor: Style.primary
    property color uncheckedcolor: Style.secondary
    property alias custom_icon: custom_icon_left
    property alias custom_icon_left: custom_icon_left
    property alias custom_icon_right: custom_icon_right
    autoExclusive: true

    Item {
        id: text_in
        anchors.left: custom_icon_left.right
        width: parent.width * 0.6
        height: parent.height * 0.7
        anchors.verticalCenter: parent.verticalCenter
        Text {
            id: tt
            anchors.fill: parent
            text: qsTr(buttonText)
            color: Style.tertiary
            font.pixelSize: Style.font20 ? Style.font20 : 20
            horizontalAlignment: Text.AlignHCenter
            fontSizeMode: Text.Fit
            minimumPixelSize: 2
        }
    }

    background: Rectangle {
        anchors.fill: customButton
        color: parent.checked ? checkedcolor : (parent.hovered ? checkedcolor : uncheckedcolor)
    }
    IconImage {
        id: custom_icon_left
        source: buttonIcon
        visible: icon_left
        width: parent.width * 0.2
        height: parent.height
    }
    IconImage {
        id: custom_icon_right
        source: buttonIcon
        anchors.left: text_in.right
        visible: icon_right
        anchors.verticalCenter: parent.verticalCenter
        width: parent.width * 0.2
        height: parent.height * 0.5
    }
}