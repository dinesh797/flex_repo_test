import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Button {
    id: button
    property string imgsrc
    background: Rectangle {
        // color: Style.secondary
        anchors.fill: button
        border.color: Style.bordercolor2
        color: Style.poprect2
        radius:5
        Text {
            id: arrow
            text: imgsrc
            anchors.verticalCenter: parent.verticalCenter
            height: parent.height / 2
            width: parent.width / 2
            color: Style.tertiary
            font.pixelSize: 25
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.horizontalCenter: parent.horizontalCenter
            fontSizeMode: Text.Fit
            font.family: Style.fonticon.name
            minimumPixelSize: 2
        }
    }
}
