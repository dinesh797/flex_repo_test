import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Button {
    id: button
    checkable: true
    checked: true
    background: Rectangle {
        color: Style.colorshallow
        anchors.fill: parent
        radius: 0
    }
    IconImage {
        id: custom_icon
        anchors.fill: parent
        scale: 1.7
        smooth: true
        sourceSize.width: parent.width
        sourceSize.height: parent.height
        source: "../images/disabled.png"
    }

    onCheckedChanged: {
        if (button.checked) {
            custom_icon.source = "../images/yellow.png"
        } else {
            custom_icon.source = "../images/blue.png"
        }
    }

    onEnabledChanged: {
        if (button.enabled) {

        } else {
            custom_icon.source = "../images/blue.png"
        }
    }
}
