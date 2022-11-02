import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Rectangle {
    id: rectangle2
    property alias deletestep: deletestep
    property alias addstep: addstep
    property alias slid122: stepbutton1.slid11
    property alias slid111: stepbutton1.slid12
    property alias stepbutton3: stepbutton3
    property alias stepbutton2: stepbutton2
    property alias stepbutton1: stepbutton1
    property string waytext
    property var component
    property var sprite
    color: Style.hoverprimary
    border.color: Style.primary

    Column {
        id: column1
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        height: parent.height * 0.95
        width: parent.width * 0.95
        spacing: 10

        StepButton {
            id: stepbutton1
            slid11: 0
            width: parent.width
            height: parent.height * 0.2
        }
        StepButton {
            id: stepbutton2

            width: parent.width
            height: parent.height * 0.2
            visible: false
        }
        StepButton {
            id: stepbutton3
            width: parent.width
            height: parent.height * 0.2
            visible: false
        }

        Item {
            id: item5
            width: parent.width
            height: parent.height * 0.3

            Row {
                id: row1
                spacing: 2
                width: parent.width * 0.7
                height: parent.height
                anchors.horizontalCenter: parent.horizontalCenter
                HoverButton {
                    id: addstep
                    stepcolor: "#7d00ff"
                    stepcolortext: "white"
                    steptext: qsTr("Add Step")

                    onClicked: {

                        if (stepbutton1.visible == true) {
                            if (stepbutton2.visible == true) {
                                stepbutton3.visible = true
                            }
                            if (stepbutton1.visible == true) {

                            }

                            stepbutton2.visible = true
                        }
                    }
                }
                HoverButton {
                    id: deletestep
                    steptext: qsTr("Delete Step")
                    stepcolor: "#de004e"
                    stepcolortext: "white"

                    onClicked: {

                        if (stepbutton1.visible == true) {
                            if (stepbutton3.visible == false) {
                                stepbutton2.visible = false
                            }
                            if (stepbutton2.visible == false
                                    && stepbutton1.checked == true) {

                            }

                            stepbutton3.visible = false
                            stepbutton1.checked = false
                        }
                    }
                }
            }
        }
    }
}
