import QtQuick
// import QtQuick.Controls
// import QtQuick.Controls 2.3
import "../components"
// import "../pages"
import "../theme"
// import QtQuick.Layouts 6.0

Rectangle {
    id: sp
    property string changeValA
    property string changeValB
    property string changeVal
    property var lighttoggle_rsmp

    property alias rr2B_axisposition: rr2B_axisposition
    property alias rr2A_axisposition: rr2A_axisposition

    property alias rr1B_axisposition: rr1B_axisposition
    property alias rr1A_axisposition: rr1A_axisposition

    property alias rl1B_axisposition: rl1B_axisposition
    property alias rl1A_axisposition: rl1A_axisposition

    property alias fr2B_axisposition: fr2B_axisposition
    property alias fr1A_axisposition: fr1A_axisposition

    property alias fr1B_axisposition: fr1B_axisposition
    property alias fl1A_axisposition: fl1A_axisposition

    property alias fl1B_axisposition: fl1B_axisposition
    property alias fl2B_axisposition: fl2B_axisposition

    property alias fl2A_axisposition: fl2A_axisposition
    color: Style.secondary
    property alias rl2B_axisposition: rl2B_axisposition
    property alias rl2A_axisposition: rl2A_axisposition
    property alias fr2A_axisposition: fr2A_axisposition
    Rectangle {
        id: mainScreen
        width: parent.width
        color: Style.secondary
        anchors.verticalCenter: parent.verticalCenter
        height: parent.height
        Rectangle {
            id: namew
            width: parent.width * 0.85
            height: parent.height
            color: Style.secondary
            anchors.horizontalCenter: parent.horizontalCenter

            Assembly {
                id: rectangle1
                x: 30
                y: 15
                width: parent.width * 0.9
                height: parent.height * 0.8
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Item {
                id: upperitem
                width: parent.width
                height: parent.height * 0.42
                anchors.top: parent.top
                anchors.horizontalCenter: parent.horizontalCenter

                Item {
                    id: verti2
                    width: parent.width * 0.37
                    height: parent.height * 0.88
                    anchors.bottom: parent.bottom
                }
            }
            Item {
                id: upperitem1
                width: parent.width
                height: parent.height * 0.42
                anchors.top: parent.top

                Item {
                    id: verti1
                    width: parent.width * 0.145
                    height: parent.height * 0.88
                    anchors.bottom: parent.bottom

                    Item {
                        id: item3
                        width: parent.width * 0.6
                        height: parent.height * 0.6
                        anchors.left: parent.right

                        Item {
                            id: name
                            width: parent.width * 0.99
                            height: parent.height * 0.3
                            anchors.bottom: parent.bottom
                            anchors.horizontalCenter: parent.horizontalCenter
                            anchors.bottomMargin: 0

                            ChangeBox {
                                id: fl2A_axisposition
                                anchors.fill: parent
                                changeboxA: "A"
                                changeboxB: lighttoggle_rsmp['fl2'] ? lighttoggle_rsmp['fl2']['axis_a_speed'] : 0

                                units: "RPM"

                                onClicked: {
                                    fl2Apop.open()
                                }
                            }
                        }
                    }

                    Item {
                        id: item33
                        width: parent.width * 0.6
                        height: parent.height * 0.3
                        anchors.left: parent.right
                        anchors.bottom: parent.bottom

                        Item {
                            id: name3
                            width: parent.width * 0.99
                            height: parent.height * 0.6
                            anchors.bottom: parent.bottom
                            anchors.horizontalCenter: parent.horizontalCenter
                            anchors.bottomMargin: 0

                            ChangeBox {
                                id: fl2B_axisposition
                                anchors.fill: parent
                                changeboxA: "B"
                                changeboxB: lighttoggle_rsmp['fl2'] ? lighttoggle_rsmp['fl2']['axis_b_speed'] : 0
                                units: "RPM"

                                onClicked: fl2Bpop.open()
                            }
                        }
                    }
                }

                Item {
                    id: verti21
                    width: parent.width * 0.38
                    height: parent.height * 0.88
                    anchors.bottom: parent.bottom

                    Item {
                        id: item31
                        width: parent.width * 0.25
                        height: parent.height * 0.6
                        anchors.left: parent.right
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 0

                        Item {
                            id: name1
                            width: parent.width * 0.99
                            height: parent.height * 0.3
                            anchors.bottom: parent.bottom
                            anchors.horizontalCenter: parent.horizontalCenter
                            anchors.bottomMargin: 0

                            ChangeBox {
                                id: fl1B_axisposition
                                anchors.fill: parent
                                changeboxA: "B"
                                changeboxB: lighttoggle_rsmp['fl1'] ? lighttoggle_rsmp['fl1']['axis_b_speed'] : 0
                                units: "RPM"

                                onClicked: fl1Bpop.open()
                            }
                        }
                        Item {
                            id: name11
                            width: parent.width * 0.99
                            height: parent.height * 0.3
                            anchors.top: parent.top
                            anchors.horizontalCenter: parent.horizontalCenter

                            ChangeBox {
                                id: fl1A_axisposition
                                anchors.fill: parent
                                changeboxA: "A"
                                changeboxB: lighttoggle_rsmp['fl1'] ? lighttoggle_rsmp['fl1']['axis_a_speed'] : 0
                                units: "RPM"

                                onClicked: fl1Apop.open()
                            }
                        }
                    }
                }

                Item {
                    id: verti31
                    width: parent.width * 0.68
                    height: parent.height * 0.88
                    anchors.bottom: parent.bottom

                    Item {
                        id: item31q
                        width: parent.width * 0.13
                        height: parent.height * 0.6
                        anchors.left: parent.right
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 0

                        Item {
                            id: name1q
                            width: parent.width * 0.99
                            height: parent.height * 0.3
                            anchors.bottom: parent.bottom
                            anchors.bottomMargin: 0

                            ChangeBox {
                                id: fr1B_axisposition
                                anchors.fill: parent
                                changeboxA: "B"
                                changeboxB: lighttoggle_rsmp['fr1'] ? lighttoggle_rsmp['fr1']['axis_b_speed'] : 0
                                units: "RPM"

                                onClicked: fr1Bpop.open()
                            }
                            anchors.horizontalCenter: parent.horizontalCenter
                        }

                        Item {
                            id: name11q
                            width: parent.width * 0.99
                            height: parent.height * 0.3
                            anchors.top: parent.top

                            ChangeBox {
                                id: fr1A_axisposition
                                anchors.fill: parent
                                changeboxA: "A"
                                changeboxB: lighttoggle_rsmp['fr1'] ? lighttoggle_rsmp['fr1']['axis_a_speed'] : 0
                                units: "RPM"

                                onClicked: fr1Apop.open()
                            }
                            anchors.horizontalCenter: parent.horizontalCenter
                        }
                    }
                }

                Item {
                    id: verti41
                    width: parent.width * 0.92
                    height: parent.height * 0.88
                    anchors.bottom: parent.bottom

                    Item {
                        id: item31q1
                        width: parent.width * 0.099
                        height: parent.height * 0.6
                        anchors.left: parent.right
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 0

                        Item {
                            id: name1q1
                            width: parent.width * 0.99
                            height: parent.height * 0.3
                            anchors.bottom: parent.bottom
                            anchors.bottomMargin: 0

                            ChangeBox {
                                id: fr2B_axisposition
                                anchors.fill: parent
                                changeboxA: "B"
                                changeboxB: lighttoggle_rsmp['fr2'] ? lighttoggle_rsmp['fr2']['axis_b_speed'] : 0
                                units: "RPM"

                                onClicked: fr2Bpop.open()
                            }
                            anchors.horizontalCenter: parent.horizontalCenter
                        }

                        Item {
                            id: name11q1
                            width: parent.width * 0.99
                            height: parent.height * 0.3
                            anchors.top: parent.top
                            ChangeBox {
                                id: fr2A_axisposition
                                anchors.fill: parent
                                changeboxA: "A"
                                changeboxB: lighttoggle_rsmp['fr2'] ? lighttoggle_rsmp['fr2']['axis_a_speed'] : 0
                                units: "RPM"

                                onClicked: fr2Apop.open()
                            }
                            anchors.horizontalCenter: parent.horizontalCenter
                        }
                    }
                }
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Item {
                id: upperitemg
                x: 0
                y: 209
                width: parent.width
                height: parent.height * 0.42
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Item {
                id: upperitemf
                x: 0
                y: 209
                width: parent.width
                height: parent.height * 0.42
                anchors.bottom: parent.bottom

                Item {
                    id: verti2f
                    width: parent.width * 0.38
                    height: parent.height * 0.88
                    anchors.top: parent.top

                    Item {
                        id: item31f
                        width: parent.width * 0.25
                        height: parent.height * 0.6
                        anchors.left: parent.right
                        anchors.top: parent.top
                        anchors.bottomMargin: 0

                        Item {
                            id: name1f
                            width: parent.width * 0.99
                            height: parent.height * 0.3
                            anchors.bottom: parent.bottom
                            anchors.bottomMargin: 0

                            ChangeBox {
                                id: rl1A_axisposition
                                anchors.fill: parent
                                changeboxA: "A"
                                changeboxB: lighttoggle_rsmp['rl1'] ? lighttoggle_rsmp['rl1']['axis_a_speed'] : 0
                                units: "RPM"

                                onClicked: rl1Apop.open()
                            }
                            anchors.horizontalCenter: parent.horizontalCenter
                        }

                        Item {
                            id: name11f
                            width: parent.width * 0.99
                            height: parent.height * 0.3
                            anchors.top: parent.top

                            ChangeBox {
                                id: rl1B_axisposition
                                anchors.fill: parent
                                changeboxA: "B"
                                changeboxB: lighttoggle_rsmp['rl1'] ? lighttoggle_rsmp['rl1']['axis_b_speed'] : 0
                                units: "RPM"

                                onClicked: rl1Bpop.open()
                            }
                            anchors.horizontalCenter: parent.horizontalCenter
                        }
                    }
                }

                Item {
                    id: verti2ff
                    width: parent.width * 0.145
                    height: parent.height * 0.88
                    anchors.top: parent.top

                    Item {
                        id: item31ff
                        width: parent.width * 0.60
                        height: parent.height * 0.6
                        anchors.left: parent.right
                        anchors.top: parent.top
                        anchors.bottomMargin: 0

                        Item {
                            id: name1ff
                            width: parent.width * 0.99
                            height: parent.height * 0.3
                            anchors.bottom: parent.bottom
                            anchors.horizontalCenter: parent.horizontalCenter
                            anchors.bottomMargin: 0

                            ChangeBox {
                                id: rl2A_axisposition
                                anchors.fill: parent
                                changeboxA: "A"
                                changeboxB: lighttoggle_rsmp['rl2'] ? lighttoggle_rsmp['rl2']['axis_a_speed'] : 0
                                units: "RPM"

                                onClicked: rl2Apop.open()
                            }
                        }

                        Item {
                            id: name11ff
                            width: parent.width * 0.99
                            height: parent.height * 0.3
                            anchors.top: parent.top
                            anchors.horizontalCenter: parent.horizontalCenter

                            ChangeBox {
                                id: rl2B_axisposition
                                anchors.fill: parent
                                changeboxA: "B"
                                changeboxB: lighttoggle_rsmp['rl2'] ? lighttoggle_rsmp['rl2']['axis_b_speed'] : 0
                                units: "RPM"

                                onClicked: rl2Bpop.open()
                            }
                        }
                    }
                }

                Item {
                    id: verti3f
                    width: parent.width * 0.68
                    height: parent.height * 0.88
                    anchors.top: parent.top

                    Item {
                        id: item31qf
                        width: parent.width * 0.13
                        height: parent.height * 0.6
                        anchors.left: parent.right
                        anchors.top: parent.top
                        anchors.bottomMargin: 0

                        Item {
                            id: name1qf
                            width: parent.width * 0.99
                            height: parent.height * 0.3
                            anchors.bottom: parent.bottom
                            anchors.bottomMargin: 0

                            ChangeBox {
                                id: rr1A_axisposition
                                anchors.fill: parent
                                changeboxA: "A"
                                changeboxB: lighttoggle_rsmp['rr1'] ? lighttoggle_rsmp['rr1']['axis_a_speed'] : 0
                                units: "RPM"

                                onClicked: rr1Apop.open()
                            }
                            anchors.horizontalCenter: parent.horizontalCenter
                        }

                        Item {
                            id: name11qf
                            width: parent.width * 0.99
                            height: parent.height * 0.3
                            anchors.top: parent.top

                            ChangeBox {
                                id: rr1B_axisposition
                                anchors.fill: parent
                                changeboxA: "B"
                                changeboxB: lighttoggle_rsmp['rr1'] ? lighttoggle_rsmp['rr1']['axis_b_speed'] : 0
                                units: "RPM"

                                onClicked: rr1Bpop.open()
                            }
                            anchors.horizontalCenter: parent.horizontalCenter
                        }
                    }
                }

                Item {
                    id: verti4f
                    width: parent.width * 0.92
                    height: parent.height * 0.88
                    anchors.top: parent.top

                    Item {
                        id: item31q1f
                        width: parent.width * 0.099
                        height: parent.height * 0.6
                        anchors.left: parent.right
                        anchors.top: parent.top
                        anchors.bottomMargin: 0

                        Item {
                            id: name1q1f
                            width: parent.width * 0.99
                            height: parent.height * 0.3
                            anchors.bottom: parent.bottom
                            anchors.bottomMargin: 0

                            ChangeBox {
                                id: rr2A_axisposition
                                anchors.fill: parent
                                changeboxA: "A"
                                changeboxB: lighttoggle_rsmp['rr2'] ? lighttoggle_rsmp['rr2']['axis_a_speed'] : 0
                                units: "RPM"

                                onClicked: rr2Apop.open()
                            }
                            anchors.horizontalCenter: parent.horizontalCenter
                        }

                        Item {
                            id: name11q1f
                            width: parent.width * 0.99
                            height: parent.height * 0.3
                            anchors.top: parent.top

                            ChangeBox {
                                id: rr2B_axisposition
                                anchors.fill: parent
                                changeboxA: "B"
                                changeboxB: lighttoggle_rsmp['rr2'] ? lighttoggle_rsmp['rr2']['axis_b_speed'] : 0
                                units: "RPM"

                                onClicked: rr2Bpop.open()
                            }
                            anchors.horizontalCenter: parent.horizontalCenter
                        }
                    }
                }
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        function changeValue() {

            fl2A_axisposition.changeboxB = changeValA

            fl2B_axisposition.changeboxB = changeValB

            fl1A_axisposition.changeboxB = changeValA
            fl1B_axisposition.changeboxB = changeValB

            fr1A_axisposition.changeboxB = changeValA
            fr1B_axisposition.changeboxB = changeValB

            fr2A_axisposition.changeboxB = changeValA
            fr2B_axisposition.changeboxB = changeValB

            ///////////////////////////////////
            rl2A_axisposition.changeboxB = changeValA

            rl2B_axisposition.changeboxB = changeValB

            rl1A_axisposition.changeboxB = changeValA
            rl1B_axisposition.changeboxB = changeValB

            rr1A_axisposition.changeboxB = changeValA
            rr1B_axisposition.changeboxB = changeValB

            rr2A_axisposition.changeboxB = changeValA
            rr2B_axisposition.changeboxB = changeValB
        }

        Popups {
            id: fl2Apop

            AxisSpeedPopup {
                id: fl2Ac
                anchors.fill: parent
            }
            Connections {
                target: fl2Ac.applytoall
                function onClicked() {
                    changeValA = fl2Ac.ap1
                    changeValB = fl2Ac.ap2
                    mainScreen.changeValue()
                    fl2Apop.close()
                }
            }
            Connections {
                target: fl2Ac.cancel
                function onClicked() {
                    fl2Apop.close()
                }
            }
            Connections {
                target: fl2Ac.apply
                function onClicked() {
                    fl2A_axisposition.changeboxB = fl2Ac.ap1
                    fl2B_axisposition.changeboxB = fl2Ac.ap2
                     fl2Apop.close()
                }
            }
        }
        Popups {
            id: fl2Bpop
            AxisSpeedPopup {
                id: fl2Bc
                anchors.fill: parent
            }
            Connections {
                target: fl2Bc.applytoall
                function onClicked() {
                    changeValA = fl2Bc.ap1
                    changeValB = fl2Bc.ap2
                    mainScreen.changeValue()
                    fl2Bpop.close()
                }
            }
            Connections {
                target: fl2Bc.cancel
                function onClicked() {
                    fl2Bpop.close()
                }
            }
            Connections {
                target: fl2Bc.apply
                function onClicked() {
                    fl2B_axisposition.changeboxB = fl2Bc.ap2
                    fl2A_axisposition.changeboxB = fl2Bc.ap1
                    fl2Bpop.close()
                }
            }
        }
        Popups {
            id: fl1Apop
            AxisSpeedPopup {
                id: fl1Ac
                anchors.fill: parent
            }
            Connections {
                target: fl1Ac.applytoall
                function onClicked() {
                    changeValA = fl1Ac.ap1
                    changeValB = fl1Ac.ap2
                    mainScreen.changeValue()
                        fl1Apop.close()
                }
            }
            Connections {
                target: fl1Ac.cancel
                function onClicked() {
                    fl1Apop.close()
                }
            }
            Connections {
                target: fl1Ac.apply
                function onClicked() {
                    fl1A_axisposition.changeboxB = fl1Ac.ap1
                    fl1B_axisposition.changeboxB = fl1Ac.ap2
                        fl1Apop.close()
                }
            }
        }

        Popups {
            id: fl1Bpop
            AxisSpeedPopup {
                id: fl1Bc
                anchors.fill: parent
            }
            Connections {
                target: fl1Bc.applytoall
                function onClicked() {
                    changeValA = fl1Bc.ap1
                    changeValB = fl1Bc.ap2
                    mainScreen.changeValue()
                     fl1Bpop.close()
                }
            }
            Connections {
                target: fl1Bc.cancel
                function onClicked() {
                    fl1Bpop.close()
                }
            }
            Connections {
                target: fl1Bc.apply
                function onClicked() {
                    fl1B_axisposition.changeboxB = fl1Bc.ap2
                    fl1A_axisposition.changeboxB = fl1Bc.ap1
                     fl1Bpop.close()
                }
            }
        }
        Popups {
            id: fr1Bpop
            AxisSpeedPopup {
                id: fr1Bc
                anchors.fill: parent
            }
            Connections {
                target: fr1Bc.applytoall
                function onClicked() {
                    changeValA = fr1Bc.ap1
                    changeValB = fr1Bc.ap2
                    mainScreen.changeValue()
                     fr1Bpop.close()
                }
            }
            Connections {
                target: fr1Bc.cancel
                function onClicked() {
                    fr1Bpop.close()
                }
            }
            Connections {
                target: fr1Bc.apply
                function onClicked() {
                    fr1B_axisposition.changeboxB = fr1Bc.ap2
                    fr1A_axisposition.changeboxB = fr1Bc.ap1
                     fr1Bpop.close()
                }
            }
        }
        Popups {
            id: fr1Apop
            AxisSpeedPopup {
                id: fr1Ac
                anchors.fill: parent
            }
            Connections {
                target: fr1Ac.applytoall
                function onClicked() {
                    changeValA = fr1Ac.ap1
                    changeValB = fr1Ac.ap2
                    mainScreen.changeValue()
                      fr1Apop.close()
                }
            }
            Connections {
                target: fr1Ac.cancel
                function onClicked() {
                    fr1Apop.close()
                }
            }
            Connections {
                target: fr1Ac.apply
                function onClicked() {
                    fr1A_axisposition.changeboxB = fr1Ac.ap1
                    fr1B_axisposition.changeboxB = fr1Ac.ap2
                      fr1Apop.close()
                }
            }
        }
        Popups {
            id: fr2Apop
            AxisSpeedPopup {
                id: fr2Ac
                anchors.fill: parent
            }
            Connections {
                target: fr2Ac.applytoall
                function onClicked() {
                    changeValA = fr2Ac.ap1
                    changeValB = fr2Ac.ap2
                    mainScreen.changeValue()
                    fr2Apop.close()
                }
            }
            Connections {
                target: fr2Ac.cancel
                function onClicked() {
                    fr2Apop.close()
                }
            }
            Connections {
                target: fr2Ac.apply
                function onClicked() {
                    fr2A_axisposition.changeboxB = fr2Ac.ap1
                    fr2B_axisposition.changeboxB = fr2Ac.ap2
                    fr2Apop.close()
                }
            }
        }

        Popups {
            id: fr2Bpop
            AxisSpeedPopup {
                id: fr2Bc
                anchors.fill: parent
            }
            Connections {
                target: fr2Bc.applytoall
                function onClicked() {
                    changeValA = fr2Bc.ap1
                    changeValB = fr2Bc.ap2
                    mainScreen.changeValue()
                     fr2Bpop.close()
                }
            }
            Connections {
                target: fr2Bc.cancel
                function onClicked() {
                    fr2Bpop.close()
                }
            }
            Connections {
                target: fr2Bc.apply
                function onClicked() {
                    fr2B_axisposition.changeboxB = fr2Bc.ap2
                    fr2A_axisposition.changeboxB = fr2Bc.ap1
                     fr2Bpop.close()
                }
            }
        }

        Popups {
            id: rl1Bpop
            AxisSpeedPopup {
                id: rl1Bc
                anchors.fill: parent
            }
            Connections {
                target: rl1Bc.applytoall
                function onClicked() {
                    changeValA = rl1Bc.ap1
                    changeValB = rl1Bc.ap2
                    mainScreen.changeValue()
                     rl1Bpop.close()
                }
            }
            Connections {
                target: rl1Bc.cancel
                function onClicked() {
                    rl1Bpop.close()
                }
            }
            Connections {
                target: rl1Bc.apply
                function onClicked() {
                    rl1B_axisposition.changeboxB = rl1Bc.ap2
                    rl1A_axisposition.changeboxB = rl1Bc.ap1
                     rl1Bpop.close()
                }
            }
        }
        Popups {
            id: rl1Apop
            AxisSpeedPopup {
                id: rl1Ac
                anchors.fill: parent
            }
            Connections {
                target: rl1Ac.applytoall
                function onClicked() {
                    changeValA = rl1Ac.ap1
                    changeValB = rl1Ac.ap2
                    mainScreen.changeValue()
                      rl1Apop.close()
                }
            }
            Connections {
                target: rl1Ac.cancel
                function onClicked() {
                    rl1Apop.close()
                }
            }
            Connections {
                target: rl1Ac.apply
                function onClicked() {
                    rl1A_axisposition.changeboxB = rl1Ac.ap1
                    rl1B_axisposition.changeboxB = rl1Ac.ap2
                      rl1Apop.close()
                }
            }
        }
        Popups {
            id: rl2Apop
            AxisSpeedPopup {
                id: rl2Ac
                anchors.fill: parent
            }
            Connections {
                target: rl2Ac.applytoall
                function onClicked() {
                    changeValA = rl2Ac.ap1
                    changeValB = rl2Ac.ap2
                    mainScreen.changeValue()
                        rl2Apop.close()
                }
            }
            Connections {
                target: rl2Ac.cancel
                function onClicked() {
                    rl2Apop.close()
                }
            }
            Connections {
                target: rl2Ac.apply
                function onClicked() {
                    rl2A_axisposition.changeboxB = rl2Ac.ap1
                    rl2B_axisposition.changeboxB = rl2Ac.ap2
                        rl2Apop.close()
                }
            }
        }
        Popups {
            id: rl2Bpop
            AxisSpeedPopup {
                id: rl2Bc
                anchors.fill: parent
            }
            Connections {
                target: rl2Bc.applytoall
                function onClicked() {
                    changeValA = rl2Bc.ap1
                    changeValB = rl2Bc.ap2
                    mainScreen.changeValue()
                      rl2Bpop.close()
                }
            }
            Connections {
                target: rl2Bc.cancel
                function onClicked() {
                    rl2Bpop.close()
                }
            }
            Connections {
                target: rl2Bc.apply
                function onClicked() {
                    rl2B_axisposition.changeboxB = rl2Bc.ap2
                    rl2A_axisposition.changeboxB = rl2Bc.ap1
                      rl2Bpop.close()
                }
            }
        }
        Popups {
            id: rr1Apop
            AxisSpeedPopup {
                id: rr1Ac
                anchors.fill: parent
            }
            Connections {
                target: rr1Ac.applytoall
                function onClicked() {
                    changeValA = rr1Ac.ap1
                    changeValB = rr1Ac.ap2
                    mainScreen.changeValue()
                     rr1Apop.close()
                }
            }
            Connections {
                target: rr1Ac.cancel
                function onClicked() {
                    rr1Apop.close()
                }
            }
            Connections {
                target: rr1Ac.apply
                function onClicked() {
                    rr1A_axisposition.changeboxB = rr1Ac.ap1
                    rr1B_axisposition.changeboxB = rr1Ac.ap2
                     rr1Apop.close()
                }
            }
        }
        Popups {
            id: rr1Bpop
            AxisSpeedPopup {
                id: rr1Bc
                anchors.fill: parent
            }
            Connections {
                target: rr1Bc.applytoall
                function onClicked() {
                    changeValA = rr1Bc.ap1
                    changeValB = rr1Bc.ap2
                    mainScreen.changeValue()
                     rr1Bpop.close()
                }
            }
            Connections {
                target: rr1Bc.cancel
                function onClicked() {
                    rr1Bpop.close()
                }
            }
            Connections {
                target: rr1Bc.apply
                function onClicked() {
                    rr1B_axisposition.changeboxB = rr1Bc.ap2
                    rr1A_axisposition.changeboxB = rr1Bc.ap1
                     rr1Bpop.close()
                }
            }
        }

        Popups {
            id: rr2Apop
            AxisSpeedPopup {
                id: rr2Ac
                anchors.fill: parent
            }
            Connections {
                target: rr2Ac.applytoall
                function onClicked() {
                    changeValA = rr2Ac.ap1
                    changeValB = rr2Ac.ap2
                    mainScreen.changeValue()
                     rr2Apop.close()
                }
            }
            Connections {
                target: rr2Ac.cancel
                function onClicked() {
                    rr2Apop.close()
                }
            }
            Connections {
                target: rr2Ac.apply
                function onClicked() {
                    rr2A_axisposition.changeboxB = rr2Ac.ap1
                    rr2B_axisposition.changeboxB = rr2Ac.ap2
                     rr2Apop.close()
                }
            }
        }
        Popups {
            id: rr2Bpop
            AxisSpeedPopup {
                id: rr2Bc
                anchors.fill: parent
            }
            Connections {
                target: rr2Bc.applytoall
                function onClicked() {
                    changeValA = rr1Bc.ap1
                    changeValB = rr1Bc.ap2
                    mainScreen.changeValue()
                      rr2Bpop.close()
                }
            }
            Connections {
                target: rr2Bc.cancel
                function onClicked() {
                    rr2Bpop.close()
                }
            }
            Connections {
                target: rr2Bc.apply
                function onClicked() {
                    rr2B_axisposition.changeboxB = rr2Bc.ap2
                    rr2A_axisposition.changeboxB = rr2Bc.ap1
                      rr2Bpop.close()
                }
            }
        }
    }
}
