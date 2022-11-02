import QtQuick 2.15
import QtQuick.Controls 2.15
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Rectangle {
    id: rectangle1
    color: Style.hoverprimary
    anchors.fill: parent
    property alias graph_enable_plc_text: graph_enable_plc_text
    property alias zone_on_plc_text: zone_on_plc_text
    property alias glass_type: glass_type
    property alias cycle_on_plc_text: cycle_on_plc_text
    property alias glss_type_config_text: glss_type_config_text
    property alias glass_type_plc_text: glass_type_plc_text
    property alias glass_type_text: glass_type_text
    property alias vin_number_plc_text: vin_number_plc_text
    property alias vin_number_text: vin_number_text
    property alias topic_format_text: topic_format_text
    property alias server_topic_text: server_topic_text
    property alias server_refresh_text: server_refresh_text
    property alias serverhost_text: serverhost_text

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
            spacing: 15

            Item {
                id: item1
                width: parent.width
                height: parent.height * 0.4

                Column {
                    id: column1
                    anchors.fill: parent

                    Item {
                        id: item3
                        width: parent.width
                        height: parent.height * 0.2

                        Text {
                            text: qsTr("Process Control Configuration")
                            width: parent.width * 0.98
                            height: parent.height
                            fontSizeMode: Text.Fit
                            minimumPixelSize: 2
                            color: Style.tertiary
                            anchors.verticalCenter: parent.verticalCenter
                            font.pixelSize: Style.font16 ? Style.font16 : 16
                            verticalAlignment: Text.AlignVCenter
                        }
                    }

                    Item {
                        id: item4
                        width: parent.width
                        height: parent.height * 0.6

                        Column {
                            id: column2
                            anchors.fill: parent

                            Text {
                                text: qsTr("Server Details")
                                color: Style.tertiary
                                font.pixelSize: Style.font13 ? Style.font13 : 13
                            }

                            Grid {
                                id: grid
                                columns: 2
                                rowSpacing: 5
                                columnSpacing: 26
                                topPadding: 10
                                width: parent.width
                                height: parent.height * 0.9
                                Item {
                                    id: item5
                                    width: parent.width * 0.22
                                    height: parent.height * 0.25
                                    Text {
                                        text: qsTr(" Server Host: ")
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
                                    id: serverhost_text
                                    leftPadding: 10
                                    width: parent.width * 0.55
                                    height: parent.height * 0.25
                                    color: Style.tertiary
                                    //                                    text: qsTr("Ford India Pvt. Ltd.")
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
                                    id: item6
                                    width: parent.width * 0.22
                                    height: parent.height * 0.25
                                    Text {
                                        text: qsTr(" Server Refresh Interval: ")
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
                                    id: server_refresh_text
                                    leftPadding: 10
                                    width: parent.width * 0.55
                                    height: parent.height * 0.25
                                    color: Style.tertiary
                                    //                                    text: qsTr("Ford India Pvt. Ltd.")
                                    font.pixelSize: Style.font13 ? Style.font13 : 13

                                    topPadding: 0
                                    bottomPadding: 0
                                    background: Rectangle {
                                        //                                                       id: bgColor
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
                                        text: qsTr(" Server Topic Name: ")
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
                                    id: server_topic_text
                                    leftPadding: 10
                                    width: parent.width * 0.55
                                    height: parent.height * 0.25
                                    color: Style.tertiary
                                    //                                    text: qsTr("Ford India Pvt. Ltd.")
                                    font.pixelSize: Style.font13 ? Style.font13 : 13

                                    topPadding: 0
                                    bottomPadding: 0
                                    background: Rectangle {
                                        //                                                       id: bgColor
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
                                        text: qsTr(" Topic Format: ")
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
                                    id: topic_format_text
                                    leftPadding: 10
                                    width: parent.width * 0.55
                                    height: parent.height * 0.25
                                    color: Style.tertiary
                                    //                                    text: qsTr("Ford India Pvt. Ltd.")
                                    font.pixelSize: Style.font13 ? Style.font13 : 13

                                    topPadding: 0
                                    bottomPadding: 0
                                    background: Rectangle {
                                        //                                                       id: bgColor
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
            }

            Item {
                id: item2
                width: parent.width
                height: parent.height * 0.47
                Column {
                    id: column22
                    anchors.fill: parent

                    Text {
                        text: qsTr("Input Output Mapping")
                        color: Style.tertiary
                        font.pixelSize: Style.font16 ? Style.font16 : 16
                    }

                    Column {
                        id: rectangle2
                        width: parent.width
                        height: parent.height * 0.9

                        Row {
                            id: row
                            width: parent.width
                            height: parent.height * 0.15
                            Item {
                                width: parent.width * 0.535
                                height: parent.height
                                Text {
                                    id: text4
                                    width: parent.width * 0.95
                                    height: parent.height
                                    text: qsTr("Software")
                                    color: Style.tertiary
                                    font.pixelSize: Style.font13 ? Style.font13 : 13
                                    verticalAlignment: Text.AlignBottom
                                    fontSizeMode: Text.Fit
                                    minimumPixelSize: 2
                                }
                            }

                            Item {

                                width: parent.width * 0.485
                                height: parent.height
                                Text {
                                    id: text6
                                    width: parent.width * 0.95
                                    height: parent.height
                                    text: qsTr("Programmable Logic Controller(PLC): ")
                                    color: Style.tertiary
                                    font.pixelSize: Style.font13 ? Style.font13 : 13
                                    verticalAlignment: Text.AlignBottom
                                    fontSizeMode: Text.Fit
                                    minimumPixelSize: 2
                                }
                            }
                        }

                        Grid {
                            id: grid2
                            topPadding: 10
                            rowSpacing: 5
                            columnSpacing: 10
                            width: parent.width
                            height: parent.height * 0.9
                            Item {

                                width: parent.width * 0.20
                                height: parent.height * 0.15
                                Text {
                                    id: text32
                                    width: parent.width * 0.98
                                    height: parent.height
                                    fontSizeMode: Text.Fit
                                    minimumPixelSize: 2
                                    color: Style.tertiary
                                    text: qsTr(" Wait For Vin Number: ")
                                    anchors.verticalCenter: parent.verticalCenter
                                    font.pixelSize: Style.font12 ? Style.font12 : 12
                                    verticalAlignment: Text.AlignVCenter
                                }
                            }

                            TextField {
                                id: vin_number_text
                                leftPadding: 10
                                width: parent.width * 0.20
                                height: parent.height * 0.15
                                color: Style.tertiary
                                //                                text: qsTr("Ford India Pvt. Ltd.")
                                font.pixelSize: Style.font13 ? Style.font13 : 13

                                topPadding: 0
                                bottomPadding: 0
                                background: Rectangle {
                                    //                                                       id: bgColor
                                    color: Style.secondary
                                    radius: 5
                                    border.color: "black"
                                    border.width: 0.5
                                }
                            }
                            Item {
                                id: item12
                                width: parent.width * 0.20
                                height: parent.height * 0.15
                                Text {
                                    text: qsTr(" Vin Number: ")
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
                                id: vin_number_plc_text
                                leftPadding: 10
                                width: parent.width * 0.20
                                height: parent.height * 0.15
                                color: Style.tertiary
                                //                                text: qsTr("Ford India Pvt. Ltd.")
                                font.pixelSize: Style.font13 ? Style.font13 : 13

                                topPadding: 0
                                bottomPadding: 0
                                background: Rectangle {
                                    //                                                       id: bgColor
                                    color: Style.secondary
                                    radius: 5
                                    border.color: "black"
                                    border.width: 0.5
                                }
                            }
                            Item {
                                id: item9
                                width: parent.width * 0.20
                                height: parent.height * 0.15
                                Text {
                                    text: qsTr(" Wait For Glass Type: ")
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
                                width: parent.width * 0.20
                                height: parent.height * 0.15
                                color: Style.tertiary
                                //                                text: qsTr("Ford India Pvt. Ltd.")
                                font.pixelSize: Style.font13 ? Style.font13 : 13

                                topPadding: 0
                                bottomPadding: 0
                                background: Rectangle {
                                    //                                                       id: bgColor
                                    color: Style.secondary
                                    radius: 5
                                    border.color: "black"
                                    border.width: 0.5
                                }
                            }
                            Item {
                                id: item13
                                width: parent.width * 0.20
                                height: parent.height * 0.15
                                Text {
                                    text: qsTr(" Glass Type: ")
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
                                id: glass_type_plc_text
                                leftPadding: 10
                                width: parent.width * 0.20
                                height: parent.height * 0.15
                                color: Style.tertiary
                                //                                text: qsTr("Ford India Pvt. Ltd.")
                                font.pixelSize: Style.font13 ? Style.font13 : 13

                                topPadding: 0
                                bottomPadding: 0
                                background: Rectangle {
                                    //                                                       id: bgColor
                                    color: Style.secondary
                                    radius: 5
                                    border.color: "black"
                                    border.width: 0.5
                                }
                            }
                            Item {
                                id: item10
                                width: parent.width * 0.20
                                height: parent.height * 0.15
                                Text {
                                    text: qsTr(" Glass Type Confirmation: ")
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
                                id: glss_type_config_text
                                leftPadding: 10
                                width: parent.width * 0.20
                                height: parent.height * 0.15
                                color: Style.tertiary
                                //                                text: qsTr("Ford India Pvt. Ltd.")
                                font.pixelSize: Style.font13 ? Style.font13 : 13

                                topPadding: 0
                                bottomPadding: 0
                                background: Rectangle {
                                    //                                                       id: bgColor
                                    color: Style.secondary
                                    radius: 5
                                    border.color: "black"
                                    border.width: 0.5
                                }
                            }
                            Item {
                                id: item14
                                width: parent.width * 0.20
                                height: parent.height * 0.15
                                Text {
                                    text: qsTr(" Cycle On: ")
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
                                id: cycle_on_plc_text
                                leftPadding: 10
                                width: parent.width * 0.20
                                height: parent.height * 0.15
                                color: Style.tertiary
                                //                                text: qsTr("Ford India Pvt. Ltd.")
                                font.pixelSize: Style.font13 ? Style.font13 : 13

                                topPadding: 0
                                bottomPadding: 0
                                background: Rectangle {
                                    //                                                       id: bgColor
                                    color: Style.secondary
                                    radius: 5
                                    border.color: "black"
                                    border.width: 0.5
                                }
                            }
                            Item {
                                id: item11
                                width: parent.width * 0.20
                                height: parent.height * 0.15
                                Text {
                                    text: qsTr(" Glass Type: ")
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
                                id: glass_type
                                leftPadding: 10
                                width: parent.width * 0.20
                                height: parent.height * 0.15
                                color: Style.tertiary
                                //                                text: qsTr("Ford India Pvt. Ltd.")
                                font.pixelSize: Style.font13 ? Style.font13 : 13

                                topPadding: 0
                                bottomPadding: 0
                                background: Rectangle {
                                    //                                                       id: bgColor
                                    color: Style.secondary
                                    radius: 5
                                    border.color: "black"
                                    border.width: 0.5
                                }
                            }
                            Item {
                                id: item15
                                width: parent.width * 0.20
                                height: parent.height * 0.15
                                Text {
                                    text: qsTr(" Zone On: ")
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
                                id: zone_on_plc_text
                                leftPadding: 10
                                width: parent.width * 0.20
                                height: parent.height * 0.15
                                color: Style.tertiary
                                //                                text: qsTr("Ford India Pvt. Ltd.")
                                font.pixelSize: Style.font13 ? Style.font13 : 13

                                topPadding: 0
                                bottomPadding: 0
                                background: Rectangle {
                                    //                                                       id: bgColor
                                    color: Style.secondary
                                    radius: 5
                                    border.color: "black"
                                    border.width: 0.5
                                }
                            }
                            Item {
                                id: blank2
                                width: parent.width * 0.25
                                height: parent.height * 0.15
                            }

                            Item {
                                id: blank1
                                width: parent.width * 0.25
                                height: parent.height * 0.15
                            }
                            Item {
                                id: item16
                                width: parent.width * 0.20
                                height: parent.height * 0.15
                                Text {
                                    text: qsTr(" Graph Enable: ")
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
                                id: graph_enable_plc_text
                                leftPadding: 10
                                width: parent.width * 0.20
                                height: parent.height * 0.15
                                color: Style.tertiary
                                //                                text: qsTr("Ford India Pvt. Ltd.")
                                font.pixelSize: Style.font13 ? Style.font13 : 13

                                topPadding: 0
                                bottomPadding: 0
                                background: Rectangle {
                                    //                                                       id: bgColor
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
                id: changeposition
                width: parent.width * 0.13
                height: parent.height * 0.068
                anchors.right: parent.right
                anchors.rightMargin: 0
                steptext: qsTr("Save")
                stepcolortext: "white"
                stepcolor: "#7d00ff"
            }
        }
    }
}
