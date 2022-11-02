import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 6.0
import "../theme"

Button {
    id: customButton
    antialiasing: true
    checkable: true
    property string buttonIcon
    property string buttonText
    property string buttonText2
    property bool icon_left: true
    property bool icon_right
    property string checkedcolor: Style.primary
    property string uncheckedcolor: Style.secondary
    property alias custom_icon: custom_icon_left
    property alias custom_icon_left: custom_icon_left
    property alias iconwaypointshover: iconwaypointshover
    autoExclusive: true

    onCheckedChanged: {
        if(customButton.checked)
        {
            iconwaypointshover.visible = true
        }
        else{
            iconwaypointshover.visible = false

        }
    }

    Item {
        id: text_in
        width: parent.width
        height: parent.height * 0.4
        anchors.verticalCenter: parent.verticalCenter
        Item {
            id: custom_arrow
            width: parent.width * 0.15
            height: parent.height
            anchors.right: parent.right

            Text {
                id: iconwaypointshover
                text: customButton.checked ? "\u0066": ""
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                font.pixelSize: 20
                rightPadding: 7
                font.family: Style.fonticon.name
                color: "#3393d3"
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                anchors.rightMargin: 0
                fontSizeMode: Text.Fit
                minimumPixelSize: 2
                visible: false
            }
        }

        Item {
            id: upitem
            anchors.top: parent.top
            width: parent.width
            height: parent.height / 2
            Row {
                width: parent.width
                height: parent.height
                Item {
                    id: ttt
                    width: parent.width * 0.15
                    height: parent.height
                    Text {
                        id: custom_icon_left
                        text: buttonIcon
                        font.family: Style.fonticon.name
                        color: Style.tertiary
                        width: parent.width
                        height: parent.height 
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        font.pixelSize: Style.font30 ? Style.font30: 30
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                    }
                }
                Text {
                    id: tt
                    width: parent.width - ttt.width
                    height: parent.height
                    color: Style.tertiary
                    text: qsTr(buttonText)
                    bottomPadding:7
                    font.pixelSize: Style.font15 ? Style.font15: 15
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    font.bold: true
                    minimumPixelSize: 2
                }
            }
        }
        Item {
            id: downitem
            width: parent.width
            anchors.bottom: parent.bottom
            height: parent.height / 2
            Row {
                width: parent.width
                height: parent.height
                Item {
                    id: ttt2
                    width: parent.width * 0.15
                    height: parent.height
                }
                Text {
                    id: tt2
                    width: parent.width * 0.83
                    height: parent.height
                    color: Style.tertiary
                    text: qsTr(buttonText2)
                    bottomPadding:7
                    elide: Text.ElideMiddle
                    font.pixelSize: Style.font15 ? Style.font15: 15
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    fontSizeMode: Text.Fit
                    font.styleName: "Light"
                    minimumPixelSize: 2
                }
            }
        }
    }

    background: Rectangle {
        anchors.fill: parent
        border.color: Style.border1cf
        border.width: 1
        color: parent.checked ? Style.hover_leftbutton: (parent.hovered ? Style.hover_leftbutton: Style.hoversecondary)
    }
}
