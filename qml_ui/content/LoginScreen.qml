import QtQuick 2.15
import QtQuick.Window
import "./components"
import "./pages"
import "./theme"
// import QtQuick.Controls 2.15
// import QtQuick.Controls.Material 2.12
// import QtQuick.Layouts 6.0

Window {
    id: app
    visible: true
    property alias app: app
    color: Style.colorshallow
    flags: Qt.Window | Qt.FramelessWindowHint
    modality: Qt.ApplicationModal
    signal timeout
    property int windowStatus: 0
    property int windowMargin: 10
    property alias login_page: login_page
    x: Screen.width / 2 - width / 2
    y: Screen.height / 2 - height / 2
    width: 1000 / 1.050
    height: 600 / 1.050

    property int apploadTime: 500
    property int splashTimeout: 1000

    Timer {
        id: timer1
        interval: splashTimeout
        running: true
        repeat: false
        onTriggered: {

            splashImage1.visible = false
            mainScreen2.visible = true
            animation2.start()
        }
    }

    Timer {
        id: timer
        interval: apploadTime
        running: false
        repeat: false
        onTriggered: {
            qq.visible = true
            qq.active = true
            login_page.pBar.indeterminate = false
            visible = false
            app.close()
            app.timeout()
        }
    }
    NumberAnimation {
        id: animation2
        target: mainScreen2
        property: "opacity"
        from: 0
        to: 1
        duration: 1000
    }

    Loader {

        id: qq
        visible: false
        active: false
        source: "App.qml"

        onLoaded: animation.start()

        NumberAnimation {
            id: animation
            target: qq.item
            property: "opacity"
            from: 0
            to: 1
            duration: 1000/3
        }
    }

    SplashImage {
        id: splashImage1
        visible: true
    }

    Rectangle {
        id: mainScreen2
        visible: false
        anchors.fill: parent
        color: Style.secondary

        Column {
            id: column
            anchors.fill: parent

            Rectangle {
                id: topbar
                // color: "#1c1c1f"
                color: Style.colorshallow

                width: parent.width
                height: parent.height * 0.05
                Text {
                    id: text2
                    color: Style.tertiary
                    anchors.left: parent.left
                    height: parent.height
                    width: parent.width * 0.2
                    text: qsTr("FLEXBOTIC")
                    font.pixelSize: Style.font12 ? Style.font12: 12
                    verticalAlignment: Text.AlignVCenter
                    leftPadding: 5
                    fontSizeMode: Text.Fit
                    minimumPixelSize: 2
                }
                SequentialAnimation {
                    id: anim
                    PropertyAnimation {
                        target: topbar
                        property: "color"
                        to: Style.topprimary//"#1c1c1f"
                        duration: 500
                    }
                    PropertyAnimation {
                        target: topbar
                        property: "color"
                        to: Style.secondary2//"#252529"
                        duration: 500
                    }
                }

                Row {
                    id: row3
                    width: parent.width * 0.3
                    height: parent.height
                    anchors.right: parent.right
                    layoutDirection: Qt.RightToLeft

                    TopBarButton {
                        id: btnClose
                        visible: true
                        height: 30
                        width: 40
                        btnColorClicked: "#55aaff"
                        btnColorMouseOver: "#ff007f"
                        buttonIcon: ""
                        contentItem: Text {
                            text: "\u2327"
                            font.pixelSize: 21
                            anchors.fill: parent
                            color: Style.menuIcon
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignBottom
                            font.family: Style.fonticon.name
                        }
                        onPressed: {
                        Qt.exit(app)

                        }
                    }

                    TopBarButton {
                        id: btnMinimize
                        visible: true
                        height: 30
                        width: 40
                        btnColorMouseOver: "#40405f"
                        btnColorClicked: "#55aaff"
                        buttonIcon: ""
                        contentItem: Text {
                            text: "\u0123"
                            font.pixelSize: 21
                            anchors.fill: parent
                            color: Style.menuIcon
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignBottom
                            font.family: Style.fonticon.name
                        }

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
                        onClicked: {
                            if (true)
                            {
                                anim.running = true
                            } else {
                            anim.running = false
                        }
                    }
                    onMouseXChanged: app.x += (mouseX - lastMousePos.x)
                    onMouseYChanged: app.y += (mouseY - lastMousePos.y)
                }
            }
        }

        LoginPage {
            id: login_page
            height: parent.height * 0.98
            width: parent.width
            visible: true
        }
    }
}
}
