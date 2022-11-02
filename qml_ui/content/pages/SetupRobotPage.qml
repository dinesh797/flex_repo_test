import QtQuick
// import QtQuick.Controls
// import QtQuick.Controls 2.3
import "../components"
// import "../pages"
import "../theme"
// import QtQuick.Layouts 6.0

Rectangle {
    id: mainScreen
    anchors.fill: parent
    color: Style.hoverprimary

    property var srp_toggle: ""

    Component.onCompleted: {

        srp_toggle = setting.get_setting()
    }
    Column {
        id: column
        anchors.fill: parent
        spacing: 4
        Item {
            id: topbar
            width: parent.width
            height: parent.height * 0.15

            Item {
                id: row

                anchors.fill: parent
                Item {
                    id: item2
                    width: parent.width * 0.4
                    height: parent.height / 2
                    anchors.verticalCenter: parent.verticalCenter
                    Text {
                        id: rr1text
                        width: parent.width
                        height: parent.height / 2
                        color: Style.tertiary
                        text: qsTr("Setup Robots and Vaccum cups")
                        font.pixelSize: Style.font20 ? Style.font20 : 20
                        wrapMode: Text.WordWrap
                        minimumPixelSize: 2
                        fontSizeMode: Text.Fit
                    }

                    Text {
                        id: rr1text2
                        width: parent.width
                        height: parent.height / 2
                        color: Style.tertiary
                        text: qsTr("Use toggles to bypass Robots and cups")
                        anchors.top: rr1text.bottom
                        font.pixelSize: Style.font16 ? Style.font16 : 16
                        wrapMode: Text.WordWrap
                        minimumPixelSize: 2
                        fontSizeMode: Text.Fit
                    }
                }
            }
        }

        Rectangle {
            id: rectangle
            width: parent.width
            color: Style.secondary

            height: parent.height * 0.75
            Item {
                id: robotpg
                width: parent.width * 0.85

                height: parent.height * 0.98
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                Assembly {
                    id: rectangle1
                    width: parent.width * 0.9
                    height: parent.height * 0.8
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                }

                Item {
                    id: upperitem
                    width: parent.width
                    height: parent.height * 0.42
                    anchors.top: parent.top
                    anchors.horizontalCenter: parent.horizontalCenter
                    Item {
                        id: fl2left_i
                        width: parent.width * 0.095
                        height: parent.height * 0.86
                        anchors.bottom: parent.bottom
                        OnOff {
                            id: fl2Bleft
                            anchors.top: parent.top
                            anchors.rightMargin: 0
                            height: parent.height * 0.13
                            anchors.right: parent.right
                            width: parent.width * 0.75
                            checked: srp_toggle['fl2']
                                     || fl2armA.checked ? srp_toggle['fl2']["vaccum_cup_1"] : false
                            enabled: fl2armA.checked
                        }
                    }
                    Item {
                        id: fl2right_i
                        width: parent.width * 0.14
                        height: parent.height * 0.85
                        anchors.bottom: parent.bottom

                        OnOff {
                            id: fl2armA
                            height: parent.height * 0.13
                            anchors.left: parent.right
                            anchors.bottom: parent.bottom
                            anchors.bottomMargin: 0
                            width: parent.width * 0.50
                            checked: srp_toggle['fl2'] ? srp_toggle['fl2']["enable"] : false
                        }
                        OnOff {
                            id: fl2Bright
                            height: parent.height * 0.13
                            anchors.left: parent.right
                            width: parent.width * 0.50
                            checkable: true
                            checked: srp_toggle['fl2']
                                     || fl2armA.checked ? srp_toggle['fl2']["vaccum_cup_2"] : false
                            enabled: fl2armA.checked
                        }
                    }
                    Item {
                        id: fl1left_I
                        width: parent.width * 0.33
                        height: parent.height * 0.85
                        anchors.bottom: parent.bottom
                        OnOff {
                            id: fl1Bleft
                            anchors.top: parent.top
                            anchors.rightMargin: 0
                            height: parent.height * 0.13
                            anchors.right: parent.right
                            width: parent.width * 0.2
                            checked: srp_toggle['fl1']
                                     || fl1armA.checked ? srp_toggle['fl1']["vaccum_cup_1"] : false
                            enabled: fl1armA.checked
                        }
                    }

                    Item {
                        id: verti2
                        width: parent.width * 0.37
                        height: parent.height * 0.85
                        anchors.bottom: parent.bottom
                        OnOff {
                            id: fl1Bright
                            height: parent.height * 0.13
                            anchors.left: parent.right
                            width: parent.width * 0.2
                            checked: srp_toggle['fl1']
                                     || fl1armA.checked ? srp_toggle['fl1']["vaccum_cup_2"] : false
                            enabled: fl1armA.checked
                        }
                        OnOff {
                            id: fl1armA
                            height: parent.height * 0.13
                            anchors.left: parent.right
                            anchors.bottom: parent.bottom
                            anchors.bottomMargin: 0
                            width: parent.width * 0.2
                            checked: srp_toggle['fl1'] ? srp_toggle['fl1']["enable"] : false
                        }
                    }
                    Item {
                        id: namej
                        width: parent.width * 0.91
                        height: parent.height * 0.86
                        anchors.bottom: parent.bottom
                        OnOff {
                            id: fr2armA
                            height: parent.height * 0.13
                            anchors.left: parent.right
                            anchors.bottom: parent.bottom
                            width: parent.width * 0.08
                            checked: srp_toggle['fr2'] ? srp_toggle['fr2']["enable"] : false
                        }
                        OnOff {
                            id: fr2Bright
                            height: parent.height * 0.13
                            anchors.left: parent.right
                            width: parent.width * 0.08
                            checked: srp_toggle['fr2']
                                     || fr2armA.checked ? srp_toggle['fr2']["vaccum_cup_2"] : false
                            enabled: fr2armA.checked
                        }
                    }
                    Item {
                        id: nameo
                        width: parent.width * 0.87
                        height: parent.height * 0.86
                        anchors.bottom: parent.bottom

                        OnOff {
                            id: fr2Bleft
                            anchors.top: parent.top
                            anchors.rightMargin: 0
                            height: parent.height * 0.13
                            anchors.right: parent.right
                            width: parent.width * 0.1
                            checked: srp_toggle['fr2']
                                     || fr2armA.checked ? srp_toggle['fr2']["vaccum_cup_1"] : false
                            enabled: fr2armA.checked
                        }
                    }
                    Item {
                        id: nameg
                        width: parent.width * 0.67
                        height: parent.height * 0.86
                        anchors.bottom: parent.bottom
                        OnOff {
                            id: fr1Bright
                            height: parent.height * 0.13
                            anchors.left: parent.right
                            width: parent.width * 0.11
                            checked: srp_toggle['fr1']
                                     || fr1armA.checked ? srp_toggle['fr1']["vaccum_cup_2"] : false
                            enabled: fr1armA.checked
                        }
                        OnOff {
                            id: fr1armA

                            height: parent.height * 0.13
                            anchors.left: parent.right
                            anchors.bottom: parent.bottom
                            width: parent.width * 0.11
                            checked: srp_toggle['fr1'] ? srp_toggle['fr1']["enable"] : false
                        }
                    }
                    Item {
                        id: verti4
                        width: parent.width * 0.63
                        height: parent.height * 0.86
                        anchors.bottom: parent.bottom
                        OnOff {
                            id: fr1Bleft
                            anchors.top: parent.top
                            anchors.rightMargin: 0
                            height: parent.height * 0.13
                            anchors.right: parent.right
                            width: parent.width * 0.1
                            checked: srp_toggle['fr1']
                                     || fr1armA.checked ? srp_toggle['fr1']["vaccum_cup_1"] : false
                            enabled: fr1armA.checked
                        }
                    }
                }
                Item {
                    id: upperitemg
                    width: parent.width
                    height: parent.height * 0.42
                    anchors.bottom: parent.bottom
                    anchors.horizontalCenter: parent.horizontalCenter
                    Item {
                        id: fl2left_ig
                        width: parent.width * 0.095
                        height: parent.height * 0.86
                        anchors.top: parent.top
                        OnOff {
                            id: rl2Bleft
                            anchors.bottom: parent.bottom
                            anchors.rightMargin: 0
                            height: parent.height * 0.13
                            anchors.right: parent.right
                            width: parent.width * 0.75
                            checked: srp_toggle['rl2']
                                     || rl2armA.checked ? srp_toggle['rl2']["vaccum_cup_1"] : false
                            enabled: rl2armA.checked
                        }
                    }
                    Item {
                        id: dddd
                        width: parent.width * 0.14
                        height: parent.height * 0.86
                        anchors.top: parent.top
                        OnOff {
                            id: rl2armA
                            height: parent.height * 0.13
                            anchors.left: parent.right
                            anchors.top: parent.top
                            width: parent.width * 0.50
                            checked: srp_toggle['rl2'] ? srp_toggle['rl2']["enable"] : false
                        }
                        OnOff {
                            id: rl2Bright
                            anchors.bottom: parent.bottom
                            height: parent.height * 0.13
                            anchors.left: parent.right
                            width: parent.width * 0.50
                            checked: srp_toggle['rl2']
                                     || rl2armA.checked ? srp_toggle['rl2']["vaccum_cup_2"] : false
                            enabled: rl2armA.checked
                        }
                    }
                    Item {
                        id: fl1left_Igg
                        width: parent.width * 0.33
                        height: parent.height * 0.86
                        anchors.top: parent.top

                        OnOff {
                            id: rl1Bleft
                            anchors.bottom: parent.bottom
                            anchors.rightMargin: 0
                            height: parent.height * 0.13
                            anchors.right: parent.right
                            width: parent.width * 0.2
                            checked: srp_toggle['rl1']
                                     || rl1armA.checked ? srp_toggle['rl1']["vaccum_cup_1"] : false
                            enabled: rl1armA.checked
                        }
                    }

                    Item {
                        id: verti2g
                        width: parent.width * 0.37
                        height: parent.height * 0.86
                        anchors.top: parent.top
                        OnOff {
                            id: rl1armA
                            height: parent.height * 0.13
                            anchors.left: parent.right
                            anchors.top: parent.top
                            width: parent.width * 0.20
                            checked: srp_toggle['rl1'] ? srp_toggle['rl1']["enable"] : false
                        }
                        OnOff {
                            id: rl1Bright
                            height: parent.height * 0.13
                            anchors.left: parent.right
                            anchors.bottom: parent.bottom
                            width: parent.width * 0.20
                            checked: srp_toggle['rl1']
                                     || rl1armA.checked ? srp_toggle['rl1']["vaccum_cup_2"] : false
                            enabled: rl1armA.checked
                        }
                    }
                    Item {
                        id: namejg
                        width: parent.width * 0.91
                        height: parent.height * 0.86
                        anchors.top: parent.top
                        OnOff {
                            id: rr2Bright
                            anchors.bottom: parent.bottom
                            height: parent.height * 0.13
                            anchors.left: parent.right
                            width: parent.width * 0.08
                            checked: srp_toggle['rr2']
                                     || rr2armA.checked ? srp_toggle['rr2']["vaccum_cup_2"] : false
                            enabled: rr2armA.checked
                        }
                        OnOff {
                            id: rr2armA
                            anchors.top: parent.top
                            height: parent.height * 0.13
                            anchors.left: parent.right
                            width: parent.width * 0.08
                            checked: srp_toggle['rr2'] ? srp_toggle['rr2']["enable"] : false
                        }
                    }
                    Item {
                        id: nameog
                        width: parent.width * 0.87
                        height: parent.height * 0.86
                        anchors.top: parent.top
                        OnOff {
                            id: rr2Bleft
                            anchors.bottom: parent.bottom
                            anchors.rightMargin: 0
                            height: parent.height * 0.13
                            anchors.right: parent.right
                            width: parent.width * 0.1
                            checked: srp_toggle['rr2']
                                     || rr2armA.checked ? srp_toggle['rr2']["vaccum_cup_1"] : false
                            enabled: rr2armA.checked
                        }
                    }
                    Item {
                        id: namegg
                        width: parent.width * 0.67
                        height: parent.height * 0.86
                        anchors.top: parent.top
                        OnOff {
                            id: rr1armA
                            height: parent.height * 0.13
                            anchors.left: parent.right
                            anchors.top: parent.top
                            width: parent.width * 0.11
                            checked: srp_toggle['rr1'] ? srp_toggle['rr1']["enable"] : false
                        }
                        OnOff {
                            id: rr1Bright
                            height: parent.height * 0.13
                            anchors.left: parent.right
                            anchors.bottom: parent.bottom
                            width: parent.width * 0.11
                            checked: srp_toggle['rr1']
                                     || rr1armA.checked ? srp_toggle['rr1']["vaccum_cup_2"] : false
                            enabled: rr1armA.checked
                        }
                    }
                    Item {
                        id: verti4g
                        width: parent.width * 0.63
                        height: parent.height * 0.86
                        anchors.top: parent.top
                        OnOff {
                            id: rr1Bleft
                            anchors.bottom: parent.bottom
                            anchors.rightMargin: 0
                            height: parent.height * 0.13
                            anchors.right: parent.right
                            width: parent.width * 0.1
                            checked: srp_toggle['rr1']
                                     || rr1armA.checked ? srp_toggle['rr1']["vaccum_cup_1"] : false
                            enabled: rr1armA.checked
                        }
                    }
                }
            }
        }
        Rectangle {
            id: item4
            width: parent.width
            height: parent.height * 0.080
            color: Style.secondary
            anchors.right: parent.right

            Row {
                id: row6
                width: parent.width * 0.28
                height: parent.height * 0.65
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.rightMargin: 20
                spacing: 8
                layoutDirection: Qt.RightToLeft

                HoverButton {
                    id: save
                    width: parent.width * 0.3
                    height: parent.height
                    anchors.verticalCenter: parent.verticalCenter
                    steptext: qsTr("Save")
                    stepcolor: "#7d00ff"
                    stepcolortext: "white"
                    onClicked: {
                        var lst = []
                        var st_code_setuprobot
                        var srp_toggle2 = setting.get_setting()
                        lst = srp_toggle2

                        if (lst['fl2']) {
                            lst['fl2']['vaccum_cup_1'] = fl2Bleft.checked
                            lst['fl2']['vaccum_cup_2'] = fl2Bright.checked
                            lst['fl2']['enable'] = fl2armA.checked
                            st_code_setuprobot = setting.save_setting('fl2', lst['fl2'])
                        }

                        if (lst['fl1']) {
                            lst['fl1']['vaccum_cup_1'] = fl1Bleft.checked
                            lst['fl1']['vaccum_cup_2'] = fl1Bright.checked
                            lst['fl1']['enable'] = fl1armA.checked
                            st_code_setuprobot = setting.save_setting('fl1', lst['fl1'])
                        }

                        if (lst['fr2']) {
                            lst['fr2']['vaccum_cup_1'] = fr2Bleft.checked
                            lst['fr2']['vaccum_cup_2'] = fr2Bright.checked
                            lst['fr2']['enable'] = fr2armA.checked
                            st_code_setuprobot = setting.save_setting('fr2', lst['fr2'])
                        }

                        if (lst['fr1']) {
                            lst['fr1']['vaccum_cup_1'] = fr1Bleft.checked
                            lst['fr1']['vaccum_cup_2'] = fr1Bright.checked
                            lst['fr1']['enable'] = fr1armA.checked
                            st_code_setuprobot = setting.save_setting('fr1', lst['fr1'])
                        }
                        if (lst['rl2']) {
                            lst['rl2']['vaccum_cup_1'] = rl2Bleft.checked
                            lst['rl2']['vaccum_cup_2'] = rl2Bright.checked
                            lst['rl2']['enable'] = rl2armA.checked
                            st_code_setuprobot = setting.save_setting('rl2', lst['rl2'])
                        }

                        if (lst['rl1']) {
                            lst['rl1']['vaccum_cup_1'] = rl1Bleft.checked
                            lst['rl1']['vaccum_cup_2'] = rl1Bright.checked
                            lst['rl1']['enable'] = rl1armA.checked
                            st_code_setuprobot = setting.save_setting('rl1', lst['rl1'])
                        }

                        if (lst['rr2']) {
                            lst['rr2']['vaccum_cup_1'] = rr2Bleft.checked
                            lst['rr2']['vaccum_cup_2'] = rr2Bright.checked
                            lst['rr2']['enable'] = rr2armA.checked
                            st_code_setuprobot = setting.save_setting('rr2', lst['rr2'])
                        }

                        if (lst['rr1']) {
                            lst['rr1']['vaccum_cup_1'] = rr1Bleft.checked
                            lst['rr1']['vaccum_cup_2'] = rr1Bright.checked
                            lst['rr1']['enable'] = rr1armA.checked
                            st_code_setuprobot = setting.save_setting('rr1', lst['rr1'])
                        }
                        if( st_code_setuprobot ="Saved"){
                        popstatus_setuprobot.pop_message= qsTr("Robot Setup Settings Saved !")
                        popstatus_setuprobot.open()
                        }
                        else{
                        popstatus_speed.pop_message= qsTr("Robot Setup Settings NOT Saved !")
                        popstatus_speed.open()
                        }
                    }
                }

                HoverButton {
                    id: cancel
                    width: parent.width * 0.3
                    height: parent.height
                    anchors.verticalCenter: parent.verticalCenter
                    steptext: qsTr("Cancel")
                    stepcolor: "#505050"
                    stepcolortext: "white"
                    onClicked: {

                        var srp_toggle1 = setting.get_setting()

                        fl2Bleft.checked
                                = srp_toggle1['fl2'] ? srp_toggle1['fl2']["vaccum_cup_1"] : false
                        fl2Bright.checked
                                = srp_toggle1['fl2'] ? srp_toggle1['fl2']["vaccum_cup_2"] : false
                        fl2armA.checked = srp_toggle1['fl2'] ? srp_toggle1['fl2']["enable"] : false

                        fl1Bleft.checked
                                = srp_toggle1['fl1'] ? srp_toggle1['fl1']["vaccum_cup_1"] : false
                        fl1Bright.checked
                                = srp_toggle1['fl1'] ? srp_toggle1['fl1']["vaccum_cup_2"] : false
                        fl1armA.checked = srp_toggle1['fl1'] ? srp_toggle1['fl1']["enable"] : false

                        fr1Bleft.checked
                                = srp_toggle1['fr1'] ? srp_toggle1['fr1']["vaccum_cup_1"] : false
                        fr1Bright.checked
                                = srp_toggle1['fr1'] ? srp_toggle1['fr1']["vaccum_cup_2"] : false
                        fr1armA.checked = srp_toggle1['fr1'] ? srp_toggle1['fr1']["enable"] : false

                        fr2Bleft.checked
                                = srp_toggle1['fr2'] ? srp_toggle1['fr2']["vaccum_cup_1"] : false
                        fr2Bright.checked
                                = srp_toggle1['fr2'] ? srp_toggle1['fr2']["vaccum_cup_2"] : false
                        fr2armA.checked = srp_toggle1['fr2'] ? srp_toggle1['fr2']["enable"] : false

                        rl1Bleft.checked
                                = srp_toggle1['rl1'] ? srp_toggle1['rl1']["vaccum_cup_1"] : false
                        rl1Bright.checked
                                = srp_toggle1['rl1'] ? srp_toggle1['rl1']["vaccum_cup_2"] : false
                        rl1armA.checked = srp_toggle1['rl1'] ? srp_toggle1['rl1']["enable"] : false

                        rl2Bleft.checked
                                = srp_toggle1['rl2'] ? srp_toggle1['rl2']["vaccum_cup_1"] : false
                        rl2Bright.checked
                                = srp_toggle1['rl2'] ? srp_toggle1['rl2']["vaccum_cup_2"] : false
                        rl2armA.checked = srp_toggle1['rl2'] ? srp_toggle1['rl2']["enable"] : false

                        rr1Bleft.checked
                                = srp_toggle1['rr1'] ? srp_toggle1['rr1']["vaccum_cup_1"] : false
                        rr1Bright.checked
                                = srp_toggle1['rr1'] ? srp_toggle1['rr1']["vaccum_cup_2"] : false
                        rr1armA.checked = srp_toggle1['rr1'] ? srp_toggle1['rr1']["enable"] : false

                        rr2Bleft.checked
                                = srp_toggle1['rr2'] ? srp_toggle1['rr2']["vaccum_cup_1"] : false
                        rr2Bright.checked
                                = srp_toggle1['rr2'] ? srp_toggle1['rr2']["vaccum_cup_2"] : false
                        rr2armA.checked = srp_toggle1['rr2'] ? srp_toggle1['rr2']["enable"] : false
                    }
                }
            }
            
        }
    }
    UpdateStatus{
        id: popstatus_setuprobot
        width: parent.width * 0.5
        height: parent.height * 0.4
        anchors.centerIn: parent
    }
}
