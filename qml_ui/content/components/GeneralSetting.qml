import QtQuick 2.15
import "../theme"
import QtQuick.Controls 2.15

Rectangle {
    id: rectangle1
    color: Style.hoverprimary
    border.color: "transparent"
    anchors.fill: parent
    property alias save_identification: save_identification
    property alias glass_type_text: glass_type_text
    property alias pattern_file_text: pattern_file_text
    property alias data_file_text: data_file_text
    property alias graph_value_text: graph_value_text
    property alias cell_name_text: cell_name_text
    property alias line_name_text: line_name_text
    property alias company_name_text: company_name_text
    Rectangle {
        id: rectangle
        width: parent.width * 0.95
        height: parent.height * 0.95
        color: Style.hoverprimary
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        Column {
            id: column
            anchors.fill: parent
            spacing: 5

            Item {
                id: item1
                width: parent.width
                height: parent.height * 0.3

                Item {
                    id: item3
                    width: parent.width
                    height: parent.height * 0.2

                    Text {
                        id: text1
                        color: Style.tertiary
                        text: qsTr("Identification")
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: Style.font16 ? Style.font16 : 16
                    }
                }

                Item {
                    id: item4
                    anchors.top: item3.bottom
                    width: parent.width
                    height: parent.height - item3.height

                    Column {
                        id: column2
                        anchors.fill: parent

                        Grid {
                            id: grid
                            columns: 2
                            rowSpacing: 5
                            columnSpacing: 26
                            topPadding: 10
                            width: parent.width
                            height: parent.height

                            Item {

                                width: parent.width * 0.22
                                height: parent.height * 0.25
                                Text {
                                    id: companynameID

                                    color: Style.tertiary
                                    text: qsTr(" Company Name: ")
                                    anchors.verticalCenter: parent.verticalCenter
                                    font.pixelSize: Style.font12 ? Style.font12 : 12
                                }
                            }

                            TextField {
                                id: company_name_text
                                leftPadding: 10
                                width: parent.width * 0.55
                                height: parent.height * 0.25
                                color: Style.tertiary
                                text: qsTr("Ford India Pvt. Ltd.")
                                font.pixelSize: Style.font13 ? Style.font13 : 13

                                topPadding: 0
                                bottomPadding: 0
                                background: Rectangle {
                                    id: bgColor
                                    color: Style.secondary
                                    radius: 5
                                    border.color: "black"
                                    border.width: 0.5
                                }
                            }
                            Item {
                                id: item2
                                width: parent.width * 0.22
                                height: parent.height * 0.25
                                Text {
                                    id: linenametext
                                    color: Style.tertiary
                                    text: qsTr(" Line Name: ")
                                    anchors.verticalCenter: parent.verticalCenter
                                    font.pixelSize: Style.font12 ? Style.font12 : 12
                                }
                            }

                            TextField {
                                id: line_name_text
                                leftPadding: 10
                                width: parent.width * 0.55
                                height: parent.height * 0.25
                                color: Style.tertiary
                                text: qsTr("")
                                font.pixelSize: Style.font13 ? Style.font13 : 13

                                topPadding: 0
                                bottomPadding: 0
                                background: Rectangle {
                                    id: bgColor2
                                    color: Style.secondary
                                    radius: 5
                                    border.color: "black"
                                    border.width: 0.5
                                }
                            }
                            Item {
                                id: item5
                                width: parent.width * 0.22
                                height: parent.height * 0.25
                                Text {
                                    id: celltextID
                                    color: Style.tertiary
                                    text: qsTr(" Cell Name: ")
                                    anchors.verticalCenter: parent.verticalCenter
                                    font.pixelSize: Style.font12 ? Style.font12 : 12
                                }
                            }

                            TextField {
                                id: cell_name_text
                                leftPadding: 10
                                width: parent.width * 0.55
                                height: parent.height * 0.25
                                color: Style.tertiary
                                text: qsTr("Glass Glazing Cell-North")
                                font.pixelSize: Style.font13 ? Style.font13 : 13

                                topPadding: 0
                                bottomPadding: 0
                                background: Rectangle {
                                    id: bgColor3
                                    color: Style.secondary
                                    radius: 5
                                    border.color: "black"
                                    border.width: 0.5
                                }
                            }
                        }
                    }
                }
            }

            Item {
                id: item12
                width: parent.width
                height: parent.height * 0.3

                Item {
                    id: item32
                    width: parent.width
                    height: parent.height * 0.2

                    Text {
                        id: text12
                        color: Style.tertiary
                        text: qsTr("General")
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: Style.font16 ? Style.font16 : 16
                    }
                }

                Item {
                    id: item42
                    anchors.top: item32.bottom
                    width: parent.width
                    height: parent.height - item32.height

                    Column {
                        id: column22
                        anchors.fill: parent

                        Grid {
                            id: grid2
                            columns: 2
                            rowSpacing: 5
                            columnSpacing: 26
                            topPadding: 10
                            width: parent.width
                            height: parent.height

                            Item {
                                id: name2
                                width: parent.width * 0.15
                                height: parent.height * 0.25
                                Text {
                                    id: mdetextID

                                    color: Style.tertiary
                                    text: qsTr(" Mode: ")
                                    anchors.verticalCenter: parent.verticalCenter
                                    font.pixelSize: Style.font12 ? Style.font12 : 12
                                }
                            }
                            SortButton {
                                id: mode
                                width: parent.width * 0.25
                                height: parent.height * 0.23
                                z: 100
                                leftPadding: 10
                                sortText: qsTr("Select Modes")
                                focus: true
                                items: [qsTr("Production"), qsTr(
                                        "Manual"), qsTr("Auto")]
                                icon_right: true
                                uncheckedcolor: Style.primary
                            }
                            Item {
                                id: item6
                                width: parent.width * 0.22
                                height: parent.height * 0.25
                                Text {
                                    text: qsTr(" Graph Increament Value: ")
                                    width: parent.width * 0.98
                                    height: parent.height
                                    fontSizeMode: Text.Fit
                                    minimumPixelSize: 2
                                    color: Style.tertiary
                                    anchors.verticalCenter: parent.verticalCenter
                                    font.pixelSize: Style.font12 ? Style.font12 : 12
                                    verticalAlignment: Text.AlignVCenter
                                }
                            }

                            TextField {
                                id: graph_value_text
                                leftPadding: 10
                                width: parent.width * 0.55
                                height: parent.height * 0.25
                                color: Style.tertiary
                                text: qsTr("25")
                                font.pixelSize: Style.font13 ? Style.font13 : 13
                                z: 13
                                topPadding: 0
                                bottomPadding: 0
                                background: Rectangle {
                                    id: bgCol
                                    color: Style.secondary
                                    radius: 5
                                    border.color: "black"
                                    border.width: 0.5
                                }
                            }
                        }
                    }
                }
            }
            Item {
                id: item13
                width: parent.width
                height: parent.height * 0.3

                Item {
                    id: item33
                    width: parent.width
                    height: parent.height * 0.2

                    Text {
                        id: text13
                        color: Style.tertiary
                        text: qsTr("Data File Path")
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: Style.font16 ? Style.font16 : 16
                    }
                }

                Item {
                    id: item43
                    anchors.top: item33.bottom
                    width: parent.width
                    height: parent.height - item33.height

                    Column {
                        id: column23
                        anchors.fill: parent

                        Grid {
                            id: grid3
                            columns: 2
                            rowSpacing: 5
                            columnSpacing: 26
                            topPadding: 10
                            width: parent.width
                            height: parent.height

                            Item {
                                id: name3
                                width: parent.width * 0.15
                                height: parent.height * 0.25
                                Text {
                                    id: text33

                                    color: Style.tertiary
                                    text: qsTr(" Data File Path: ")
                                    anchors.verticalCenter: parent.verticalCenter
                                    font.pixelSize: Style.font12 ? Style.font12 : 12
                                }
                            }

                            TextField {
                                id: data_file_text
                                leftPadding: 10
                                width: parent.width * 0.55
                                height: parent.height * 0.25
                                color: Style.tertiary
                                text: qsTr("/Pressure Data")
                                font.pixelSize: Style.font13 ? Style.font13 : 13

                                topPadding: 0
                                bottomPadding: 0
                                background: Rectangle {
                                    id: bgColo3
                                    color: Style.secondary
                                    radius: 5
                                    border.color: "black"
                                    border.width: 0.5
                                }
                            }
                            Item {
                                id: item7
                                width: parent.width * 0.22
                                height: parent.height * 0.25
                                Text {
                                    text: qsTr(" Pattern File Path: ")
                                    width: parent.width * 0.98
                                    height: parent.height
                                    fontSizeMode: Text.Fit
                                    minimumPixelSize: 2
                                    color: Style.tertiary
                                    anchors.verticalCenter: parent.verticalCenter
                                    font.pixelSize: Style.font12 ? Style.font12 : 12
                                    verticalAlignment: Text.AlignVCenter
                                }
                            }

                            TextField {
                                id: pattern_file_text
                                leftPadding: 10
                                width: parent.width * 0.55
                                height: parent.height * 0.25
                                color: Style.tertiary
                                text: qsTr("/Pressure/Pattern")
                                font.pixelSize: Style.font13 ? Style.font13 : 13

                                topPadding: 0
                                bottomPadding: 0
                                background: Rectangle {
                                    id: bgColor23
                                    color: Style.secondary
                                    radius: 5
                                    border.color: "black"
                                    border.width: 0.5
                                }
                            }
                            Item {
                                id: item8
                                width: parent.width * 0.22
                                height: parent.height * 0.25
                                Text {
                                    text: qsTr(" Glass Type Image Path: ")
                                    width: parent.width * 0.98
                                    height: parent.height
                                    fontSizeMode: Text.Fit
                                    minimumPixelSize: 2
                                    color: Style.tertiary
                                    anchors.verticalCenter: parent.verticalCenter
                                    font.pixelSize: Style.font12 ? Style.font12 : 12
                                    verticalAlignment: Text.AlignVCenter
                                }
                            }

                            TextField {
                                id: glass_type_text
                                leftPadding: 10
                                width: parent.width * 0.55
                                height: parent.height * 0.25
                                color: Style.tertiary
                                text: qsTr("/Pressure/Glass Type")
                                font.pixelSize: Style.font13 ? Style.font13 : 13

                                topPadding: 0
                                bottomPadding: 0
                                background: Rectangle {
                                    id: bgColor33
                                    color: Style.secondary
                                    radius: 5
                                    border.color: "black"
                                    border.width: 0.5
                                }
                            }
                        }
                    }
                }
            }

            HoverButton {
                id: save_identification
                width: parent.width * 0.13
                height: parent.height * 0.068
                anchors.right: parent.right
                anchors.rightMargin: 0
                steptext: qsTr("Save")
                stepcolor: "#7d00ff"
                stepcolortext: "white"
            }
        }
    }
}
