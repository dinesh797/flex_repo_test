import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Button {
    id: button
    autoExclusive: true
    checkable: true
    property string buttontext

    background: Rectangle {
        
        anchors.fill: parent
        color: parent.checked ? "transparent" : Style.btnSelect_tgl_light
        border.color: parent.checked ? Style.bordercol : (parent.hovered ? "#8204e4" : "#252529")
        border.width: Style.borderwidth
        radius: 0
    }

    Text {
        id: text1
        text: qsTr(buttontext)
        anchors.verticalCenter: parent.verticalCenter
        width: parent.width * 0.95
        color: Style.tertiary
        height: parent.height
        minimumPixelSize: 2
        font.pixelSize: Style.font12 ? Style.font12 : 12
        wrapMode: Text.WordWrap
        fontSizeMode: Text.Fit
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        anchors.horizontalCenter: parent.horizontalCenter
    }
    Text {

        text: "\u0066"
        font.family: Style.fonticon.name
        color: Style.tertiary
        width: parent.width * 0.10
        height: parent.height
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        font.pixelSize: Style.font20 ? Style.font20 : 20
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        fontSizeMode: Text.Fit
        minimumPixelSize: 2
    }
}
