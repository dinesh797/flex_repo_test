import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Rectangle {
    id: rectangle1
    property alias view_card_weight: view_card_weight.text
    property string rectcol: rectcol
    property alias view_card_height: view_card_height.text
    property alias view_card_gender: view_card_gender.text
    property alias view_card_contact: view_card_contact.text
    property alias view_emailcardtext: view_emailcardtext.text
    property alias view_namecardtext: view_namecardtext.text
    property alias view_card_text: view_card_text.text
    color: Style.hoverprimary
    Material.theme: Material.Dark
    Material.accent: Material.Purple
    transformOrigin: Item.Center
    border.color: "transparent"
    Column {
        id: column
        width: parent.width
        height: parent.height
        Item {
            id: item3
            width: parent.width
            height: parent.height * 0.1
            Row {
                anchors.fill: parent
                spacing: 5

                Row {
                    id: item1
                    width: parent.width * 0.30
                    height: parent.height
                    spacing: 4

                    Button {
                        id: backpop
                        width: parent.width * 0.10
                        height: parent.height
                        contentItem: Label {
                            text: "\u0064"
                            font.pixelSize: 30
                            color: Style.tertiary
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            font.family: Style.fonticon.name
                        }
                        background: Rectangle {
                            color: Style.colorshallow
                            anchors.fill: parent
                        }
                        onClicked: {
                            stackView_profile.pop()
                        }
                    }

                    Rectangle {
                        id: rectangle
                        color: rectcol
                        width: parent.width * 0.1
                        height: parent.width * 0.1
                        radius: 90
                        anchors.verticalCenter: parent.verticalCenter

                        Text {
                            id: view_card_text
                            anchors.verticalCenter: parent.verticalCenter
                            height: parent.height
                            width: parent.width
                            color: Style.circletext
                            font.pixelSize: 10
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            anchors.horizontalCenter: parent.horizontalCenter
                            fontSizeMode: Text.Fit
                            minimumPixelSize: 2
                        }
                    }
                    Item {
                        id: idname
                        width: parent.width * 0.8
                        height: parent.height
                        Text {
                            id: view_namecardtext
                            text: qsTr("")
                            height: parent.height
                            width: parent.width
                            color: Style.tertiary
                            font.pixelSize: Style.font15 ? Style.font15 : 15
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignVCenter
                            anchors.horizontalCenter: parent.horizontalCenter
                            fontSizeMode: Text.Fit
                            minimumPixelSize: 2
                        }
                    }
                }
                Item {
                    id: emailcontent
                    width: parent.width * 0.20
                    height: parent.height

                    Text {
                        id: linenametext
                        text: "\ue0ce"
                        font.family: Style.fonticon.name
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        width: parent.width * 0.24
                        height: parent.height * 0.9
                        color: "#3393d3"
                        font.pixelSize: 25
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        topPadding: 5
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                    }
                    Item {
                        id: emailtext
                        width: parent.width * 0.8
                        height: parent.height
                        anchors.left: linenametext.right
                        Text {
                            id: view_emailcardtext
                            height: parent.height
                            width: parent.width
                            color: Style.tertiary
                            font.pixelSize: Style.font15 ? Style.font15 : 15
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignVCenter
                            anchors.horizontalCenter: parent.horizontalCenter
                            fontSizeMode: Text.Fit
                            minimumPixelSize: 2
                        }
                    }
                }
                Item {
                    id: callcontent
                    width: parent.width * 0.15
                    height: parent.height

                    Text {
                        id: callcontentimage
                        text: "\ue0cd"
                        font.family: Style.fonticon.name
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        width: parent.width * 0.24
                        height: parent.height * 0.9
                        color: "#3393d3"
                        font.pixelSize: 25
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        topPadding: 5
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                    }
                    Item {
                        id: calltext
                        width: parent.width * 0.8
                        anchors.left: callcontentimage.right
                        height: parent.height
                        Text {
                            id: view_card_contact
                            height: parent.height
                            width: parent.width
                            color: Style.tertiary
                            font.pixelSize: Style.font15 ? Style.font15 : 15
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignVCenter
                            anchors.horizontalCenter: parent.horizontalCenter
                            fontSizeMode: Text.Fit
                            minimumPixelSize: 2
                        }
                    }
                }
                Row {
                    width: parent.width * 0.1
                    height: parent.height

                    spacing: 0
                    Text {
                        id: emailcardtext22y
                        width: parent.width * 0.6
                        height: parent.height
                        color: "blue"
                        text: qsTr("Gender")
                        font.pixelSize: Style.font15 ? Style.font15 : 15
                        verticalAlignment: Text.AlignVCenter
                        font.bold: true
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                    }
                    Text {
                        id: view_card_gender
                        width: parent.width * 0.4
                        height: parent.height
                        color: Style.tertiary
                        text: qsTr(" Male")
                        font.pixelSize: Style.font15 ? Style.font15 : 15
                        verticalAlignment: Text.AlignVCenter
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                    }
                }
                Row {
                    width: parent.width * 0.09
                    height: parent.height
                    Text {
                        id: emailcardtext22yg
                        width: parent.width * 0.6
                        height: parent.height
                        color: "blue"
                        text: qsTr("Height")
                        font.pixelSize: Style.font15 ? Style.font15 : 15
                        verticalAlignment: Text.AlignVCenter
                        font.bold: true
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                    }
                    Text {
                        id: view_card_height
                        width: parent.width * 0.4
                        height: parent.height
                        color: Style.tertiary
                        text: qsTr("5'7")
                        font.pixelSize: Style.font15 ? Style.font15 : 15
                        verticalAlignment: Text.AlignVCenter
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                    }
                }
                Row {
                    width: parent.width * 0.1
                    height: parent.height
                    Text {
                        id: emailcardtext22yd
                        width: parent.width * 0.6
                        height: parent.height
                        color: "blue"
                        text: qsTr("Weight")
                        font.pixelSize: Style.font15 ? Style.font15 : 15
                        verticalAlignment: Text.AlignVCenter
                        font.bold: true
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                    }
                    Text {
                        id: view_card_weight
                        width: parent.width * 0.4
                        height: parent.height
                        color: Style.tertiary
                        text: qsTr("111")
                        font.pixelSize: Style.font15 ? Style.font15 : 15
                        verticalAlignment: Text.AlignVCenter
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                    }
                }
            }
        }

        Rectangle {
            id: rectangle678
            width: parent.width
            height: parent.height * 0.9
            color: Style.secondary
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
