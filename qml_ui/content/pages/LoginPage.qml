import QtQuick
import QtQuick.Controls
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 1.15
import QtQuick.Controls.Universal 2.15
// import QtQuick.Controls.Material 2.12

Rectangle {
    id: login_content
    Universal.theme: Universal.Light
    Universal.accent: "#C3F8FF"
    color: Style.hoverprimary
    property alias login_content: login_content
    width: 1000 / 1.050
    height: 600 / 1.050
    property alias unlockbutton: unlockbutton
    property string errortext
    property alias text2: text2
    property alias loginerror: loginerror
    property alias pBar: pBar
    property alias password_field: password_field
    property alias username_field: username_field

    Image {
        id: input
        source: "../images/robot_bg.jpg"
        width: parent.width * 0.65
        height: parent.height
    }

    Rectangle {
        id: loginpage
        height: parent.height * 0.6
        width: parent.width * 0.40
        color: "transparent"
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.topMargin: 50

        Row {
            id: row
            anchors.fill: parent
            spacing: 10

            Item {
                id: item1

                width: parent.width * 0.15
                height: parent.height * 0.54
            }

            Item {
                id: item2
                width: parent.width - item1.width
                height: parent.height

                Column {
                    id: column
                    anchors.fill: parent
                    spacing: 9

                    Text {
                        id: text2
                        // color: "white"
                        color: Style.tertiary
                        height: parent.height * 0.1
                        width: parent.width * 0.88
                        text: qsTr("Sign in")
                        font.pixelSize: Style.font16 ? Style.font16 : 16
                        horizontalAlignment: Text.AlignHCenter
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                        verticalAlignment: Text.AlignVCenter
                    }
                    Text {
                        id: loginerror
                        text: qsTr(errortext)
                        height: parent.height * 0.1
                        width: parent.width * 0.912
                        font.pixelSize: Style.font16 ? Style.font16 : 16
                        horizontalAlignment: Text.AlignHCenter
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                        verticalAlignment: Text.AlignVCenter
                    }
                    Rectangle {

                        width: parent.width * 0.90
                        height: parent.height * 0.02
                        border.width: 1
                        border.color: "transparent"
                        color: "transparent"

                        ProgressBar {
                            id: pBar
                            indeterminate: false
                            anchors.fill: parent
                            scale: 0.5
                            smooth : true
                            Universal.accent: Style.loginbar_color
                            
                            background: Rectangle {
                                border.color: "transparent"
                                color: "transparent"
                                radius: 3
                            
                            }
                        }
                    }

                    Row {
                        id: row1
                        width: parent.width
                        height: parent.height * 0.13
                        spacing: 5

                        Text {
                            id: username
                            color: Style.tertiary
                            height: parent.height
                            width: parent.width
                            text: qsTr("Username: ")
                            font.pixelSize: Style.font16
                            fontSizeMode: Text.Fit
                            minimumPixelSize: 2
                            verticalAlignment: Text.AlignVCenter
                            font.bold: false
                        }
                    }

                    Item {
                        id: useritem
                        width: 227
                        height: 50

                        TextField {
                            id: username_field
                            // color: "white"
                            color: Style.tertiary
                            // text: ""
                            anchors.left: parent.left
                            placeholderText: qsTr("Enter Username")
                            placeholderTextColor: Style.tertiary3
                            font.pixelSize: Style.font16
                            height: parent.height
                            horizontalAlignment: Text.AlignLeft
                            width: parent.width
                            Connections {
                                target: username_field
                                function onTextChanged() {
                                    if (!username_field.text == "") {
                                        user_text.color = "#00000000"
                                    } else {
                                        user_text.color = "#fc4236"
                                    }
                                }
                            }
                            Connections {
                                target: username_field
                                function onTextChanged() {
                                    if (!loginerror.text == ""
                                            && !username_field.text == ""
                                            && !password_field.text == "") {
                                        loginerror.text = ""
                                    }
                                }
                            }

                            background: Rectangle {
                                y: username_field.height - height - username_field.bottomPadding + 8
                                implicitWidth: 120
                                height: username_field.activeFocus
                                        || username_field.hovered ? 2 : 1
                                color: username_field.activeFocus ? "#39aca1" : (parent.hovered ? "#3aaea3" : "#80e6de")
                            }
                        }
                    }
                    Item {
                        id: user_lbl
                        width: parent.width * 0.7
                        height: parent.height * 0.050
                        Text {
                            id: user_text

                            text: qsTr("Username can't be empty")
                            anchors.fill: parent
                            color: "#00000000"
                            font.pixelSize: 12
                            horizontalAlignment: Text.AlignRight
                            verticalAlignment: Text.AlignVCenter
                            fontSizeMode: Text.Fit
                            minimumPixelSize: 2
                        }
                    }
                    Item {
                        id: passtxet_item
                        width: parent.width
                        height: parent.height * 0.13

                        Text {
                            id: password
                            // color: "white"
                            color: Style.tertiary
                            height: parent.height
                            width: parent.width
                            text: qsTr(" Password: ")
                            font.pixelSize: Style.font16
                            fontSizeMode: Text.Fit
                            minimumPixelSize: 2
                            verticalAlignment: Text.AlignVCenter
                            font.bold: false
                        }
                    }

                    Row {
                        id: row2
                        width: parent.width
                        height: parent.height * 0.13
                        spacing: 5

                        Item {
                            id: pass_item
                            width: parent.width * 0.7
                            height: parent.height

                            TextField {
                                id: password_field
                                // color: "white"
                                color: Style.tertiary
                                // text: ""
                                anchors.left: parent.left
                                echoMode: TextField.Password
                                placeholderText: qsTr("Enter Password")
                                placeholderTextColor: Style.tertiary3
                                font.pixelSize: Style.font16
                                height: parent.height
                                horizontalAlignment: Text.AlignLeft
                                width: parent.width
                                background: Rectangle {
                                    y: password_field.height - height
                                       - password_field.bottomPadding + 8
                                    implicitWidth: 120
                                    height: password_field.activeFocus
                                            || password_field.hovered ? 2 : 1
                                    color: password_field.activeFocus ? "#39aca1" : (parent.hovered ? "#3aaea3" : "#80e6de")
                                }
                                Connections {
                                    target: password_field
                                    function onTextChanged() {
                                        if (!password_field.text == "") {
                                            pass_text.color = "#00000000"
                                        } else {
                                            pass_text.color = "#fc4236"
                                        }
                                    }
                                }
                                Connections {
                                    target: password_field
                                    function onAccepted() {
                                        if (!username_field.text == ""
                                                && !password_field.text == "") {
                                            var response = login.login(
                                                        username_field.text,
                                                        password_field.text)
                                            if (response != null) {
                                                if (response['is_logged_in']) {
                                                    profilelogin.profilelogin()
                                                    loginerror.color = Style.loginstatus_color
                                                    loginerror.text = qsTr(
                                                                "Login Successful")

                                                    pBar.indeterminate = true
                                                    timer.running = true
                                                    app.visible = true
                                                } else {
                                                    loginerror.color = "#fc4236"
                                                    if (response['error'] != null) {
                                                        loginerror.text = response['error']
                                                    }
                                                }
                                            }
                                        } else {
                                            if (username_field.text == "") {
                                                user_text.color = "#fc4236"
                                            }
                                            if (password_field.text == "") {
                                                pass_text.color = "#fc4236"
                                            }
                                        }
                                    }
                                }

                                Connections {
                                    target: password_field
                                    function onTextChanged() {
                                        if (!loginerror.text == ""
                                                && !username_field.text == ""
                                                && !password_field.text == "") {
                                            loginerror.text = ""
                                        }
                                    }
                                }
                            }
                        }
                        Item {
                            id: name
                            width: parent.width * 0.2
                            height: parent.height
                            Button {

                                display: AbstractButton.IconOnly
                                checkable: true
                                anchors.left: parent.left
                                anchors.horizontalCenter: parent.horizontalCenter
                                id: hideunhide
                                width: parent.width * 0.5
                                height: parent.height * 0.5

                                anchors.verticalCenter: parent.verticalCenter

                                onCheckedChanged: {
                                    if (hideunhide.checked) {
                                        menu_icon.source = "../images/view.png"
                                        password_field.echoMode = TextField.Normal
                                    } else {
                                        menu_icon.source = "../images/hide.png"
                                        password_field.echoMode = TextField.Password
                                    }
                                }

                                IconImage {
                                    id: menu_icon
                                    anchors.left: parent.left
                                    source: "../images/hide.png"
                                    anchors.leftMargin: 15
                                    fillMode: IconImage.PreserveAspectFit
                                    sourceSize.width: parent.width * 0.85
                                    sourceSize.height: parent.height * 1
                                }
                                background: Rectangle {
                                    color: Style.colorshallow
                                    anchors.fill: parent
                                }
                            }
                        }
                    }
                    Item {
                        id: pass_lbl
                        width: parent.width * 0.7
                        height: parent.height * 0.050
                        Text {
                            id: pass_text

                            text: qsTr("Password can't be empty")
                            anchors.fill: parent
                            color: "#00000000"
                            font.pixelSize: 12
                            horizontalAlignment: Text.AlignRight
                            verticalAlignment: Text.AlignVCenter
                            fontSizeMode: Text.Fit
                            minimumPixelSize: 2
                        }
                    }
                    Item {
                        id: buttonitem
                        width: parent.width * 0.7
                        height: parent.height * 0.2

                        Row {
                            id: buttonrow
                            width: parent.width * 0.6
                            height: parent.height * 0.7
                            anchors.left: parent.left
                            spacing: 15

                            HoverButton {
                                id: unlockbutton
                                width: parent.width * 0.50
                                anchors.verticalCenter: parent.verticalCenter
                                stepcolor: "#35c5b2"
                                steptext: qsTr("Sign In")
                                stepcolortext: "white" //black
                                radiuso: 15
                                radiusi: 15
                                Connections {
                                    target: unlockbutton
                                    function onClicked() {
                                        if (!username_field.text == ""
                                                && !password_field.text == "") {
                                            var response = login.login(
                                                        username_field.text,
                                                        password_field.text)
                                            if (response != null) {
                                                if (response['is_logged_in']) {
                                                    profilelogin.profilelogin()
                                                    loginerror.color = "#6fde00"
                                                    loginerror.text = qsTr(
                                                                "Login Successful")

                                                    pBar.indeterminate = true
                                                    timer.running = true
                                                    app.visible = true
                                                } else {
                                                    loginerror.color = "#fc4236"
                                                    if (response['error'] != null) {
                                                        loginerror.text = response['error']
                                                    }
                                                }
                                            }
                                        } else {
                                            if (username_field.text == "") {
                                                user_text.color = "#fc4236"
                                            }
                                            if (password_field.text == "") {
                                                pass_text.color = "#fc4236"
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
    }
    PropertyAnimation {
        id: loginAnimationFrameMarginTop
        target: loginpage
        property: "anchors.topMargin"
        to: -280
        duration: 950
        easing.type: Easing.InOutQuint
    }
}
