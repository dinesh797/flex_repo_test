import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Rectangle {
    id: setuplight
    anchors.fill: parent
    color: Style.hoverprimary
    border.color: Style.bordershallow

    ColumnLayout {
        id: column
        anchors.fill: parent
        spacing: 4

        Item {
            id: topbar
            Layout.preferredWidth: parent.width
            Layout.preferredHeight: parent.height * 0.15

            Row {
                id: row
                anchors.fill: parent

                Item {
                    id: item2
                    width: parent.width * 0.4
                    height: parent.height / 2
                    anchors.verticalCenter: parent.verticalCenter

                    Text {
                        id: rr1text
                        text: qsTr("Master Position")
                        height: parent.height / 2
                        width: parent.width
                        color: Style.tertiary

                        font.pixelSize: Style.font20 ? Style.font20 : 20
                        verticalAlignment: Text.AlignVCenter
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                    }

                    Text {
                        id: rr1text2
                        width: parent.width
                        height: parent.height / 2
                        text: qsTr("Apply zero position mastering for the axis of the robot arms")
                        color: Style.tertiary
                        anchors.top: rr1text.bottom

                        font.pixelSize: Style.font16 ? Style.font16 : 16
                        wrapMode: Text.WordWrap
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                    }
                }
            }
        }
        Item {
            id: cploader
            Layout.preferredWidth: parent.width
            Layout.fillHeight: true
            Loader {
                id: cp
                anchors.fill: parent
                sourceComponent: Component {
                    ChangeMasteringLoad {
                        anchors.fill: parent
                    }
                }

                visible: true
                active: true
            }
        }
    }
}
