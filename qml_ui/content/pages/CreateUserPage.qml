import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Controls 2.3
import "../components"
// import "../pages"
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
    property alias create_add_user: create_add_user
    property alias discard_add_user: discard_add_user
    property alias adminaccess_add: adminaccess_add
    property alias password_add: password_add
    property alias name_add: name_add
    property alias emailvalid_add: emailvalid_add
    property alias loginname_add: loginname_add
    property alias btnClose_createuser: btnClose_createuser

    Column {
        id: column
        width: parent.width * 0.97
        height: parent.height * 0.97
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        Item {
            id: topbar_createuserwid
            width: parent.width
            height: parent.height * 0.08
            Row {
                id: row3_topbar
                width: parent.width * 0.8
                height: parent.height
                anchors.right: parent.right
                layoutDirection: Qt.RightToLeft
                anchors.rightMargin: 0
                TopBarButton {
                    id: btnClose_createuser
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
                    //                               onClicked: {
                    //                                   app.close()
                    //                                   Qt.quit()
                    //                               }
                }
            }
        }

        Item {
            id: item3
            width: parent.width
            height: parent.height * 0.08

            Text {
                id: text1
                color: Style.tertiary
                text: qsTr("  Create new end-user")
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: Style.font16 ? Style.font16 : 16
            }
        }

        Rectangle {
            id: rectangle
            width: parent.width * 0.98
            height: parent.height * 0.84
            color: Style.secondary
            radius: 5
            anchors.horizontalCenter: parent.horizontalCenter

            Column {
                id: column1
                width: parent.width * 0.90
                height: parent.height * 0.95
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 5

                Row {
                    id: row
                    width: parent.width
                    height: parent.height * 0.10
                    spacing: 10

                    Item {
                        id: login_name
                        width: parent.width * 0.28
                        height: parent.height * 0.90
                        anchors.verticalCenter: parent.verticalCenter
                        Text {
                            id: login_name_text
                            text: qsTr("Login : ")
                            color: Style.tertiary
                            anchors.verticalCenter: parent.verticalCenter
                            font.pixelSize: Style.font12 ? Style.font12 : 12
                            anchors.right: parent.right
                            horizontalAlignment: Text.AlignRight
                            verticalAlignment: Text.AlignVCenter
                            anchors.rightMargin: 0
                        }
                        Text {
                            id: error_login_name_text
                            text: qsTr("*  ")
                            color: "red"
                            anchors.verticalCenter: parent.verticalCenter
                            font.pixelSize: Style.font12 ? Style.font12 : 12
                            horizontalAlignment: Text.AlignRight
                            verticalAlignment: Text.AlignVCenter
                            anchors.right: login_name_text.left
                        }
                    }

                    TextField {
                        id: loginname_add
                        leftPadding: 10
                        maximumLength: 20
                        validator: RegularExpressionValidator {
                            regularExpression: /^[A-z/]+$/
                        }
                        width: parent.width * 0.60
                        height: parent.height * 0.92
                        color: Style.tertiary
                        text: qsTr("")
                        placeholderText: "Enter login name"
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
                }
                Row {
                    id: row2
                    width: parent.width
                    height: parent.height * 0.10
                    spacing: 10
                    Item {
                        id: name2
                        width: parent.width * 0.28
                        height: parent.height * 0.90
                        anchors.verticalCenter: parent.verticalCenter
                        Text {
                            id: email_text
                            text: qsTr(" <font color=\"#FF0000\">*</font><font color=\"transparent\">_</font> Email : ")
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
                        id: emailvalid_add
                        leftPadding: 10
                        placeholderText: "Enter valid email "
                        maximumLength: 20
                        validator: RegularExpressionValidator {
                            regularExpression: /\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/
                        }
                        width: parent.width * 0.60
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
                }

                Row {
                    id: row3
                    width: parent.width
                    height: parent.height * 0.10
                    spacing: 10
                    Item {
                        id: name3
                        width: parent.width * 0.28
                        height: parent.height * 0.90
                        anchors.verticalCenter: parent.verticalCenter
                        Text {
                            id: username_text
                            text: qsTr(" <font color=\"#FF0000\">*</font><font color=\"transparent\">_</font> Name : ")
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
                        id: name_add
                        leftPadding: 10
                        width: parent.width * 0.60
                        height: parent.height * 0.92
                        color: Style.tertiary
                        placeholderText: "Enter your name"
                        text: qsTr("")
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: Style.font13 ? Style.font13 : 13
                        validator: RegularExpressionValidator {
                            regularExpression: /\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/
                        }
                        topPadding: 0
                        bottomPadding: 0
                        background: Rectangle {
                            color: Style.secondary
                            radius: 5
                            border.color: "black"
                            border.width: 0.5
                        }
                    }
                }
                Row {
                    id: row4
                    width: parent.width
                    height: parent.height * 0.10
                    spacing: 10
                    Item {
                        id: name4
                        width: parent.width * 0.28
                        height: parent.height * 0.90
                        anchors.verticalCenter: parent.verticalCenter
                        Text {
                            id: password_text
                            text: qsTr(" <font color=\"#FF0000\">*</font><font color=\"transparent\">_</font> Password : ")
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
                        id: password_add
                        leftPadding: 10
                        maximumLength: 10
                        placeholderText: "Enter password"
                        inputMethodHints: Qt.ImhFormattedNumbersOnly
                        validator: RegularExpressionValidator {
                            regularExpression: /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/
                        }
                        width: parent.width * 0.60
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
                        id: name
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
                                    menu_icon.source = "../images/view.png"
                                    password_add.echoMode = TextField.Normal
                                } else {
                                    menu_icon.source = "../images/hide.png"
                                    password_add.echoMode = TextField.Password
                                }
                            }

                            IconImage {
                                id: menu_icon
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
                Row {
                    id: row5
                    width: parent.width
                    height: parent.height * 0.10
                    spacing: 10
                    Item {
                        id: name5
                        width: parent.width * 0.28
                        height: parent.height * 0.90
                        anchors.verticalCenter: parent.verticalCenter
                        Text {
                            id: admin_access_text
                            text: qsTr(" <font color=\"#FF0000\">*</font><font color=\"transparent\">_</font> Admin Access    : ")
                            color: Style.tertiary
                            anchors.verticalCenter: parent.verticalCenter
                            font.pixelSize: Style.font12 ? Style.font12 : 12
                            anchors.right: parent.right
                            horizontalAlignment: Text.AlignRight
                            verticalAlignment: Text.AlignVCenter
                            anchors.rightMargin: 0
                        }
                    }

                    // ComboBox {
                    //     id: adminaccess_add
                    //     width: parent.width * 0.60
                    //     height: 39
                    //     anchors.verticalCenter: parent.verticalCenter
                    //     background: Rectangle {
                    //         color: Style.dropprimary
                    //         border.color: "black"
                    //         radius: 5
                    //     }
                    //     palette.button: 'transparent'
                    //     model: ["   Yes", "   No"]
                    //     delegate: ItemDelegate {
                    //         width: row5.width
                    //         height: row5.height
                    //         Text {
                    //             text: modelData
                    //             color: "black"
                    //             font.pixelSize: Style.font12 ? Style.font12 : 12
                    //             elide: Text.ElideRight
                    //             verticalAlignment: Text.AlignVCenter
                    //         }
                    //         highlighted: adminaccess_add.highlightedIndex === index
                    //     }
                    // }
                    AdminAccessButton {
                        id: adminaccess_add
                        width: parent.width * 0.30
                        height: parent.height * 0.92
                        anchors.verticalCenter: parent.verticalCenter
                        buttonIcon: Style.dropIcon
                        sortText: qsTr("")
                        items: ["Yes", "No"]
                        icon_left: false
                        api_val: "Yes"
                        icon_right: true
                        uncheckedcolor: Style.primary
                    }
                }
                Item {

                    width: parent.width
                    height: parent.height * 0.15
                }
                Row {
                    id: row651
                    spacing: 5

                    width: parent.width
                    height: parent.height * 0.15
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
                            id: discard_add_user
                            z: -2
                            width: parent.width
                            height: parent.height * 0.70
                            stepcolor: "#505050"
                            stepcolortext: "white"
                            hovercol: "#014e79"
                            radiuso: 5
                            steptext: qsTr("Discard")
                            // clickcol: "transparent"
                            anchors.verticalCenter: parent.verticalCenter
                        }
                    }

                    Item {
                        //                        id: create_item
                        width: parent.width * 0.25
                        height: parent.height
                        HoverButton {
                            id: create_add_user
                            z: -1
                            checkable: false
                            width: parent.width
                            height: parent.height * 0.70
                            stepcolor: "#347efb"
                            stepcolortext: "white"
                            radiuso: 5
                            hovercol: "#014e79"
                            steptext: qsTr("Create")
                            anchors.verticalCenter: parent.verticalCenter
                        }
                    }
                }
            }
        }
    }
}
