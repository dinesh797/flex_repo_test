import QtQuick 2.15
import QtQuick.Controls 2.15
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Popup {
    id: popstatus
    property string pop_message :""
        width: parent.width * 0.5
        height: parent.height * 0.4
        anchors.centerIn: parent
        modal: true
        Overlay.modal: Rectangle {
            anchors.fill: parent
            color: Style.backcolor
        }
        background: Rectangle {
            radius: 5
            border.color: 'gray'
            color:  Style.backcolor
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
        StatusPop {
            id: sp
            property string popval : popstatus.pop_message
                anchors.fill: parent
                status: popval
                Connections {
                    target: sp.statusbutton
                    function onClicked()
                    {
                        popstatus.close()
                    }
                }
            }
        }