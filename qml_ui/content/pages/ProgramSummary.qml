import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Rectangle {
    id: setuplight
    property alias progtext: progtext
    property alias sc: sc
    property alias back: back
    color: Style.hoverprimary
    border.color: Style.bordershallow
    property string progname
    property var data_summary 

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
                        id: progtext
                        text: qsTr("Program Summary - ") + progname

                        height: parent.height / 2
                        width: parent.width
                        color: Style.tertiary

                        font.pixelSize: Style.font20 ? Style.font20: 20
                        verticalAlignment: Text.AlignVCenter
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                    }

                    Text {
                        id: txt
                        width: parent.width
                        height: parent.height / 2
                        text: qsTr("Here is the summary of the program")
                        color: Style.tertiary
                        anchors.top: progtext.bottom

                        font.pixelSize: Style.font12 ? Style.font12: 12
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
                id: summary_item
                width: parent.width * 0.99

                height: parent.height
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter

                SummaryComp {
                    id: sc
                    anchors.fill: parent
                    fl2dbd_checked:  data_summary['fl2'] ? data_summary['fl2']['dbd_sensor'] : false 
                    fl2pp_checked: data_summary['fl2'] ? data_summary['fl2']['pp_sensor'] : false

                    fl1dbd_checked:  data_summary['fl1'] ? data_summary['fl1']['dbd_sensor'] : false 
                    fl1pp_checked: data_summary['fl1'] ? data_summary['fl1']['pp_sensor'] : false

                    fr2dbd_checked:  data_summary['fr2'] ? data_summary['fr2']['dbd_sensor'] : false 
                    fr2pp_checked: data_summary['fr2'] ? data_summary['fr2']['pp_sensor'] : false 

                    fr1dbd_checked:  data_summary['fr1'] ? data_summary['fr1']['dbd_sensor'] : false 
                    fr1pp_checked: data_summary['fr1'] ? data_summary['fr1']['pp_sensor'] : false 

                    rl2dbd_checked:  data_summary['rl2'] ? data_summary['rl2']['dbd_sensor'] : false 
                    rl2pp_checked: data_summary['rl2'] ? data_summary['rl2']['pp_sensor'] : false 

                    rl1dbd_checked:  data_summary['rl1'] ? data_summary['rl1']['dbd_sensor'] : false 
                    rl1pp_checked: data_summary['rl1'] ? data_summary['rl1']['pp_sensor'] : false 

                    rr2dbd_checked:  data_summary['rr2'] ? data_summary['rr2']['dbd_sensor'] : false 
                    rr2pp_checked: data_summary['rr2'] ? data_summary['rr2']['pp_sensor'] : false 

                    rr1dbd_checked:  data_summary['rr1'] ? data_summary['rr1']['dbd_sensor'] : false 
                    rr1pp_checked: data_summary['rr1'] ? data_summary['rr1']['pp_sensor'] : false  

                    fl2_step1_A : data_summary['fl2'] ? data_summary['fl2']['waypoints'] ? data_summary['fl2']['waypoints'][0]['A'] : 0 : 0
                    fl2_step1_B : data_summary['fl2'] ? data_summary['fl2']['waypoints'] ? data_summary['fl2']['waypoints'][0]['B'] : 0 : 0
                    fl2_step2_A : data_summary['fl2'] ? data_summary['fl2']['waypoints'] ? data_summary['fl2']['waypoints'][1]['A'] : 0 : 0
                    fl2_step2_B : data_summary['fl2'] ? data_summary['fl2']['waypoints'] ? data_summary['fl2']['waypoints'][1]['B'] : 0 : 0
                    fl2_step3_A : data_summary['fl2'] ? data_summary['fl2']['waypoints'] ? data_summary['fl2']['waypoints'][2]['A'] : 0 : 0
                    fl2_step3_B : data_summary['fl2'] ? data_summary['fl2']['waypoints'] ? data_summary['fl2']['waypoints'][2]['B'] : 0 : 0
                    fl1_step1_A : data_summary['fl1'] ? data_summary['fl1']['waypoints'] ? data_summary['fl1']['waypoints'][0]['A'] : 0 : 0
                    fl1_step1_B : data_summary['fl1'] ? data_summary['fl1']['waypoints'] ? data_summary['fl1']['waypoints'][0]['B'] : 0 : 0
                    fl1_step2_A : data_summary['fl1'] ? data_summary['fl1']['waypoints'] ? data_summary['fl1']['waypoints'][1]['A'] : 0 : 0
                    fl1_step2_B : data_summary['fl1'] ? data_summary['fl1']['waypoints'] ? data_summary['fl1']['waypoints'][1]['B'] : 0 : 0
                    fl1_step3_A : data_summary['fl1'] ? data_summary['fl1']['waypoints'] ? data_summary['fl1']['waypoints'][2]['A'] : 0 : 0
                    fl1_step3_B : data_summary['fl1'] ? data_summary['fl1']['waypoints'] ? data_summary['fl1']['waypoints'][2]['B'] : 0 : 0
                    fr2_step1_A : data_summary['fr2'] ? data_summary['fr2']['waypoints'] ? data_summary['fr2']['waypoints'][0]['A'] : 0 : 0
                    fr2_step1_B : data_summary['fr2'] ? data_summary['fr2']['waypoints'] ? data_summary['fr2']['waypoints'][0]['B'] : 0 : 0
                    fr2_step2_A : data_summary['fr2'] ? data_summary['fr2']['waypoints'] ? data_summary['fr2']['waypoints'][1]['A'] : 0 : 0
                    fr2_step2_B : data_summary['fr2'] ? data_summary['fr2']['waypoints'] ? data_summary['fr2']['waypoints'][1]['B'] : 0 : 0
                    fr2_step3_A : data_summary['fr2'] ? data_summary['fr2']['waypoints'] ? data_summary['fr2']['waypoints'][2]['A'] : 0 : 0
                    fr2_step3_B : data_summary['fr2'] ? data_summary['fr2']['waypoints'] ? data_summary['fr2']['waypoints'][2]['B'] : 0 : 0
                    fr1_step1_A : data_summary['fr1'] ? data_summary['fr1']['waypoints'] ? data_summary['fr1']['waypoints'][0]['A'] : 0 : 0
                    fr1_step1_B : data_summary['fr1'] ? data_summary['fr1']['waypoints'] ? data_summary['fr1']['waypoints'][0]['B'] : 0 : 0
                    fr1_step2_A : data_summary['fr1'] ? data_summary['fr1']['waypoints'] ? data_summary['fr1']['waypoints'][1]['A'] : 0 : 0
                    fr1_step2_B : data_summary['fr1'] ? data_summary['fr1']['waypoints'] ? data_summary['fr1']['waypoints'][1]['B'] : 0 : 0
                    fr1_step3_A : data_summary['fr1'] ? data_summary['fr1']['waypoints'] ? data_summary['fr1']['waypoints'][2]['A'] : 0 : 0
                    fr1_step3_B : data_summary['fr1'] ? data_summary['fr1']['waypoints'] ? data_summary['fr1']['waypoints'][2]['B'] : 0 : 0
                    rl2_step1_A : data_summary['rl2'] ? data_summary['rl2']['waypoints'] ? data_summary['rl2']['waypoints'][0]['A'] : 0 : 0
                    rl2_step1_B : data_summary['rl2'] ? data_summary['rl2']['waypoints'] ? data_summary['rl2']['waypoints'][0]['B'] : 0 : 0
                    rl2_step2_A : data_summary['rl2'] ? data_summary['rl2']['waypoints'] ? data_summary['rl2']['waypoints'][1]['A'] : 0 : 0
                    rl2_step2_B : data_summary['rl2'] ? data_summary['rl2']['waypoints'] ? data_summary['rl2']['waypoints'][1]['B'] : 0 : 0
                    rl2_step3_A : data_summary['rl2'] ? data_summary['rl2']['waypoints'] ? data_summary['rl2']['waypoints'][2]['A'] : 0 : 0
                    rl2_step3_B : data_summary['rl2'] ? data_summary['rl2']['waypoints'] ? data_summary['rl2']['waypoints'][2]['B'] : 0 : 0
                    rl1_step1_A : data_summary['rl1'] ? data_summary['rl1']['waypoints'] ? data_summary['rl1']['waypoints'][0]['A'] : 0 : 0
                    rl1_step1_B : data_summary['rl1'] ? data_summary['rl1']['waypoints'] ? data_summary['rl1']['waypoints'][0]['B'] : 0 : 0
                    rl1_step2_A : data_summary['rl1'] ? data_summary['rl1']['waypoints'] ? data_summary['rl1']['waypoints'][1]['A'] : 0 : 0
                    rl1_step2_B : data_summary['rl1'] ? data_summary['rl1']['waypoints'] ? data_summary['rl1']['waypoints'][1]['B'] : 0 : 0
                    rl1_step3_A : data_summary['rl1'] ? data_summary['rl1']['waypoints'] ? data_summary['rl1']['waypoints'][2]['A'] : 0 : 0
                    rl1_step3_B : data_summary['rl1'] ? data_summary['rl1']['waypoints'] ? data_summary['rl1']['waypoints'][2]['B'] : 0 : 0
                    rr2_step1_A : data_summary['rr2'] ? data_summary['rr2']['waypoints'] ? data_summary['rr2']['waypoints'][0]['A'] : 0 : 0
                    rr2_step1_B : data_summary['rr2'] ? data_summary['rr2']['waypoints'] ? data_summary['rr2']['waypoints'][0]['B'] : 0 : 0
                    rr2_step2_A : data_summary['rr2'] ? data_summary['rr2']['waypoints'] ? data_summary['rr2']['waypoints'][1]['A'] : 0 : 0
                    rr2_step2_B : data_summary['rr2'] ? data_summary['rr2']['waypoints'] ? data_summary['rr2']['waypoints'][1]['B'] : 0 : 0
                    rr2_step3_A : data_summary['rr2'] ? data_summary['rr2']['waypoints'] ? data_summary['rr2']['waypoints'][2]['A'] : 0 : 0
                    rr2_step3_B : data_summary['rr2'] ? data_summary['rr2']['waypoints'] ? data_summary['rr2']['waypoints'][2]['B'] : 0 : 0
                    rr1_step1_A : data_summary['rr1'] ? data_summary['rr1']['waypoints'] ? data_summary['rr1']['waypoints'][0]['A'] : 0 : 0
                    rr1_step1_B : data_summary['rr1'] ? data_summary['rr1']['waypoints'] ? data_summary['rr1']['waypoints'][0]['B'] : 0 : 0
                    rr1_step2_A : data_summary['rr1'] ? data_summary['rr1']['waypoints'] ? data_summary['rr1']['waypoints'][1]['A'] : 0 : 0
                    rr1_step2_B : data_summary['rr1'] ? data_summary['rr1']['waypoints'] ? data_summary['rr1']['waypoints'][1]['B'] : 0 : 0
                    rr1_step3_A : data_summary['rr1'] ? data_summary['rr1']['waypoints'] ? data_summary['rr1']['waypoints'][2]['A'] : 0 : 0
                    rr1_step3_B : data_summary['rr1'] ? data_summary['rr1']['waypoints'] ? data_summary['rr1']['waypoints'][2]['B'] : 0 : 0

                    
                    // fl1dbd.checked: data_summary['fl1'] ? data_summary['fl1']['dbd_sensor'] : false
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
                spacing: 5

                width: parent.width * 0.28
                height: parent.height * 0.65
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.rightMargin: 20
                layoutDirection: Qt.RightToLeft
                HoverButton {
                    id: back
                    width: parent.width * 0.3
                    height: parent.height
                    anchors.verticalCenter: parent.verticalCenter
                    steptext: qsTr("Back")
                    stepcolor: "#7d00ff"
                    stepcolortext: "white"

                    onClicked: {
                        stackView6.pop()
                    }
                }
            }
        }
    }

}
