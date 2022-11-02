import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Item {
    id: upperitem1
    height: parent.height * 0.42
    Item {
        id: verti1
        width: parent.width * 0.135
        height: parent.height * 0.88
        anchors.bottom: parent.bottom

        Item {
            id: item3
            width: parent.width * 0.6
            height: parent.height * 0.6
            anchors.left: parent.right

            Item {
                id: name
                width: parent.width * 0.80
                height: parent.height * 0.3
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottomMargin: 0

                ChangeBox {
                    id: fl2A_axisposition
                    anchors.fill: parent
                    changeboxA: "A"

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
                width: parent.width * 0.80
                height: parent.height * 0.6
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottomMargin: 0

                ChangeBox {
                    id: fl2B_axisposition
                    anchors.fill: parent
                    changeboxA: "B"

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
        width: parent.width * 0.37
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
                width: parent.width * 0.80
                height: parent.height * 0.3
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottomMargin: 0

                ChangeBox {
                    id: fl1B_axisposition
                    anchors.fill: parent
                    changeboxA: "B"

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
                width: parent.width * 0.80
                height: parent.height * 0.3
                anchors.top: parent.top
                anchors.horizontalCenter: parent.horizontalCenter

                ChangeBox {
                    id: fl1A_axisposition
                    anchors.fill: parent
                    changeboxA: "A"

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
        width: parent.width * 0.67
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
                width: parent.width * 0.80
                height: parent.height * 0.3
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0

                ChangeBox {
                    id: fr1B_axisposition
                    anchors.fill: parent
                    changeboxA: "B"

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
                width: parent.width * 0.80
                height: parent.height * 0.3
                anchors.top: parent.top

                ChangeBox {
                    id: fr1A_axisposition
                    anchors.fill: parent
                    changeboxA: "A"

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
        width: parent.width * 0.91
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
                width: parent.width * 0.80
                height: parent.height * 0.3
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0

                ChangeBox {
                    id: fr2B_axisposition
                    anchors.fill: parent
                    changeboxA: "B"

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
                width: parent.width * 0.80
                height: parent.height * 0.3
                anchors.top: parent.top
                ChangeBox {
                    id: fr2A_axisposition
                    anchors.fill: parent
                    changeboxA: "A"

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
}
