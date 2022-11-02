import QtQuick 2.15
import QtQuick.Controls 2.15
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Button {
    id: customButton
    property variant items: []
    smooth: true
    signal comboClicked
    property int ct: 2
    property string ft
    property string sortText
    property string buttonText
    property bool icon_left: true
    property bool icon_right
    property color checkedcolor: Style.primary
    property color uncheckedcolor: Style.secondary
    property alias listView: listView
    property var font_status
    property int currentIndex_api : 0
    property alias chosenItemText: chosenItemText
    property int fs: listView.currentIndex ? listView.currentIndex : 0
    
    function font_index_for_save(){
        if(chosenItemText.text="Small"){
            return "small"
        }
        if(chosenItemText.text="Medium"){
            return "Medium"
        }
        if(chosenItemText.text="Large"){
            return "Large"
        }
        if(chosenItemText.text="लघु"){
            return "Small_Hindi"
        }
        if(chosenItemText.text="मध्यम"){
            return "Medium_Hindi"
        }
        if(chosenItemText.text="विशाल"){
            return "Large_Hindi"
        }
    }
    function font_index() {
        if (ft == "Small") {
            return 0
        }
        if (ft == "Medium") {
            return 1
        }
        if (ft == "Large") {
            return 2
        }
        if (ft == "लघु") {
            return 0
        }
        if (ft == "मध्यम") {
            return 1
        }
        if (ft == "विशाल") {
            return 2
        }
    }
    property int font_index_api: font_index()
    antialiasing: true
    autoExclusive: true
    background: Rectangle {
        anchors.fill: parent
        color: parent.checked ? checkedcolor : (parent.hovered ? checkedcolor : uncheckedcolor)
    }

    Rectangle {
        id: chosenItem
        // radius: 4
        width: parent.width * 0.76
        height: customButton.height
        // color: Style.colorshallow
        smooth: true
        color: Style.secondary
        radius: 5
        border.color: "black"
        border.width: 0.5
        Text {

            id: chosenItemText
            anchors.fill: parent
            text: ft
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
        color: Style.fontdrop

        ListView {
            id: listView
            height: parent.height
            model: customButton.items
            currentIndex: 0
            delegate: Item {
                width: customButton.width
                height: customButton.height

                Text {
                    id: ltext
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
                        listView.currentIndex = index
                        if (chosenItemText.text == "Small") {
                            font_status = "Small"
                            Style.font15 = 10
                            Style.font15_2 = 15
                            Style.hindi = "kdjfnj"
                            Style.font12 = 7
                            Style.font20 = 15
                            Style.font10 = 5
                            Style.font30 = 25
                            Style.font16 = 11
                            Style.font13 = 8
                        }
                        if (chosenItemText.text == "Medium") {
                            font_status = "Medium"
                            Style.font15 = 15
                            Style.font15_2 = 15

                            Style.font12 = 12
                            Style.font20 = 20
                            Style.font10 = 10
                            Style.font30 = 30
                            Style.font16 = 16
                            Style.font13 = 13
                        }
                        if (chosenItemText.text == "Large") {
                            font_status = "Large"

                            Style.font15 = 20
                            Style.font15_2 = 15

                            Style.font12 = 17
                            Style.font20 = 25
                            Style.font10 = 15
                            Style.font30 = 35
                            Style.font16 = 21
                            Style.font13 = 18
                        }
                        if (chosenItemText.text == "लघु") {
                            font_status = "Small_Hindi"
                            Style.font15 = 10
                            Style.font15_2 = 15
                            Style.font12 = 7
                            Style.font20 = 15
                            Style.font10 = 5
                            Style.font30 = 25
                            Style.font16 = 11
                            Style.font13 = 8
                        }
                        if (chosenItemText.text == "मध्यम") {
                            font_status = "Medium_Hindi"
                            Style.font15 = 15
                            Style.font15_2 = 15

                            Style.font12 = 12
                            Style.font20 = 20
                            Style.font10 = 10
                            Style.font30 = 30
                            Style.font16 = 16
                            Style.font13 = 13
                        }
                        if (chosenItemText.text == "विशाल") {
                            font_status = "Large_Hindi"

                            Style.font15 = 20
                            Style.font15_2 = 15

                            Style.font12 = 17
                            Style.font20 = 25
                            Style.font10 = 15
                            Style.font30 = 35
                            Style.font16 = 21
                            Style.font13 = 18
                        }
                    }
                }
            }
            
            // Connections {
            //     target: listView
            //     onCurrentIndexChanged: 
            // }
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
            height: 30 * customButton.items.length
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
