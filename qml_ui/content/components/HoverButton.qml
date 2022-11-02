import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Button {
    id: addstep
    property string steptext
    property color hovercol: "#4286fb"
    property color stepcolor
    property color inerbord: "#8204e4"
    property int radiuso: 5
    property int radiusi : 5
    width: parent.width * 0.5
    height: parent.height * 0.5
    property color clickcol: "#1277ee"
    property bool downarrow
    property color stepcolortext: Style.tertiary

    Text {
        id: text1
        width: parent.width * 0.75
        verticalAlignment: Text.AlignVCenter
        anchors.horizontalCenter: parent.horizontalCenter
        color: stepcolortext
        text: qsTr(steptext)
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: Style.font12 ? Style.font12 : 12
        horizontalAlignment: Text.AlignHCenter
        fontSizeMode: Text.Fit
        minimumPixelSize: 2
    }

    background: Rectangle {
        id: outer
        anchors.fill: parent
        color: stepcolor
        radius: radiuso

        Rectangle {
            id: iner
            anchors.fill: parent
            border.color: inerbord
            border.width: 2
            color: clickcol
            visible: false
            radius: radiusi
        }
    }

    onPressedChanged: {
        if (addstep.pressed) {
            iner.visible = true
        } else {
            iner.visible = false
        }
    }

    onHoveredChanged: {
        if (addstep.hovered) {

            outer.color = hovercol
        } else {
            outer.color = stepcolor
        }
    }
}
