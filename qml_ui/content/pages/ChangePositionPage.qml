import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Rectangle {

    id: changepositionpage
    property int fl2D
    property alias back: back
    property alias cploader: cploader
    property alias cancel: cancel
    property alias save: save
    color: "transparent"
    border.color: "transparent"
    clip: true
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
                    width: parent.width * 0.4
                    height: parent.height / 2
                    anchors.verticalCenter: parent.verticalCenter

                    Text {
                        id: rr1text
                        text: qsTr("Change Position")
                        height: parent.height / 2
                        width: parent.width
                        color: Style.tertiary
                        font.pixelSize: Style.font20 ? Style.font20: 20
                        verticalAlignment: Text.AlignVCenter
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                    }

                    Text {
                        id: rr1text2
                        width: parent.width
                        height: parent.height / 2
                        text: qsTr("Select the robot and use the controls to change the position of robot")
                        color: Style.tertiary
                        anchors.top: rr1text.bottom
                        font.pixelSize: Style.font16 ? Style.font16: 16
                        wrapMode: Text.WordWrap
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                    }
                }
            }
        }
        Item {
            id: cploader
            width: parent.width
            height: parent.height * 0.75
            Rectangle {
                id: rectangle22
                anchors.fill: parent
                property int fl2up: fl2loader.up
                property int fl2down: fl2loader.down

                property int rl2up: rl2loader.up
                property int rl2down: rl2loader.down

                property int fl1up: fl1loader.up
                property int fl1down: fl1loader.down

                property int rl1up: rl1loader.up
                property int rl1down: rl1loader.down

                property int fr2up: fr2loader.up
                property int fr2down: fr2loader.down

                property int rr2up: rr2loader.up
                property int rr2down: rr2loader.down

                property int fr1up: fr1loader.up
                property int fr1down: fr1loader.down

                property int rr1up: rr1loader.up
                property int rr1down: rr1loader.down

                color: Style.hoverprimary
                border.color: Style.primary

                RowLayout {
                    id: row1
                    anchors.fill: parent
                    spacing: 4
                    Item {
                        id: name
                        Layout.preferredHeight: parent.height
                        Layout.preferredWidth: parent.width * 0.20

                        ColumnLayout {
                            id: column1
                            anchors.fill: parent
                            spacing: 4
                            Rectangle {
                                id: nameg
                                Layout.preferredWidth: parent.width
                                Layout.preferredHeight: parent.height * 0.25
                                color: Style.secondary
                                Rectangle {
                                    id: names
                                    color: Style.secondary
                                    anchors.left: parent.left
                                    anchors.right: parent.right
                                    anchors.top: parent.top
                                    anchors.bottom: parent.bottom
                                    anchors.bottomMargin: 5
                                    anchors.topMargin: 5
                                    anchors.leftMargin: 0
                                    anchors.rightMargin: 5
                                    RobotSelection {
                                        id: rr
                                        width: parent.width * 0.88
                                        anchors.right: parent.right
                                        height: parent.height
                                    }
                                }
                            }

                            ButtonSelect {
                                id: fl2button
                                Layout.preferredWidth: parent.width
                                Layout.fillHeight: true
                                buttontext: qsTr("FL2")

                                onCheckedChanged: {
                                    rr.fl2button.toggle()
                                }

                                onClicked: {
                                    rc.state = "fl2page"
                                }
                            }
                            ButtonSelect {
                                id: rl2button
                                Layout.preferredWidth: parent.width
                                Layout.fillHeight: true
                                buttontext: qsTr("RL2")

                                onCheckedChanged: rr.rl2button.toggle()

                                onClicked: rc.state = "rl2page"
                            }
                            ButtonSelect {
                                id: fl1button
                                Layout.preferredWidth: parent.width
                                Layout.fillHeight: true
                                buttontext: qsTr("FL1")

                                onCheckedChanged: rr.fl1button.toggle()

                                onClicked: rc.state = "fl1page"
                            }
                            ButtonSelect {
                                id: rl1button
                                Layout.preferredWidth: parent.width
                                Layout.fillHeight: true
                                buttontext: qsTr("RL1")

                                onCheckedChanged: rr.rl1button.toggle()

                                onClicked: rc.state = "rl1page"
                            }
                            ButtonSelect {
                                id: fr2button
                                Layout.preferredWidth: parent.width
                                Layout.fillHeight: true
                                buttontext: qsTr("FR2")

                                onCheckedChanged: rr.fr2button.toggle()

                                onClicked: rc.state = "fr2page"
                            }
                            ButtonSelect {
                                id: rr2button
                                Layout.preferredWidth: parent.width
                                Layout.fillHeight: true
                                buttontext: qsTr("RR2")

                                onCheckedChanged: rr.rr2button.toggle()

                                onClicked: rc.state = "rr2page"
                            }
                            ButtonSelect {
                                id: fr1button
                                Layout.preferredWidth: parent.width
                                Layout.fillHeight: true
                                buttontext: qsTr("FR1")

                                onCheckedChanged: rr.fr1button.toggle()

                                onClicked: rc.state = "fr1page"
                            }
                            ButtonSelect {
                                id: rr1button
                                Layout.preferredWidth: parent.width
                                Layout.fillHeight: true
                                buttontext: qsTr("RR1")

                                onCheckedChanged: rr.rr1button.toggle()

                                onClicked: rc.state = "rr1page"
                            }
                        }
                    }
                    Item {
                        id: rc
                        Layout.preferredHeight: parent.height
                        Layout.fillWidth: true

                        Loader {
                            id: fl2loader
                            property int up: fl2loader.item.upp
                            property int down: fl2loader.item.downn
                            anchors.fill: parent
                            sourceComponent: fl2_comp
                            Component {
                                id: fl2_comp
                                RobotPositionLoad {
                                    id: rpl_fl2
                                    property int upp: s1val
                                    property int downn: s2val

                                    property string vc11
                                    property string vc22

                                    anchors.fill: parent

                                    Component.onCompleted: {
                                        var fl2_mpl_lst = []
                                        var fl2_mpl_setting = setting.get_robot_position(
                                            "fl2")
                                            rpl_fl2.sl1 = fl2_mpl_setting['fl2']['axisA']
                                            rpl_fl2.sl2 = fl2_mpl_setting['fl2']['axisB']
                                            rpl_fl2.vc1 = fl2_mpl_setting['fl2']['vacuumCup1']
                                            rpl_fl2.vc2 = fl2_mpl_setting['fl2']['vacuumCup2']

                                        }
                                    }
                                }

                                visible: false
                            }
                            Loader {
                                id: rl2loader
                                property int up: rl2loader.item.upp
                                property int down: rl2loader.item.downn
                                anchors.fill: parent
                                sourceComponent: rl2_comp
                                Component {
                                    id: rl2_comp
                                    RobotPositionLoad {
                                        id: rpl_rl2
                                        property int upp: s1val
                                        property int downn: s2val

                                        property string vc11
                                        property string vc22

                                        anchors.fill: parent

                                        Component.onCompleted: {
                                            var fl2_mpl_lst = []
                                            var fl2_mpl_setting = setting.get_robot_position(
                                                "fl2")
                                                rpl_rl2.sl1 = fl2_mpl_setting['fl2']['axisA']
                                                rpl_rl2.sl2 = fl2_mpl_setting['fl2']['axisB']
                                                rpl_rl2.vc1 = fl2_mpl_setting['fl2']['vacuumCup1']
                                                rpl_rl2.vc2 = fl2_mpl_setting['fl2']['vacuumCup2']

                                            }
                                        }
                                    }
                                    visible: false
                                }
                                Loader {
                                    id: fl1loader
                                    property int up: fl1loader.item.upp
                                    property int down: fl1loader.item.downn
                                    anchors.fill: parent
                                    sourceComponent: fl1_comp
                                    Component {
                                        id: fl1_comp
                                        RobotPositionLoad {
                                            id: rpl_fl1
                                            property int upp: s1val
                                            property int downn: s2val

                                            property string vc11
                                            property string vc22

                                            anchors.fill: parent

                                            Component.onCompleted: {
                                                var fl2_mpl_lst = []
                                                var fl2_mpl_setting = setting.get_robot_position(
                                                    "fl2")
                                                    rpl_fl1.sl1 = fl2_mpl_setting['fl2']['axisA']
                                                    rpl_fl1.sl2 = fl2_mpl_setting['fl2']['axisB']
                                                    rpl_fl1.vc1 = fl2_mpl_setting['fl2']['vacuumCup1']
                                                    rpl_fl1.vc2 = fl2_mpl_setting['fl2']['vacuumCup2']

                                                }
                                            }
                                        }
                                        visible: false
                                    }
                                    Loader {
                                        id: rl1loader
                                        property int up: rl1loader.item.upp
                                        property int down: rl1loader.item.downn
                                        anchors.fill: parent
                                        sourceComponent: rl1_comp
                                        Component {
                                            id: rl1_comp
                                            RobotPositionLoad {
                                                id: rpl_rl1
                                                property int upp: s1val
                                                property int downn: s2val

                                                property string vc11
                                                property string vc22

                                                anchors.fill: parent

                                                Component.onCompleted: {
                                                    var fl2_mpl_lst = []
                                                    var fl2_mpl_setting = setting.get_robot_position(
                                                        "fl2")
                                                        rpl_rl1.sl1 = fl2_mpl_setting['fl2']['axisA']
                                                        rpl_rl1.sl2 = fl2_mpl_setting['fl2']['axisB']
                                                        rpl_rl1.vc1 = fl2_mpl_setting['fl2']['vacuumCup1']
                                                        rpl_rl1.vc2 = fl2_mpl_setting['fl2']['vacuumCup2']

                                                    }
                                                }
                                            }
                                            visible: false
                                        }
                                        Loader {
                                            id: fr2loader
                                            anchors.fill: parent
                                            property int up: fr2loader.item.upp
                                            property int down: fr2loader.item.downn
                                            sourceComponent: fr2_comp
                                            Component {
                                                id: fr2_comp
                                                RobotPositionLoad {
                                                    id: rpl_fr2
                                                    property int upp: s1val
                                                    property int downn: s2val

                                                    property string vc11
                                                    property string vc22

                                                    anchors.fill: parent

                                                    Component.onCompleted: {
                                                        var fl2_mpl_lst = []
                                                        var fl2_mpl_setting = setting.get_robot_position(
                                                            "fl2")
                                                            rpl_fr2.sl1 = fl2_mpl_setting['fl2']['axisA']
                                                            rpl_fr2.sl2 = fl2_mpl_setting['fl2']['axisB']
                                                            rpl_fr2.vc1 = fl2_mpl_setting['fl2']['vacuumCup1']
                                                            rpl_fr2.vc2 = fl2_mpl_setting['fl2']['vacuumCup2']

                                                        }
                                                    }
                                                }
                                                visible: false
                                            }
                                            Loader {
                                                id: rr2loader
                                                property int up: rr2loader.item.upp
                                                property int down: rr2loader.item.downn
                                                anchors.fill: parent
                                                sourceComponent: rr2_comp
                                                Component {
                                                    id: rr2_comp
                                                    RobotPositionLoad {
                                                        id: rpl_rr2
                                                        property int upp: s1val
                                                        property int downn: s2val

                                                        property string vc11
                                                        property string vc22

                                                        anchors.fill: parent

                                                        Component.onCompleted: {
                                                            var fl2_mpl_lst = []
                                                            var fl2_mpl_setting = setting.get_robot_position(
                                                                "fl2")
                                                                rpl_rr2.sl1 = fl2_mpl_setting['fl2']['axisA']
                                                                rpl_rr2.sl2 = fl2_mpl_setting['fl2']['axisB']
                                                                rpl_rr2.vc1 = fl2_mpl_setting['fl2']['vacuumCup1']
                                                                rpl_rr2.vc2 = fl2_mpl_setting['fl2']['vacuumCup2']

                                                            }
                                                        }
                                                    }
                                                    visible: false
                                                }
                                                Loader {
                                                    id: fr1loader
                                                    property int up: fr1loader.item.upp
                                                    property int down: fr1loader.item.downn
                                                    anchors.fill: parent
                                                    sourceComponent: fr1_comp
                                                    Component {
                                                        id: fr1_comp
                                                        RobotPositionLoad {
                                                            id: rpl_fr1
                                                            property int upp: s1val
                                                            property int downn: s2val

                                                            property string vc11
                                                            property string vc22

                                                            anchors.fill: parent

                                                            Component.onCompleted: {
                                                                var fl2_mpl_lst = []
                                                                var fl2_mpl_setting = setting.get_robot_position(
                                                                    "fl2")
                                                                    rpl_fr1.sl1 = fl2_mpl_setting['fl2']['axisA']
                                                                    rpl_fr1.sl2 = fl2_mpl_setting['fl2']['axisB']
                                                                    rpl_fr1.vc1 = fl2_mpl_setting['fl2']['vacuumCup1']
                                                                    rpl_fr1.vc2 = fl2_mpl_setting['fl2']['vacuumCup2']

                                                                }
                                                            }
                                                        }
                                                        visible: false
                                                    }
                                                    Loader {
                                                        id: rr1loader
                                                        property int up: rr1loader.item.upp
                                                        property int down: rr1loader.item.downn
                                                        anchors.fill: parent
                                                        sourceComponent: rr1_comp
                                                        Component {
                                                            id: rr1_comp
                                                            RobotPositionLoad {
                                                                id: rpl_rr1
                                                                property int upp: s1val
                                                                property int downn: s2val

                                                                property string vc11
                                                                property string vc22

                                                                anchors.fill: parent

                                                                Component.onCompleted: {
                                                                    var fl2_mpl_lst = []
                                                                    var fl2_mpl_setting = setting.get_robot_position(
                                                                        "fl2")
                                                                        rpl_rr1.sl1 = fl2_mpl_setting['fl2']['axisA']
                                                                        rpl_rr1.sl2 = fl2_mpl_setting['fl2']['axisB']
                                                                        rpl_rr1.vc1 = fl2_mpl_setting['fl2']['vacuumCup1']
                                                                        rpl_rr1.vc2 = fl2_mpl_setting['fl2']['vacuumCup2']

                                                                    }
                                                                }
                                                            }
                                                            visible: false
                                                        }

                                                        Text {
                                                            id: loadertext
                                                            text: qsTr("Click/select arm for Robot Position")
                                                            anchors.fill: parent
                                                            color: Style.tertiary
                                                            visible: true
                                                            font.pixelSize: Style.font30
                                                            horizontalAlignment: Text.AlignHCenter
                                                            verticalAlignment: Text.AlignVCenter
                                                            fontSizeMode: Text.Fit
                                                            minimumPixelSize: 2
                                                        }

                                                        states: [
                                                            State {
                                                                name: "fl2page"

                                                                PropertyChanges {
                                                                    target: fl2loader
                                                                    active: true
                                                                    visible: true
                                                                }
                                                                PropertyChanges {
                                                                    target: loadertext
                                                                    visible: false
                                                                }
                                                            },

                                                            State {
                                                                name: "rl2page"

                                                                PropertyChanges {
                                                                    target: rl2loader
                                                                    active: true
                                                                    visible: true
                                                                }
                                                                PropertyChanges {
                                                                    target: loadertext
                                                                    visible: false
                                                                }
                                                            },
                                                            State {

                                                                name: "fl1page"

                                                                PropertyChanges {
                                                                    target: fl1loader
                                                                    active: true
                                                                    visible: true
                                                                }
                                                                PropertyChanges {
                                                                    target: loadertext
                                                                    visible: false
                                                                }
                                                            },
                                                            State {

                                                                name: "rl1page"
                                                                PropertyChanges {
                                                                    target: rl1loader
                                                                    active: true
                                                                    visible: true
                                                                }
                                                                PropertyChanges {
                                                                    target: loadertext
                                                                    visible: false
                                                                }
                                                            },
                                                            State {

                                                                name: "fr2page"

                                                                PropertyChanges {
                                                                    target: fr2loader
                                                                    active: true
                                                                    visible: true
                                                                }
                                                                PropertyChanges {
                                                                    target: loadertext
                                                                    visible: false
                                                                }
                                                            },
                                                            State {

                                                                name: "rr2page"

                                                                PropertyChanges {
                                                                    target: rr2loader
                                                                    active: true
                                                                    visible: true
                                                                }
                                                                PropertyChanges {
                                                                    target: loadertext
                                                                    visible: false
                                                                }
                                                            },
                                                            State {

                                                                name: "fr1page"

                                                                PropertyChanges {
                                                                    target: fr1loader
                                                                    active: true
                                                                    visible: true
                                                                }
                                                                PropertyChanges {
                                                                    target: loadertext
                                                                    visible: false
                                                                }
                                                            },
                                                            State {

                                                                name: "rr1page"

                                                                PropertyChanges {
                                                                    target: rr1loader
                                                                    active: true
                                                                    visible: true
                                                                }
                                                                PropertyChanges {
                                                                    target: loadertext
                                                                    visible: false
                                                                }
                                                            }
                                                        ]
                                                    }
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
                                                spacing: 5
                                                height: parent.height * 0.65
                                                anchors.verticalCenter: parent.verticalCenter
                                                anchors.right: parent.right
                                                anchors.rightMargin: 20
                                                layoutDirection: Qt.RightToLeft

                                                HoverButton {
                                                    id: cancel
                                                    width: parent.width * 0.3
                                                    height: parent.height
                                                    anchors.verticalCenter: parent.verticalCenter
                                                    steptext: qsTr("Cancel")
                                                    stepcolor: "#505050"
                                                    stepcolortext: "white"

                                                    // onClicked: {

                                                    //     // cp.active = !cp.active
                                                    //     // cp.active = !cp.active
                                                    // }
                                                }

                                                HoverButton {
                                                    id: save
                                                    width: parent.width * 0.3
                                                    height: parent.height
                                                    anchors.verticalCenter: parent.verticalCenter
                                                    steptext: qsTr("Save")
                                                    stepcolor: "#7d00ff"
                                                    stepcolortext: "white"
                                                }

                                                HoverButton {
                                                    id: back
                                                    width: parent.width * 0.3
                                                    height: parent.height
                                                    anchors.verticalCenter: parent.verticalCenter
                                                    steptext: qsTr("Back")
                                                    stepcolor: "#505050"
                                                    stepcolortext: "white"
                                                }
                                            }
                                        }
                                    }
                                }
