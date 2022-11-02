import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Rectangle {

    id: mainScreen
    property alias fr2pp: fr2pp
    property alias rr1dbd: rr1dbd
    property alias rr1pp: rr1pp
    property alias rr2dbd: rr2dbd
    property alias rr2pp: rr2pp
    property alias rl1pp: rl1pp
    property alias rl1dbd: rl1dbd
    property alias rl2pp: rl2pp
    property alias rl2dbd: rl2dbd
    property alias fr2dbd: fr2dbd
    property alias fr1pp: fr1pp
    property alias fr1dbd: fr1dbd
    property alias fl1pp: fl1pp
    property alias fl1dbd: fl1dbd
    property alias fl2pp: fl2pp
    property alias fl2dbd: fl2dbd
    property alias rr2A_axisposition: rr2A_axisposition
    property alias rr2B_axisposition: rr2B_axisposition
    property alias rr1A_axisposition: rr1A_axisposition
    property alias rr1B_axisposition: rr1B_axisposition
    property alias rl1A_axisposition: rl1A_axisposition
    property alias rl2A_axisposition: rl2A_axisposition
    property alias rl2B_axisposition: rl2B_axisposition
    property alias fr2B_axisposition: fr2B_axisposition
    property alias fr1B_axisposition: fr1B_axisposition
    property alias fl1B_axisposition: fl1B_axisposition
    property alias fl2B_axisposition: fl2B_axisposition
    property alias fr2A_axisposition: fr2A_axisposition
    property alias rl1B_axisposition: rl1B_axisposition
    property alias fr1A_axisposition: fr1A_axisposition
    property alias fl1A_axisposition: fl1A_axisposition
    property alias changeposition: changeposition
    color: Style.hoverprimary
    border.color: Style.bordershallow
    property alias fl2A_axisposition: fl2A_axisposition
    property string a2a
    property string a2b

    Column {
        id: column
        anchors.fill: parent
        spacing: 4

        Item {
            id: topbar
            width: parent.width
            height: parent.height * 0.15

            Item {
                id: row
                anchors.fill: parent

                Item {
                    id: item2
                    width: parent.width * 0.4
                    height: parent.height / 2
                    anchors.verticalCenter: parent.verticalCenter

                    Text {
                        id: rr1text
                        width: parent.width
                        height: parent.height / 2
                        color: Style.tertiary
                        text: qsTr("Current Position")
                        font.pixelSize: Style.font20 ? Style.font20: 20
                        verticalAlignment: Text.AlignVCenter
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                    }

                    Text {
                        id: rr1text2
                        width: parent.width
                        height: parent.height / 2
                        color: Style.tertiary
                        text: qsTr("Use the change position button to change the robot positions")
                        anchors.top: rr1text.bottom
                        font.pixelSize: Style.font16 ? Style.font16: 16
                        wrapMode: Text.WordWrap
                        minimumPixelSize: 2
                        fontSizeMode: Text.Fit
                    }
                }
            }
        }
        Rectangle {
            id: rectangle
            width: parent.width
            color: Style.secondary

            height: parent.height * 0.75
            Item {
                id: cppage
                width: parent.width * 0.90

                height: parent.height * 0.98
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter

                Assembly {
                    id: rectangle1
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
                        id: fl2left_i
                        width: parent.width * 0.095
                        height: parent.height * 0.88
                        anchors.bottom: parent.bottom

                        OnOff {
                            id: fl2dbd
                            anchors.top: parent.top
                            anchors.rightMargin: 0
                            height: parent.height * 0.13
                            anchors.right: parent.right
                            width: parent.width * 0.75
                        }
                    }

                    Item {
                        id: fl2right_i
                        width: parent.width * 0.14
                        height: parent.height * 0.88
                        anchors.bottom: parent.bottom

                        OnOff {
                            id: fl2pp
                            height: parent.height * 0.13
                            anchors.left: parent.right
                            width: parent.width * 0.50
                        }
                    }

                    Item {
                        id: fl1left_I
                        width: parent.width * 0.33
                        height: parent.height * 0.88
                        anchors.bottom: parent.bottom
                        OnOff {
                            id: fl1dbd
                            anchors.top: parent.top
                            anchors.rightMargin: 0
                            height: parent.height * 0.13
                            anchors.right: parent.right
                            width: parent.width * 0.2
                        }
                    }

                    Item {
                        id: verti2
                        width: parent.width * 0.37
                        height: parent.height * 0.88
                        anchors.bottom: parent.bottom

                        Item {
                            id: item344
                            width: parent.width * 0.7
                            height: parent.height * 0.3
                            anchors.left: parent.right

                            OnOff {
                                id: fl1pp
                                anchors.top: parent.top
                                height: parent.height * 0.48
                                width: parent.width / 4
                            }
                        }
                    }

                    Item {
                        id: namej
                        width: parent.width * 0.91
                        height: parent.height * 0.88
                        anchors.bottom: parent.bottom

                        OnOff {
                            id: fr2pp
                            height: parent.height * 0.13
                            anchors.left: parent.right
                            width: parent.width * 0.08
                        }
                    }

                    Item {
                        id: nameo
                        width: parent.width * 0.87
                        height: parent.height * 0.88
                        anchors.bottom: parent.bottom

                        OnOff {
                            id: fr2dbd
                            anchors.top: parent.top
                            anchors.rightMargin: 0
                            height: parent.height * 0.13
                            anchors.right: parent.right
                            width: parent.width * 0.1
                        }
                    }

                    Item {
                        id: nameg
                        width: parent.width * 0.67
                        height: parent.height * 0.88
                        anchors.bottom: parent.bottom
                        OnOff {
                            id: fr1pp
                            height: parent.height * 0.13
                            anchors.left: parent.right
                            width: parent.width * 0.10
                        }
                    }

                    Item {
                        id: verti4
                        width: parent.width * 0.63
                        height: parent.height * 0.88
                        anchors.bottom: parent.bottom
                        OnOff {
                            id: fr1dbd
                            anchors.top: parent.top
                            anchors.rightMargin: 0
                            height: parent.height * 0.13
                            anchors.right: parent.right
                            width: parent.width * 0.1
                        }
                    }
                }

                Item {
                    id: upperitemg
                    width: parent.width
                    height: parent.height * 0.42
                    anchors.bottom: parent.bottom
                    anchors.horizontalCenter: parent.horizontalCenter

                    Item {
                        id: fl2left_ig
                        width: parent.width * 0.095
                        height: parent.height * 0.88
                        anchors.top: parent.top
                        OnOff {
                            id: rl2dbd
                            anchors.bottom: parent.bottom
                            anchors.rightMargin: 0
                            height: parent.height * 0.13
                            anchors.right: parent.right
                            width: parent.width * 0.75
                        }
                    }

                    Item {
                        id: fl2right_ig
                        width: parent.width * 0.14
                        height: parent.height * 0.88
                        anchors.top: parent.top
                        OnOff {
                            id: rl2pp
                            anchors.bottom: parent.bottom
                            height: parent.height * 0.13
                            anchors.left: parent.right
                            width: parent.width * 0.50
                        }
                    }

                    Item {
                        id: fl1left_Igg
                        width: parent.width * 0.33
                        height: parent.height * 0.88
                        anchors.top: parent.top
                        OnOff {
                            id: rl1dbd
                            anchors.bottom: parent.bottom
                            anchors.rightMargin: 0
                            height: parent.height * 0.13
                            anchors.right: parent.right
                            width: parent.width * 0.2
                        }
                    }

                    Item {
                        id: verti2g
                        width: parent.width * 0.37
                        height: parent.height * 0.88
                        anchors.top: parent.top

                        Item {
                            id: item344g
                            width: parent.width * 0.7
                            height: parent.height * 0.3
                            anchors.left: parent.right
                            anchors.bottom: parent.bottom

                            OnOff {
                                id: rl1pp
                                anchors.bottom: parent.bottom
                                height: parent.height * 0.48
                                width: parent.width / 4
                            }
                        }
                    }

                    Item {
                        id: namejg
                        width: parent.width * 0.91
                        height: parent.height * 0.88
                        anchors.top: parent.top
                        OnOff {
                            id: rr2pp
                            anchors.bottom: parent.bottom
                            height: parent.height * 0.13
                            anchors.left: parent.right
                            width: parent.width * 0.08
                        }
                    }

                    Item {
                        id: nameog
                        width: parent.width * 0.87
                        height: parent.height * 0.88
                        anchors.top: parent.top
                        OnOff {
                            id: rr2dbd
                            anchors.bottom: parent.bottom
                            anchors.rightMargin: 0
                            height: parent.height * 0.13
                            anchors.right: parent.right
                            width: parent.width * 0.1
                        }
                    }

                    Item {
                        id: namegg
                        width: parent.width * 0.67
                        height: parent.height * 0.88
                        anchors.top: parent.top
                        OnOff {
                            id: rr1pp
                            anchors.bottom: parent.bottom
                            height: parent.height * 0.13
                            anchors.left: parent.right
                            width: parent.width * 0.10
                        }
                    }

                    Item {
                        id: verti4g
                        width: parent.width * 0.63
                        height: parent.height * 0.88
                        anchors.top: parent.top
                        OnOff {
                            id: rr1dbd
                            anchors.bottom: parent.bottom
                            anchors.rightMargin: 0
                            height: parent.height * 0.13
                            anchors.right: parent.right
                            width: parent.width * 0.1
                        }
                    }
                }

                Item {
                    id: upperitem1
                    width: parent.width
                    height: parent.height * 0.42
                    anchors.top: parent.top

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

                                CurrentPositionBox {
                                    id: fl2A_axisposition
                                    anchors.fill: parent
                                    changeboxA: "A"
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

                                CurrentPositionBox {
                                    id: fl2B_axisposition
                                    anchors.fill: parent
                                    changeboxA: "B"
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

                                CurrentPositionBox {
                                    id: fl1B_axisposition
                                    anchors.fill: parent
                                    changeboxA: "B"
                                }
                            }
                            Item {
                                id: name11
                                width: parent.width * 0.80
                                height: parent.height * 0.3
                                anchors.top: parent.top
                                anchors.horizontalCenter: parent.horizontalCenter

                                CurrentPositionBox {
                                    id: fl1A_axisposition
                                    anchors.fill: parent
                                    changeboxA: "A"
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

                                CurrentPositionBox {
                                    id: fr1B_axisposition
                                    anchors.fill: parent
                                    changeboxA: "B"
                                }
                                anchors.horizontalCenter: parent.horizontalCenter
                            }

                            Item {
                                id: name11q
                                width: parent.width * 0.80
                                height: parent.height * 0.3
                                anchors.top: parent.top

                                CurrentPositionBox {
                                    id: fr1A_axisposition
                                    anchors.fill: parent
                                    changeboxA: "A"
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

                                CurrentPositionBox {
                                    id: fr2B_axisposition
                                    anchors.fill: parent
                                    changeboxA: "B"
                                }
                                anchors.horizontalCenter: parent.horizontalCenter
                            }

                            Item {
                                id: name11q1
                                width: parent.width * 0.80
                                height: parent.height * 0.3
                                anchors.top: parent.top
                                CurrentPositionBox {
                                    id: fr2A_axisposition
                                    anchors.fill: parent
                                    changeboxA: "A"
                                }
                                anchors.horizontalCenter: parent.horizontalCenter
                            }
                        }
                    }
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Item {
                    id: upperitemf
                    width: parent.width
                    height: parent.height * 0.42
                    anchors.bottom: parent.bottom

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

                                CurrentPositionBox {
                                    id: rl1A_axisposition
                                    anchors.fill: parent
                                    changeboxA: "A"
                                }
                                anchors.horizontalCenter: parent.horizontalCenter
                            }

                            Item {
                                id: name11f
                                width: parent.width * 0.80
                                height: parent.height * 0.3
                                anchors.top: parent.top

                                CurrentPositionBox {
                                    id: rl1B_axisposition
                                    anchors.fill: parent
                                    changeboxA: "B"
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

                                CurrentPositionBox {
                                    id: rl2A_axisposition
                                    anchors.fill: parent
                                    changeboxA: "A"
                                }
                            }

                            Item {
                                id: name11ff
                                width: parent.width * 0.80
                                height: parent.height * 0.3
                                anchors.top: parent.top
                                anchors.horizontalCenter: parent.horizontalCenter

                                CurrentPositionBox {
                                    id: rl2B_axisposition
                                    anchors.fill: parent
                                    changeboxA: "B"
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

                                CurrentPositionBox {
                                    id: rr1A_axisposition
                                    anchors.fill: parent
                                    changeboxA: "A"
                                }
                                anchors.horizontalCenter: parent.horizontalCenter
                            }

                            Item {
                                id: name11qf
                                width: parent.width * 0.80
                                height: parent.height * 0.3
                                anchors.top: parent.top

                                CurrentPositionBox {
                                    id: rr1B_axisposition
                                    anchors.fill: parent
                                    changeboxA: "B"
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

                                CurrentPositionBox {
                                    id: rr2A_axisposition
                                    anchors.fill: parent
                                    changeboxA: "A"
                                }
                                anchors.horizontalCenter: parent.horizontalCenter
                            }

                            Item {
                                id: name11q1f
                                width: parent.width * 0.80
                                height: parent.height * 0.3
                                anchors.top: parent.top

                                CurrentPositionBox {
                                    id: rr2B_axisposition
                                    anchors.fill: parent
                                    changeboxA: "B"
                                }
                                anchors.horizontalCenter: parent.horizontalCenter
                            }
                        }
                    }
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
        Rectangle {
            id: item4
            width: parent.width
            height: parent.height * 0.080
            color: Style.secondary
            anchors.right: parent.right

            Row {
                id: row6
                width: parent.width * 0.28
                height: parent.height * 0.65
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.rightMargin: 20
                layoutDirection: Qt.RightToLeft

                HoverButton {
                    id: changeposition
                    width: parent.width * 0.5
                    height: parent.height
                    anchors.verticalCenter: parent.verticalCenter
                    steptext: qsTr("Change Position")
                    stepcolor: "#7d00ff"
                    stepcolortext: "white"
                }
                spacing: 8
            }
        }
    }
}
