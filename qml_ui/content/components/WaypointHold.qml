import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Item {
    id: item3

    property alias deletestep: deletestep
    property string armtext
    // property string x
    property alias addstep: addstep
    property int rr
    property alias st1A_get: stepbutton1.slid11
    property alias st1B_get: stepbutton1.slid12

    property alias st2A_get: stepbutton2.slid11
    property alias st2B_get: stepbutton2.slid12

    property alias st3A_get: stepbutton3.slid11
    property alias st3B_get: stepbutton3.slid12
    //ui
    property alias st1A_get_ui: stepbutton1.slid11
    property alias st1B_get_ui: stepbutton1.slid12

    property alias st2A_get_ui: stepbutton2.slid11
    property alias st2B_get_ui: stepbutton2.slid12

    property alias st3A_get_ui: stepbutton3.slid11
    property alias st3B_get_ui: stepbutton3.slid12

    property alias stepbutton3: stepbutton3
    property alias stepbutton2: stepbutton2
    property alias stepbutton1: stepbutton1
    property string waytext
    property var component
    property var sprite
    property alias ld1: ld1
    property alias ld2: ld2
    property alias ld3: ld3

    ButtonGroup {
        id: group
    }
    Column {
        id: column
        anchors.fill: parent
        spacing: 3

        Row {
            id: row
            width: parent.width
            height: parent.height * 0.055
            spacing: 10

            Rectangle {
                id: rectangle
                width: parent.width * 0.24
                height: parent.height
                color: "transparent"
                Text {
                    id: waypointtext
                    text: qsTr(waytext + " Waypoints")
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: Style.font10 ? Style.font10 : 10
                    color: Style.tertiary
                    verticalAlignment: Text.AlignVCenter
                    leftPadding: 10
                    fontSizeMode: Text.Fit
                    minimumPixelSize: 2
                }
            }

            Rectangle {
                id: rectangle3
                width: parent.width * 0.162
                height: parent.height
                color: "transparent"
                Text {
                    id: robotcontroltext
                    anchors.top: parent.top
                    text: qsTr(waytext + " Robot Control")
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: Style.font10 ? Style.font10 : 10
                    color: Style.tertiary
                    verticalAlignment: Text.AlignVCenter
                    leftPadding: 12
                    fontSizeMode: Text.Fit
                    minimumPixelSize: 2
                }
            }

            Rectangle {
                id: rectangle1
                width: parent.width * 0.6
                height: parent.height
                color: "transparent"
            }
        }
        Row {
            id: row2
            width: parent.width
            height: parent.height * 0.95
            spacing: 10

            Rectangle {
                id: rectangle2

                width: parent.width * 0.25
                height: parent.height
                color: Style.hoverprimary
                border.color: "transparent"

                Column {
                    id: column1
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.top: parent.top
                    anchors.topMargin: 0
                    anchors.horizontalCenter: parent.horizontalCenter
                    height: parent.height * 0.95
                    width: parent.width
                    spacing: 2

                    StepButton {
                        id: stepbutton1
                        steptext: qsTr("STEP 1")
                        checkable: true
                        ButtonGroup.group: group
                        width: parent.width
                        height: parent.height * 0.2

                        onClicked: {
                            way.state = "step1State"
                        }
                    }
                    StepButton {
                        id: stepbutton2
                        steptext: qsTr("STEP 2")
                        width: parent.width
                        height: parent.height * 0.2
                        visible: false
                        ButtonGroup.group: group

                        onClicked: {
                            way.state = "step2State"
                        }
                    }
                    StepButton {
                        id: stepbutton3
                        steptext: qsTr("STEP 3")
                        width: parent.width
                        height: parent.height * 0.2
                        visible: false
                        ButtonGroup.group: group
                        onClicked: {
                            way.state = "step3State"
                        }
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
                                steptext: qsTr("Add Step")

                                onClicked: {
                                    if (stepbutton1.visible == true) {
                                        if (stepbutton2.visible == true) {
                                            stepbutton3.visible = true
                                            way.state = "step4State"
                                            ld3.active = true
                                        }

                                        stepbutton2.visible = true
                                        way.state = "step4State"
                                        ld2.active = true
                                        ld1.active = true
                                    }
                                }
                            }
                            HoverButton {
                                id: deletestep
                                steptext: qsTr("Delete Step")
                                stepcolor: "#de004e"

                                onClicked: {

                                    if (stepbutton1.visible == true
                                            && stepbutton2.visible == true) {

                                        if (stepbutton3.visible == false) {
                                            stepbutton2.visible = false
                                            stepbutton2.slid11 = 0
                                            stepbutton2.slid12 = 0
                                            way.state = "step4State"
                                            ld2.active = false
                                        } else {
                                            stepbutton3.visible = false
                                            stepbutton3.slid11 = 0
                                            stepbutton3.slid12 = 0
                                            way.state = "step4State"
                                            ld3.active = false
                                            stepbutton1.checked = false
                                        }
                                    } else {
                                        stepbutton1.slid11 = 0
                                        stepbutton1.slid12 = 0
                                        way.state = "step4State"
                                    }
                                }
                            }
                        }
                    }
                }
            }
            Item {
                id: way
                height: parent.height
                width: parent.width * 0.730
                states: [
                    State {
                        name: "step1State"
                        PropertyChanges {
                            target: ld1

                            visible: true
                        }
                        PropertyChanges {
                            target: ld2
                            visible: false
                        }
                        PropertyChanges {
                            target: ld3
                            visible: false
                        }
                        PropertyChanges {
                            target: stepstext
                            visible: false
                        }
                    },
                    State {

                        name: "step2State"

                        PropertyChanges {
                            target: ld3
                            visible: false
                        }
                        PropertyChanges {
                            target: ld1
                            visible: false
                        }
                        PropertyChanges {
                            target: ld2
                            visible: true
                            active: true
                        }
                        PropertyChanges {
                            target: stepstext
                            visible: false
                        }
                    },

                    State {
                        name: "step3State"

                        PropertyChanges {
                            target: ld1
                            visible: false
                        }
                        PropertyChanges {
                            target: ld2
                            visible: false
                        }
                        PropertyChanges {
                            target: ld3
                            visible: true
                            active: true
                        }
                        PropertyChanges {
                            target: stepstext
                            visible: false
                        }
                    },
                    State {
                        name: "step4State"

                        PropertyChanges {
                            target: ld1
                            visible: false
                        }
                        PropertyChanges {
                            target: ld2
                            visible: false
                        }
                        PropertyChanges {
                            target: ld3
                            visible: false
                        }
                        PropertyChanges {
                            target: stepstext
                            visible: true
                        }
                    }
                ]

                Text {
                    id: stepstext
                    text: qsTr("Click on step for Robot Position")
                    anchors.fill: parent
                    color: Style.tertiary
                    visible: true
                    font.pixelSize: Style.font30
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    fontSizeMode: Text.Fit
                    minimumPixelSize: 2
                }

                Loader {
                    id: ld1
                    anchors.fill: parent
                    property int ld1_ax1
                    property int ld1_ax2
                    visible: false

                    sourceComponent: Component {

                        Waypointside {
                            id: wp
                            ax1: ld1_ax1 ? ld1_ax1 : 0
                            ax2: ld1_ax2 ? ld1_ax2 : 0
                            Connections {
                                target: wp.slider
                                function onValueChanged() {
                                    stepbutton1.slid11 = wp.slider.value ? wp.slider.value : 0
                                }
                            }
                            Connections {
                                target: wp.slider2
                                function onValueChanged() {
                                    stepbutton1.slid12 = wp.slider2.value ? wp.slider2.value : 0
                                }
                            }
                        }
                    }
                }
                Loader {
                    id: ld2

                    anchors.fill: parent
                    property int ld2_ax1
                    property int ld2_ax2
                    visible: false

                    sourceComponent: Component {

                        Waypointside {
                            id: wp2
                            ax1: ld2_ax1 ? ld2_ax1 : 0
                            ax2: ld2_ax2 ? ld2_ax2 : 0
                            Connections {
                                target: wp2.slider
                                function onValueChanged() {
                                    stepbutton2.slid11 = wp2.slider.value ? wp2.slider.value : 0
                                }
                            }
                            Connections {
                                target: wp2.slider2
                                function onValueChanged() {
                                    stepbutton2.slid12 = wp2.slider2.value ? wp2.slider2.value : 0
                                }
                            }
                        }
                    }
                }
                Loader {
                    id: ld3

                    anchors.fill: parent
                    property int ld3_ax1: 0
                    property int ld3_ax2: 0
                    visible: false

                    sourceComponent: Component {

                        Waypointside {
                            id: wp3
                            ax1: ld3_ax1 ? ld3_ax1 : 0
                            ax2: ld3_ax2 ? ld3_ax2 : 0
                            Connections {
                                target: wp3.slider
                                function onValueChanged() {
                                    stepbutton3.slid11 = wp3.slider.value ? wp3.slider.value : 0
                                }
                            }
                            Connections {
                                target: wp3.slider2
                                function onValueChanged() {
                                    stepbutton3.slid12 = wp3.slider2.value ? wp3.slider2.value : 0
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}