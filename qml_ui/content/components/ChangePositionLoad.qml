import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Rectangle {
    id: rectangle22
    anchors.fill: parent
    property int fl2up: fl2loader.up
    property int fl2down: fl2loader.down

    property int rl2up: rl2loader.up
    property int rl2down: rl2loader.down

    property int fl1up: fl1loader.up
    property int fl1down: fl1loader.down

    property int rl1up: rl1loader.up
    property int rl1down: rl1loader.down

    property int fr2up: fr2loader.up
    property int fr2down: fr2loader.down

    property int rr2up: rr2loader.up
    property int rr2down: rr2loader.down

    property int fr1up: fr1loader.up
    property int fr1down: fr1loader.down

    property int rr1up: rr1loader.up
    property int rr1down: rr1loader.down

    color: Style.hoverprimary
    border.color: Style.primary

    RowLayout {
        id: row1
        anchors.fill: parent
        spacing: 4
        Item {
            id: name
            Layout.preferredHeight: parent.height
            Layout.preferredWidth: parent.width * 0.20

            ColumnLayout {
                id: column1
                anchors.fill: parent
                spacing: 4
                Rectangle {
                    id: nameg
                    Layout.preferredWidth: parent.width
                    Layout.preferredHeight: parent.height * 0.25
                    color: Style.secondary
                    Rectangle {
                        id: names
                        color: Style.secondary
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 5
                        anchors.topMargin: 5
                        anchors.leftMargin: 0
                        anchors.rightMargin: 5
                        RobotSelection {
                            id: rr
                            width: parent.width * 0.88
                            anchors.right: parent.right
                            height: parent.height
                        }
                    }
                }

                ButtonSelect {
                    id: fl2button
                    Layout.preferredWidth: parent.width
                    Layout.fillHeight: true
                    buttontext: qsTr("FL2")

                    onCheckedChanged: {
                        rr.fl2button.toggle()
                    }

                    onClicked: {
                        rc.state = "fl2page"
                    }
                }
                ButtonSelect {
                    id: rl2button
                    Layout.preferredWidth: parent.width
                    Layout.fillHeight: true
                    buttontext: qsTr("RL2")

                    onCheckedChanged: rr.rl2button.toggle()

                    onClicked: rc.state = "rl2page"
                }
                ButtonSelect {
                    id: fl1button
                    Layout.preferredWidth: parent.width
                    Layout.fillHeight: true
                    buttontext: qsTr("FL1")

                    onCheckedChanged: rr.fl1button.toggle()

                    onClicked: rc.state = "fl1page"
                }
                ButtonSelect {
                    id: rl1button
                    Layout.preferredWidth: parent.width
                    Layout.fillHeight: true
                    buttontext: qsTr("RL1")

                    onCheckedChanged: rr.rl1button.toggle()

                    onClicked: rc.state = "rl1page"
                }
                ButtonSelect {
                    id: fr2button
                    Layout.preferredWidth: parent.width
                    Layout.fillHeight: true
                    buttontext: qsTr("FR2")

                    onCheckedChanged: rr.fr2button.toggle()

                    onClicked: rc.state = "fr2page"
                }
                ButtonSelect {
                    id: rr2button
                    Layout.preferredWidth: parent.width
                    Layout.fillHeight: true
                    buttontext: qsTr("RR2")

                    onCheckedChanged: rr.rr2button.toggle()

                    onClicked: rc.state = "rr2page"
                }
                ButtonSelect {
                    id: fr1button
                    Layout.preferredWidth: parent.width
                    Layout.fillHeight: true
                    buttontext: qsTr("FR1")

                    onCheckedChanged: rr.fr1button.toggle()

                    onClicked: rc.state = "fr1page"
                }
                ButtonSelect {
                    id: rr1button
                    Layout.preferredWidth: parent.width
                    Layout.fillHeight: true
                    buttontext: qsTr("RR1")

                    onCheckedChanged: rr.rr1button.toggle()

                    onClicked: rc.state = "rr1page"
                }
            }
        }
        Item {
            id: rc
            Layout.preferredHeight: parent.height
            Layout.fillWidth: true

            Loader {
                id: fl2loader
                property int up: fl2loader.item.upp
                property int down: fl2loader.item.downn
                anchors.fill: parent
                sourceComponent: Component {
                    RobotPositionLoad {
                        id: rpl1
                        property int upp: s1val
                        property int downn: s2val
                        anchors.fill: parent
                    }
                }

                visible: false
            }
            Loader {
                id: rl2loader
                property int up: rl2loader.item.upp
                property int down: rl2loader.item.downn
                anchors.fill: parent
                sourceComponent: Component {
                    RobotPositionLoad {
                        property int upp: s1val
                        property int downn: s2val
                        anchors.fill: parent
                    }
                }
                visible: false
            }
            Loader {
                id: fl1loader
                property int up: fl1loader.item.upp
                property int down: fl1loader.item.downn
                anchors.fill: parent
                sourceComponent: Component {
                    RobotPositionLoad {
                        property int upp: s1val
                        property int downn: s2val
                        anchors.fill: parent
                    }
                }
                visible: false
            }
            Loader {
                id: rl1loader
                property int up: rl1loader.item.upp
                property int down: rl1loader.item.downn
                anchors.fill: parent
                sourceComponent: Component {
                    RobotPositionLoad {
                        property int upp: s1val
                        property int downn: s2val
                        anchors.fill: parent
                    }
                }

                visible: false
            }
            Loader {
                id: fr2loader
                anchors.fill: parent
                property int up: fr2loader.item.upp
                property int down: fr2loader.item.downn
                sourceComponent: Component {
                    RobotPositionLoad {
                        property int upp: s1val
                        property int downn: s2val
                        anchors.fill: parent
                    }
                }

                visible: false
            }
            Loader {
                id: rr2loader
                property int up: rr2loader.item.upp
                property int down: rr2loader.item.downn
                anchors.fill: parent
                sourceComponent: Component {
                    RobotPositionLoad {
                        property int upp: s1val
                        property int downn: s2val
                        anchors.fill: parent
                    }
                }

                visible: false
            }
            Loader {
                id: fr1loader
                property int up: fr1loader.item.upp
                property int down: fr1loader.item.downn
                anchors.fill: parent
                sourceComponent: Component {
                    RobotPositionLoad {
                        property int upp: s1val
                        property int downn: s2val
                        anchors.fill: parent
                    }
                }

                visible: false
            }
            Loader {
                id: rr1loader
                property int up: rr1loader.item.upp
                property int down: rr1loader.item.downn
                anchors.fill: parent
                sourceComponent: Component {
                    RobotPositionLoad {
                        property int upp: s1val
                        property int downn: s2val
                        anchors.fill: parent
                    }
                }

                visible: false
            }

            Text {
                id: loadertext
                text: qsTr("Click/select arm for Robot Position")
                anchors.fill: parent
                color: Style.tertiary
                visible: true
                font.pixelSize: Style.font30
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                fontSizeMode: Text.Fit
                minimumPixelSize: 2
            }

            states: [
                State {
                    name: "fl2page"

                    PropertyChanges {
                        target: fl2loader
                        active: true
                        visible: true
                    }
                    PropertyChanges {
                        target: loadertext
                        visible: false
                    }
                },

                State {
                    name: "rl2page"

                    PropertyChanges {
                        target: rl2loader
                        active: true
                        visible: true
                    }
                    PropertyChanges {
                        target: loadertext
                        visible: false
                    }
                },
                State {

                    name: "fl1page"

                    PropertyChanges {
                        target: fl1loader
                        active: true
                        visible: true
                    }
                    PropertyChanges {
                        target: loadertext
                        visible: false
                    }
                },
                State {

                    name: "rl1page"
                    PropertyChanges {
                        target: rl1loader
                        active: true
                        visible: true
                    }
                    PropertyChanges {
                        target: loadertext
                        visible: false
                    }
                },
                State {

                    name: "fr2page"

                    PropertyChanges {
                        target: fr2loader
                        active: true
                        visible: true
                    }
                    PropertyChanges {
                        target: loadertext
                        visible: false
                    }
                },
                State {

                    name: "rr2page"

                    PropertyChanges {
                        target: rr2loader
                        active: true
                        visible: true
                    }
                    PropertyChanges {
                        target: loadertext
                        visible: false
                    }
                },
                State {

                    name: "fr1page"

                    PropertyChanges {
                        target: fr1loader
                        active: true
                        visible: true
                    }
                    PropertyChanges {
                        target: loadertext
                        visible: false
                    }
                },
                State {

                    name: "rr1page"

                    PropertyChanges {
                        target: rr1loader
                        active: true
                        visible: true
                    }
                    PropertyChanges {
                        target: loadertext
                        visible: false
                    }
                }
            ]
        }
    }
}
