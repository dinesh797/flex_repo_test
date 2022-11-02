import QtQuick 2.15
import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Window
import "./components"
import "./pages"
import "./theme"
import QtQuick.Layouts

Window {
    id: app
    property int numberr
    property var lss
    flags: Qt.Window | Qt.FramelessWindowHint
    visible: true
    property color status_color 

    // Timer {
    //     id: dd
    //     interval: 2500
    //     running: true
    //     repeat: false
    //     onTriggered: {
    //         var status_app = setting.isConnected()

    //         if (status_app == "Connected") {
    //             status_color="#00ff00"
    //             connection_status.close()
    //         }
    //         if (status_app == "Not Connected") {
    //             status_color="#fc4338"
    //             connection_status.open()
    //         }
    //     }
    // }

    Popups {
        id: connection_status
        modal: true
        dim: true
        background: Rectangle {
            radius: 5
            border.color: 'gray'
            color:  status_color
        }

        Internet_status {
            anchors.fill: parent
        }
    }
    property alias programsPagestack: programsPagestack
    property alias stackV: stackV
    property Window appWindow: app
    x: Screen.width / 2 - width / 2
    y: Screen.height / 2 - height / 2
    width: 1000 / 1.050
    height: 600 / 1.050
    property int windowStatus: 0
    property int windowMargin: 10
    property int mainScreen2Radius: 2
    color: Style.colorshallow
    property int number
    property url source: ""
    Rectangle {
        id: hh
        anchors.fill: parent
        visible: false
        color: "red"

        Text {
            id: name
            text: qsTr("text")
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            color: Style.tertiary
            font.pixelSize: Style.font20 ? Style.font20 : 20
            verticalAlignment: Text.AlignVCenter
            fontSizeMode: Text.Fit
            minimumPixelSize: 2
        }
    }

    function changeView(source) {
        programsPagestack.push(Qt.resolvedUrl(source))
    }

    QtObject {
        id: internal
        function maximizeRestore() {
            if (windowStatus == 0) {
                app.showMaximized()
                windowStatus = 1
                windowMargin = 0
                mainScreen2.radius = 0
                mainScreen2.border.width = 0
                btnMaximizeRestore.buttonIcon = "../images/restore_icon.svg"
            } else {
                app.showNormal()
                windowStatus = 0
                windowMargin = 10
                mainScreen2.border.width = 3
                btnMaximizeRestore.buttonIcon = "../images/maximize_icon.svg"
            }
        }

        function ifMaximizedWindowRestore() {
            if (windowStatus == 1) {
                app.showNormal()
                windowStatus = 0
                windowMargin = 10
                internal.resetResizeBorders()
                mainScreen2.border.width = 3
                btnMaximizeRestore.buttonIcon = "../images/maximize_icon.svg"
            }
        }
    }

    Rectangle {
        id: mainScreen2
        anchors.fill: parent
        property alias home_button: home_button
        color: Style.hoverprimary
        border.color: Style.secondary

        ButtonGroup {
            id: group
        }

        Column {
            id: column
            anchors.fill: parent

            Rectangle {
                id: topbar
                color: Style.top_barcolor
                width: parent.width
                height: parent.height * 0.05
                Text {
                    id: text255
                    color: Style.tertiary
                    anchors.left: parent.left
                    height: parent.height
                    width: parent.width * 0.2
                    text: qsTr("FLEXBOTIC")
                    font.pixelSize: 12

                    verticalAlignment: Text.AlignVCenter
                    leftPadding: 5
                    fontSizeMode: Text.Fit
                    minimumPixelSize: 2
                }

                Row {
                    id: row3
                    width: parent.width * 0.28
                    height: parent.height
                    anchors.right: parent.right
                    layoutDirection: Qt.RightToLeft
                    anchors.rightMargin: 0
                    TopBarButton {
                        id: btnClose
                        visible: true
                        anchors.verticalCenter: parent.verticalCenter
                        btnColorDefault: Style.closebtnColor
                        height: parent.height * 0.90
                        width: parent.width * 0.12
                        btnColorClicked: "#55aaff"
                        btnColorMouseOver: "#ff007f"
                        buttonIcon: "../images/close_icon_2.svg"
                        onClicked: {
                            app.close()
                            Qt.quit()
                        }
                    }
                    TopBarButton {
                        id: btnMaximizeRestore
                        visible: true
                        height: parent.height * 0.90
                        anchors.verticalCenter: parent.verticalCenter
                        width: parent.width * 0.12
                        btnColorDefault: Style.expndbtnColor
                        btnColorMouseOver: "#40405f"
                        btnColorClicked: "#55aaff"
                        buttonIcon: "../images/maximize_icon.svg"
                        onClicked: internal.maximizeRestore()
                    }
                    TopBarButton {
                        id: btnMinimize
                        visible: true
                        height: parent.height * 0.90
                        anchors.verticalCenter: parent.verticalCenter
                        width: parent.width * 0.12
                        btnColorDefault: Style.minibtnColor
                        btnColorMouseOver: "#40405f"
                        btnColorClicked: "#55aaff"
                        buttonIcon: "../images/minimize_icon.svg"

                        onClicked: {
                            app.showMinimized()
                        }
                    }
                }

                Item {
                    id: item1
                    width: parent.width - row3.width
                    height: parent.height
                    MouseArea {

                        anchors.fill: parent
                        property point lastMousePos: Qt.point(0, 0)
                        onPressed: {
                            lastMousePos = Qt.point(mouseX, mouseY)
                        }
                        onMouseXChanged: app.x += (mouseX - lastMousePos.x)
                        onMouseYChanged: app.y += (mouseY - lastMousePos.y)
                    }
                }
            }

            Item {
                id: mainScreen
                width: parent.width
                height: parent.height

                PropertyAnimation {
                    id: default_anim
                    target: minimumsize
                    properties: "width"
                    duration: 1000
                    easing {
                        type: Easing.OutExpo
                        amplitude: 2
                        period: 0.3
                    }
                }

                Item {
                    id: maximumsize
                    width: parent.width * 0.2
                    height: parent.height

                    Item {
                        id: sidebar
                        width: parent.width
                        height: parent.height
                        Rectangle {
                            id: left_menu
                            anchors.fill: parent
                            color: Style.secondary

                            Column {
                                id: left_column
                                height: parent.height
                                width: parent.width
                                spacing: 10

                                Item {
                                    id: row
                                    width: parent.width
                                    height: parent.height * 0.1

                                    Image {
                                        id: app_icon
                                        width: parent.width * 0.2
                                        height: parent.height * 0.4
                                        anchors.top: parent.top
                                        anchors.topMargin: 10
                                        source: "images/flexlogo.png"
                                        fillMode: Image.PreserveAspectFit
                                    }
                                    Image {
                                        id: flexboticlogo
                                        width: parent.width * 0.7
                                        height: parent.height * 0.4
                                        anchors.top: parent.top
                                        anchors.topMargin: 10
                                        anchors.left: app_icon.right
                                        source: Style.flexIcon
                                        fillMode: Image.PreserveAspectFit
                                    }
                                }

                                Item {
                                    id: row1
                                    width: parent.width * 0.2
                                    height: parent.height * 0.040

                                    Text {
                                        id: text2
                                        text: qsTr("MAIN")
                                        color: Style.tertiary
                                        leftPadding: 4
                                        font.pixelSize: Style.font15 ? Style.font15 : 15
                                        horizontalAlignment: Text.AlignLeft
                                        verticalAlignment: Text.AlignVCenter
                                        fontSizeMode: Text.Fit
                                        minimumPixelSize: 2
                                        anchors.left: parent.left
                                        anchors.right: parent.right
                                        anchors.bottom: parent.bottom
                                        height: parent.height
                                    }
                                }

                                CustomButtonLeft {
                                    id: home_button
                                    ButtonGroup.group: group

                                    width: parent.width
                                    height: parent.height * 0.050
                                    buttonText: qsTr("Home")
                                    buttonIcon: Style.fonticon.status
                                                == FontLoader.Ready ? "\u005b" : ""
                                    buttoncolor: home_button.checked ? Style.hoverprimary : (home_button.hovered ? Style.hoverprimary : Style.hoversecondary)

                                    onClicked: {
                                        stackV.currentIndex = 0
                                    }
                                }
                                CustomButtonLeft {
                                    id: program_button
                                    ButtonGroup.group: group
                                    width: parent.width
                                    height: parent.height * 0.050
                                    buttonText: qsTr("Program")
                                    buttoncolor: program_button.checked ? Style.hoverprimary : (program_button.hovered ? Style.hoverprimary : Style.hoversecondary)
                                    buttonIcon: Style.fonticon.status
                                                == FontLoader.Ready ? "\ue921" : ""

                                    onClicked: {

                                        stackV.currentIndex = 1
                                    }
                                }
                                CustomButtonLeft {
                                    id: current_Position_Button
                                    ButtonGroup.group: group
                                    width: parent.width
                                    height: parent.height * 0.050
                                    buttonText: qsTr("Current Position")
                                    buttonIcon: Style.fonticon.status
                                                == FontLoader.Ready ? "\u0072" : ""
                                    buttoncolor: current_Position_Button.checked ? Style.hoverprimary : (current_Position_Button.hovered ? Style.hoverprimary : Style.hoversecondary)

                                    onClicked: {
                                        stackV.currentIndex = 2
                                    }
                                }
                                CustomButtonLeft {
                                    id: run_mode
                                    ButtonGroup.group: group
                                    width: parent.width
                                    height: parent.height * 0.050
                                    buttonText: qsTr("Run Mode")
                                    buttoncolor: run_mode.checked ? Style.hoverprimary : (run_mode.hovered ? Style.hoverprimary : Style.hoversecondary)

                                    onClicked: {
                                        stackV.currentIndex = 3
                                    }

                                    buttonIcon: "\ue915"
                                }

                                Item {
                                    id: row2
                                    width: parent.width / 5
                                    height: parent.height * 0.040
                                    Text {
                                        id: text3
                                        text: qsTr("SETUP")
                                        color: Style.tertiary

                                        leftPadding: 4
                                        font.pixelSize: Style.font15 ? Style.font15 : 15
                                        fontSizeMode: Text.Fit
                                        minimumPixelSize: 2
                                        anchors.left: parent.left
                                        anchors.right: parent.right
                                        anchors.bottom: parent.bottom
                                        height: parent.height
                                    }
                                }
                                CustomButtonLeft {
                                    id: mastering_mode
                                    ButtonGroup.group: group
                                    width: parent.width
                                    height: parent.height * 0.050
                                    buttonText: qsTr("Mastering Mode")
                                    buttoncolor: mastering_mode.checked ? Style.hoverprimary : (mastering_mode.hovered ? Style.hoverprimary : Style.hoversecondary)

                                    onClicked: {
                                        stackV.currentIndex = 4
                                    }

                                    buttonIcon: "\ue914"
                                }

                                CustomButtonLeft {
                                    id: robot_mode
                                    ButtonGroup.group: group
                                    width: parent.width
                                    height: parent.height * 0.050
                                    buttonText: qsTr("Robots")
                                    buttonIcon: Style.fonticon.status
                                                == FontLoader.Ready ? "\ue923" : ""

                                    buttoncolor: robot_mode.checked ? Style.hoverprimary : (robot_mode.hovered ? Style.hoverprimary : Style.hoversecondary)

                                    onClicked: {
                                        stackV.currentIndex = 5
                                    }
                                }
                                CustomButtonLeft {
                                    id: detector_button
                                    ButtonGroup.group: group
                                    width: parent.width
                                    height: parent.height * 0.050
                                    buttonText: qsTr("Detectors")
                                    buttoncolor: detector_button.checked ? Style.hoverprimary : (detector_button.hovered ? Style.hoverprimary : Style.hoversecondary)

                                    onClicked: {
                                        stackV.currentIndex = 6
                                    }

                                    buttonIcon: Style.fonticon.status
                                                == FontLoader.Ready ? "\ue922" : ""
                                }
                                CustomButtonLeft {
                                    id: speed_button
                                    ButtonGroup.group: group
                                    width: parent.width
                                    height: parent.height * 0.050
                                    buttonText: qsTr("Speed")
                                    buttoncolor: speed_button.checked ? Style.hoverprimary : (speed_button.hovered ? Style.hoverprimary : Style.hoversecondary)

                                    onClicked: {
                                        stackV.currentIndex = 7
                                    }

                                    buttonIcon: "\u0041"
                                }
                                CustomButtonLeft {
                                    id: torque_button
                                    ButtonGroup.group: group
                                    width: parent.width
                                    height: parent.height * 0.050
                                    buttonText: qsTr("Torque")
                                    buttoncolor: torque_button.checked ? Style.hoverprimary : (torque_button.hovered ? Style.hoverprimary : Style.hoversecondary)

                                    onClicked: {
                                        stackV.currentIndex = 8
                                    }

                                    buttonIcon: "\ue909"
                                }
                                CustomButtonLeft {
                                    id: light_button
                                    ButtonGroup.group: group
                                    height: parent.height * 0.050
                                    width: parent.width
                                    buttonText: qsTr("Light")
                                    buttoncolor: light_button.checked ? Style.hoverprimary : (light_button.hovered ? Style.hoverprimary : Style.hoversecondary)

                                    onClicked: {
                                        stackV.currentIndex = 9
                                        // console.log("Light button clicked")
                                    }

                                    buttonIcon: "\ue913"
                                }
                            }
                        }
                    }
                }

                Item {
                    id: minimumsize
                    width: maximumsize.width * 0.2
                    height: parent.height
                    anchors.left: parent.left
                }

                Item {
                    id: contentbar
                    height: parent.height
                    anchors.left: minimumsize.right
                    anchors.right: parent.right

                    Rectangle {
                        id: right_menu
                        color: Style.hoverprimary
                        anchors.fill: parent

                        Item {
                            id: right_column
                            anchors.fill: parent

                            Item {
                                id: item3
                                width: parent.width
                                height: parent.height * 0.07

                                Button {
                                    id: button
                                    display: AbstractButton.IconOnly
                                    checkable: true
                                    width: parent.width / 20
                                    height: parent.height
                                    anchors.top: parent.top
                                    contentItem: Text {
                                        // id: menu_text
                                        text: "\u0054"
                                        font.pixelSize: 30
                                        color: Style.menuIcon
                                        horizontalAlignment: Text.AlignHCenter
                                        verticalAlignment: Text.AlignVCenter
                                        font.family: Style.fonticon.name
                                    }
                                    onCheckedChanged: {

                                        if (button.checked) {
                                            default_anim.to = maximumsize.width
                                            default_anim.running = enabled
                                        } else {

                                            default_anim.to = maximumsize.width * 0.2
                                            default_anim.running = enabled
                                        }
                                    }

                                    anchors.left: parent.left
                                    background: Rectangle {
                                        color: Style.primary
                                        anchors.fill: button
                                    }
                                }

                                Image {
                                    id: ford_logo_flat
                                    width: parent.width / 15
                                    height: parent.height
                                    anchors.left: button.right
                                    source: "images/Ford_logo_flat.svg"
                                    fillMode: Image.PreserveAspectFit
                                }
                                Row {
                                    id: toplefthold
                                    width: parent.width * 0.50
                                    height: parent.height
                                    spacing: 5
                                    anchors.right: parent.right
                                    layoutDirection: Qt.RightToLeft

                                    Item {
                                        id: rhythmsoftLogo
                                        width: parent.width * 0.35
                                        height: parent.height * 0.95

                                        Image {
                                            id: logo
                                            width: parent.width * 0.90
                                            height: parent.height * 0.90
                                            anchors.verticalCenter: parent.verticalCenter
                                            antialiasing: true
                                            clip: true
                                            sourceSize.height: parent.height * 0.80
                                            sourceSize.width: parent.width * 0.80
                                            source: "images/logo.svg"
                                            fillMode: Image.PreserveAspectFit
                                        }
                                    }
                                    CustomButtonTop {
                                        id: profileButton
                                        visible: true
                                        ButtonGroup.group: group
                                        width: parent.width * 0.15
                                        height: parent.height * 0.80
                                        buttonText: qsTr("Profile")
                                        buttonIcon: "\u0100"//"\u0105"
                                        iconleftmargin :10
                                        anchors.top: parent.top
                                        // visible: true
                                        onClicked: {
                                            stackV.currentIndex = 14
                                        }
                                    }

                                    // CustomButtonTop {
                                    //     id: helpButton
                                    //     ButtonGroup.group: group
                                    //     width: parent.width * 0.10
                                    //     height: parent.height * 0.80
                                    //     buttonText: qsTr("Help")
                                    //     buttonIcon: "\u0125"
                                    //     anchors.top: parent.top
                                    //     onClicked: {
                                    //         stackV.currentIndex = 13
                                    //     }
                                    // }

                                    // CustomButtonTop {
                                    //     id: webButton
                                    //     ButtonGroup.group: group
                                    //     width: parent.width * 0.10
                                    //     height: parent.height * 0.80
                                    //     buttonText: qsTr("Web")
                                    //     buttonIcon: "\ue907"
                                    //     anchors.top: parent.top
                                    //     onClicked: {
                                    //         stackV.currentIndex = 12
                                    //     }
                                    // }
                                    
                             

                                    CustomButtonTop {
                                        id: settingButton
                                        ButtonGroup.group: group
                                        width: parent.width * 0.15
                                        height: parent.height * 0.80
                                        buttonText: qsTr("Setting")
                                        iconleftmargin :10
                                        buttonIcon: "\u011c"
                                        anchors.top: parent.top
                                        onClicked: {
                                            stackV.currentIndex = 11
                                        }
                                    }
                                    
                                    CustomButtonTop {
                                        id: adduserButton
                                        checkable : false
                                        ButtonGroup.group: group
                                        width: parent.width * 0.15
                                        height: parent.height * 0.80
                                        buttonText: qsTr("User")
                                        iconleftmargin :10
                                        buttonIcon: "\ue8fa"
                                        anchors.top: parent.top
                                        onClicked: {
                                           popadduser.open()
                                        }
                                    }

                                    CustomButtonTop {
                                        id: loginButton
                                        ButtonGroup.group: group
                                        width: parent.width * 0.15
                                        height: parent.height * 0.80
                                        buttonText: qsTr("Log Out")
                                        iconleftmargin :10
                                        checkable: false
                                        buttonIcon: "\u0053"
                                        anchors.top: parent.top
                                        onClicked: {
                                            poplogout.open()
                                        }
                                    }
                                }
                            }

                            Rectangle {
                                id: contentPages
                                width: parent.width
                                height: parent.height * 0.88
                                color: Style.hoverprimary
                                anchors.top: item3.bottom
                                border.color: Style.border1cf
                                Rectangle {
                                    color: Style.hoverprimary
                                    anchors.verticalCenter: parent.verticalCenter
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    width: parent.width * 0.98
                                    height: parent.height * 0.98
                                    StackLayout {
                                        id: stackV
                                        currentIndex: 0
                                        width: parent.width * 0.99
                                        height: parent.height * 0.99
                                        anchors.verticalCenter: parent.verticalCenter
                                        anchors.horizontalCenter: parent.horizontalCenter
                                        StackView {
                                            id: homePagestack
                                            initialItem: "./pages/HomePage.qml"
                                        }

                                        StackView {
                                            id: programsPagestack
                                            initialItem: ProgramsPage {
                                                id: pp
                                            }
                                        }

                                        StackView {
                                            id: currentlModePagestack
                                            initialItem: "./pages/CurrentPosition_StackPage.qml"
                                        }

                                        StackView {
                                            id: runPagestack
                                            initialItem: "./pages/RunPage.qml"
                                        }

                                        StackView {
                                            id: masteringPositionPagestack
                                            initialItem: "./pages/MasteringPositionPage.qml"
                                        }

                                        StackView {
                                            id: setupRobotPagestack
                                            initialItem: srp_comp
                                            Component {
                                                id: srp_comp
                                                SetupRobotPage {
                                                    id: srp

                                                    Component.onCompleted: {
                                                        var srp_lst = []
                                                        var srp_setting = setting.get_setting()
                                                        srp_lst = srp_setting
                                                        srp.srp_toggle = srp_lst
                                                    }
                                                }
                                            }
                                        }

                                        StackView {
                                            id: setupDetectorsPagestack
                                            initialItem: sdp_comp

                                            Component {
                                                id: sdp_comp
                                                SetupDetectorsPage {
                                                    id: sdp

                                                    Component.onCompleted: {
                                                        var sdp_lst = []
                                                        var sdp_setting = setting.get_setting()
                                                        sdp_lst = sdp_setting
                                                        sdp.sdp_pg = sdp_lst
                                                    }
                                                }
                                            }
                                        }

                                        StackView {
                                            id: setupSpeedPagestack
                                            initialItem: ssp_comp
                                            Component {
                                                id: ssp_comp
                                                ChangeRobotSpeedPage {
                                                    id: ssp

                                                    Component.onCompleted: {
                                                        var ssp_lst = []
                                                        var ssp_setting = setting.get_setting()
                                                        ssp_lst = ssp_setting
                                                        ssp.crsp = ssp_lst
                                                    }
                                                }
                                            }
                                        }

                                        StackView {
                                            id: setupTorquePagestack
                                            initialItem: stp_comp
                                            Component {
                                                id: stp_comp
                                                ChangeRobotTorquePage {
                                                    id: stp

                                                    Component.onCompleted: {
                                                        var stp_lst = []
                                                        var stp_setting = setting.get_setting()
                                                        stp_lst = stp_setting
                                                        stp.crtp = stp_lst
                                                    }
                                                }
                                            }
                                        }

                                        StackView {
                                            id: setupLightPagestack
                                            initialItem: slp_comp
                                            Component {
                                                id: slp_comp
                                                SetupLightPage {
                                                    id: slp

                                                    Component.onCompleted: {
                                                        var slp_lst = []
                                                        var slp_setting = setting.get_setting()
                                                        slp_lst = slp_setting
                                                        slp.setup_light_toggle = slp_lst
                                                    }
                                                }
                                            }
                                        }
                                        StackView {
                                            id: setupLoginPagestack
                                            initialItem: "./pages/LoginPage.qml"
                                        }
                                        StackView {
                                            id: setupSettingPagestack
                                            // initialItem: "./pages/SettingPage.qml"
                                            initialItem: s_setting_pg_comp
                                            Component {
                                                id: s_setting_pg_comp
                                                SettingPage {
                                                    id: s_setting_p

                                                    Component.onCompleted: {
                                                        var s_setting_p_lst = []
                                                        var s_setting_p_setting = setting.get_setting()
                                                        s_setting_p_lst = s_setting_p_setting
                                                        s_setting_p.sp = s_setting_p_lst
                                                    }
                                                }
                                            }
                                        }
                                        // StackView {
                                        //     id: setupWebPagestack
                                        //     initialItem: "./pages/WebPage.qml"
                                        // }
                                        StackView {
                                            id: setupadduserPagestack
                                            initialItem: "./pages/CreateUserPage.qml"
                                        }
                                        StackView {
                                            id: setupHelpPagestack
                                            initialItem: "./pages/HelpPage.qml"
                                        }
                                        StackView {
                                            id: setupProfilePagestack
                                            initialItem: "./pages/Profilelist.qml"
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
    Popup {
        id: poplogout
        width: parent.width * 0.5
        height: parent.height * 0.5
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
        LogoutPop {
            id: lp
            anchors.fill: parent

            Connections {
                target: lp.logout
                function onClicked() {
                    logout.logout()
                    app.close()
                    main_stack.push("LogoutScreen.qml")
                    poplogout.close()
                }
            }
            Connections {
                target: lp.cancelpop
                function onClicked() {
                    poplogout.close()
                }
            }
        }
    }
      Popup {
        id: popadduser
        width: parent.width * 0.50
        height: parent.height * 0.75
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
        CreateUserPage {
            id: cup
            anchors.fill: parent

            Connections {
                target: cup.discard_add_user
                function onClicked() {
                    popadduser.close()
                }
            }
            Connections {
                target: cup.create_add_user
                function onClicked() {
                    popadduser.close()
                }
            }
            Connections {
                target: cup.btnClose_createuser
                function onClicked() {
                    popadduser.close()
                }
            }
        }
    }
}
