import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Rectangle {
    id: rectangle
    anchors.fill: parent
    color: "#11456f"
    border.color: "#24acf2"

    Text {
        id: text1
        text: qsTr("Help Page")
        color: Style.tertiary
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: Style.font30
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
