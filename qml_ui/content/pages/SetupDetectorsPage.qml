import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0
import QtQuick.Timeline 1.0

Rectangle {
    id: setuplight
    anchors.fill: parent
    color: Style.hoverprimary
    border.color: Style.bordershallow

    property var sdp_pg
    

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
                    width: parent.width
                    height: parent.height / 2
                    anchors.verticalCenter: parent.verticalCenter

                    Text {
                        id: rr1text
                        text: qsTr(
                                  "Setup Double Blank Detector (DBD) and Part Present (PP) Sensors")
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
                        text: qsTr("Use toggles to enable/disable double blank detector and part present sensors for each robot")
                        color: Style.tertiary
                        anchors.top: rr1text.bottom

                        font.pixelSize: Style.font12 ? Style.font12 : 12
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
                id: loadsensor
                width: parent.width * 0.85

                height: parent.height * 0.98
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                SetupSensorLoad {
                    id: cp
                    ssl_toggle: sdp_pg ? sdp_pg : false
                    anchors.fill: parent
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
                        var lighttoggle = setting.get_setting()
                        var st_code_detector
                        lst = lighttoggle

                        if (lst['fl2']) {
                            lst['fl2']['dbd_sensor'] = cp.fl2dbd.checked
                            lst['fl2']['pp_sensor'] = cp.fl2pp.checked
                            st_code_detector = setting.save_setting('fl2', lst['fl2'])
                        }

                        if (lst['fl1']) {
                            lst['fl1']['dbd_sensor'] = cp.fl1dbd.checked
                            lst['fl1']['pp_sensor'] = cp.fl1pp.checked
                            st_code_detector = setting.save_setting('fl1', lst['fl1'])
                        }

                        if (lst['fr2']) {
                            lst['fr2']['dbd_sensor'] = cp.fr2dbd.checked
                            lst['fr2']['pp_sensor'] = cp.fr2pp.checked
                            st_code_detector = setting.save_setting('fr2', lst['fr2'])
                        }

                        if (lst['fr1']) {
                            lst['fr1']['dbd_sensor'] = cp.fr1dbd.checked
                            lst['fr1']['pp_sensor'] = cp.fr1pp.checked
                            st_code_detector = setting.save_setting('fr1', lst['fr1'])
                        }
                        if (lst['rl2']) {
                            lst['rl2']['dbd_sensor'] = cp.rl2dbd.checked
                            lst['rl2']['pp_sensor'] = cp.rl2pp.checked
                            st_code_detector = setting.save_setting('rl2', lst['rl2'])
                        }

                        if (lst['rl1']) {
                            lst['rl1']['dbd_sensor'] = cp.rl1dbd.checked
                            lst['rl1']['pp_sensor'] = cp.rl1pp.checked
                            st_code_detector = setting.save_setting('rl1', lst['rl1'])
                        }

                        if (lst['rr2']) {
                            lst['rr2']['dbd_sensor'] = cp.rr2dbd.checked
                            lst['rr2']['pp_sensor'] = cp.rr2pp.checked
                            st_code_detector = setting.save_setting('rr2', lst['rr2'])
                        }

                        if (lst['rr1']) {
                            lst['rr1']['dbd_sensor'] = cp.rr1dbd.checked
                            lst['rr1']['pp_sensor'] = cp.rr1pp.checked
                            st_code_detector = setting.save_setting('rr1', lst['rr1'])
                        }
                        if(st_code_detector="Saved"){
                        popstatus_detector.pop_message= qsTr("Detectors Settings Saved !")
                        popstatus_detector.open()
                        }
                        else{
                        popstatus_speed.pop_message= qsTr("Detectors Settings NOT Saved !")
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

                        var lighttoggle1 = setting.get_setting()
                        cp.item.fl2dbd.checked
                                = lighttoggle1['fl2'] ? lighttoggle1['fl2']["dbd_sensor"] : false

                        cp.item.fl2pp.checked
                                = lighttoggle1['fl2'] ? lighttoggle1['fl2']["pp_sensor"] : false

                        cp.item.fl1dbd.checked
                                = lighttoggle1['fl1'] ? lighttoggle1['fl1']["dbd_sensor"] : false

                        cp.item.fl1pp.checked
                                = lighttoggle1['fl1'] ? lighttoggle1['fl1']["pp_sensor"] : false

                        cp.item.fr1dbd.checked
                                = lighttoggle1['fr1'] ? lighttoggle1['fr1']["dbd_sensor"] : false

                        cp.item.fr1pp.checked
                                = lighttoggle1['fr1'] ? lighttoggle1['fr1']["pp_sensor"] : false

                        cp.item.fr2dbd.checked
                                = lighttoggle1['fr2'] ? lighttoggle1['fr2']["dbd_sensor"] : false

                        cp.item.fr2pp.checked
                                = lighttoggle1['fr2'] ? lighttoggle1['fr2']["pp_sensor"] : false
                        cp.item.rl2dbd.checked
                                = lighttoggle1['rl2'] ? lighttoggle1['rl2']["dbd_sensor"] : false

                        cp.item.rl2pp.checked
                                = lighttoggle1['rl2'] ? lighttoggle1['rl2']["pp_sensor"] : false

                        cp.item.rl1dbd.checked
                                = lighttoggle1['rl1'] ? lighttoggle1['rl1']["dbd_sensor"] : false

                        cp.item.rl1pp.checked
                                = lighttoggle1['rl1'] ? lighttoggle1['rl1']["pp_sensor"] : false

                        cp.item.rr1dbd.checked
                                = lighttoggle1['rr1'] ? lighttoggle1['rr1']["dbd_sensor"] : false

                        cp.item.rr1pp.checked
                                = lighttoggle1['rr1'] ? lighttoggle1['rr1']["pp_sensor"] : false

                        cp.item.rr2dbd.checked
                                = lighttoggle1['rr2'] ? lighttoggle1['rr2']["dbd_sensor"] : false

                        cp.item.rr2pp.checked
                                = lighttoggle1['rr2'] ? lighttoggle1['rr2']["pp_sensor"] : false
                    }
                }
            }
        }
    }
    UpdateStatus{
        id: popstatus_detector
        width: parent.width * 0.5
        height: parent.height * 0.4
        anchors.centerIn: parent
    }
}
