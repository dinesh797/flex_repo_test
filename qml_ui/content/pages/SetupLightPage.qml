import QtQuick
// import QtQuick.Controls
// import QtQuick.Controls 2.3
import "../components"
// import "../pages"
import "../theme"
// import QtQuick.Layouts 6.0

Rectangle {
    id: setuplight
    anchors.fill: parent
    color: Style.hoverprimary
    border.color: Style.bordershallow
    property var setup_light_toggle

    Column {
        id: column
        anchors.fill: parent
        spacing: 4

        Item {
            id: topbar
            width: parent.width
            height: parent.height * 0.15

            Row {
                id: row
                anchors.fill: parent

                Item {
                    id: item2
                    width: parent.width * 0.4
                    height: parent.height / 2
                    anchors.verticalCenter: parent.verticalCenter

                    Text {
                        id: rr1text
                        text: qsTr("Setup Lights")
                        height: parent.height / 2
                        width: parent.width
                        color: Style.tertiary
                        font.pixelSize: Style.font20 ? Style.font20 : 20
                        verticalAlignment: Text.AlignVCenter
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                    }

                    Text {
                        id: rr1text2
                        width: parent.width
                        height: parent.height / 2
                        text: qsTr("Use toggles to on/off the lights on the robots")
                        color: Style.tertiary
                        anchors.top: rr1text.bottom
                        font.pixelSize: Style.font16 ? Style.font16 : 16
                        wrapMode: Text.WordWrap
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
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
                id: light
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
                        id: verti1
                        width: parent.width * 0.14
                        height: parent.height * 0.88
                        anchors.bottom: parent.bottom

                        Item {
                            id: item3
                            width: parent.width * 0.7
                            height: parent.height * 0.3
                            anchors.left: parent.right

                            OnOff {
                                id: fl2armBaaxis
                                anchors.top: parent.top
                                height: parent.height * 0.4
                                width: parent.width
                                checked: setup_light_toggle['fl2'] ? setup_light_toggle['fl2']["axis_b_light"] : false
                            }
                        }
                        Item {
                            id: item33
                            width: parent.width * 0.7
                            height: parent.height * 0.3
                            anchors.left: parent.right
                            anchors.bottom: parent.bottom

                            OnOff {
                                id: fl2armAaaxis
                                anchors.bottom: parent.bottom
                                height: parent.height * 0.4
                                width: parent.width
                                checked: setup_light_toggle['fl2'] ? setup_light_toggle['fl2']["axis_a_light"] : false
                            }
                        }
                    }
                    Item {
                        id: verti2
                        width: parent.width * 0.38
                        height: parent.height * 0.88
                        anchors.bottom: parent.bottom
                        Item {
                            id: item344
                            width: parent.width * 0.7
                            height: parent.height * 0.3
                            anchors.left: parent.right

                            OnOff {
                                id: fl1armBaaxis
                                anchors.top: parent.top
                                height: parent.height * 0.4
                                width: parent.width / 3
                                checked: setup_light_toggle['fl1'] ? setup_light_toggle['fl1']['axis_b_light'] : false
                            }
                        }
                        Item {
                            id: item334
                            width: parent.width * 0.7
                            height: parent.height * 0.3
                            anchors.left: parent.right
                            anchors.bottom: parent.bottom

                            OnOff {
                                id: fl1armAaaxis
                                anchors.bottom: parent.bottom
                                height: parent.height * 0.4
                                width: parent.width / 3
                                checked: setup_light_toggle['fl1'] ? setup_light_toggle['fl1']["axis_a_light"] : false
                            }
                        }
                    }
                    Item {
                        id: verti3
                        width: parent.width * 0.68
                        height: parent.height * 0.88
                        anchors.bottom: parent.bottom
                        Item {
                            id: item3443
                            width: parent.width * 0.7
                            height: parent.height * 0.3
                            anchors.left: parent.right

                            OnOff {
                                id: fr1armBaaxis
                                anchors.top: parent.top
                                height: parent.height * 0.4
                                width: parent.width / 6
                                checked: setup_light_toggle['fr1'] ? setup_light_toggle['fr1']["axis_b_light"] : false
                            }
                        }
                        Item {
                            id: item3342
                            width: parent.width * 0.7
                            height: parent.height * 0.3
                            anchors.left: parent.right
                            anchors.bottom: parent.bottom

                            OnOff {
                                id: fr1armAaaxis
                                anchors.bottom: parent.bottom
                                height: parent.height * 0.4
                                width: parent.width / 6
                                checked: setup_light_toggle['fr1'] ? setup_light_toggle['fr1']["axis_a_light"] : false
                            }
                        }
                    }
                    Item {
                        id: verti4
                        width: parent.width * 0.92
                        height: parent.height * 0.88
                        anchors.bottom: parent.bottom
                        Item {
                            id: item34434
                            width: parent.width * 0.7
                            height: parent.height * 0.3
                            anchors.left: parent.right

                            OnOff {
                                id: fr2armBaaxis
                                anchors.top: parent.top
                                height: parent.height * 0.4
                                width: parent.width / 8
                                checked: setup_light_toggle['fr2'] ? setup_light_toggle['fr2']["axis_b_light"] : false
                            }
                        }
                        Item {
                            id: item33424
                            width: parent.width * 0.7
                            height: parent.height * 0.3
                            anchors.left: parent.right
                            anchors.bottom: parent.bottom

                            OnOff {
                                id: fr2armAaaxis
                                anchors.bottom: parent.bottom
                                height: parent.height * 0.4
                                width: parent.width / 8
                                checked: setup_light_toggle['fr2'] ? setup_light_toggle['fr2']["axis_a_light"] : false
                            }
                        }
                    }
                }

                Item {
                    id: bottomitem
                    width: parent.width
                    height: parent.height * 0.42
                    anchors.bottom: parent.bottom
                    Item {
                        id: verti11
                        width: parent.width * 0.14
                        height: parent.height * 0.88
                        anchors.top: parent.top

                        Item {
                            id: item32
                            width: parent.width * 0.7
                            height: parent.height * 0.3
                            anchors.left: parent.right
                            OnOff {
                                id: rl2armAaaxis
                                width: parent.width
                                height: parent.height * 0.4
                                anchors.top: parent.top
                                checked: setup_light_toggle['rl2'] ? setup_light_toggle['rl2']["axis_a_light"] : false
                    
                            }
                        }

                        Item {
                            id: item331
                            width: parent.width * 0.7
                            height: parent.height * 0.3
                            anchors.left: parent.right
                            anchors.bottom: parent.bottom
                            OnOff {
                                id: rl2armBaaxis
                                width: parent.width
                                height: parent.height * 0.4
                                anchors.bottom: parent.bottom
                                checked: setup_light_toggle['rl2'] ? setup_light_toggle['rl2']["axis_b_light"] : false
                            }
                        }
                    }

                    Item {
                        id: verti22
                        width: parent.width * 0.38
                        height: parent.height * 0.88
                        anchors.top: parent.top
                        Item {
                            id: item3442
                            width: parent.width * 0.7
                            height: parent.height * 0.3
                            anchors.left: parent.right
                            OnOff {
                                id: rl1armAaaxis
                                width: parent.width / 3
                                height: parent.height * 0.4
                                anchors.top: parent.top
                                checked: setup_light_toggle['rl1'] ? setup_light_toggle['rl1']["axis_a_light"] : false
                            }
                        }

                        Item {
                            id: item33422
                            width: parent.width * 0.7
                            height: parent.height * 0.3
                            anchors.left: parent.right
                            anchors.bottom: parent.bottom
                            OnOff {
                                id: rl1armBaaxis
                                width: parent.width / 3
                                height: parent.height * 0.4
                                anchors.bottom: parent.bottom
                                checked: setup_light_toggle['rl1'] ? setup_light_toggle['rl1']["axis_b_light"] : false
                            }
                        }
                    }

                    Item {
                        id: verti32
                        width: parent.width * 0.68
                        height: parent.height * 0.88
                        anchors.top: parent.top
                        Item {
                            id: item34432
                            width: parent.width * 0.7
                            height: parent.height * 0.3
                            anchors.left: parent.right
                            OnOff {
                                id: rr1armAaaxis
                                width: parent.width / 6
                                height: parent.height * 0.4
                                anchors.top: parent.top
                                checked: setup_light_toggle['rr1'] ? setup_light_toggle['rr1']["axis_a_light"] : false
                            }
                        }

                        Item {
                            id: item334222
                            width: parent.width * 0.7
                            height: parent.height * 0.3
                            anchors.left: parent.right
                            anchors.bottom: parent.bottom
                            OnOff {
                                id: rr1armBaaxis
                                width: parent.width / 6
                                height: parent.height * 0.4
                                anchors.bottom: parent.bottom
                                checked: setup_light_toggle['rr1'] ? setup_light_toggle['rr1']["axis_b_light"] : false
                            }
                        }
                    }

                    Item {
                        id: verti42
                        width: parent.width * 0.92
                        height: parent.height * 0.88
                        anchors.top: parent.top
                        Item {
                            id: item344342
                            width: parent.width * 0.7
                            height: parent.height * 0.3
                            anchors.left: parent.right
                            OnOff {
                                id: rr2armAaaxis
                                width: parent.width / 8
                                height: parent.height * 0.4
                                anchors.top: parent.top
                                checked: setup_light_toggle['rr2'] ? setup_light_toggle['rr2']["axis_a_light"] : false
                            }
                        }

                        Item {
                            id: item3342422
                            width: parent.width * 0.7
                            height: parent.height * 0.3
                            anchors.left: parent.right
                            anchors.bottom: parent.bottom
                            OnOff {
                                id: rr2armBaaxis
                                width: parent.width / 8
                                height: parent.height * 0.4
                                anchors.bottom: parent.bottom
                                checked: setup_light_toggle['rr2'] ? setup_light_toggle['rr2']["axis_b_light"] : false
                            }
                        }
                    }
                }
            }
        }

        Rectangle {
            id: bottombutton
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
                        var st_code
                        var setup_light_toggle2 = setting.get_setting(
                                    ) ? setting.get_setting() : undefined

                        lst = setup_light_toggle2
                        if (lst['fl2']) {
                            lst['fl2']['axis_a_light'] = fl2armAaaxis.checked
                            lst['fl2']['axis_b_light'] = fl2armBaaxis.checked
                            st_code = setting.save_setting('fl2', lst['fl2'])
                        }

                        if (lst['fl1']) {
                            lst['fl1']['axis_a_light'] = fl1armAaaxis.checked
                            lst['fl1']['axis_b_light'] = fl1armBaaxis.checked
                            st_code = setting.save_setting('fl1', lst['fl1'])
                        }

                        if (lst['fr2']) {
                            lst['fr2']['axis_a_light'] = fr2armAaaxis.checked
                            lst['fr2']['axis_b_light'] = fr2armBaaxis.checked
                            st_code = setting.save_setting('fr2', lst['fr2'])
                        }

                        if (lst['fr1']) {
                            lst['fr1']['axis_a_light'] = fr1armAaaxis.checked
                            lst['fr1']['axis_b_light'] = fr1armBaaxis.checked
                            st_code = setting.save_setting('fr1', lst['fr1'])
                        }

                        if (lst['rl2']) {
                            lst['rl2']['axis_a_light'] = rl2armAaaxis.checked
                            lst['rl2']['axis_b_light'] = rl2armBaaxis.checked
                            st_code = setting.save_setting('rl2', lst['rl2'])
                        }

                        if (lst['rl1']) {
                            lst['rl1']['axis_a_light'] = rl1armAaaxis.checked
                            lst['rl1']['axis_b_light'] = rl1armBaaxis.checked
                            st_code = setting.save_setting('rl1', lst['rl1'])
                        }

                        if (lst['rr2']) {
                            lst['rr2']['axis_a_light'] = rl2armAaaxis.checked
                            lst['rr2']['axis_b_light'] = rl2armBaaxis.checked
                            st_code = setting.save_setting('rr2', lst['rr2'])
                        }

                        if (lst['rr1']) {
                            lst['rr1']['axis_a_light'] = rr1armAaaxis.checked
                            lst['rr1']['axis_b_light'] = rr1armBaaxis.checked
                            st_code = setting.save_setting('rr1', lst['rr1'])
                        }
                        if(st_code="Saved"){
                        popstatus_light.pop_message= qsTr("Light Settings Saved !")
                        popstatus_light.open()
                        }
                        else{
                        popstatus_speed.pop_message= qsTr("Light Settings NOT Saved !")
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

                        var setup_light_toggle1 = setting.get_setting()
                        fl2armAaaxis.checked = setup_light_toggle1['fl2'] ? setup_light_toggle1['fl2']["axis_a_light"] : false
                        fl2armBaaxis.checked = setup_light_toggle1['fl2'] ? setup_light_toggle1['fl2']["axis_b_light"] : false

                        fl1armAaaxis.checked = setup_light_toggle1['fl1'] ? setup_light_toggle1['fl1']["axis_a_light"] : false
                        fl1armBaaxis.checked = setup_light_toggle1['fl1'] ? setup_light_toggle1['fl1']["axis_b_light"] : false

                        fr2armAaaxis.checked = setup_light_toggle1['fr2'] ? setup_light_toggle1['fr2']["axis_a_light"] : false
                        fr2armBaaxis.checked = setup_light_toggle1['fr2'] ? setup_light_toggle1['fr2']["axis_b_light"] : false

                        fr1armAaaxis.checked = setup_light_toggle1['fr1'] ? setup_light_toggle1['fr1']["axis_a_light"] : false
                        fr1armBaaxis.checked = setup_light_toggle1['fr1'] ? setup_light_toggle1['fr1']["axis_b_light"] : false

                        rl2armAaaxis.checked = setup_light_toggle1['rl2'] ? setup_light_toggle1['rl2']["axis_a_light"] : false
                        rl2armBaaxis.checked = setup_light_toggle1['rl2'] ? setup_light_toggle1['rl2']["axis_b_light"] : false

                        rl1armAaaxis.checked = setup_light_toggle1['rl1'] ? setup_light_toggle1['rl1']["axis_a_light"] : false
                        rl1armBaaxis.checked = setup_light_toggle1['rl1'] ? setup_light_toggle1['rl1']["axis_b_light"] : false

                        rr2armAaaxis.checked = setup_light_toggle1['rr2'] ? setup_light_toggle1['rr2']["axis_a_light"] : false
                        rr2armBaaxis.checked = setup_light_toggle1['rr2'] ? setup_light_toggle1['rr2']["axis_b_light"] : false

                        rr1armAaaxis.checked = setup_light_toggle1['rr1'] ? setup_light_toggle1['rr1']["axis_a_light"] : false
                        rr1armBaaxis.checked = setup_light_toggle1['rr1'] ? setup_light_toggle1['rr1']["axis_b_light"] : false
                    }
                }
            }
        }
    }
    UpdateStatus{
        id: popstatus_light
        width: parent.width * 0.5
        height: parent.height * 0.4
        anchors.centerIn: parent
    }
}
