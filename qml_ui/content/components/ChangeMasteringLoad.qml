import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Rectangle {
    id: rectangle22
    height: parent.height * 0.75
    color: Style.hoverprimary

    RowLayout {
        anchors.fill: parent
        spacing: 4
        Item {
            id: name
            Layout.preferredHeight: parent.height
            Layout.preferredWidth: parent.width * 0.25

            ColumnLayout {
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
                        width: parent.width * 0.99
                        height: parent.height * 0.99
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter

                        RobotSelection {
                            id: rr
                            width: parent.width 
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
                anchors.fill: parent
                sourceComponent: fl2_comp
                Component {
                    id: fl2_comp
                    MasteringPositionLoad {
                        id: fl2_src
                        anchors.fill: parent

                        Component.onCompleted: {
                            var fl2_mpl_lst = []
                            var fl2_mpl_setting = setting.get_robot_position(
                                        "fl2")
                            fl2_src.mpl_sl1 = fl2_mpl_setting['fl2'] ? fl2_mpl_setting['fl2']['axisA'] : 0
                            fl2_src.mpl_sl2 = fl2_mpl_setting['fl2'] ? fl2_mpl_setting['fl2']['axisB'] : 0
                        }
                    }
                }

                visible: false
            }
            Loader {
                id: rl2loader
                anchors.fill: parent
                sourceComponent: rl2_comp
                Component {
                    id: rl2_comp
                    MasteringPositionLoad {
                        id: rl2_src
                        anchors.fill: parent
                        Component.onCompleted: {
                            var rl2_mpl_lst = []
                            var rl2_mpl_setting = setting.get_robot_position(
                                        "rl2")
                            rl2_src.mpl_sl1 = rl2_mpl_setting['rl2'] ? rl2_mpl_setting['rl2']['axisA'] : 0
                            rl2_src.mpl_sl2 = rl2_mpl_setting['rl2'] ? rl2_mpl_setting['rl2']['axisB'] : 0
                        }
                    }
                }

                onSourceComponentChanged: animation.running = true

                NumberAnimation {
                    id: animation
                    target: rl2loader.item
                    property: "x"
                    from: 0
                    to: parent.width - rl2loader.item.width
                    duration: 1000
                    easing.type: Easing.InExpo
                }

                visible: false
            }
            Loader {
                id: fl1loader
                anchors.fill: parent
                sourceComponent: fl1_comp
                Component {
                    id: fl1_comp
                    MasteringPositionLoad {
                        id: fl1_src
                        anchors.fill: parent
                        Component.onCompleted: {
                            var fl1_mpl_lst = []
                            var fl1_mpl_setting = setting.get_robot_position(
                                        "fl1")
                            fl1_src.mpl_sl1 = fl1_mpl_setting['fl1'] ? fl1_mpl_setting['fl1']['axisA'] : 0
                            fl1_src.mpl_sl2 = fl1_mpl_setting['fl1'] ? fl1_mpl_setting['fl1']['axisB'] : 0
                        }
                    }
                }

                visible: false
            }
            Loader {
                id: rl1loader
                anchors.fill: parent
                sourceComponent: rl1_comp
                Component {
                    id: rl1_comp
                    MasteringPositionLoad {
                        id: rl1_src
                        anchors.fill: parent
                        Component.onCompleted: {
                            var rl1_mpl_lst = []
                            var rl1_mpl_setting = setting.get_robot_position(
                                        "rl1")
                            rl1_src.mpl_sl1 = rl1_mpl_setting['rl1'] ? rl1_mpl_setting['rl1']['axisA'] : 0
                            rl1_src.mpl_sl2 = rl1_mpl_setting['rl1'] ? rl1_mpl_setting['rl1']['axisB'] : 0
                        }
                    }
                }

                visible: false
            }
            Loader {
                id: fr2loader
                anchors.fill: parent
                sourceComponent: rl1_comp
                Component {
                    id: fr2_comp
                    MasteringPositionLoad {
                        id: fr2_src
                        anchors.fill: parent
                        Component.onCompleted: {
                            var fr2_mpl_lst = []
                            var fr2_mpl_setting = setting.get_robot_position(
                                        "fr2")
                            fr2_src.mpl_sl1 = fr2_mpl_setting['fr2'] ? fr2_mpl_setting['fr2']['axisA'] : 0
                            fr2_src.mpl_sl2 = fr2_mpl_setting['fr2'] ? fr2_mpl_setting['fr2']['axisB'] : 0
                        }
                    }
                }

                visible: false
            }
            Loader {
                id: rr2loader
                anchors.fill: parent
                sourceComponent: rr2_comp
                Component {
                    id: rr2_comp
                    MasteringPositionLoad {
                        id: rr2_src
                        anchors.fill: parent
                        Component.onCompleted: {
                            var rr2_mpl_lst = []
                            var rr2_mpl_setting = setting.get_robot_position(
                                        "rr2")
                            rr2_src.mpl_sl1 = rr2_mpl_setting['rr2']? rr2_mpl_setting['rr2']['axisA'] : 0
                            rr2_src.mpl_sl2 = rr2_mpl_setting['rr2']? rr2_mpl_setting['rr2']['axisB'] : 0
                        }
                    }
                }

                visible: false
            }
            Loader {
                id: fr1loader
                anchors.fill: parent
                sourceComponent: fr1_comp
                Component {
                    id: fr1_comp
                    MasteringPositionLoad {
                        id: fr1_src
                        anchors.fill: parent
                        Component.onCompleted: {
                            var fr1_mpl_lst = []
                            var fr1_mpl_setting = setting.get_robot_position(
                                        "fr1")
                            fr1_src.mpl_sl1 = fr1_mpl_setting['fr1'] ? fr1_mpl_setting['fr1']['axisA'] : 0
                            fr1_src.mpl_sl2 = fr1_mpl_setting['fr1'] ? fr1_mpl_setting['fr1']['axisB'] : 0
                        }
                    }
                }

                visible: false
            }
            Loader {
                id: rr1loader
                anchors.fill: parent
                sourceComponent: rr1_comp
                Component {
                    id: rr1_comp
                    MasteringPositionLoad {
                        id: rr1_src
                        anchors.fill: parent
                        Component.onCompleted: {
                            var rr1_mpl_lst = []
                            var rr1_mpl_setting = setting.get_robot_position(
                                        "rr1")
                            rr1_src.mpl_sl1 = rr1_mpl_setting['rr1'] ? rr1_mpl_setting['rr1']['axisA'] : 0
                            rr1_src.mpl_sl2 = rr1_mpl_setting['rr1'] ? rr1_mpl_setting['rr1']['axisB'] : 0
                        }
                    }
                }

                visible: false
            }

            Text {
                id: loadertext
                text: qsTr(" Click/select arm for Mastering Position ")
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
