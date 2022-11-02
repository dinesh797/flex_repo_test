import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Button {

    id: customButton
    property string buttonIcon
    property string buttonText 
    property int iconleftmargin : 0
    checked: false

    checkable: true
    property int iconmarginleft: 0
        property int textpadding: 0
            background: Rectangle {
                anchors.fill: customButton
                radius: 2
                color: parent.checked ? Style.top_barcolor : (parent.hovered ? Style.top_barcolor : Style.primary)
            }
            Rectangle {
                id: line
                visible: customButton.checked? true : false
                height: parent.height * 0.05
                width: parent.width
                anchors.bottom: parent.bottom
                gradient: Gradient {
                    orientation: Gradient.Horizontal
                    GradientStop {
                        position: 0.005
                        color: "transparent"
                    }
                    GradientStop {
                        position: 0.19
                        color: "#0fd77b"
                    }
                    GradientStop {
                        position: 0.53
                        color: "#0d99a9"
                    }
                    GradientStop {
                        position: 0.83
                        color: "#f879b4b9"
                    }
                    GradientStop {
                        position: 0.99
                        color: "transparent"
                    }
                }
            }
            Item {
                id: contenthold
                width: parent.width * 0.92
                height: parent.height * 0.90
                anchors.left: parent.left
                anchors.leftMargin: iconleftmargin
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                Item {
                    id: name
                    height: parent.height / 2
                    anchors.verticalCenter: parent.verticalCenter
                    width: parent.width * 0.68
                    anchors.right: parent.right

                    Text {
                        id: text_in
                        text: qsTr(buttonText)
                        anchors.fill: parent
                        leftPadding: textpadding
                        color: Style.tertiary
                        font.pixelSize: Style.font20 ? Style.font20 : 20
                        verticalAlignment: Text.AlignVCenter
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                    }
                }

                Text {
                    id: custom_icon
                    text: buttonIcon
                    font.family: Style.fonticon.name
                    color: Style.tertiary
                    width: parent.width * 0.2
                    height: parent.height * 0.70
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    font.pixelSize: Style.font20 ? Style.font20 : 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    fontSizeMode: Text.Fit
                    minimumPixelSize: 2
                }
            }
        }
