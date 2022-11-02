import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Rectangle {
    id: rectangle4
    property alias s1val: am.dial1
    property alias s2val: am.dial11

    property alias d11: am.d1
    property int nam1: am.dial1 = 0
    height: 600
    width: 600
    color: Style.hoverprimary
    property alias rc: rc
    property alias am: am
    RowLayout {
        id: row
        spacing: 10
        anchors.fill: parent
        RobotControl {
            id: rc
            Layout.preferredWidth: parent.width * 0.30105
            Layout.preferredHeight: parent.height
            Connections {
                target: rc.topleftarm
                function onClicked() {
                    am.slider.decrease()
                }
            }
            Connections {
                target: rc.toprightarm
                function onClicked() {
                    am.slider.increase()
                }
            }
            Connections {
                target: rc.bottomleftarm
                function onClicked() {
                    am.slider2.decrease()
                }
            }
            Connections {
                target: rc.bottomrightarm
                function onClicked() {
                    am.slider2.increase()
                }
            }
        }
        ArmMove {
            id: am
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        Text {
            id: text1
            text: am.dial1
            color: Style.tertiary
            font.pixelSize: Style.font12 ? Style.font12 : 12
            minimumPixelSize: 2
        }
    }
}
