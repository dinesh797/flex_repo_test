import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Rectangle {
    id: rectangle22
    color: Style.secondary
    property var ssl_toggle 

    property alias fl2dbd : fl2dbd
    property alias fl2pp : fl2pp

    property alias fl1dbd : fl1dbd
    property alias fl1pp : fl1pp
    
    property alias fr2dbd : fr2dbd
    property alias fr2pp : fr2pp
    
    property alias fr1dbd : fr1dbd
    property alias fr1pp : fr1pp



    property alias rl2dbd : rl2dbd
    property alias rl2pp : rl2pp

    property alias rl1dbd : rl1dbd
    property alias rl1pp : rl1pp
    
    property alias rr2dbd : rr2dbd
    property alias rr2pp : rr2pp
    
    property alias rr1dbd : rr1dbd
    property alias rr1pp : rr1pp
 
    
    


    Assembly {
        id: rectangle1
        width: parent.width * 0.9
        height: parent.height * 0.7
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
            height: parent.height * 0.78
            anchors.bottom: parent.bottom
            OnOff {
                id: fl2dbd
                anchors.top: parent.top
                anchors.rightMargin: 0
                height: parent.height * 0.13
                anchors.right: parent.right
                width: parent.width * 0.75
                
                checked: ssl_toggle['fl2'] ? ssl_toggle['fl2']["dbd_sensor"] : false

            }
        }
        Item {
            id: zz11
            width: parent.width * 0.095
            height: parent.height * 0.98
            anchors.bottom: parent.bottom
            Text {
                id: rr1te
                text: qsTr("DBD")
                anchors.top: parent.top
                anchors.rightMargin: 0
                height: parent.height * 0.13
                anchors.right: parent.right
                width: parent.width * 0.50
                color: Style.tertiary
               font.pixelSize: Style.font20 ? Style.font20 : 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.topMargin: 0
                fontSizeMode: Text.Fit
                minimumPixelSize: 2
            }
        }
        Item {
            id: fl2right_i
            width: parent.width * 0.14
            height: parent.height * 0.78
            anchors.bottom: parent.bottom
            OnOff {
                id: fl2pp
                height: parent.height * 0.13
                anchors.left: parent.right
                width: parent.width * 0.50
                checked: ssl_toggle['fl2'] ? ssl_toggle['fl2']["pp_sensor"] : false

            }
        }
        Item {
            id: fl2pp_i
            width: parent.width * 0.14
            height: parent.height * 0.98
            anchors.bottom: parent.bottom
            Text {
                id: fl2pptext
                text: qsTr("PP")
                anchors.top: parent.top
                anchors.rightMargin: 0
                height: parent.height * 0.13
                anchors.left: parent.right
                width: parent.width * 0.50
                color: Style.tertiary
               font.pixelSize: Style.font20 ? Style.font20 : 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.topMargin: 0
                fontSizeMode: Text.Fit
                minimumPixelSize: 2
            }
        }
        Item {
            id: fl1left_I
            width: parent.width * 0.33
            height: parent.height * 0.78
            anchors.bottom: parent.bottom
            OnOff {
                id: fl1dbd
                anchors.top: parent.top
                anchors.rightMargin: 0
                height: parent.height * 0.13
                anchors.right: parent.right
                width: parent.width * 0.2
                checked: ssl_toggle['fl1'] ? ssl_toggle['fl1']["dbd_sensor"] : false

            }
        }
        Item {
            id: dbdleft_I
            width: parent.width * 0.33
            height: parent.height * 0.98
            anchors.bottom: parent.bottom
            Text {
                id: rr1t
                text: qsTr("DBD")
                anchors.top: parent.top
                anchors.rightMargin: 0
                height: parent.height * 0.13
                anchors.right: parent.right
                width: parent.width * 0.20
                color: Style.tertiary
               font.pixelSize: Style.font20 ? Style.font20 : 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.topMargin: 0
                fontSizeMode: Text.Fit
                minimumPixelSize: 2
            }
        }

        Item {
            id: verti2
            width: parent.width * 0.37
            height: parent.height * 0.78
            anchors.bottom: parent.bottom

            Item {
                id: item344
                width: parent.width * 0.7
                height: parent.height * 0.3
                anchors.left: parent.right

                OnOff {
                    id: fl1pp
                    anchors.top: parent.top
                    height: parent.height * 0.48
                    width: parent.width / 4
                    checked: ssl_toggle['fl1'] ? ssl_toggle['fl1']["pp_sensor"] : false

                }
            }
        }
        Item {
            id: nameff
            width: parent.width * 0.37
            height: parent.height * 0.98
            anchors.bottom: parent.bottom
            Text {
                id: fl2ppff
                text: qsTr("PP")
                anchors.top: parent.top
                anchors.rightMargin: 0
                height: parent.height * 0.13
                anchors.left: parent.right
                width: parent.width * 0.20
                color: Style.tertiary
               font.pixelSize: Style.font20 ? Style.font20 : 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.topMargin: 0
                fontSizeMode: Text.Fit
                minimumPixelSize: 2
            }
        }
        Item {
            id: verti3
            width: parent.width * 0.63
            height: parent.height * 0.98
            anchors.bottom: parent.bottom
            Text {
                id: rr1td
                text: qsTr("DBD")
                anchors.top: parent.top
                anchors.rightMargin: 0
                height: parent.height * 0.13
                anchors.right: parent.right
                width: parent.width * 0.10
                color: Style.tertiary
               font.pixelSize: Style.font20 ? Style.font20 : 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.topMargin: 0
                fontSizeMode: Text.Fit
                minimumPixelSize: 2
            }
        }
        Item {
            id: namep
            width: parent.width * 0.67
            height: parent.height * 0.98
            anchors.bottom: parent.bottom
            Text {
                id: fl2ppv
                text: qsTr("PP")
                anchors.top: parent.top
                anchors.rightMargin: 0
                height: parent.height * 0.13
                anchors.left: parent.right
                width: parent.width * 0.10
                color: Style.tertiary
               font.pixelSize: Style.font20 ? Style.font20 : 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.topMargin: 0
                fontSizeMode: Text.Fit
                minimumPixelSize: 2
            }
        }
        Item {
            id: namej
            width: parent.width * 0.91
            height: parent.height * 0.78
            anchors.bottom: parent.bottom
            OnOff {
                id: fr2pp

                height: parent.height * 0.13
                anchors.left: parent.right
                width: parent.width * 0.08
                checked: ssl_toggle['fr2'] ? ssl_toggle['fr2']["pp_sensor"] : false
            }
        }
        Item {
            id: namek
            width: parent.width * 0.91
            height: parent.height * 0.98
            anchors.bottom: parent.bottom
            Text {
                id: fl2p
                text: qsTr("PP")
                anchors.top: parent.top
                anchors.rightMargin: 0
                height: parent.height * 0.13
                anchors.left: parent.right
                width: parent.width * 0.08
                color: Style.tertiary
               font.pixelSize: Style.font20 ? Style.font20 : 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.topMargin: 0
                fontSizeMode: Text.Fit
                minimumPixelSize: 2
            }
        }
        Item {
            id: namel
            width: parent.width * 0.87
            height: parent.height * 0.98
            anchors.bottom: parent.bottom
            Text {
                id: rr1
                text: qsTr("DBD")
                anchors.top: parent.top
                anchors.rightMargin: 0
                height: parent.height * 0.13
                anchors.right: parent.right
                width: parent.width * 0.10
                color: Style.tertiary
               font.pixelSize: Style.font20 ? Style.font20 : 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.topMargin: 0
                fontSizeMode: Text.Fit
                minimumPixelSize: 2
            }
        }
        Item {
            id: nameo
            width: parent.width * 0.87
            height: parent.height * 0.78
            anchors.bottom: parent.bottom
            OnOff {
                id: fr2dbd
                anchors.top: parent.top
                anchors.rightMargin: 0
                height: parent.height * 0.13
                anchors.right: parent.right
                width: parent.width * 0.1
                checked: ssl_toggle['fr2'] ? ssl_toggle['fr2']["dbd_sensor"] : false
            }
        }
        Item {
            id: nameg
            width: parent.width * 0.67
            height: parent.height * 0.78
            anchors.bottom: parent.bottom
            OnOff {
                id: fr1pp
                height: parent.height * 0.13
                anchors.left: parent.right
                width: parent.width * 0.10
                checked: ssl_toggle['fr1'] ? ssl_toggle['fr1']["pp_sensor"] : false
            }
        }
        Item {
            id: verti4
            width: parent.width * 0.63
            height: parent.height * 0.78
            anchors.bottom: parent.bottom
            OnOff {
                id: fr1dbd
                anchors.top: parent.top
                anchors.rightMargin: 0
                height: parent.height * 0.13
                anchors.right: parent.right
                width: parent.width * 0.1
                checked: ssl_toggle['fr1'] ? ssl_toggle['fr1']["dbd_sensor"] : false
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
            height: parent.height * 0.78
            anchors.top: parent.top
            OnOff {
                id: rl2dbd
                anchors.bottom: parent.bottom
                anchors.rightMargin: 0
                height: parent.height * 0.13
                anchors.right: parent.right
                width: parent.width * 0.75
                checked: ssl_toggle['rl2'] ? ssl_toggle['rl2']["dbd_sensor"] : false

            }
        }
        Item {
            id: zz11g
            width: parent.width * 0.095
            height: parent.height * 0.98
            anchors.top: parent.top
            Text {
                id: rr1teg
                text: qsTr("DBD")
                anchors.bottom: parent.bottom
                anchors.rightMargin: 0
                height: parent.height * 0.13
                anchors.right: parent.right
                width: parent.width * 0.50
                color: Style.tertiary
               font.pixelSize: Style.font20 ? Style.font20 : 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.topMargin: 0
                fontSizeMode: Text.Fit
                minimumPixelSize: 2
            }
        }
        Item {
            id: fl2right_ig
            width: parent.width * 0.14
            height: parent.height * 0.78
            anchors.top: parent.top
            OnOff {
                id: rl2pp
                anchors.bottom: parent.bottom
                height: parent.height * 0.13
                anchors.left: parent.right
                width: parent.width * 0.50
                checked: ssl_toggle['rl2'] ? ssl_toggle['rl2']["pp_sensor"] : false
            }
        }
        Item {
            id: fl2pp_ig
            width: parent.width * 0.14
            height: parent.height * 0.98
            anchors.top: parent.top
            Text {
                id: fl2ppg
                text: qsTr("PP")
                anchors.bottom: parent.bottom
                anchors.rightMargin: 0
                height: parent.height * 0.13
                anchors.left: parent.right
                width: parent.width * 0.50
                color: Style.tertiary
               font.pixelSize: Style.font20 ? Style.font20 : 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.topMargin: 0
                fontSizeMode: Text.Fit
                minimumPixelSize: 2
            }
        }
        Item {
            id: fl1left_Igg
            width: parent.width * 0.33
            height: parent.height * 0.78
            anchors.top: parent.top

            OnOff {
                id: rl1dbd
                anchors.bottom: parent.bottom
                anchors.rightMargin: 0
                height: parent.height * 0.13
                anchors.right: parent.right
                width: parent.width * 0.2
                checked: ssl_toggle['rl1'] ? ssl_toggle['rl1']["dbd_sensor"] : false

            }
        }
        Item {
            id: dbdleft_Ig
            width: parent.width * 0.33
            height: parent.height * 0.98
            anchors.top: parent.top
            Text {
                id: rr1tg
                text: qsTr("DBD")
                anchors.bottom: parent.bottom
                anchors.rightMargin: 0
                height: parent.height * 0.13
                anchors.right: parent.right
                width: parent.width * 0.20
                color: Style.tertiary
               font.pixelSize: Style.font20 ? Style.font20 : 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.topMargin: 0
                fontSizeMode: Text.Fit
                minimumPixelSize: 2
            }
        }

        Item {
            id: verti2g
            width: parent.width * 0.37
            height: parent.height * 0.78
            anchors.top: parent.top

            Item {
                id: item344g
                width: parent.width * 0.7
                height: parent.height * 0.3
                anchors.left: parent.right
                anchors.bottom: parent.bottom

                OnOff {
                    id: rl1pp
                    anchors.bottom: parent.bottom
                    height: parent.height * 0.48
                    width: parent.width / 4
                    checked: ssl_toggle['rl1'] ? ssl_toggle['rl1']["pp_sensor"] : false
                    
                }
            }
        }
        Item {
            id: nameffg
            width: parent.width * 0.37
            height: parent.height * 0.98
            anchors.top: parent.top
            Text {
                id: fl2ppffg
                text: qsTr("PP")
                anchors.bottom: parent.bottom
                anchors.rightMargin: 0
                height: parent.height * 0.13
                anchors.left: parent.right
                width: parent.width * 0.20
                color: Style.tertiary
               font.pixelSize: Style.font20 ? Style.font20 : 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.topMargin: 0
                fontSizeMode: Text.Fit
                minimumPixelSize: 2
            }
        }
        Item {
            id: verti3g
            width: parent.width * 0.63
            height: parent.height * 0.98
            anchors.top: parent.top
            Text {
                id: rr1tdg
                text: qsTr("DBD")
                anchors.bottom: parent.bottom
                anchors.rightMargin: 0
                height: parent.height * 0.13
                anchors.right: parent.right
                width: parent.width * 0.10
                color: Style.tertiary
               font.pixelSize: Style.font20 ? Style.font20 : 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.topMargin: 0
                fontSizeMode: Text.Fit
                minimumPixelSize: 2
            }
        }
        Item {
            id: namepg
            width: parent.width * 0.67
            height: parent.height * 0.98
            anchors.top: parent.top
            Text {
                id: fl2ppvg
                text: qsTr("PP")
                anchors.bottom: parent.bottom
                anchors.rightMargin: 0
                height: parent.height * 0.13
                anchors.left: parent.right
                width: parent.width * 0.10
                color: Style.tertiary
               font.pixelSize: Style.font20 ? Style.font20 : 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.topMargin: 0
                fontSizeMode: Text.Fit
                minimumPixelSize: 2
            }
        }
        Item {
            id: namejg
            width: parent.width * 0.91
            height: parent.height * 0.78
            anchors.top: parent.top
            OnOff {
                id: rr2pp
                anchors.bottom: parent.bottom
                height: parent.height * 0.13
                anchors.left: parent.right
                width: parent.width * 0.08

                checked: ssl_toggle['rr2'] ? ssl_toggle['rr2']["pp_sensor"] : false
            }
        }
        Item {
            id: namekg
            width: parent.width * 0.91
            height: parent.height * 0.98
            anchors.top: parent.top
            Text {
                id: fl2pg
                text: qsTr("PP")
                anchors.bottom: parent.bottom
                anchors.rightMargin: 0
                height: parent.height * 0.13
                anchors.left: parent.right
                width: parent.width * 0.08
                color: Style.tertiary
               font.pixelSize: Style.font20 ? Style.font20 : 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.topMargin: 0
                fontSizeMode: Text.Fit
                minimumPixelSize: 2
            }
        }
        Item {
            id: namelg
            width: parent.width * 0.87
            height: parent.height * 0.98
            anchors.top: parent.top
            Text {
                id: rr1g
                text: qsTr("DBD")
                anchors.bottom: parent.bottom
                anchors.rightMargin: 0
                height: parent.height * 0.13
                anchors.right: parent.right
                width: parent.width * 0.10
                color: Style.tertiary
               font.pixelSize: Style.font20 ? Style.font20 : 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.topMargin: 0
                fontSizeMode: Text.Fit
                minimumPixelSize: 2
            }
        }
        Item {
            id: nameog
            width: parent.width * 0.87
            height: parent.height * 0.78
            anchors.top: parent.top
            OnOff {
                id: rr2dbd
                anchors.bottom: parent.bottom
                anchors.rightMargin: 0
                height: parent.height * 0.13
                anchors.right: parent.right
                width: parent.width * 0.1
                checked: ssl_toggle['rr2'] ? ssl_toggle['rr2']["dbd_sensor"] : false
            }
        }
        Item {
            id: namegg
            width: parent.width * 0.67
            height: parent.height * 0.78
            anchors.top: parent.top
            OnOff {
                id: rr1pp
                anchors.bottom: parent.bottom
                height: parent.height * 0.13
                anchors.left: parent.right
                width: parent.width * 0.10
                checked: ssl_toggle['rr1'] ? ssl_toggle['rr1']["pp_sensor"] : false
            }
        }
        Item {
            id: verti4g
            width: parent.width * 0.63
            height: parent.height * 0.78
            anchors.top: parent.top
            OnOff {
                id: rr1dbd
                anchors.bottom: parent.bottom
                anchors.rightMargin: 0
                height: parent.height * 0.13
                anchors.right: parent.right
                width: parent.width * 0.1
                checked: ssl_toggle['rr1'] ? ssl_toggle['rr1']["dbd_sensor"] : false
            }
        }
    }
}
