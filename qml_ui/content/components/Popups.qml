import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Popup {
    id: pop
    padding: 5
    width: parent.width * 0.5
    height: parent.height * 0.6
    anchors.centerIn: parent
    // modal: Qt.NonModal
    modal: false
      background: Rectangle {
        radius: 5
        border.color: 'gray'
        color:  Style.backcolor
    }
    enter: Transition {
        NumberAnimation {
            property: "opacity"
            from: 0.0
            to: 1.0
        }
    }
    closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent
}