import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Rectangle {
    id: programrobot
    color: Style.secondary
    property alias pp_btn: pp_btn
    property alias vc2_btn: vc2_btn
    property alias dbd_btn: dbd_btn
    property alias vc1_btn: vc1_btn

    property string waytext    
    property string vc1 
    property string vc2
    property string dbd
    property string pp
    Text {
        id: text1
        width: parent.width
        verticalAlignment: Text.AlignVCenter
        color: Style.tertiary

        text: qsTr(waytext + " Robot Settings")
        font.pixelSize: Style.font12 ? Style.font12 : 12
        fontSizeMode: Text.Fit
        minimumPixelSize: 2
    }

    Item {
        id: row1
        x: 0
        y: 14
        width: parent.width
        height: parent.height * 0.45
        anchors.top: text1.bottom

        Text {
            id: text2
            width: parent.width ** 0.7
            color: Style.tertiary

            text: qsTr("Vaccum 1 Cup")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: Style.font15 ? Style.font15 : 15
            verticalAlignment: Text.AlignVCenter
            fontSizeMode: Text.Fit
            minimumPixelSize: 2
        }

        OnOff {
            id: vc1_btn
            width: parent.width * 0.060
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: text2.right
            anchors.leftMargin: 5
            checkable: true
            checked: vc1
        }

        Item {
            id: item5
            width: parent.width * 0.5
            height: parent.height

            Text {
                id: text3
                text: qsTr("Double Blank Detection ")
                color: Style.tertiary
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: Style.font15 ? Style.font15 : 15
                verticalAlignment: Text.AlignVCenter
                fontSizeMode: Text.Fit
                minimumPixelSize: 2

                anchors.right: item5.right
                width: parent.width ** 0.85
            }
        }
        OnOff {
            id: dbd_btn
            anchors.verticalCenter: parent.verticalCenter
            width: parent.width * 0.060
            anchors.left: item5.right
            anchors.leftMargin: 5
            checkable: true
            checked: dbd
        }
    }

    Item {
        id: item7
        x: 0
        y: 224
        width: parent.width
        height: parent.height - text1.height - row1.height
        anchors.top: row1.bottom
        Text {
            id: text4
            width: parent.width ** 0.7
            text: qsTr("Vaccum 2 Cup")
            color: Style.tertiary
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: Style.font15 ? Style.font15 : 15
            verticalAlignment: Text.AlignVCenter
            fontSizeMode: Text.Fit
            minimumPixelSize: 2
        }

        Item {
            id: item8
            width: parent.width * 0.5
            height: parent.height

            Text {
                id: text8
                width: parent.width ** 0.85
                color: Style.tertiary
                text: qsTr("Part Present Detection ")
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: item8.right
                font.pixelSize: Style.font15 ? Style.font15 : 15
                verticalAlignment: Text.AlignVCenter
                fontSizeMode: Text.Fit
                minimumPixelSize: 2
            }
        }

        OnOff {
            id: vc2_btn
            x: 0
            y: 0
            width: parent.width * 0.060
            anchors.verticalCenter: text4.verticalCenter
            anchors.left: text4.right
            anchors.leftMargin: 5
            checkable: true
            checked: vc2
        }

        OnOff {
            id: pp_btn
            x: 428
            y: 34
            width: parent.width * 0.060
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: item8.right
            checkable: true
            anchors.leftMargin: 5
            checked: pp
        }
    }
}
