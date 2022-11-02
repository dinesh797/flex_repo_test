import QtQuick
import QtQuick.Controls
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 1.15

Button {

    id: buttonpop
    anchors.fill: parent
    property string changeboxB
    property string units
    property string changeboxA: "A"
    property int borderWidth: 1

    Rectangle {
        id: rectangle1
        anchors.fill: parent
        border.color: "black"
        border.width: 1
        color: Style.colorshallow
        radius: 8

        gradient: Gradient {
            orientation: Gradient.Horizontal
            GradientStop {
                position: 0.3
                color: Style.secondary
            }

            GradientStop {
                position: 0.3
                color: Style.primary
            }
            GradientStop {
                position: 0.3
                color: "black"
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
                Row {
                    id: name
                    width: parent.width * 0.85
                    height: parent.height
                    spacing: 4
                    anchors.right: parent.right
                    Item {
                        id: item12
                        width: parent.width * 0.27
                        height: parent.height

                        Text {
                            id: text12
                            width: parent.width * 0.98
                            height: parent.height * 0.98
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            leftPadding: 0
                            anchors.horizontalCenter: parent.horizontalCenter
                            color: Style.tertiary
                            text: qsTr(changeboxB)
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.top: parent.top
                            font.pixelSize: Style.font10
                            fontSizeMode: Text.Fit
                            minimumPointSize: 2
                        }
                    }
                    Item {
                        id: name4
                        width: parent.width * 0.6
                        height: parent.height
                        Text {
                            id: text124
                            width: parent.width * 0.80
                            anchors.left: parent.left
                            height: parent.height
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            leftPadding: 0
                            color: Style.tertiary
                            text: units
                            fontSizeMode: Text.Fit
                            minimumPointSize: 2
                        }
                    }
                }
            }
        }
    }
}
