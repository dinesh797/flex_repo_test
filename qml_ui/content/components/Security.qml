import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick 2.9
import QtQuick.Timeline 1.0
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Rectangle {
    id: rectangle1
    color: Style.hoverprimary
    anchors.fill: parent
    property alias password_strenght: password_strenght
        property alias password_bar: password_bar
            property alias change_password_button: change_password_button

                Rectangle {
                    id: rectangle
                    width: parent.width * 0.90
                    height: parent.height * 0.90
                    color: Style.hoverprimary
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter

                    Column {
                        id: column
                        anchors.fill: parent
                        spacing: 15
                        Item {
                            width: parent.width
                            height: parent.height * 0.10
                            Text {
                                text: qsTr("Security setting")
                                fontSizeMode: Text.Fit
                                minimumPixelSize: 2
                                color: Style.tertiary
                                anchors.verticalCenter: parent.verticalCenter
                                font.pixelSize: Style.font16 ? Style.font16 : 16
                                verticalAlignment: Text.AlignVCenter
                            }
                        }

                        Item {
                            width: parent.width
                            height: parent.height * 0.05
                        }
                        Item {
                            id: item2
                            width: parent.width
                            height: parent.height * 0.47
                            Column {
                                id: column22
                                anchors.fill: parent

                                Column {
                                    id: rectangle2
                                    width: parent.width
                                    height: parent.height * 0.9

                                    Grid {
                                        id: grid2
                                        topPadding: 10
                                        rowSpacing: 5
                                        columnSpacing: 10
                                        width: parent.width
                                        height: parent.height * 0.9
                                        Item {

                                            width: parent.width * 0.25
                                            height: parent.height * 0.15
                                            Text {
                                                width: parent.width * 0.98
                                                height: parent.height
                                                fontSizeMode: Text.Fit
                                                minimumPixelSize: 2
                                                color: Style.tertiary
                                                text: qsTr(" Password security level: ")
                                                anchors.verticalCenter: parent.verticalCenter
                                                font.pixelSize: Style.font12 ? Style.font12 : 12
                                                verticalAlignment: Text.AlignVCenter
                                            }
                                        }
                                        Item {

                                            width: parent.width * 0.10
                                            height: parent.height * 0.15
                                            Text {
                                                id: password_strenght
                                                text: qsTr("Medium ")
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
                                        Item {
                                            id: password_bar
                                            width: parent.width * 0.20
                                            height: parent.height * 0.15


                                            ProgressBar {
                                                id: pb_forpassword                                                
                                                anchors.fill: parent                                                
                                            }
                                        }
                                        Item {
                                            id: item1

                                            width: parent.width * 0.20
                                            height: parent.height * 0.15
                                            HoverButton {
                                                id: change_password_button
                                                width: parent.width
                                                height: parent.height
                                                anchors.right: parent.right
                                                anchors.rightMargin: 0
                                                steptext: qsTr("change Password")
                                                stepcolor: "#7d00ff"
                                                stepcolortext: "white"
                                                hovercol: "#014e79"
                                                onClicked: {
                                                    pop_changepassword.open()
                                                    pb_forpassword.progress= 40
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                Popup {
                    id: pop_changepassword
                    width: parent.width * 0.6
                    height: parent.height * 0.7
                    anchors.centerIn: parent
                    modal: true
                    Overlay.modal: Rectangle {
                        color: Style.backcolor
                    }

                    background: Rectangle {
                        radius: 5
                        border.color: 'gray'
                        color: Style.backcolor
                    }

                    enter: Transition {
                        NumberAnimation {
                            property: "opacity"
                            from: 0.0
                            to: 1.0
                        }
                    }
                    focus: true
                    closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent
                    ChangePasswordPopup {
                        id: cpp
                        anchors.fill: parent

                        Connections {
                            target: cpp.save_new_password
                            function onClicked()
                            {
                                pop_changepassword.close()
                            }
                        }
                        Connections {
                            target: cpp.btnClose_passwordpop
                            function onClicked()
                            {
                                pop_changepassword.close()
                            }
                        }
                        Connections {
                            target: cpp.discard_password
                            function onClicked()
                            {
                                pop_changepassword.close()
                            }
                        }
                    }
                }
            }
