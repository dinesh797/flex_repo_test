import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

RowLayout {
    id: namegg
    property alias aa1: aa1
    property int sl1
    property int sl2
    property string vc1
    property string vc2
    property alias s1val: rp.upval
    property alias s2val: rp.downval
    property alias nameddd: nameddd
    property alias rp: rp
    Layout.preferredWidth: parent.width * 0.20
    RobotControl {
        id: aa1
        Layout.preferredHeight: parent.height
        Layout.preferredWidth: parent.width * 0.3

        Connections {
            target: aa1.topleftarm
            function onClicked()
            {
                rp.slider.decrease()
            }
        }
        Connections {
            target: aa1.toprightarm
            function onClicked()
            {
                rp.slider.increase()
            }
        }
        Connections {
            target: aa1.bottomleftarm
            function onClicked()
            {
                rp.slider2.decrease()
            }
        }
        Connections {
            target: aa1.bottomrightarm
            function onClicked()
            {
                rp.slider2.increase()
            }
        }
    }
    Item {
        id: nameddd
        Layout.preferredHeight: parent.height
        Layout.fillWidth: true

        RobotPosition {
            id: rp
            anchors.fill: parent
            color: Style.secondary
            slider.value: sl1
            slider2.value: sl2
            rp_vc2.checked: vc2
            rp_vc1.checked: vc1
            property int one: dial1.dialvalue
        }
    }
}
