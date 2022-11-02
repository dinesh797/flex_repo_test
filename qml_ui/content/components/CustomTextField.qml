import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

TextField {
    id: textField
    property color colorDefault: "#1d1d2b"
    property color colorOnFocus: "#40405f"
    property color colorMouseOver: "#33334c"
    property color borderColor: "#33334c"
    property int borderWidth: 3

    QtObject {
        id: internal

        property var dynamicColor: if (textField.focus) {
                                       textField.focus ? colorOnFocus : colorDefault
                                   } else {
                                       textField.hovered ? colorMouseOver : colorDefault
                                   }
    }

    implicitWidth: 300
    implicitHeight: 40
    placeholderText: qsTr("Type something")
    color: Style.tertiary
    background: Rectangle {
        color: internal.dynamicColor
        radius: 10
        border.color: borderColor
        border.width: borderWidth
    }

    selectByMouse: true
    selectedTextColor: "#FFFFFF"
    selectionColor: "#55aaff"
    placeholderTextColor: "#55aaff"
}
