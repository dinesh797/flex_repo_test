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
        radius: 10
    }
    IconImage {
        id: custom_icon
        anchors.fill: parent
        source: "../images/on(1).png"
    }

    onCheckedChanged: {
        //        if (button.checked) {
        //            custom_icon.source = "../images/on(1).png"
        //        } else {
        //            custom_icon.source = "../images/off (1).png"
        //        }
        if (button.enabled == false) {
            custom_icon.source = "../images/offcheck2.png"
        } else {

            if (button.checked) {
                custom_icon.source = "../images/on(1).png"
            } else {
                custom_icon.source = "../images/off (1).png"
            }
        }
    }

    onEnabledChanged: {
        if (button.enabled == false) {
            custom_icon.source = "../images/offcheck2.png"
        } else {

            if (button.checked) {
                custom_icon.source = "../images/on(1).png"
            } else {
                custom_icon.source = "../images/off (1).png"
            }
        }
    }
}
