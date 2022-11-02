import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 6.0
import "../components"
// import "../pages"
import "../theme"
// import "../../../qml_py"

Rectangle {
    id: rectangle
    anchors.fill: parent
    color: Style.hoverprimary
    border.color: Style.border1cf
    property var sp
    property var read_setting_for_theme: ""

    Component.onCompleted: {

        read_setting_for_theme = program.read_setting() 
    }

    Column {
        id: column
        anchors.fill: parent
        spacing: 4

        Rectangle {
            id: rectangle22
            width: parent.width
            height: parent.height

            color: Style.hoverprimary
            border.color: Style.border1cf

            Row {
                id: row1
                anchors.fill: parent
                spacing: 4
                Rectangle {
                    id: name
                    color: Style.secondary
                    border.color: Style.border1cf
                    height: parent.height
                    width: parent.width * 0.30
                    ButtonGroup {
                        id: group
                    }

                    Column {
                        id: column1
                        anchors.fill: parent
                        spacing: 0

                        SettingButton {
                            id: appearancebutton
                            ButtonGroup.group: group
                            width: parent.width
                            height: parent.height * 0.18
                            buttonIcon: "\ue908"
                            buttonText: qsTr("Appearance")
                            buttonText2: qsTr("Dark and Light Mode, Font size")

                            onCheckedChanged: {
                                if (appearancebutton.checked) {
                                    sl.currentIndex = 0
                                }
                            }
                        }

                        SettingButton {
                            id: processbutton
                            ButtonGroup.group: group
                            width: parent.width
                            height: parent.height * 0.18
                            buttonIcon: "\ue911"
                            buttonText: qsTr("Process Control")
                            buttonText2: qsTr("OPC Server Details, Tag Providers")

                            onCheckedChanged: {
                                if (processbutton.checked) {
                                    sl.currentIndex = 1
                                    iconwaypointshover.visible = true
                                } else {
                                    iconwaypointshover.visible = false
                                }
                            }
                        }

                        SettingButton {
                            id: generalbutton
                            ButtonGroup.group: group
                            width: parent.width
                            height: parent.height * 0.18
                            buttonIcon: "\ue912"
                            buttonText: qsTr("General Settings")
                            buttonText2: qsTr("Identificaton, File Paths")
                            onCheckedChanged: {
                                if (generalbutton.checked) {
                                    sl.currentIndex = 2
                                    iconwaypointshover.visible = true
                                } else {
                                    iconwaypointshover.visible = false
                                }
                            }
                        }
                        SettingButton {
                            id: securitybutton
                            ButtonGroup.group: group
                            width: parent.width
                            height: parent.height * 0.18
                            buttonIcon: "\u0109"
                            buttonText: qsTr("Security")
                            buttonText2: qsTr("Reset Password ")
                            onCheckedChanged: {
                                if (securitybutton.checked) {
                                    sl.currentIndex = 3
                                    iconwaypointshover.visible = true
                                } else {
                                    iconwaypointshover.visible = false
                                }
                            }
                        }
                    }
                }
                Rectangle {
                    id: settings
                    border.color: Style.border1cf
                    color: Style.hoverprimary
                    height: parent.height
                    width: parent.width * 0.70
                    StackLayout {
                        id: sl
                        clip: true
                        anchors.fill: parent
                        currentIndex: 0
                        Item {
                            id: sl1
                            Theme {
                                property var setting_theme: read_setting_for_theme//program.read_setting() ==[] ? {"theme": "true", "font": "Medium", "language": "English"} : program.read_setting()
                                function tr() {
                                    if (setting_theme['language'] == "Hindi") {
                                        main_app.set_language("Hindi")
                                        return "हिन्दी"
                                    }
                                    if (setting_theme['language'] == "English") {
                                        main_app.set_language("English")
                                        return "English"
                                    }
                                }
                                function ft() {
                                    if (setting_theme['font'] == "Small") {
                                        Style.font15 = 10
                                        Style.font15_2 = 15
                                        Style.font12 = 7
                                        Style.font20 = 15
                                        Style.font10 = 5
                                        Style.font30 = 25
                                        Style.font16 = 11
                                        Style.font13 = 8
                                        return "Small"
                                    }
                                    if (setting_theme['font'] == "Medium") {
                                        Style.font15 = 15
                                        Style.font15_2 = 15

                                        Style.font12 = 12
                                        Style.font20 = 20
                                        Style.font10 = 10
                                        Style.font30 = 30
                                        Style.font16 = 16
                                        Style.font13 = 13
                                        return "Medium"
                                    }
                                    if (setting_theme['font'] == "Large") {

                                        Style.font15 = 20
                                        Style.font15_2 = 15

                                        Style.font12 = 17
                                        Style.font20 = 25
                                        Style.font10 = 15
                                        Style.font30 = 35
                                        Style.font16 = 21
                                        Style.font13 = 18
                                        return "Large"
                                    }
                                    if (setting_theme['font'] == "Small_Hindi") {
                                        Style.font15 = 10
                                        Style.font15_2 = 15
                                        Style.font12 = 7
                                        Style.font20 = 15
                                        Style.font10 = 5
                                        Style.font30 = 25
                                        Style.font16 = 11
                                        Style.font13 = 8
                                        return "लघु"
                                    }
                                    if (setting_theme['font'] == "Medium_Hindi") {
                                        Style.font15 = 15
                                        Style.font15_2 = 15

                                        Style.font12 = 12
                                        Style.font20 = 20
                                        Style.font10 = 10
                                        Style.font30 = 30
                                        Style.font16 = 16
                                        Style.font13 = 13
                                        return "मध्यम"
                                    }
                                    if (setting_theme['font'] == "Large_Hindi") {

                                        Style.font15 = 20
                                        Style.font15_2 = 15

                                        Style.font12 = 17
                                        Style.font20 = 25
                                        Style.font10 = 15
                                        Style.font30 = 35
                                        Style.font16 = 21
                                        Style.font13 = 18
                                        return "विशाल"
                                    }
                                }

                                property string tr_string: tr()
                                property string ft_string: ft()
                                id: appearancecompo
                                selectedTheme: setting_theme["theme"] == "true" ? true : false
                                // themetoggle: sp
                                tb_text: tr_string
                                fb_text: ft_string
                                anchors.fill: parent
                            }
                        }

                        Item {
                            id: sl2
                            ProcessControl {
                                id: processcompo
                                anchors.fill: parent
                            }
                        }

                        Item {
                            id: sl3
                            GeneralSetting {
                                id: generalcompo
                                anchors.fill: parent
                            }
                        }
                        Item {
                            id: sl4
                            Security {
                                id: securitycompo
                                anchors.fill: parent
                            }
                        }
                    }
                }
            }
        }
    }
}
