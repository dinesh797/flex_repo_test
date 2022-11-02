import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Rectangle {
    id: rectangle1
    anchors.fill: parent
    property string changeboxA
    property string units
    property string changeboxB
    border.color: "black"
    border.width: 1
    color: Style.secondary
    radius: 8

    gradient: Gradient {
        orientation: Gradient.Horizontal
        GradientStop {
            position: 0.3
            color: Style.secondary
        }

        GradientStop {
            position: 0.3
            color: Style.hoverprimary
        }
        GradientStop {
            position: 0.3
            color: Style.colorshallow
        }
        GradientStop {
            position: 0.242
            color: Style.primary
        }
    }

    Row {
        id: row
        width: parent.width
        height: parent.height * 0.5
        anchors.verticalCenter: parent.verticalCenter

        Item {
            id: item1
            width: parent.width * 0.27
            height: parent.height
            Text {
                id: text1
                width: parent.width * 0.95
                height: parent.height * 0.95
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenter: parent.horizontalCenter
                color: Style.tertiary
                text: qsTr(changeboxA)
                anchors.verticalCenter: parent.verticalCenter
                anchors.top: parent.top
                font.pixelSize: Style.font10
                fontSizeMode: Text.Fit
                minimumPointSize: 2
            }
        }
        Item {
            id: nameaa
            width: parent.width * 0.64
            height: parent.height
            Item {
                id: item12
                width: parent.width * 0.47
                height: parent.height
                anchors.horizontalCenter: parent.horizontalCenter

                Text {
                    id: text12
                    width: parent.width * 0.98
                    height: parent.height * 0.98
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    leftPadding: 0
                    color: Style.tertiary
                    text: qsTr(changeboxB)
                    anchors.top: parent.top
                    font.pixelSize: Style.font10
                    fontSizeMode: Text.Fit
                    minimumPointSize: 2
                }
            }
        }
    }
}
