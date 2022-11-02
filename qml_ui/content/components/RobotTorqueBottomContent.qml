import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Item {
    id: upperitemf
    height: parent.height * 0.42
    Item {
        id: verti2f
        width: parent.width * 0.37
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
                width: parent.width * 0.80
                height: parent.height * 0.3
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0

                ChangeBox {
                    id: rl1A_axisposition
                    anchors.fill: parent
                    changeboxA: "A"

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
                width: parent.width * 0.80
                height: parent.height * 0.3
                anchors.top: parent.top

                ChangeBox {
                    id: rl1B_axisposition
                    anchors.fill: parent
                    changeboxA: "B"

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
        width: parent.width * 0.135
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
                width: parent.width * 0.80
                height: parent.height * 0.3
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottomMargin: 0

                ChangeBox {
                    id: rl2A_axisposition
                    anchors.fill: parent
                    changeboxA: "A"

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
                width: parent.width * 0.80
                height: parent.height * 0.3
                anchors.top: parent.top
                anchors.horizontalCenter: parent.horizontalCenter

                ChangeBox {
                    id: rl2B_axisposition
                    anchors.fill: parent
                    changeboxA: "B"

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
        width: parent.width * 0.67
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
                width: parent.width * 0.80
                height: parent.height * 0.3
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0

                ChangeBox {
                    id: rr1A_axisposition
                    anchors.fill: parent
                    changeboxA: "A"

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
                width: parent.width * 0.80
                height: parent.height * 0.3
                anchors.top: parent.top

                ChangeBox {
                    id: rr1B_axisposition
                    anchors.fill: parent
                    changeboxA: "B"

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
        width: parent.width * 0.91
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
                width: parent.width * 0.80
                height: parent.height * 0.3
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0

                ChangeBox {
                    id: rr2A_axisposition
                    anchors.fill: parent
                    changeboxA: "A"

                    Connections {
                        target: rr2A_axisposition
                        function onClicked() {
                            r2Apop.open()
                        }
                    }
                }
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Item {
                id: name11q1f
                width: parent.width * 0.80
                height: parent.height * 0.3
                anchors.top: parent.top

                ChangeBox {
                    id: rr2B_axisposition
                    anchors.fill: parent
                    changeboxA: "B"

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
}
