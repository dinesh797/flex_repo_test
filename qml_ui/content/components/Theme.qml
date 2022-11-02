import QtQuick 2.15
import QtQuick.Controls 2.15
import "../components"
// import "../pages"
import "../theme"
// import QtQuick.Layouts 6.0

Rectangle {
    id: rectangle
    property string status: ""

    Material.theme: Material.Dark
    Material.accent: Material.Purple
    color: Style.hoverprimary
    border.color: Style.border1cf
    width: 799
    height: 800
    property string appearance_save: theme()
    property bool theme_ui
    property alias fontbutton: fontbutton
    property string tb_text
    property int currentIndex_api_theme
    property string fb_text
    property bool selectedTheme
    property alias darkthtemebutton: darkthtemebutton
    property alias lighthtemebutton: lighthtemebutton
    property string text11: qsTr("Small")
    property string text22: qsTr("Medium")
    property string text33: qsTr("Large")
    property string hindi_lang: qsTr("हिन्दी")
    property string english_lang: qsTr("English")

    function theme() {
        if (theme_ui == true) {
            return "true"
        }
        if (theme_ui == false) {
            return "false"
        }
    }

    Item {
        width: parent.width * 0.95
        height: parent.height * 0.95
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        HoverButton {
            id: save
            width: parent.width * 0.13
            height: parent.height * 0.068
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            steptext: qsTr("Save")
            stepcolortext: "white"
            stepcolor: "#7d00ff"

            Connections {
                target: save
                function onClicked() {
                    var rs_stored = program.read_setting()==[] ?  {"theme": "true", "font": "Medium", "language": "English"} : program.read_setting() 
                    var lang_save = languagebutton.lang_status
                            == "" ? rs_stored['language'] : languagebutton.lang_status
                    var font_save = fontbutton.font_status
                            == undefined ? rs_stored['font'] : fontbutton.font_status
                    var st = program.save_setting(lang_save, font_save,
                                                  appearance_save)
                   if(st=="Saved"){
                    popstatus.pop_message= qsTr("Appearance Setting Save !")
                    popstatus.open()
                   }
               
                }
            }
        }
    }

    ButtonGroup {
        id: group
    }
    Rectangle {
        id: rectangle1
        width: parent.width * 0.8
        height: parent.height * 0.8
        color: Style.hoverprimary
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        Row {
            id: toprow
            topPadding: 10
            width: parent.width
            height: parent.height * 0.25
            spacing: 25

            Text {
                id: text1
                color: Style.tertiary
                text: qsTr("Appearance")
                font.pixelSize: Style.font15 ? Style.font15 : 15 ? Style.font15 : 15
            }

            Column {
                id: column
                width: parent.width * 0.2
                height: parent.height * 0.7
                spacing: 10

                Button {
                    id: lighthtemebutton
                    checkable: true
                    ButtonGroup.group: group
                    width: parent.width
                    height: parent.height
                    checked: !selectedTheme

                    onCheckedChanged: {
                        if (lighthtemebutton.checked == true) {
                            Style.darkTheme = !lighthtemebutton.checked
                            theme_ui = Style.darkTheme
                        }
                    }

                    autoExclusive: true
                    background: Rectangle {
                        anchors.fill: parent
                        color: "transparent"
                        border.color: "transparent"
                        border.width: 2
                        radius: 6
                    }

                    Image {
                        id: themelight
                        anchors.fill: parent
                        source: "../images/theme-light.svg"
                        fillMode: Image.PreserveAspectFit
                    }
                }

                Text {
                    id: lighttext
                    text: qsTr("Light")
                    color: Style.tertiary
                    font.pixelSize: Style.font12 ? Style.font12 : 12
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }

            Column {
                id: column1
                width: parent.width * 0.2
                height: parent.height * 0.7
                spacing: 10

                Button {
                    id: darkthtemebutton
                    ButtonGroup.group: group
                    width: parent.width
                    height: parent.height
                    checked: selectedTheme

                    onCheckedChanged: {
                        if (darkthtemebutton.checked == true) {
                            Style.darkTheme = darkthtemebutton.checked

                            theme_ui = Style.darkTheme
                        }
                    }

                    autoExclusive: true
                    checkable: true
                    background: Rectangle {
                        anchors.fill: parent
                        color: "transparent"
                        border.color: "transparent"
                        border.width: 2
                        radius: 6
                    }

                    Image {
                        id: themedark
                        anchors.fill: parent
                        source: "../images/theme-dark.svg"
                        fillMode: Image.PreserveAspectFit
                    }
                }

                Text {
                    id: darktext
                    text: qsTr("Dark")
                    color: Style.tertiary
                    font.pixelSize: Style.font12 ? Style.font12 : 12
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
        Item {
            id: spce_row
            width: parent.width
            height: parent.height * 0.35
        }
        Row {
            id: bottomrow
            anchors.top: spce_row.bottom
            width: parent.width
            height: parent.height * 0.35
            spacing: 37
            Text {
                id: fonttext
                text: qsTr("Font Size: ")
                anchors.verticalCenter: parent.verticalCenter
                color: Style.tertiary
                font.pixelSize: 15
            }
            FontButton {
                id: fontbutton
                width: parent.width * 0.20
                anchors.verticalCenter: parent.verticalCenter
                ft: fb_text
                items: [text11, text22, text33]
                icon_left: false
                icon_right: true
                uncheckedcolor: Style.primary
            }

            Text {

                text: qsTr("Language: ")
                anchors.verticalCenter: parent.verticalCenter
                color: Style.tertiary
                font.pixelSize: 15
            }
            TranslateButton {
                id: languagebutton
                width: parent.width * 0.20
                anchors.verticalCenter: parent.verticalCenter
                buttonIcon: Style.dropIcon
                sortText: qsTr("")
                items: [hindi_lang, english_lang]
                icon_left: false
                tr: tb_text
                icon_right: true
                uncheckedcolor: Style.primary
            }
        }
    }
    UpdateStatus{
        id: popstatus
        width: parent.width * 0.5
        height: parent.height * 0.4
        anchors.centerIn: parent
    }
}
