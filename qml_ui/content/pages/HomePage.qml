import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
// import "../pages"
import "../theme"
// import QtQuick.Layouts 6.0
import QtQuick.Controls.Material 2.12

Rectangle {

    id: mainScreen
    Material.theme: Material.Dark
    Material.accent: Material.Purple
    anchors.fill: parent
    color: Style.hoverprimary
    border.color: Style.bordershallow

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
                        text: qsTr("Home")
                        verticalAlignment: Text.AlignVCenter
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                        color: Style.tertiary
                        font.pixelSize: Style.font16 ? Style.font16: 16
                    }

                    Text {
                        id: rr1text2
                        width: parent.width
                        height: parent.height / 2
                        color: Style.tertiary
                        text: qsTr("Welcome to Adaptive tooling")
                        anchors.top: rr1text.bottom
                        wrapMode: Text.WordWrap
                        minimumPixelSize: 2
                        fontSizeMode: Text.Fit
                        font.pixelSize: Style.font16 ? Style.font16: 16
                    }
                }
            }
        }
        Grid {
            id: grd
            width: parent.width
            rowSpacing: 5
            columns: 2
            columnSpacing: 5
            height: parent.height * 0.84

            Rectangle {
                id: re1
                width: parent.width * 0.43
                border.color: Style.bordercolor
                color: Style.secondary
                height: parent.height * 0.20

                Rectangle {
                    id: rectangle
                    width: parent.width * 0.96
                    height: parent.height * 0.92
                    color: Style.secondary
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter

                    Column {
                        id: column1
                        anchors.fill: parent
                        spacing: 4
                        Text {
                            id: name
                            text: qsTr("Status")
                            color: Style.tertiary
                            font.pixelSize: Style.font16 ? Style.font16: 16
                            verticalAlignment: Text.AlignVCenter
                            fontSizeMode: Text.Fit
                            minimumPixelSize: 2
                        }
                        Row {
                            id: rr
                            spacing: 5
                            width: parent.width
                            height: parent.height * 0.64

                            Rectangle {
                                id: rectangle1
                                width: parent.width * 0.32
                                height: parent.height
                                color: Style.secondary

                                Column {
                                    id: column5
                                    anchors.fill: parent
                                    spacing: 15
                                    Item {
                                        id: tt
                                        width: parent.width
                                        height: parent.height * 0.2
                                        Text {
                                            id: namee
                                            width: parent.width
                                            text: qsTr("PLC Communication")
                                            color: Style.tertiary
                                            font.pixelSize: Style.font13 ? Style.font13: 13
                                            horizontalAlignment: Text.AlignHCenter
                                            verticalAlignment: Text.AlignVCenter
                                            anchors.horizontalCenter: parent.horizontalCenter
                                            fontSizeMode: Text.Fit
                                            minimumPixelSize: 2
                                        }
                                    }

                                    PlcOnOff {
                                        width: parent.width
                                        height: parent.height * 0.3
                                    }
                                }
                            }

                            Rectangle {
                                id: rectangle2
                                width: parent.width * 0.32
                                height: parent.height
                                color: Style.secondary

                                Column {
                                    id: column6
                                    anchors.fill: parent
                                    spacing: 15
                                    Item {
                                        id: tt2
                                        width: parent.width
                                        height: parent.height * 0.2
                                        Text {
                                            id: namee2
                                            text: qsTr("Arms Ready")
                                            color: Style.tertiary
                                            font.pixelSize: Style.font13 ? Style.font13: 13
                                            verticalAlignment: Text.AlignVCenter
                                            anchors.horizontalCenter: parent.horizontalCenter
                                            fontSizeMode: Text.Fit
                                            minimumPixelSize: 2
                                        }
                                    }

                                    PlcOnOff {
                                        width: parent.width
                                        height: parent.height * 0.3
                                    }
                                }
                            }

                            Rectangle {
                                id: rectangle3
                                width: parent.width * 0.32
                                height: parent.height
                                color: Style.secondary

                                Column {
                                    id: column7
                                    anchors.fill: parent
                                    spacing: 15
                                    Item {
                                        id: tt3
                                        width: parent.width
                                        height: parent.height * 0.2
                                        Text {
                                            id: namee3
                                            color: Style.tertiary
                                            text: qsTr("Arms Power")
                                            font.pixelSize: Style.font13 ? Style.font13: 13
                                            verticalAlignment: Text.AlignVCenter
                                            anchors.horizontalCenter: parent.horizontalCenter
                                            fontSizeMode: Text.Fit
                                            minimumPixelSize: 2
                                        }
                                    }

                                    PlcOnOff {
                                        width: parent.width
                                        height: parent.height * 0.3
                                    }
                                }
                            }
                        }
                    }
                }
            }
            Rectangle {
                id: re2
                width: parent.width * 0.56
                color: Style.secondary
                height: parent.height * 0.20
                border.color: Style.bordercolor

                Rectangle {
                    id: rectanglew
                    width: parent.width * 0.96
                    height: parent.height * 0.92
                    color: Style.secondary
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    Column {
                        id: column12
                        anchors.fill: parent
                        spacing: 4
                        Text {
                            id: name2
                            color: Style.tertiary
                            text: qsTr("Part Present & Vacuum Control")
                            font.pixelSize: Style.font16 ? Style.font16: 16
                            verticalAlignment: Text.AlignVCenter
                            fontSizeMode: Text.Fit
                            minimumPixelSize: 2
                        }
                        Row {
                            id: rr2
                            spacing: 8
                            width: parent.width
                            height: parent.height * 0.65

                            Rectangle {
                                id: rectangle12
                                width: parent.width * 0.17
                                height: parent.height
                                color: Style.secondary
                                HoverButton {
                                    id: addprog
                                    width: parent.width
                                    height: parent.height
                                    radiuso: 7
                                    radiusi: 7
                                    stepcolor: "#7d00ff"
                                    stepcolortext: "white"
                                    steptext: qsTr("All VAC \n OFF")
                              
                                }
                            }

                            Rectangle {
                                id: rectangle22
                                width: parent.width * 0.17
                                height: parent.height
                                color: Style.secondary
                                HoverButton {
                                    id: addprog3
                                    width: parent.width
                                    height: parent.height
                                    radiuso: 7
                                    radiusi: 7
                                    stepcolor: "#7d00ff"
                                    stepcolortext: "white"
                                    steptext: qsTr("All VAC \n ON")
                                }
                            }

                            Rectangle {
                                id: rectangle32
                                width: parent.width * 0.17
                                height: parent.height
                                color: Style.secondary
                                HoverButton {
                                    id: addprog2
                                    width: parent.width
                                    height: parent.height
                                    radiuso: 7
                                    radiusi: 7
                                    stepcolor: "#7d00ff"
                                    stepcolortext: "white"
                                    steptext: qsTr("PAUSE")
                                }
                            }
                            Rectangle {
                                id: rectangle32a
                                width: parent.width * 0.17
                                height: parent.height
                                color: Style.secondary
                                Popups {
                                    id: runpop
                                    width: 300
                                    height: 200
                                    closePolicy: Popup.CloseOnEscape 
                                    dim : false
                                    x: Screen.width / 2 - width / 2
                                    y: Screen.height / 2 - height / 2
                                    RunProgramPop {
                                        id: rr1Bc

                                        anchors.fill: parent
                                    }
                                }

                                HoverButton {
                                    id: addprog2a
                                    width: parent.width
                                    height: parent.height
                                    radiuso: 7
                                    radiusi: 7
                                    stepcolor: "#7d00ff"
                                    stepcolortext: "white"
                                    steptext: qsTr("RUN \n PROGRAM")

                                    onClicked: {
                                        runpop.open()
                                    }
                                }
                            }
                            Rectangle {
                                id: rectangle32s
                                width: parent.width * 0.17
                                height: parent.height
                                color: Style.secondary
                                HoverButton {
                                    id: addprog2s
                                    width: parent.width
                                    height: parent.height
                                    radiuso: 7
                                    radiusi: 7
                                    stepcolor: "#7d00ff"
                                    stepcolortext: "white"
                                    steptext: qsTr("GO TO \n HOME")
                                }
                            }
                        }
                    }
                }
            }
            Rectangle {
                id: re3
                width: parent.width * 0.43
                color: Style.secondary
                border.color: Style.bordercolor
                height: parent.height * 0.78

                Rectangle {
                    id: rectanglee
                    width: parent.width * 0.96
                    height: parent.height * 0.95
                    color: Style.secondary
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter

                    Column {
                        id: column3
                        anchors.fill: parent
                        spacing: 5
                        Text {
                            id: nameF
                            color: Style.tertiary
                            text: qsTr("Current item in progress")
                            font.pixelSize: Style.font16 ? Style.font16: 16
                            verticalAlignment: Text.AlignVCenter
                            fontSizeMode: Text.Fit
                            minimumPixelSize: 2
                        }
                        Grid {
                            id: hh
                            width: parent.width
                            columns: 2
                            rowSpacing: 10
                            columnSpacing: 15
                            height: parent.height * 0.92

                            Text {
                                id: itemtext
                                text: qsTr("Item")
                                color: Style.tertiary
                                font.pixelSize: Style.font16 ? Style.font16: 16
                                fontSizeMode: Text.Fit
                                minimumPixelSize: 2
                            }

                            Text {
                                id: itemtextcontent
                                color: Style.tertiary
                                text: qsTr("Front Door")
                                font.pixelSize: Style.font16 ? Style.font16: 16
                                font.bold: true
                                fontSizeMode: Text.Fit
                                minimumPixelSize: 2
                            }
                            Text {
                                id: itemtext2
                                text: qsTr("Recipe")
                                color: Style.tertiary
                                font.pixelSize: Style.font16 ? Style.font16: 16
                                fontSizeMode: Text.Fit
                                minimumPixelSize: 2
                            }

                            Text {
                                id: itemtextcontent2
                                color: Style.tertiary
                                text: qsTr("Front Door Recipe")
                                font.pixelSize: Style.font16 ? Style.font16: 16
                                font.bold: true
                                fontSizeMode: Text.Fit
                                minimumPixelSize: 2
                            }
                            Text {
                                id: itemtext3
                                color: Style.tertiary
                                text: qsTr("Mode")
                                font.pixelSize: Style.font16 ? Style.font16: 16
                                fontSizeMode: Text.Fit
                                minimumPixelSize: 2
                            }

                            Text {
                                id: itemtextcontent3
                                color: Style.tertiary
                                text: qsTr("Production")
                                font.pixelSize: Style.font16 ? Style.font16: 16
                                font.bold: true
                                fontSizeMode: Text.Fit
                                minimumPixelSize: 2
                            }
                            Text {
                                id: itemtext4
                                text: qsTr("Batch")
                                color: Style.tertiary
                                font.pixelSize: Style.font16 ? Style.font16: 16
                                fontSizeMode: Text.Fit
                                minimumPixelSize: 2
                            }

                            Text {
                                id: itemtextcontent4
                                color: Style.tertiary
                                text: qsTr("27 Dec 4: 20 PM")
                                font.pixelSize: Style.font16 ? Style.font16: 16
                                font.bold: true
                                fontSizeMode: Text.Fit
                                minimumPixelSize: 2
                            }
                            Text {
                                id: itemtext5
                                color: Style.tertiary
                                text: qsTr("Total Count")
                                font.pixelSize: Style.font16 ? Style.font16: 16
                                fontSizeMode: Text.Fit
                                minimumPixelSize: 2
                            }

                            Text {
                                id: itemtextcontent5
                                text: qsTr("100")
                                font.pixelSize: Style.font16 ? Style.font16: 16
                                color: Style.tertiary
                                font.bold: true
                                fontSizeMode: Text.Fit
                                minimumPixelSize: 2
                            }
                            Text {
                                id: itemtext6
                                text: qsTr("Job Count")
                                color: Style.tertiary
                                font.pixelSize: Style.font16 ? Style.font16: 16
                                fontSizeMode: Text.Fit
                                minimumPixelSize: 2
                            }

                            Text {
                                id: itemtextcontent6
                                text: qsTr("15")
                                color: Style.tertiary
                                font.pixelSize: Style.font16 ? Style.font16: 16
                                font.bold: true
                                fontSizeMode: Text.Fit
                                minimumPixelSize: 2
                            }
                            Text {
                                id: itemtext7
                                text: qsTr("SPM")
                                color: Style.tertiary
                                font.pixelSize: Style.font16 ? Style.font16: 16
                                fontSizeMode: Text.Fit
                                minimumPixelSize: 2
                            }

                            Text {
                                id: itemtextcontent7
                                text: qsTr("7.1")
                                color: Style.tertiary
                                font.pixelSize: Style.font16 ? Style.font16: 16
                                font.bold: true
                                fontSizeMode: Text.Fit
                                minimumPixelSize: 2
                            }
                        }
                    }
                }
            }
            Rectangle {
                id: re4
                width: parent.width * 0.56
                color: Style.secondary
                border.color: Style.bordercolor
                height: parent.height * 0.78

                Rectangle {
                    id: rectangler
                    width: parent.width * 0.96
                    height: parent.height * 0.95
                    color: Style.secondary
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter

                    Column {
                        id: column4
                        spacing: 5
                        anchors.fill: parent
                        Text {
                            id: nameFh
                            text: qsTr("Arm Status")
                            color: Style.tertiary
                            font.pixelSize: Style.font16 ? Style.font16: 16
                            verticalAlignment: Text.AlignVCenter
                            fontSizeMode: Text.Fit
                            minimumPixelSize: 2
                        }
                        Rectangle {
                            id: rectangle22j
                            color: Style.secondary
                            width: parent.width
                            height: parent.height * 0.90
                            Assembly {
                                id: rectangle1l
                                width: parent.width * 0.9
                                height: parent.height * 0.7
                                anchors.horizontalCenter: parent.horizontalCenter
                                anchors.verticalCenter: parent.verticalCenter
                            }

                            Item {
                                id: upperitem
                                width: parent.width
                                height: parent.height * 0.42
                                anchors.top: parent.top
                                anchors.horizontalCenter: parent.horizontalCenter

                                Item {
                                    id: fl2pp_i
                                    width: parent.width * 0.23
                                    height: parent.height * 0.98
                                    anchors.bottom: parent.bottom
                                    ArmStatus {
                                        id: f
                                        armstatus: qsTr("PARK ")
                                        width: parent.width
                                        height: parent.height * 0.3
                                    }
                                }
                                Item {
                                    id: fl1left_I
                                    width: parent.width * 0.23
                                    height: parent.height * 0.98
                                    anchors.left: fl2pp_i.right
                                    anchors.leftMargin: 8
                                    anchors.bottom: parent.bottom
                                    ArmStatus {
                                        id: f2
                                        armstatus: qsTr("PARK ")
                                        width: parent.width
                                        height: parent.height * 0.3
                                    }
                                }
                                Item {
                                    id: verti3
                                    width: parent.width * 0.23
                                    height: parent.height * 0.98
                                    anchors.right: parent.right
                                    anchors.bottom: parent.bottom
                                    ArmStatus {
                                        id: f3
                                        armstatus: qsTr("PARK ")
                                        width: parent.width

                                        height: parent.height * 0.3
                                    }
                                }
                                Item {
                                    id: namep
                                    width: parent.width * 0.23
                                    height: parent.height * 0.98
                                    anchors.rightMargin: 8
                                    anchors.right: verti3.left
                                    anchors.bottom: parent.bottom
                                    ArmStatus {
                                        id: f4
                                        armstatus: qsTr("PARK ")
                                        width: parent.width
                                        height: parent.height * 0.3
                                    }
                                }
                            }
                            Item {
                                id: upperitem2
                                width: parent.width
                                height: parent.height * 0.42
                                anchors.bottom: parent.bottom
                                anchors.horizontalCenter: parent.horizontalCenter

                                Item {
                                    id: fl2pp_i2
                                    width: parent.width * 0.23
                                    height: parent.height
                                    anchors.top: parent.top
                                    ArmStatus {
                                        id: f22
                                        armstatus: qsTr("PARK ")
                                        width: parent.width
                                        anchors.bottom: parent.bottom
                                        height: parent.height * 0.3
                                    }
                                }
                                Item {
                                    id: fl1left_I2
                                    width: parent.width * 0.23
                                    height: parent.height * 0.98
                                    anchors.left: fl2pp_i2.right
                                    anchors.leftMargin: 8
                                    anchors.bottom: parent.bottom
                                    ArmStatus {
                                        id: f222
                                        armstatus: qsTr("PARK ")
                                        width: parent.width
                                        anchors.bottom: parent.bottom
                                        height: parent.height * 0.3
                                    }
                                }
                                Item {
                                    id: verti32
                                    width: parent.width * 0.23
                                    height: parent.height * 0.98
                                    anchors.right: parent.right
                                    anchors.bottom: parent.bottom
                                    ArmStatus {
                                        id: f32
                                        armstatus: qsTr("PARK ")
                                        width: parent.width
                                        anchors.bottom: parent.bottom
                                        height: parent.height * 0.3
                                    }
                                }
                                Item {
                                    id: namep2
                                    width: parent.width * 0.23
                                    height: parent.height * 0.98
                                    anchors.rightMargin: 8
                                    anchors.right: verti32.left
                                    anchors.bottom: parent.bottom
                                    ArmStatus {
                                        id: f42
                                        armstatus: qsTr("PARK ")
                                        width: parent.width
                                        anchors.bottom: parent.bottom
                                        height: parent.height * 0.3
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
