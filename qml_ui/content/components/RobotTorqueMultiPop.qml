import QtQuick
// import QtQuick.Controls
// import QtQuick.Controls 2.3
import "../components"
// import "../pages"
import "../theme"
// import QtQuick.Layouts 6.0

Rectangle {
    id: rt
    property string changeVal
    property var lighttoggle_rtmp

    property alias rr2B_axisposition: rr2B_axisposition
    property alias rr2A_axisposition: rr2A_axisposition
    property alias rr1B_axisposition: rr1B_axisposition
    property alias rr1A_axisposition: rr1A_axisposition
    property alias rl2B_axisposition: rl2B_axisposition
    property alias rl2A_axisposition: rl2A_axisposition
    property alias rl1B_axisposition: rl1B_axisposition
    property alias rl1A_axisposition: rl1A_axisposition
    property alias fr2A_axisposition: fr2A_axisposition
    property alias fr2B_axisposition: fr2B_axisposition
    property alias fr1A_axisposition: fr1A_axisposition
    property alias fr1B_axisposition: fr1B_axisposition
    property alias fl1A_axisposition: fl1A_axisposition
    property alias fl1B_axisposition: fl1B_axisposition
    property alias fl2B_axisposition: fl2B_axisposition
    property alias fl2A_axisposition: fl2A_axisposition

    color: Style.secondary
    Rectangle {
        id: torquecontent
        width: parent.width
        color: Style.secondary
        anchors.verticalCenter: parent.verticalCenter
        height: parent.height
        Rectangle {
            id: rectangle22
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
                                changeboxB: lighttoggle_rtmp['fl2'] ? lighttoggle_rtmp['fl2']['axis_a_torque'] : 0

                                units: "A"

                                Connections {
                                    target: fl2A_axisposition
                                    function onClicked() {
                                        fl2Apop.open()
                                    }
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
                                changeboxB: lighttoggle_rtmp['fl2'] ? lighttoggle_rtmp['fl2']['axis_b_torque'] : 0

                                units: "A"

                                Connections {
                                    target: fl2B_axisposition
                                    function onClicked() {
                                        fl2Bpop.open()
                                    }
                                }
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
                                changeboxB: lighttoggle_rtmp['fl1'] ? lighttoggle_rtmp['fl1']['axis_b_torque'] : 0

                                units: "A"

                                Connections {
                                    target: fl1B_axisposition
                                    function onClicked() {
                                        fl1Bpop.open()
                                    }
                                }
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
                                changeboxB: lighttoggle_rtmp['fl1'] ? lighttoggle_rtmp['fl1']['axis_a_torque'] : 0

                                units: "A"

                                Connections {
                                    target: fl1A_axisposition
                                    function onClicked() {
                                        fl1Apop.open()
                                    }
                                }
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
                                changeboxB: lighttoggle_rtmp['fr1'] ? lighttoggle_rtmp['fr1']['axis_b_torque'] : 0

                                units: "A"

                                Connections {
                                    target: fr1B_axisposition
                                    function onClicked() {
                                        fr1Bpop.open()
                                    }
                                }
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
                                changeboxB: lighttoggle_rtmp['fr1'] ? lighttoggle_rtmp['fr1']['axis_a_torque'] : 0

                                units: "A"

                                Connections {
                                    target: fr1A_axisposition
                                    function onClicked() {
                                        fr1Apop.open()
                                    }
                                }
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
                                changeboxB: lighttoggle_rtmp['fr2'] ? lighttoggle_rtmp['fr2']['axis_b_torque'] : 0

                                units: "A"

                                Connections {
                                    target: fr2B_axisposition
                                    function onClicked() {
                                        fr2Bpop.open()
                                    }
                                }
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
                                changeboxB: lighttoggle_rtmp['fr2'] ? lighttoggle_rtmp['fr2']['axis_a_torque'] : 0

                                units: "A"

                                Connections {
                                    target: fr2A_axisposition
                                    function onClicked() {
                                        fr2Apop.open()
                                    }
                                }
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
                                changeboxB: lighttoggle_rtmp['rl1'] ? lighttoggle_rtmp['rl1']['axis_a_torque'] : 0

                                units: "A"

                                Connections {
                                    target: rl1A_axisposition
                                    function onClicked() {
                                        rl1Apop.open()
                                    }
                                }
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
                                changeboxB: lighttoggle_rtmp['rl1'] ? lighttoggle_rtmp['rl1']['axis_b_torque'] : 0

                                units: "A"

                                Connections {
                                    target: rl1B_axisposition
                                    function onClicked() {
                                        rl1Bpop.open()
                                    }
                                }
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
                                changeboxB: lighttoggle_rtmp['rl2'] ? lighttoggle_rtmp['rl2']['axis_a_torque'] : 0

                                units: "A"

                                Connections {
                                    target: rl2A_axisposition
                                    function onClicked() {
                                        rl2Apop.open()
                                    }
                                }
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
                                changeboxB: lighttoggle_rtmp['rl2'] ? lighttoggle_rtmp['rl2']['axis_b_torque'] : 0

                                units: "A"

                                Connections {
                                    target: rl2B_axisposition
                                    function onClicked() {
                                        rl2Bpop.open()
                                    }
                                }
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
                                changeboxB: lighttoggle_rtmp['rr1'] ? lighttoggle_rtmp['rr1']['axis_a_torque'] : 0

                                units: "A"

                                Connections {
                                    target: rr1A_axisposition
                                    function onClicked() {
                                        rr1Apop.open()
                                    }
                                }
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
                                changeboxB: lighttoggle_rtmp['rr1'] ? lighttoggle_rtmp['rr1']['axis_b_torque'] : 0

                                units: "A"

                                Connections {
                                    target: rr1B_axisposition
                                    function onClicked() {
                                        rr1Bpop.open()
                                    }
                                }
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
                                changeboxB: lighttoggle_rtmp['rr2'] ? lighttoggle_rtmp['rr2']['axis_a_torque'] : 0

                                units: "A"

                                Connections {
                                    target: rr2A_axisposition
                                    function onClicked() {
                                        rr2Apop.open()
                                    }
                                }
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
                                changeboxB: lighttoggle_rtmp['rr2'] ? lighttoggle_rtmp['rr2']['axis_b_torque'] : 0

                                units: "A"

                                Connections {
                                    target: rr2B_axisposition
                                    function onClicked() {
                                        rr2Bpop.open()
                                    }
                                }
                            }
                            anchors.horizontalCenter: parent.horizontalCenter
                        }
                    }
                }
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }

    height: parent.height * 0.75

    function changeValue() {

        fl2A_axisposition.changeboxB = changeVal

        fl2B_axisposition.changeboxB = changeVal

        fl1A_axisposition.changeboxB = changeVal
        fl1B_axisposition.changeboxB = changeVal

        fr1A_axisposition.changeboxB = changeVal
        fr1B_axisposition.changeboxB = changeVal

        fr2A_axisposition.changeboxB = changeVal
        fr2B_axisposition.changeboxB = changeVal

        ///////////////////////////////////
        rl2A_axisposition.changeboxB = changeVal

        rl2B_axisposition.changeboxB = changeVal

        rl1A_axisposition.changeboxB = changeVal
        rl1B_axisposition.changeboxB = changeVal

        rr1A_axisposition.changeboxB = changeVal
        rr1B_axisposition.changeboxB = changeVal

        rr2A_axisposition.changeboxB = changeVal
        rr2B_axisposition.changeboxB = changeVal
    }

    Popups {
        id: fl2Apop

        TorquePopup {
            id: fl2Ac
            anchors.fill: parent
        }
        Connections {
            target: fl2Ac.applytoall
            function onClicked() {
                changeVal = fl2Ac.ap
                rt.changeValue()
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
                fl2A_axisposition.changeboxB = fl2Ac.ap
                 fl2Apop.close()
            }
        }
    }
    Popups {
        id: fl2Bpop
        TorquePopup {
            id: fl2Bc
            anchors.fill: parent
        }
        Connections {
            target: fl2Bc.applytoall
            function onClicked() {
                changeVal = fl2Bc.ap
                rt.changeValue()
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
                fl2B_axisposition.changeboxB = fl2Bc.ap
                 fl2Bpop.close()
            }
        }
    }
    Popups {
        id: fl1Apop
        TorquePopup {
            id: fl1Ac
            anchors.fill: parent
        }
        Connections {
            target: fl1Ac.applytoall
            function onClicked() {
                changeVal = fl1Ac.ap
                rt.changeValue()
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
                fl1A_axisposition.changeboxB = fl1Ac.ap
                  fl1Apop.close()
            }
        }
    }

    Popups {
        id: fl1Bpop
        TorquePopup {
            id: fl1Bc
            anchors.fill: parent
        }
        Connections {
            target: fl1Bc.applytoall
            function onClicked() {
                changeVal = fl2Bc.ap
                rt.changeValue()
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
                fl1B_axisposition.changeboxB = fl1Bc.ap
                  fl1Bpop.close()
            }
        }
    }
    Popups {
        id: fr1Bpop
        TorquePopup {
            id: fr1Bc
            anchors.fill: parent
        }
        Connections {
            target: fr1Bc.applytoall
            function onClicked() {
                changeVal = fr1Bc.ap
                rt.changeValue()
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
                fr1B_axisposition.changeboxB = fr1Bc.slider.value
                  fr1Bpop.close()
            }
        }
    }
    Popups {
        id: fr1Apop
        TorquePopup {
            id: fr1Ac
            anchors.fill: parent
        }
        Connections {
            target: fr1Ac.applytoall
            function onClicked() {
                changeVal = fr1Ac.ap
                rt.changeValue()
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
                fr1A_axisposition.changeboxB = fr1Ac.slider.value
                  fr1Apop.close()
            }
        }
    }
    Popups {
        id: fr2Apop
        TorquePopup {
            id: fr2Ac
            anchors.fill: parent
        }
        Connections {
            target: fr2Ac.applytoall
            function onClicked() {
                changeVal = fr2Ac
                rt.changeValue()
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
                fr2A_axisposition.changeboxB = fr2Ac.slider.value
                    fr2Apop.close()
            }
        }
    }

    Popups {
        id: fr2Bpop
        TorquePopup {
            id: fr2Bc
            anchors.fill: parent
        }
        Connections {
            target: fr2Bc.applytoall
            function onClicked() {
                changeVal = fr1Bc.ap
                rt.changeValue()
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
                fr2B_axisposition.changeboxB = fr2Bc.slider.value
                   fr2Bpop.close()
            }
        }
    }

    Popups {
        id: rl1Bpop
        TorquePopup {
            id: rl1Bc
            anchors.fill: parent
        }
        Connections {
            target: rl1Bc.applytoall
            function onClicked() {
                changeVal = rl1Bc.ap
                rt.changeValue()
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
                rl1B_axisposition.changeboxB = rl1Bc.slider.value
                 rl1Bpop.close()
            }
        }
    }
    Popups {
        id: rl1Apop
        TorquePopup {
            id: rl1Ac
            anchors.fill: parent
        }
        Connections {
            target: rl1Ac.applytoall
            function onClicked() {
                changeVal = rl1Ac.ap
                rt.changeValue()
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
                rl1A_axisposition.changeboxB = rl1Ac.slider.value
                   rl1Apop.close()
            }
        }
    }
    Popups {
        id: rl2Apop
        TorquePopup {
            id: rl2Ac
            anchors.fill: parent
        }
        Connections {
            target: rl2Ac.applytoall
            function onClicked() {
                changeVal = rl2Ac.ap
                rt.changeValue()
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
                rl2A_axisposition.changeboxB = rl2Ac.slider.value
                 rl2Apop.close()
            }
        }
    }
    Popups {
        id: rl2Bpop
        TorquePopup {
            id: rl2Bc
            anchors.fill: parent
        }
        Connections {
            target: rl2Bc.applytoall
            function onClicked() {
                changeVal = rl2Bc.ap
                rt.changeValue()
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
                rl2B_axisposition.changeboxB = rl2Bc.slider.value
                  rl2Bpop.close()
            }
        }
    }
    Popups {
        id: rr1Apop
        TorquePopup {
            id: rr1Ac
            anchors.fill: parent
        }
        Connections {
            target: rr1Ac.applytoall
            function onClicked() {
                changeVal = rr1Ac.ap
                rt.changeValue()
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
                rr1A_axisposition.changeboxB = rr1Ac.slider.value
                 rr1Apop.close()
            }
        }
    }
    Popups {
        id: rr1Bpop
        TorquePopup {
            id: rr1Bc
            anchors.fill: parent
        }
        Connections {
            target: rr1Bc.applytoall
            function onClicked() {
                changeVal = rr1Bc.ap
                rt.changeValue()
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
                rr1B_axisposition.changeboxB = rr1Bc.slider.value
                   rr1Bpop.close()
            }
        }
    }

    Popups {
        id: rr2Apop
        TorquePopup {
            id: rr2Ac
            anchors.fill: parent
        }
        Connections {
            target: rr2Ac.applytoall
            function onClicked() {
                changeVal = rr2Ac.ap
                rt.changeValue()
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
                rr2A_axisposition.changeboxB = rr2Ac.slider.value
                   rr2Apop.close()
            }
        }
    }
    Popups {
        id: rr2Bpop
        TorquePopup {
            id: rr2Bc
            anchors.fill: parent
        }
        Connections {
            target: rr2Bc.applytoall
            function onClicked() {
                changeVal = rr2Bc.ap
                rt.changeValue()
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
                rr2B_axisposition.changeboxB = rr2Bc.slider.value
                rr2Bpop.close()
            }
        }
    }
}
