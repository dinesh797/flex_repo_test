import QtQuick 2.15
import QtQuick.Controls 2.15
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Button {
    id: customButton
    property variant items: []
    property alias listView: listView
    smooth: true
    signal comboClicked
    property string sortText
    property url buttonIcon: "../images/Drop_down_arrow.png"
    property string buttonText
    property bool icon_left: true
    property bool icon_right
    property color checkedcolor: Style.primary
    property color uncheckedcolor: Style.secondary
    antialiasing: true
    autoExclusive: true
    property string lang_status
    property int lang_state 
    property string api_val 
    background: Rectangle {
        anchors.fill: parent
        color: "transparent"//parent.checked ? checkedcolor : (parent.hovered ? checkedcolor : uncheckedcolor)
    }

    Rectangle {
        id: chosenItem
        width: parent.width * 0.76
        height: customButton.height
        smooth: true
        color: Style.secondary // content color
        radius: 5
        border.color: "black"
        border.width: 0.5
        Text {

            id: chosenItemText
            text: api_val
            anchors.fill: parent
            elide: Text.ElideLeft
            color: Style.tertiary
            font.pixelSize: Style.font12 ? Style.font12 : 12
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            leftPadding: 5
            fontSizeMode: Text.Fit
            minimumPixelSize: 2
        }
    }

    Rectangle {
        id: dropDown

        width: customButton.width
        height: 0
        clip: true
        radius: 4
        anchors.top: chosenItem.bottom
        anchors.margins: 2
        color: Style.fontdrop // dropdown color

        ListView {
            id: listView
            height: parent.height
            model: customButton.items
            currentIndex: 0
            delegate: Item {
                width: customButton.width
                height: customButton.height*0.7

                Text {
                    id: translate_dropdown
                    text: qsTr(modelData)
                    anchors.top: parent.top
                    anchors.left: parent.left
                    anchors.margins: 5
                    color: Style.textColBlack
                    font.pixelSize: Style.font12 ? Style.font12 : 12
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    fontSizeMode: Text.Fit
                    minimumPixelSize: 2
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        customButton.state = ""
                        chosenItemText.text = modelData
                        // if (chosenItemText.text == "हिन्दी") {
                        //     lang_state=0
                        //     lang_status = "Hindi"
                        //     if (fontbutton.chosenItemText.text == "Small") {
                        //         fontbutton.chosenItemText.text = "लघु"
                        //         fontbutton.listView.currentIndex =0
                        //         fontbutton.font_status = "Small_Hindi"
                        //     }
                        //     if (fontbutton.chosenItemText.text == "Medium") {
                        //         fontbutton.chosenItemText.text = "मध्यम"
                        //             fontbutton.listView.currentIndex =1
                        //               fontbutton.font_status = "Medium_Hindi"
                        //     }
                        //     if (fontbutton.chosenItemText.text == "Large") {
                        //         fontbutton.chosenItemText.text = "विशाल"
                        //          fontbutton.listView.currentIndex =2
                        //            fontbutton.font_status = "Large_Hindi"
                        //     }
                        // } else {
                        //     if (fontbutton.chosenItemText.text == "लघु") {
                        //         fontbutton.chosenItemText.text = "Small"
                        //             fontbutton.listView.currentIndex =0
                        //               fontbutton.font_status = "Small"
                        //     }
                        //     if (fontbutton.chosenItemText.text == "मध्यम") {
                        //         fontbutton.chosenItemText.text = "Medium"
                        //             fontbutton.listView.currentIndex = 1
                        //               fontbutton.font_status = "Medium"
                        //     }
                        //     if (fontbutton.chosenItemText.text == "विशाल") {
                        //         fontbutton.chosenItemText.text = "Large"
                        //         fontbutton.listView.currentIndex = 2
                        //           fontbutton.font_status = "Large"
                        //     }
                        // }
                        // if (chosenItemText.text == "हिन्दी") {

                        //     main_app.set_language("Hindi")
                        // }
                        // if (chosenItemText.text == "English") {
                        //     lang_state=1
                        //     lang_status= "English"
                        //     main_app.set_language("English")
                        //     if (fontbutton.chosenItemText.text == "लघु") {
                        //         fontbutton.chosenItemText.text = "Small"
                        //     }
                        //     if (fontbutton.chosenItemText.text == "मध्यम") {
                        //         fontbutton.chosenItemText.text = "Medium"
                        //     }
                        //     if (fontbutton.chosenItemText.text == "विशाल") {
                        //         fontbutton.chosenItemText.text = "Large"
                        //     }
                        // }
                        listView.currentIndex = index
                    }
                }
            }
        }
    }

    onClicked: {
        customButton.state = customButton.state === "dropDown" ? "" : "dropDown"
    }
    Text {
        id: drop_down_arrow
        text: "\u0067"
        font.family: Style.fonticon.name
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: chosenItem.right
        width: parent.width * 0.24
        height: parent.height * 0.7
        color: Style.tertiary
        font.pixelSize: 25
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        fontSizeMode: Text.Fit
        minimumPixelSize: 2
    }

    states: State {
        name: "dropDown"
        PropertyChanges {
            target: dropDown
            height: customButton.height* 1.5  //* customButton.items.length
        }
    }

    transitions: Transition {
        NumberAnimation {
            target: dropDown
            properties: "height"
            easing.type: Easing.OutExpo
            duration: 1000
        }
    }
}
