import QtQuick.Window
import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Item {
    id: namettt
    property color checkedcolor: Style.primary
    property color uncheckedcolor: Style.secondary
    property string progname: "Program 1"
    width: parent.width * 0.165
    height: parent.height * 0.5
    property alias button: button

    Column {
        id: column
        width: parent.width
        height: parent.height
        spacing: 10
        Button {
            id: button
            width: parent.width
            height: parent.height * 0.8
            Rectangle {
                id: rectangle
                radius: 5
                width: parent.width
                height: parent.height
                color: get_random_color()

                function get_random_color() {
                    var color = ""
                    for (var i = 0; i < 3; i++) {
                        var sub = Math.floor(Math.random() * 256).toString(16)
                        color += (sub.length == 1 ? "0" + sub : sub)
                    }
                    return '#' + (0x1000000 + Math.random(
                                      ) * 0xffffff).toString(16).substr(1, 6)
                }

                Image {
                    id: assembly_Isometric_Render
                    anchors.fill: parent
                    source: "../images/Assembly_Isometric_Render.svg"
                    fillMode: Image.PreserveAspectFit
                }
            }
        }

        Rectangle {
            id: item1gt
            color: Style.secondary
            width: parent.width
            radius: 5
            border.color: rectangle.color
            border.width: 1
            height: parent.height * 0.15

            Text {
                id: programtextgt
                text: qsTr(progname)
                anchors.verticalCenter: parent.verticalCenter
                height: parent.height / 2
                width: parent.width
                color: Style.tertiary
                font.pixelSize: Style.font20 ? Style.font20 : 20
                verticalAlignment: Text.AlignVCenter
                leftPadding: 5
                fontSizeMode: Text.Fit
                minimumPixelSize: 2
            }
        }
    }
}
