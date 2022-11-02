import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 6.0
import "../theme"

Button {

    id: customButton
    property url buttonIcon: "../images/Home.svg"
    property string buttonText
    property color btnColorDefault: "#00000000"
    property color btnColorMouseOver: "#40265d"
    property color btnColorClicked: "#00a1f1"
    property int btnRadius: 5
    checked: false
    checkable: true
    background: Rectangle {
        id: bgBtn
        color: internal.dynamicColor
        radius: btnRadius
        anchors.fill: parent
        anchors.margins: 3
    }

    QtObject {
        id: internal
        property var dynamicColor: if (customButton.down) {
                                       customButton.down ? btnColorClicked : btnColorDefault
                                   } else {
                                       customButton.hovered ? btnColorMouseOver : btnColorDefault
                                   }
    }
    IconImage {
        id: custom_icon
        clip: true
        source: buttonIcon
        fillMode:IconImage.PreserveAspectFit
        anchors.horizontalCenter: parent.horizontalCenter
        height: parent.height * 0.50
        width:  parent.width * 0.55
        anchors.verticalCenter: parent.verticalCenter
    }
}
