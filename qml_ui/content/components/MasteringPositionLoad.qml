import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

RowLayout {
    id: namegg
    Layout.preferredWidth: parent.width * 0.20

    property int mpl_sl1
    property int mpl_sl2

    RobotControl {
        id: aa1
        robottext: qsTr("Zero Position Mastering")
        Layout.preferredHeight: parent.height
        Layout.preferredWidth: parent.width * 0.365

        Connections {
            target: aa1.topleftarm
            function onClicked() {
                rp.slider.decrease()
            }
        }

        Connections {
            target: aa1.toprightarm
            function onClicked() {
                rp.slider.increase()
            }
        }
        Connections {
            target: aa1.bottomleftarm
            function onClicked() {
                rp.slider2.decrease()
            }
        }
        Connections {
            target: aa1.bottomrightarm
            function onClicked() {
                rp.slider2.increase()
            }
        }
    }
    Item {
        id: namedd
        Layout.preferredHeight: parent.height
        Layout.fillWidth: true

        MasteringPosition {
            id: rp
            anchors.fill: parent
            slider.value: mpl_sl1
            slider2.value: mpl_sl2
        }
    }
}
