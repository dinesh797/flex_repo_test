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
    border.color: Style.bordershallow

    property var crtp

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
                        text: qsTr("Change Robot Torque")
                        font.pixelSize: Style.font20 ? Style.font20 : 20
                        verticalAlignment: Text.AlignVCenter
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                    }

                    Text {
                        id: rr1text2
                        width: parent.width
                        height: parent.height / 2
                        color: Style.tertiary
                        text: qsTr("Tap on axis speed box to change torque for the robot")
                        anchors.top: rr1text.bottom
                        font.pixelSize: Style.font16 ? Style.font16 : 16
                        wrapMode: Text.WordWrap
                        minimumPixelSize: 2
                        fontSizeMode: Text.Fit
                    }
                }
            }
        }
        Item {
            id: namew
            width: parent.width
            height: parent.height * 0.753
            RobotTorqueMultiPop {
                id: rtp
                lighttoggle_rtmp: crtp

                anchors.fill: parent
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
                        var st_code_torque
                        var torquetoggle = setting.get_setting()

                        lst = torquetoggle

                        if (lst['fl2'])
                        {
                            lst['fl2']['axis_a_torque'] = rtp.fl2A_axisposition.changeboxB
                            lst['fl2']['axis_b_torque'] = rtp.fl2B_axisposition.changeboxB
                            st_code_torque = setting.save_setting('fl2', lst['fl2'])
                        }

                        if (lst['fl1'])
                        {
                            lst['fl1']['axis_a_torque'] = rtp.fl1A_axisposition.changeboxB

                            lst['fl1']['axis_b_torque'] = rtp.fl1B_axisposition.changeboxB
                            st_code_torque = setting.save_setting('fl1', lst['fl1'])
                        }

                        if (lst['fr2'])
                        {
                            lst['fr2']['axis_a_torque'] = rtp.fr2A_axisposition.changeboxB

                            lst['fr2']['axis_b_torque'] = rtp.fr2B_axisposition.changeboxB
                            st_code_torque = setting.save_setting('fr2', lst['fr2'])
                        }

                        if (lst['fr1'])
                        {
                            lst['fr1']['axis_a_torque'] = rtp.fr1A_axisposition.changeboxB

                            lst['fr1']['axis_b_torque'] = rtp.fr1B_axisposition.changeboxB
                            st_code_torque = setting.save_setting('fr1', lst['fr1'])
                        }
                        if (lst['rl2'])
                        {
                            lst['rl2']['axis_a_torque'] = rtp.rl2A_axisposition.changeboxB

                            lst['rl2']['axis_b_torque'] = rtp.rl2B_axisposition.changeboxB
                            st_code_torque = setting.save_setting('rl2', lst['rl2'])
                        }

                        if (lst['rl1'])
                        {
                            lst['rl1']['axis_a_torque'] = rtp.rl1A_axisposition.changeboxB

                            lst['rl1']['axis_b_torque'] = rtp.rl1B_axisposition.changeboxB
                            st_code_torque = setting.save_setting('rl1', lst['rl1'])
                        }

                        if (lst['rr2'])
                        {
                            lst['rr2']['axis_a_torque'] = rtp.rr2A_axisposition.changeboxB

                            lst['rr2']['axis_b_torque'] = rtp.rr2B_axisposition.changeboxB
                            st_code_torque = setting.save_setting('rr2', lst['rr2'])
                        }

                        if (lst['rr1'])
                        {
                            lst['rr1']['axis_a_torque'] = rtp.rr1A_axisposition.changeboxB

                            lst['rr1']['axis_b_torque'] = rtp.rr1B_axisposition.changeboxB
                            st_code_torque = setting.save_setting('rr1', lst['rr1'])
                        }
                        if(st_code_torque="Saved"){
                        popstatus_torque.pop_message= qsTr("Robot Torque Settings Saved !")
                        popstatus_torque.open()
                        }
                        else{
                        popstatus_speed.pop_message= qsTr("Robot Torque Settings NOT Saved !")
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
                }
            }
        }
    }
    UpdateStatus{
        id: popstatus_torque
        width: parent.width * 0.5
        height: parent.height * 0.4
        anchors.centerIn: parent
    }
}
