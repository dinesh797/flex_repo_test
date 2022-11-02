import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Controls 2.3
import "../components"
import "../theme"

Rectangle {
    id: create_user_page
    width: parent.width
    height: parent.height
    color: Style.hoverprimary
    radius: 5
    Material.theme: Material.Dark
    Material.accent: Material.Purple
    transformOrigin: Item.Center
    border.color: "transparent"
    property alias save_new_password: save_new_password
    property alias new_password_input: new_password_input
    property alias old_password_input: old_password_input
    property alias confirm_password_input: confirm_password_input
    property alias discard_password: discard_password
    property alias btnClose_passwordpop: btnClose_passwordpop

    Column {
        id: column
        width: parent.width * 0.97
        height: parent.height * 0.97
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        Item {
            id: topbar_createuserwid
            width: parent.width
            height: parent.height * 0.1
            Row {
                id: row3_topbar
                width: parent.width * 0.8
                height: parent.height
                anchors.right: parent.right
                layoutDirection: Qt.RightToLeft
                anchors.rightMargin: 0
                TopBarButton {
                    id: btnClose_passwordpop
                    visible: true
                    anchors.verticalCenter: parent.verticalCenter
                    height: parent.height * 0.90
                    width: parent.width * 0.12
                    btnColorClicked: "#55aaff"
                    btnColorMouseOver: "#ff007f"
                    buttonIcon: ""
                    contentItem: Text {
                        text: "\u2327"
                        font.pixelSize: 21
                        anchors.fill: parent
                        color: Style.menuIcon
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.family: Style.fonticon.name
                    }
                }
            }
        }

        Item {
            id: item3
            width: parent.width
            height: parent.height * 0.1

            Text {
                id: text1
                color: Style.tertiary
                text: qsTr("  Change Password")
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: Style.font16 ? Style.font16 : 16
            }
        }

        Rectangle {
            id: rectangle
            width: parent.width * 0.98
            height: parent.height * 0.80
            color: Style.secondary
            radius: 5
            anchors.horizontalCenter: parent.horizontalCenter

            Column {
                id: column1
                width: parent.width * 0.90
                height: parent.height * 0.90
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 5
                Row {
                    width: parent.width
                    height: parent.height * 0.15
                    spacing: 10
                    Item {

                        width: parent.width * 0.35
                        height: parent.height * 0.90
                        anchors.verticalCenter: parent.verticalCenter
                        Text {
                            //                            id: password_text
                            text: qsTr(" <font color=\"#FF0000\">*</font><font color=\"transparent\">_</font>Old Password : ")
                            color: Style.tertiary
                            anchors.verticalCenter: parent.verticalCenter
                            font.pixelSize: Style.font12 ? Style.font12 : 12
                            anchors.right: parent.right
                            horizontalAlignment: Text.AlignRight
                            verticalAlignment: Text.AlignVCenter
                            anchors.rightMargin: 0
                        }
                    }

                    TextField {
                        id: old_password_input
                        leftPadding: 10
                        maximumLength: 10
                        placeholderText: "Enter old password"
                        inputMethodHints: Qt.ImhFormattedNumbersOnly
                        validator: RegularExpressionValidator {
                            regularExpression: /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/
                        }
                        width: parent.width * 0.53
                        height: parent.height * 0.92
                        color: Style.tertiary
                        text: qsTr("")
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: Style.font13 ? Style.font13 : 13
                        topPadding: 0
                        bottomPadding: 0
                        background: Rectangle {
                            color: Style.secondary
                            radius: 5
                            border.color: "black"
                            border.width: 0.5
                        }
                    }
                    Item {
                        //                        id: name
                        width: parent.width * 0.095
                        height: parent.height * 0.6
                        anchors.verticalCenter: parent.verticalCenter
                        Button {

                            display: AbstractButton.IconOnly
                            checkable: true
                            id: hideunhide
                            width: parent.width
                            height: parent.height
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.horizontalCenter: parent.horizontalCenter

                            onCheckedChanged: {
                                if (hideunhide.checked) {
                                    menu_icon2.source = "../images/view.png"
                                    password_add.echoMode = TextField.Normal
                                } else {
                                    menu_icon2.source = "../images/hide.png"
                                    password_add.echoMode = TextField.Password
                                }
                            }

                            IconImage {
                                id: old_password_visibility
                                anchors.verticalCenter: parent.verticalCenter
                                source: "../images/hide.png"
                                anchors.horizontalCenter: parent.horizontalCenter
                                fillMode: IconImage.PreserveAspectFit
                                sourceSize.width: parent.width * 0.85
                                sourceSize.height: parent.height
                            }
                            background: Rectangle {
                                color: Style.colorshallow
                                anchors.fill: parent
                            }
                        }
                    }
                }
                Item {
                    width: parent.width
                    height: parent.height * 0.05
                }
                Row {
                    width: parent.width
                    height: parent.height * 0.15
                    spacing: 10
                    Item {

                        width: parent.width * 0.35
                        height: parent.height * 0.90
                        anchors.verticalCenter: parent.verticalCenter
                        Text {
                            //                            id: password_text
                            text: qsTr(" <font color=\"#FF0000\">*</font><font color=\"transparent\">_</font>New Password : ")
                            color: Style.tertiary
                            anchors.verticalCenter: parent.verticalCenter
                            font.pixelSize: Style.font12 ? Style.font12 : 12
                            anchors.right: parent.right
                            horizontalAlignment: Text.AlignRight
                            verticalAlignment: Text.AlignVCenter
                            anchors.rightMargin: 0
                        }
                    }

                    TextField {
                        id: new_password_input
                        leftPadding: 10
                        maximumLength: 10
                        placeholderText: "Enter password"
                        inputMethodHints: Qt.ImhFormattedNumbersOnly
                        validator: RegularExpressionValidator {
                            regularExpression: /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/
                        }
                        width: parent.width * 0.53
                        height: parent.height * 0.92
                        color: Style.tertiary
                        text: qsTr("")
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: Style.font13 ? Style.font13 : 13
                        topPadding: 0
                        bottomPadding: 0
                        background: Rectangle {
                            color: Style.secondary
                            radius: 5
                            border.color: "black"
                            border.width: 0.5
                        }
                    }
                    Item {
                        //                        id: name
                        width: parent.width * 0.095
                        height: parent.height * 0.6
                        anchors.verticalCenter: parent.verticalCenter
                        Button {

                            display: AbstractButton.IconOnly
                            checkable: true
                            id: hideunhide3
                            width: parent.width
                            height: parent.height
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.horizontalCenter: parent.horizontalCenter

                            onCheckedChanged: {
                                if (hideunhide3.checked) {
                                    menu_icon3.source = "../images/view.png"
                                    password_add.echoMode = TextField.Normal
                                } else {
                                    menu_icon3.source = "../images/hide.png"
                                    password_add.echoMode = TextField.Password
                                }
                            }

                            IconImage {
                                id: new_password_visibility
                                anchors.verticalCenter: parent.verticalCenter
                                source: "../images/hide.png"
                                anchors.horizontalCenter: parent.horizontalCenter
                                fillMode: IconImage.PreserveAspectFit
                                sourceSize.width: parent.width * 0.85
                                sourceSize.height: parent.height
                            }
                            background: Rectangle {
                                color: Style.colorshallow
                                anchors.fill: parent
                            }
                        }
                    }
                }
                Item {
                    width: parent.width
                    height: parent.height * 0.05
                }
                Row {
                    width: parent.width
                    height: parent.height * 0.15
                    spacing: 10
                    Item {

                        width: parent.width * 0.35
                        height: parent.height * 0.90
                        anchors.verticalCenter: parent.verticalCenter
                        Text {
                            //                            id: password_text
                            text: qsTr(" <font color=\"#FF0000\">*</font><font color=\"transparent\">_</font>Confirm Password : ")
                            color: Style.tertiary
                            anchors.verticalCenter: parent.verticalCenter
                            font.pixelSize: Style.font12 ? Style.font12 : 12
                            anchors.right: parent.right
                            horizontalAlignment: Text.AlignRight
                            verticalAlignment: Text.AlignVCenter
                            anchors.rightMargin: 0
                        }
                    }

                    TextField {
                        id: confirm_password_input
                        leftPadding: 10
                        maximumLength: 10
                        placeholderText: "Enter password"
                        inputMethodHints: Qt.ImhFormattedNumbersOnly
                        validator: RegularExpressionValidator {
                            regularExpression: /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/
                        }
                        width: parent.width * 0.53
                        height: parent.height * 0.92
                        color: Style.tertiary
                        text: qsTr("")
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: Style.font13 ? Style.font13 : 13
                        topPadding: 0
                        bottomPadding: 0
                        background: Rectangle {
                            color: Style.secondary
                            radius: 5
                            border.color: "black"
                            border.width: 0.5
                        }
                    }
                    Item {
                        //                        id: name
                        width: parent.width * 0.095
                        height: parent.height * 0.6
                        anchors.verticalCenter: parent.verticalCenter
                        Button {

                            display: AbstractButton.IconOnly
                            checkable: true
                            id: hideunhide2
                            width: parent.width
                            height: parent.height
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.horizontalCenter: parent.horizontalCenter

                            onCheckedChanged: {
                                if (hideunhide2.checked) {
                                    menu_icon.source = "../images/view.png"
                                    password_add.echoMode = TextField.Normal
                                } else {
                                    menu_icon.source = "../images/hide.png"
                                    password_add.echoMode = TextField.Password
                                }
                            }

                            IconImage {
                                id: confirm_password_visibility
                                anchors.verticalCenter: parent.verticalCenter
                                source: "../images/hide.png"
                                anchors.horizontalCenter: parent.horizontalCenter
                                fillMode: IconImage.PreserveAspectFit
                                sourceSize.width: parent.width * 0.85
                                sourceSize.height: parent.height
                            }
                            background: Rectangle {
                                color: Style.colorshallow
                                anchors.fill: parent
                            }
                        }
                    }
                }
                Item {
                    width: parent.width
                    height: parent.height * 0.05
                }
                Row {
                    id: row651
                    spacing: 5

                    width: parent.width
                    height: parent.height * 0.20
                    Item {
                        id: name651
                        width: parent.width * 0.40
                        height: parent.height * 0.90
                        anchors.verticalCenter: parent.verticalCenter
                    }
                    Item {
                        id: item4
                        //                        id: create_item
                        width: parent.width * 0.25
                        height: parent.height

                        HoverButton {
                            id: discard_password
                            z: -2
                            width: parent.width
                            height: parent.height * 0.70
                            stepcolor: "#505050"
                            stepcolortext: "white"
                            hovercol: "#014e79"
                            radiuso: 5
                            steptext: qsTr("Cancel")
                            // clickcol: "transparent"
                            anchors.verticalCenter: parent.verticalCenter
                        }
                    }

                    Item {
                        id: save_password
                        width: parent.width * 0.25
                        height: parent.height
                        HoverButton {
                            id: save_new_password
                            z: -1
                            checkable: false
                            width: parent.width
                            height: parent.height * 0.70
                            stepcolor: "#347efb"
                            stepcolortext: "white"
                            radiuso: 5
                            hovercol: "#014e79"
                            steptext: qsTr("Save")
                            anchors.verticalCenter: parent.verticalCenter
                        }
                    }
                }
            }
        }
    }
}
