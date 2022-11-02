import QtQuick
// import QtQuick.Controls
// import QtQuick.Controls 2.3
import "../components"
// import "../pages"
import "../theme"
// import QtQuick.Layouts 6.0

Rectangle {
    id: changeboxpop
    width: parent.width / 3
    height: parent.height / 3
    color: Style.poprect1
    border.color: Style.poprect1

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
        width: parent.width * 0.98
        height: parent.height * 0.98
        color: Style.poprect1
        border.color: Style.poprect1
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        Item {
            id: topbar
            width: parent.width
            height: parent.height * 0.10
            Row {
                              id: row3
                              width: parent.width *0.35
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
                                  width: parent.width * 0.20
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
                                  width: parent.width * 0.23
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
                                  width: parent.width * 0.20
                                  btnColorDefault: Style.minibtnColor
                                  btnColorMouseOver: "#40405f"
                                  btnColorClicked: "#55aaff"
                                  buttonIcon: "../images/minimize_icon.svg"
          
                                  onClicked: {
                                      app.showMinimized()
                                  }
                              }
                          }
        }
        Text {
            id: internet_connection
            text: qsTr("No internet connection !")
            anchors.verticalCenter: parent.verticalCenter
            height: parent.height * 0.20
            width: parent.width * 0.90
            color: Style.tertiary
            font.pixelSize: Style.font20 ? Style.font20 : 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.horizontalCenter: parent.horizontalCenter
            fontSizeMode: Text.Fit
            minimumPixelSize: 2
        }
    }
}
