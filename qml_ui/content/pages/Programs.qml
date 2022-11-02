import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.15
import "../components"
// import "../pages"
import "../theme"
import QtQuick.Layouts
import QtQuick 2.15

Rectangle {
    id: yy
    color: Style.hoverprimary
    property alias summuryy: summuryy
    property alias rs: rs
    property alias rr1loader: rr1loader
    property alias fr1loader: fr1loader
    property alias rr2loader: rr2loader
    property alias fr2loader: fr2loader
    property alias rl1loader: rl1loader
    property alias fl1loader: fl1loader
    property alias rl2loader: rl2loader
    property alias fl2loader: fl2loader
    property alias rr2_robotsetting: rr2_robotsetting
    property alias rr1_robotsetting: rr1_robotsetting
    property alias fr2_robotsetting: fr2_robotsetting
    property alias fr1_robotsetting: fr1_robotsetting
    property alias rl1_robotsetting: rl1_robotsetting
    property alias rl2_robotsetting: rl2_robotsetting
    property alias fl1_robotsetting: fl1_robotsetting
    property alias fl2_robotsetting: fl2_robotsetting
    property var arm_properties

    property alias save: save
    property alias back: back

    property alias prg_name: prg_name
    property alias prg_disc: prg_disc

    property string prog_ps_id

    property string ps_prog_name
    property string ps_prog_createdBy
    property string ps_prog_disc
    // property int ps_prog_modifiedOn
    // property string modifiedOn: new Date(ps_prog_modifiedOn).toLocaleDateString()
    property int ps_prog_modifiedOn
    property var myDate : new Date(ps_prog_modifiedOn *1000)
    property string modifiedOn: myDate.toLocaleString()

    Column {
        id: column
        width: parent.width
        height: parent.height
        spacing: 10

        Item {
            id: item1
            width: parent.width
            height: parent.height * 0.2

            Row {
                id: row
                spacing: 5
                anchors.fill: parent
                Rectangle {
                    id: rr
                    color: "transparent"
                    width: parent.width * 0.20
                    height: parent.height
                    Rectangle {
                        id: rectangle4
                        radius: 5
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: parent.width * 0.97
                        height: parent.height * 0.97
                        color: get_random_color()

                        function get_random_color() {
                            var color = ""
                            for (var i = 0; i < 3; i++) {
                                var sub = Math.floor(Math.random(
                                                         ) * 256).toString(16)
                                color += (sub.length == 1 ? "0" + sub : sub)
                            }
                            return '#' + (0x1000000 + Math.random(
                                              ) * 0xffffff).toString(
                                        16).substr(1, 6)
                        }

                        Image {
                            id: assembly_Isometric_Render
                            anchors.fill: parent
                            source: "../images/Assembly_Isometric_Render.svg"
                            fillMode: Image.PreserveAspectFit
                        }
                    }
                }
                Rectangle {
                    id: secondcontent
                    color: Style.secondary
                    width: parent.width * 0.5
                    height: parent.height

                    Column {
                        id: column1
                        width: parent.width * 0.98
                        height: parent.height * 0.90
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        spacing: 3

                        Row {
                            id: row1
                            width: parent.width
                            spacing: 5
                            height: parent.height * 0.3
                            Rectangle {
                                id: item1gt
                                color: Style.secondary
                                width: parent.width * 0.5
                                radius: 5
                                border.color: "black"
                                border.width: 1
                                height: parent.height
                                TextField {
                                    id: prg_name
                                    text: qsTr(ps_prog_name ? ps_prog_name : "")
                                    anchors.verticalCenter: parent.verticalCenter
                                    font.pixelSize: 16
                                    height: parent.height
                                    width: parent.width
                                    color: Style.tertiary
                                    verticalAlignment: Text.AlignVCenter
                                    topPadding: 0
                                    bottomPadding: 0
                                    leftPadding: 5
                                    background: Rectangle {
                                        radius: 5
                                        border.color: "black"
                                        border.width: 1
                                        color: "transparent"
                                    }
                                }
                            }

                            Rectangle {
                                id: tt
                                color: Style.secondary
                                width: parent.width * 0.49
                                height: parent.height
                                Row {
                                    id: row2
                                    spacing: 3
                                    anchors.fill: parent
                                    Text {
                                        id: name
                                        width: parent.width * 0.45
                                        text: qsTr("Sheet Thickness: ")
                                        anchors.verticalCenter: parent.verticalCenter
                                        color: Style.tertiary
                                        font.pixelSize: Style.font20 ? Style.font20 : 20
                                        verticalAlignment: Text.AlignVCenter
                                        fontSizeMode: Text.Fit
                                        minimumPixelSize: 2
                                    }
                                    Rectangle {
                                        id: item1gt2
                                        color: Style.secondary
                                        width: parent.width * 0.35
                                        radius: 5
                                        border.color: "black"
                                        border.width: 1
                                        height: parent.height
                                        TextField {
                                            id: programtextgt4
                                            text: "1"
                                            anchors.verticalCenter: parent.verticalCenter
                                            height: parent.height
                                            width: parent.width
                                            color: Style.tertiary
                                            font.pixelSize: Style.font12 ? Style.font12 : 12
                                            leftPadding: 5
                                            topInset: 0
                                            topPadding: 1
                                            bottomPadding: 1
                                            background: Rectangle {
                                                radius: 5
                                                border.color: "black"
                                                border.width: 1
                                                color: "transparent"
                                            }
                                        }
                                    }
                                    Text {
                                        id: name2
                                        width: parent.width * 0.17
                                        text: qsTr("mm")
                                        anchors.verticalCenter: parent.verticalCenter
                                        color: Style.tertiary
                                        font.pixelSize: Style.font12 ? Style.font12 : 12
                                        verticalAlignment: Text.AlignVCenter
                                        fontSizeMode: Text.Fit
                                        minimumPixelSize: 2
                                    }
                                }
                            }
                        }
                        Rectangle {
                            id: item1gt22
                            color: Style.secondary
                            width: parent.width * 0.8
                            radius: 5
                            border.color: "black"
                            border.width: 1
                            height: parent.height * 0.3
                            TextField {
                                id: prg_disc
                                text: qsTr(ps_prog_disc ? ps_prog_disc : "")
                                anchors.verticalCenter: parent.verticalCenter
                                height: parent.height
                                width: parent.width
                                color: Style.tertiary
                                font.pixelSize: Style.font12 ? Style.font12 : 12
                                leftPadding: 5
                                topInset: 0
                                topPadding: 1
                                bottomPadding: 1
                                background: Rectangle {
                                    radius: 5
                                    border.color: "black"
                                    border.width: 1
                                    color: "transparent"
                                }
                            }
                        }
                        Row {
                            id: techcontent22
                            width: parent.width
                            height: parent.height * 0.3
                            Rectangle {
                                id: gg
                                color: Style.secondary
                                width: parent.width * 0.45
                                height: parent.height
                                Item {
                                    id: created_ct
                                    width: parent.width * 0.30
                                    height: parent.height
                                    Text {
                                        id: creaed_cont
                                        width: parent.width * 0.97
                                        height: parent.height
                                        anchors.right: parent.right
                                        text: qsTr("Created By: ")
                                        anchors.verticalCenter: parent.verticalCenter
                                        color: Style.tertiary
                                        font.pixelSize: Style.font15 ? Style.font15 : 15
                                        verticalAlignment: Text.AlignVCenter
                                        fontSizeMode: Text.Fit
                                        minimumPixelSize: 2
                                    }
                                }

                                Item {
                                    id: created_item
                                    anchors.left: created_ct.right
                                    width: parent.width * 0.50
                                    height: parent.height
                                    Text {
                                        id: namet2
                                        width: parent.width
                                        height: parent.height
                                        text: qsTr(ps_prog_createdBy)
                                        anchors.verticalCenter: parent.verticalCenter
                                        color: Style.tertiary
                                        font.pixelSize: Style.font12 ? Style.font12 : 12
                                        verticalAlignment: Text.AlignVCenter
                                        fontSizeMode: Text.Fit
                                        minimumPixelSize: 2
                                    }
                                }
                            }
                            Rectangle {
                                id: gg2
                                color: Style.secondary
                                width: parent.width * 0.45
                                height: parent.height
                                Item {
                                    id: hh2
                                    anchors.fill: parent
                                    Item {
                                        id: mod_item
                                        width: parent.width * 0.35
                                        height: parent.height
                                        Text {
                                            id: namet22
                                            width: parent.width
                                            height: parent.height
                                            text: qsTr("Modified On: ")
                                            anchors.verticalCenter: parent.verticalCenter
                                            color: Style.tertiary
                                            font.pixelSize: Style.font12 ? Style.font12 : 12
                                            horizontalAlignment: Text.AlignRight
                                            verticalAlignment: Text.AlignVCenter
                                            fontSizeMode: Text.Fit
                                            minimumPixelSize: 2
                                        }
                                    }
                                    Item {
                                        id: mod_itemtext
                                        width: parent.width * 0.80
                                        height: parent.height
                                        anchors.left: mod_item.right
                                        Text {
                                            id: namet222
                                            width: parent.width
                                            height: parent.height
                                            text: qsTr(modifiedOn)
                                            anchors.verticalCenter: parent.verticalCenter
                                            color: Style.tertiary
                                            font.pixelSize: Style.font12 ? Style.font12 : 12
                                            verticalAlignment: Text.AlignVCenter
                                            fontSizeMode: Text.Fit
                                            minimumPixelSize: 2
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                Rectangle {
                    id: tte
                    width: parent.width * 0.2888
                    height: parent.height
                    color: Style.secondary
                    Column {
                        width: parent.width * 0.95
                        height: parent.height * 0.98
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter

                        Row {
                            id: techcontent
                            width: parent.width
                            height: parent.height * 0.3

                            Text {
                                id: name22
                                width: parent.width * 0.35
                                text: qsTr("Teach Speed:")
                                anchors.verticalCenter: parent.verticalCenter
                                color: Style.tertiary
                                font.pixelSize: Style.font12 ? Style.font12 : 12
                                verticalAlignment: Text.AlignVCenter
                                fontSizeMode: Text.Fit
                                minimumPixelSize: 2
                            }

                            Item {
                                id: item3
                                width: parent.width * 0.58
                                height: parent.height
                                anchors.bottom: parent.bottom

                                Row {
                                    id: row1h
                                    width: parent.width
                                    spacing: 2
                                    height: parent.height / 0.9
                                    anchors.verticalCenter: parent.verticalCenter

                                    Button {
                                        id: button
                                        height: parent.height / 2
                                        anchors.verticalCenter: parent.verticalCenter
                                        width: parent.width * 0.15
                                        background: Rectangle {
                                            anchors.fill: parent
                                            color: "transparent"
                                        }

                                        Text {
                                            id: minus_logo_teachSpeed
                                            text: "\uf887"
                                            anchors.verticalCenter: parent.verticalCenter
                                            font.family: Style.fonticon.name
                                            color: Style.tertiary
                                            font.pixelSize: Style.font20 ? Style.font20 : 20
                                            horizontalAlignment: Text.AlignHCenter
                                            verticalAlignment: Text.AlignVCenter
                                            anchors.horizontalCenter: parent.horizontalCenter
                                            fontSizeMode: Text.Fit
                                            minimumPixelSize: 2
                                        }

                                        onClicked: slider.decrease()
                                    }

                                    Slider {
                                        id: slider
                                        width: parent.width * 0.5
                                        height: parent.height
                                        to: 100
                                        stepSize: 10
                                        value: 0
                                        ToolTip {
                                            parent: slider.handle
                                            visible: slider.pressed
                                            text: slider.value.toFixed(1)
                                        }
                                    }

                                    Button {
                                        id: button1
                                        width: parent.width * 0.095
                                        height: parent.height * 0.6
                                        anchors.verticalCenter: parent.verticalCenter
                                        background: Rectangle {
                                            color: "transparent"
                                            anchors.verticalCenter: parent.verticalCenter
                                            anchors.left: parent.left
                                            anchors.right: parent.right
                                            anchors.top: parent.top
                                        }

                                        Text {
                                            id: plus_logo_teachSpeed
                                            text: "\uf886"
                                            anchors.verticalCenter: parent.verticalCenter
                                            font.family: Style.fonticon.name
                                            color: Style.tertiary
                                            font.pixelSize: Style.font20 ? Style.font20 : 20
                                            horizontalAlignment: Text.AlignHCenter
                                            verticalAlignment: Text.AlignVCenter
                                            anchors.horizontalCenter: parent.horizontalCenter
                                            fontSizeMode: Text.Fit
                                            minimumPixelSize: 2
                                        }

                                        onClicked: slider.increase()
                                    }
                                    Item {
                                        id: name3
                                        height: parent.height
                                        width: parent.width * 0.28

                                        Text {
                                            id: text1
                                            anchors.verticalCenter: parent.verticalCenter
                                            height: parent.height / 2
                                            width: parent.width
                                            color: Style.tertiary
                                            text: slider.value + qsTr("%")
                                            font.pixelSize: Style.font20 ? Style.font20 : 20
                                            horizontalAlignment: Text.AlignRight
                                            verticalAlignment: Text.AlignVCenter
                                            fontSizeMode: Text.Fit
                                            minimumPixelSize: 2
                                        }
                                    }
                                }
                            }
                        }
                        Row {
                            id: techcontent2
                            width: parent.width
                            height: parent.height * 0.3

                            Text {
                                id: name222
                                width: parent.width * 0.35
                                text: qsTr("Auto Speed:")
                                anchors.verticalCenter: parent.verticalCenter
                                color: Style.tertiary
                                font.pixelSize: Style.font12 ? Style.font12 : 12
                                verticalAlignment: Text.AlignVCenter
                                fontSizeMode: Text.Fit
                                minimumPixelSize: 2
                            }

                            Item {
                                id: item32
                                width: parent.width * 0.58
                                height: parent.height
                                anchors.bottom: parent.bottom

                                Row {
                                    id: row1h2
                                    width: parent.width
                                    spacing: 2
                                    height: parent.height / 0.9
                                    anchors.verticalCenter: parent.verticalCenter

                                    Button {
                                        id: button2
                                        height: parent.height / 2
                                        anchors.verticalCenter: parent.verticalCenter
                                        width: parent.width * 0.15
                                        background: Rectangle {
                                            anchors.fill: parent
                                            color: "transparent"
                                        }

                                        Text {
                                            id: minus_logo_AutoSpeed
                                            text: "\uf887"
                                            anchors.verticalCenter: parent.verticalCenter
                                            font.family: Style.fonticon.name
                                            color: Style.tertiary
                                            font.pixelSize: Style.font20 ? Style.font20 : 20
                                            horizontalAlignment: Text.AlignHCenter
                                            verticalAlignment: Text.AlignVCenter
                                            anchors.horizontalCenter: parent.horizontalCenter
                                            fontSizeMode: Text.Fit
                                            minimumPixelSize: 2
                                        }

                                        onClicked: slider2.decrease()
                                    }

                                    Slider {
                                        id: slider2
                                        width: parent.width * 0.5
                                        height: parent.height
                                        to: 100
                                        stepSize: 10
                                        value: 0
                                        ToolTip {
                                            parent: slider2.handle
                                            visible: slider2.pressed
                                            text: slider2.value.toFixed(1)
                                        }
                                    }

                                    Button {
                                        id: button12
                                        width: parent.width * 0.095
                                        height: parent.height * 0.6
                                        anchors.verticalCenter: parent.verticalCenter
                                        background: Rectangle {
                                            color: "transparent"
                                            anchors.verticalCenter: parent.verticalCenter
                                            anchors.left: parent.left
                                            anchors.right: parent.right
                                            anchors.top: parent.top
                                        }

                                        Text {
                                            id: plus_logo_autoSpeed
                                            text: "\uf886"
                                            anchors.verticalCenter: parent.verticalCenter
                                            font.family: Style.fonticon.name
                                            color: Style.tertiary
                                            font.pixelSize: Style.font20 ? Style.font20 : 20
                                            horizontalAlignment: Text.AlignHCenter
                                            verticalAlignment: Text.AlignVCenter
                                            anchors.horizontalCenter: parent.horizontalCenter
                                            fontSizeMode: Text.Fit
                                            minimumPixelSize: 2
                                        }

                                        onClicked: slider2.increase()
                                    }
                                    Item {
                                        id: name32
                                        height: parent.height
                                        width: parent.width * 0.29

                                        Text {
                                            id: text12
                                            text: slider2.value + qsTr("%")
                                            anchors.verticalCenter: parent.verticalCenter
                                            height: parent.height / 2
                                            width: parent.width
                                            color: Style.tertiary
                                            font.pixelSize: Style.font20 ? Style.font20 : 20
                                            horizontalAlignment: Text.AlignRight
                                            verticalAlignment: Text.AlignVCenter
                                            fontSizeMode: Text.Fit
                                            minimumPixelSize: 2
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        Item {
            id: item2
            width: parent.width
            height: parent.height * 0.25

            Rectangle {
                id: rectangle1
                width: parent.width * 0.25
                height: parent.height
                anchors.left: parent.left
                color: Style.secondary

                ColumnLayout {
                    id: columnLayout
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    height: parent.height * 0.85
                    width: parent.width * 0.97

                    Text {
                        id: robotselectiontext
                        Layout.fillWidth: true

                        font.pixelSize: Style.font12 ? Style.font12 : 12
                        color: Style.tertiary
                        verticalAlignment: Text.AlignVCenter
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                    }
                    Item {
                        id: item6
                        layer.smooth: true
                        Layout.leftMargin: 0
                        Layout.fillHeight: true
                        Layout.fillWidth: true

                        RobotSelection {
                            id: rs
                            anchors.fill: parent
                            Layout.fillHeight: true
                            Layout.fillWidth: true
                            Layout.leftMargin: 0
                            width: parent.width

                            Connections {
                                target: rs.fl2button
                                function onClicked() {

                                    waypointitem.state = "fl2page"
                                    robotsettingitem.state = "fl2page"
                                    robotselectiontext.text = "FL2"
                                    var lss = []
                                    lss = arm_properties
                                    if (!lss == []) {

                                        if (lss['fl2']['waypoints'][0]['A'] !== 0
                                                && lss['fl2']['waypoints'][0]['B'] !== 0) {
                                            fl2loader.item.stepbutton1.slid11 = lss['fl2'] ? lss['fl2']['waypoints'] ? lss['fl2']['waypoints'][0]['A'] : 0 : 0
                                            fl2loader.item.stepbutton1.slid12 = lss['fl2'] ? lss['fl2']['waypoints'] ? lss['fl2']['waypoints'][0]['B'] : 0 : 0
                                            fl2loader.item.stepbutton1.visible = true
                                        }

                                        if (lss['fl2']['waypoints'][1]['A'] !== 0
                                                && lss['fl2']['waypoints'][1]['B'] !== 0) {
                                            fl2loader.item.stepbutton2.slid11 = lss['fl2'] ? lss['fl2']['waypoints'] ? lss['fl2']['waypoints'][1]['A'] : 0 : 0
                                            fl2loader.item.stepbutton2.slid12 = lss['fl2'] ? lss['fl2']['waypoints'] ? lss['fl2']['waypoints'][1]['B'] : 0 : 0
                                            fl2loader.item.stepbutton2.visible = true
                                        }

                                        if (lss['fl2']['waypoints'][2]['A'] !== 0
                                                && lss['fl2']['waypoints'][2]['B'] !== 0) {
                                            fl2loader.item.stepbutton3.slid11 = lss['fl2'] ? lss['fl2']['waypoints'] ? lss['fl2']['waypoints'][2]['A'] : 0 : 0
                                            fl2loader.item.stepbutton3.slid12 = lss['fl2'] ? lss['fl2']['waypoints'] ? lss['fl2']['waypoints'][2]['B'] : 0 : 0
                                            fl2loader.item.stepbutton3.visible = true
                                        }
                                    }
                                }
                            }
                            Connections {
                                target: rs.fl1button
                                function onClicked() {
                                    waypointitem.state = "fl1page"
                                    robotsettingitem.state = "fl1page"
                                    robotselectiontext.text = "FL1"
                                    var lss = []
                                    lss = arm_properties
                                    if (!lss == []) {
                                        if (lss['fl1']['waypoints'][0]['A'] !== 0
                                                && lss['fl1']['waypoints'][0]['B'] !== 0) {

                                            fl1loader.item.stepbutton1.slid11 = lss['fl1'] ? lss['fl1']['waypoints'] ? lss['fl1']['waypoints'][0]['A'] : 0 : 0
                                            fl1loader.item.stepbutton1.slid12 = lss['fl1'] ? lss['fl1']['waypoints'] ? lss['fl1']['waypoints'][0]['B'] : 0 : 0
                                            fl1loader.item.stepbutton1.visible = true
                                        }
                                        if (lss['fl1']['waypoints'][1]['A'] !== 0
                                                && lss['fl1']['waypoints'][1]['B'] !== 0) {

                                            fl1loader.item.stepbutton2.slid11 = lss['fl1'] ? lss['fl1']['waypoints'] ? lss['fl1']['waypoints'][1]['A'] : 0 : 0
                                            fl1loader.item.stepbutton2.slid12 = lss['fl1'] ? lss['fl1']['waypoints'] ? lss['fl1']['waypoints'][1]['B'] : 0 : 0
                                            fl1loader.item.stepbutton2.visible = true
                                        }
                                        if (lss['fl1']['waypoints'][2]['A'] !== 0
                                                && lss['fl1']['waypoints'][2]['B'] !== 0) {

                                            fl1loader.item.stepbutton3.slid11 = lss['fl1'] ? lss['fl1']['waypoints'] ? lss['fl1']['waypoints'][2]['A'] : 0 : 0
                                            fl1loader.item.stepbutton3.slid12 = lss['fl1'] ? lss['fl1']['waypoints'] ? lss['fl1']['waypoints'][2]['B'] : 0 : 0
                                            fl1loader.item.stepbutton3.visible = true
                                        }
                                    }
                                }
                            }
                            Connections {
                                target: rs.fr1button
                                function onClicked() {
                                    waypointitem.state = "fr1page"
                                    robotsettingitem.state = "fr1page"
                                    robotselectiontext.text = "FR1"
                                    var lss = []
                                    lss = arm_properties
                                    if (!lss == []) {

                                        if (lss['fr1']['waypoints'][0]['A'] !== 0
                                                && lss['fr1']['waypoints'][0]['B'] !== 0) {
                                            fr1loader.item.stepbutton1.slid11 = lss['fr1'] ? lss['fr1']['waypoints'] ? lss['fr1']['waypoints'][0]['A'] : 0 : 0
                                            fr1loader.item.stepbutton1.slid12 = lss['fr1'] ? lss['fr1']['waypoints'] ? lss['fr1']['waypoints'][0]['B'] : 0 : 0
                                            fr1loader.item.stepbutton1.visible = true
                                        }

                                        if (lss['fr1']['waypoints'][1]['A'] !== 0
                                                && lss['fr1']['waypoints'][1]['B'] !== 0) {
                                            fr1loader.item.stepbutton2.slid11 = lss['fr1'] ? lss['fr1']['waypoints'] ? lss['fr1']['waypoints'][1]['A'] : 0 : 0
                                            fr1loader.item.stepbutton2.slid12 = lss['fr1'] ? lss['fr1']['waypoints'] ? lss['fr1']['waypoints'][1]['B'] : 0 : 0
                                            fr1loader.item.stepbutton2.visible = true
                                        }

                                        if (lss['fr1']['waypoints'][2]['A'] !== 0
                                                && lss['fr1']['waypoints'][2]['B'] !== 0) {
                                            fr1loader.item.stepbutton3.slid11 = lss['fr1'] ? lss['fr1']['waypoints'] ? lss['fr1']['waypoints'][2]['A'] : 0 : 0
                                            fr1loader.item.stepbutton3.slid12 = lss['fr1'] ? lss['fr1']['waypoints'] ? lss['fr1']['waypoints'][2]['B'] : 0 : 0
                                            fr1loader.item.stepbutton3.visible = true
                                        }
                                    }
                                }
                            }
                            Connections {
                                target: rs.fr2button
                                function onClicked() {
                                    waypointitem.state = "fr2page"
                                    robotsettingitem.state = "fr2page"
                                    robotselectiontext.text = "FR2"
                                    var lss = []
                                    lss = arm_properties
                                    if (!lss == []) {

                                        if (lss['fr2']['waypoints'][0]['A'] !== 0
                                                && lss['fr2']['waypoints'][0]['B'] !== 0) {
                                            fr2loader.item.stepbutton1.slid11 = 0
                                            fr2loader.item.stepbutton1.slid12 = 0
                                            fr2loader.item.stepbutton1.visible = false
                                           
                                        }
                                        else{
                                             fr2loader.item.stepbutton1.slid11 = lss['fr2'] ? lss['fr2']['waypoints'] ? lss['fr2']['waypoints'][0]['A'] : 0 : 0
                                            fr2loader.item.stepbutton1.slid12 = lss['fr2'] ? lss['fr2']['waypoints'] ? lss['fr2']['waypoints'][0]['B'] : 0 : 0
                                            fr2loader.item.stepbutton1.visible = true
                                        }

                                        if (lss['fr2']['waypoints'][1]['A'] == 0
                                                && lss['fr2']['waypoints'][1]['B'] == 0) {
                                            fr2loader.item.stepbutton2.slid11 = 0
                                            fr2loader.item.stepbutton2.slid12 = 0
                                            fr2loader.item.stepbutton2.visible = false
                                           
                                        }
                                        else{
                                            fr2loader.item.stepbutton2.slid11 = lss['fr2'] ? lss['fr2']['waypoints'] ? lss['fr2']['waypoints'][1]['A'] : 0 : 0
                                            fr2loader.item.stepbutton2.slid12 = lss['fr2'] ? lss['fr2']['waypoints'] ? lss['fr2']['waypoints'][1]['B'] : 0 : 0
                                            fr2loader.item.stepbutton2.visible = true
                                        }

                                        if (lss['fr2']['waypoints'][2]['A'] == 0
                                                && lss['fr2']['waypoints'][2]['B'] == 0) {
                                            fr2loader.item.stepbutton3.slid11 = 0
                                            fr2loader.item.stepbutton3.slid12 = 0
                                            fr2loader.item.stepbutton3.visible = false
                                        }
                                        else{
                                            fr2loader.item.stepbutton3.slid11 = lss['fr2'] ? lss['fr2']['waypoints'] ? lss['fr2']['waypoints'][2]['A'] : 0 : 0
                                            fr2loader.item.stepbutton3.slid12 = lss['fr2'] ? lss['fr2']['waypoints'] ? lss['fr2']['waypoints'][2]['B'] : 0 : 0
                                            fr2loader.item.stepbutton3.visible = true
                                        }
                                    }
                                }
                            }
                            Connections {
                                target: rs.rl2button
                                function onClicked() {
                                    waypointitem.state = "rl2page"
                                    robotsettingitem.state = "rl2page"
                                    robotselectiontext.text = "RL2"
                                    var lss = []
                                    lss = arm_properties
                                    if (!lss == []) {

                                        if (lss['rl2']['waypoints'][0]['A'] !== 0
                                                && lss['rl2']['waypoints'][0]['B'] !== 0) {
                                            rl2loader.item.stepbutton1.slid11 = lss['rl2'] ? lss['rl2']['waypoints'] ? lss['rl2']['waypoints'][0]['A'] : 0 : 0
                                            rl2loader.item.stepbutton1.slid12 = lss['rl2'] ? lss['rl2']['waypoints'] ? lss['rl2']['waypoints'][0]['B'] : 0 : 0
                                            rl2loader.item.stepbutton1.visible = true
                                        }

                                        if (lss['rl2']['waypoints'][1]['A'] !== 0
                                                && lss['rl2']['waypoints'][1]['B'] !== 0) {
                                            rl2loader.item.stepbutton2.slid11 = lss['rl2'] ? lss['rl2']['waypoints'] ? lss['rl2']['waypoints'][1]['A'] : 0 : 0
                                            rl2loader.item.stepbutton2.slid12 = lss['rl2'] ? lss['rl2']['waypoints'] ? lss['rl2']['waypoints'][1]['B'] : 0 : 0
                                            rl2loader.item.stepbutton2.visible = true
                                        }

                                        if (lss['rl2']['waypoints'][2]['A'] !== 0
                                                && lss['rl2']['waypoints'][2]['B'] !== 0) {
                                            rl2loader.item.stepbutton3.slid11 = lss['rl2'] ? lss['rl2']['waypoints'] ? lss['rl2']['waypoints'][2]['A'] : 0 : 0
                                            rl2loader.item.stepbutton3.slid12 = lss['rl2'] ? lss['rl2']['waypoints'] ? lss['rl2']['waypoints'][2]['B'] : 0 : 0
                                            rl2loader.item.stepbutton3.visible = true
                                        }
                                    }
                                }
                            }
                            Connections {
                                target: rs.rl1button
                                function onClicked() {
                                    waypointitem.state = "rl1page"
                                    robotsettingitem.state = "rl1page"
                                    robotselectiontext.text = "RL1"
                                    var lss = []
                                    lss = arm_properties
                                    if (!lss == []) {

                                        if (lss['rl1']['waypoints'][0]['A'] !== 0
                                                && lss['rl1']['waypoints'][0]['B'] !== 0) {
                                            rl1loader.item.stepbutton1.slid11 = lss['rl1'] ? lss['rl1']['waypoints'] ? lss['rl1']['waypoints'][0]['A'] : 0 : 0
                                            rl1loader.item.stepbutton1.slid12 = lss['rl1'] ? lss['rl1']['waypoints'] ? lss['rl1']['waypoints'][0]['B'] : 0 : 0
                                            rl1loader.item.stepbutton1.visible = true
                                        }

                                        if (lss['rl1']['waypoints'][1]['A'] !== 0
                                                && lss['rl1']['waypoints'][1]['B'] !== 0) {
                                            rl1loader.item.stepbutton2.slid11 = lss['rl1'] ? lss['rl1']['waypoints'] ? lss['rl1']['waypoints'][1]['A'] : 0 : 0
                                            rl1loader.item.stepbutton2.slid12 = lss['rl1'] ? lss['rl1']['waypoints'] ? lss['rl1']['waypoints'][1]['B'] : 0 : 0
                                            rl1loader.item.stepbutton2.visible = true
                                        }

                                        if (lss['rl1']['waypoints'][2]['A'] !== 0
                                                && lss['rl1']['waypoints'][2]['B'] !== 0) {
                                            rl1loader.item.stepbutton3.slid11 = lss['rl1'] ? lss['rl1']['waypoints'] ? lss['rl1']['waypoints'][2]['A'] : 0 : 0
                                            rl1loader.item.stepbutton3.slid12 = lss['rl1'] ? lss['rl1']['waypoints'] ? lss['rl1']['waypoints'][2]['B'] : 0 : 0
                                            rl1loader.item.stepbutton3.visible = true
                                        }
                                    }
                                }
                            }

                            Connections {
                                target: rs.rr1button
                                function onClicked() {
                                    waypointitem.state = "rr1page"
                                    robotsettingitem.state = "rr1page"
                                    robotselectiontext.text = "RR1"
                                    var lss = []
                                    lss = arm_properties
                                    if (!lss == []) {

                                        if (lss['rr1']['waypoints'][0]['A'] !== 0
                                                && lss['rr1']['waypoints'][0]['B'] !== 0) {
                                            rr1loader.item.stepbutton1.slid11 = lss['rr1'] ? lss['rr1']['waypoints'] ? lss['rr1']['waypoints'][0]['A'] : 0 : 0
                                            rr1loader.item.stepbutton1.slid12 = lss['rr1'] ? lss['rr1']['waypoints'] ? lss['rr1']['waypoints'][0]['B'] : 0 : 0
                                            rr1loader.item.stepbutton1.visible = true
                                        }

                                        if (lss['rr1']['waypoints'][1]['A'] !== 0
                                                && lss['rr1']['waypoints'][1]['B'] !== 0) {
                                            rr1loader.item.stepbutton2.slid11 = lss['rr1'] ? lss['rr1']['waypoints'] ? lss['rr1']['waypoints'][1]['A'] : 0 : 0
                                            rr1loader.item.stepbutton2.slid12 = lss['rr1'] ? lss['rr1']['waypoints'] ? lss['rr1']['waypoints'][1]['B'] : 0 : 0
                                            rr1loader.item.stepbutton2.visible = true
                                        }

                                        if (lss['rr1']['waypoints'][2]['A'] !== 0
                                                && lss['rr1']['waypoints'][2]['B'] !== 0) {
                                            rr1loader.item.stepbutton3.slid11 = lss['rr1'] ? lss['rr1']['waypoints'] ? lss['rr1']['waypoints'][2]['A'] : 0 : 0
                                            rr1loader.item.stepbutton3.slid12 = lss['rr1'] ? lss['rr1']['waypoints'] ? lss['rr1']['waypoints'][2]['B'] : 0 : 0
                                            rr1loader.item.stepbutton3.visible = true
                                        }
                                    }
                                }
                            }
                            Connections {
                                target: rs.rr2button
                                function onClicked() {
                                    waypointitem.state = "rr2page"
                                    robotsettingitem.state = "rr2page"
                                    robotselectiontext.text = "RR2"
                                    var lss = []
                                    lss = arm_properties
                                    if (!lss == []) {

                                        if (lss['rr2']['waypoints'][0]['A'] !== 0
                                                && lss['rr2']['waypoints'][0]['B'] !== 0) {
                                            rr2loader.item.stepbutton1.slid11 = lss['rr2'] ? lss['rr2']['waypoints'] ? lss['rr2']['waypoints'][0]['A'] : 0 : 0
                                            rr2loader.item.stepbutton1.slid12 = lss['rr2'] ? lss['rr2']['waypoints'] ? lss['rr2']['waypoints'][0]['B'] : 0 : 0
                                            rr2loader.item.stepbutton1.visible = true
                                        }

                                        if (lss['rr2']['waypoints'][1]['A'] !== 0
                                                && lss['rr2']['waypoints'][1]['B'] !== 0) {
                                            rr2loader.item.stepbutton2.slid11 = lss['rr2'] ? lss['rr2']['waypoints'] ? lss['rr2']['waypoints'][1]['A'] : 0 : 0
                                            rr2loader.item.stepbutton2.slid12 = lss['rr2'] ? lss['rr2']['waypoints'] ? lss['rr2']['waypoints'][1]['B'] : 0 : 0
                                            rr2loader.item.stepbutton2.visible = true
                                        }

                                        if (lss['rr2']['waypoints'][2]['A'] !== 0
                                                && lss['rr2']['waypoints'][2]['B'] !== 0) {
                                            rr2loader.item.stepbutton3.slid11 = lss['rr2'] ? lss['rr2']['waypoints'] ? lss['rr2']['waypoints'][2]['A'] : 0 : 0
                                            rr2loader.item.stepbutton3.slid12 = lss['rr2'] ? lss['rr2']['waypoints'] ? lss['rr2']['waypoints'][2]['B'] : 0 : 0
                                            rr2loader.item.stepbutton3.visible = true
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }

            Rectangle {
                id: robotsettingitem
                anchors.right: parent.right
                width: parent.width * 0.74
                height: parent.height
                color: Style.secondary
                states: [
                    State {
                        name: "fl2page"

                        PropertyChanges {
                            target: fl2_robotsetting
                            active: true
                            visible: true
                        }
                        PropertyChanges {
                            target: robotsettingtext
                            visible: false
                        }
                    },

                    State {
                        name: "rl2page"

                        PropertyChanges {
                            target: rl2_robotsetting
                            active: true
                            visible: true
                        }
                        PropertyChanges {
                            target: robotsettingtext
                            visible: false
                        }
                    },
                    State {

                        name: "fl1page"

                        PropertyChanges {
                            target: fl1_robotsetting
                            active: true
                            visible: true
                        }
                        PropertyChanges {
                            target: robotsettingtext
                            visible: false
                        }
                    },
                    State {

                        name: "rl1page"
                        PropertyChanges {
                            target: rl1_robotsetting
                            active: true
                            visible: true
                        }
                        PropertyChanges {
                            target: robotsettingtext
                            visible: false
                        }
                    },
                    State {

                        name: "fr2page"

                        PropertyChanges {
                            target: fr2_robotsetting
                            active: true
                            visible: true
                        }
                        PropertyChanges {
                            target: robotsettingtext
                            visible: false
                        }
                    },
                    State {

                        name: "rr2page"

                        PropertyChanges {
                            target: rr2_robotsetting
                            active: true
                            visible: true
                        }
                        PropertyChanges {
                            target: robotsettingtext
                            visible: false
                        }
                    },
                    State {

                        name: "fr1page"

                        PropertyChanges {
                            target: fr1_robotsetting
                            active: true
                            visible: true
                        }
                        PropertyChanges {
                            target: robotsettingtext
                            visible: false
                        }
                    },
                    State {

                        name: "rr1page"

                        PropertyChanges {
                            target: rr1_robotsetting
                            active: true
                            visible: true
                        }
                        PropertyChanges {
                            target: robotsettingtext
                            visible: false
                        }
                    }
                ]

                Item {
                    id: prs
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    height: parent.height * 0.85
                    width: parent.width * 0.97
                    Text {
                        id: robotsettingtext
                        text: qsTr(" Click/select arm for Arm Position ")
                        anchors.fill: parent
                        color: Style.tertiary
                        visible: true
                        font.pixelSize: Style.font30
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                    }

                    Loader {
                        id: fl2_robotsetting
                        anchors.fill: parent
                        visible: false
                        asynchronous: true
                        property string fl2_vc1: fl2_robotsetting.item.prs_vc1
                        property string fl2_vc2: fl2_robotsetting.item.prs_vc2
                        property string fl2_dbd: fl2_robotsetting.item.prs_dbd
                        property string fl2_pp: fl2_robotsetting.item.prs_pp

                        sourceComponent: fl2_prsComp
                        Component {
                            id: fl2_prsComp
                            ProgramRobotSettings {
                                id: fl2_prs
                                anchors.fill: parent
                                waytext: qsTr("FL2")
                                property string prs_vc1: vc1_btn.clicked ? (vc1_btn.checked ? vc1_btn.checked : "") : ""
                                property string prs_vc2: vc2_btn.clicked ? (vc2_btn.checked ? vc2_btn.checked : "") : ""
                                property string prs_dbd: dbd_btn.clicked ? (dbd_btn.checked ? dbd_btn.checked : "") : ""
                                property string prs_pp: pp_btn.clicked ? (pp_btn.checked ? pp_btn.checked : "") : ""
                                Component.onCompleted: {
                                    var lss = []
                                    lss = arm_properties
                                    if (!lss == []) {
                                        fl2_prs.vc1_btn.checked
                                                = lss['fl2'] ? lss['fl2']['vaccum_cup_1'] : false
                                        fl2_prs.vc2_btn.checked
                                                = lss['fl2'] ? lss['fl2']['vaccum_cup_2'] : false
                                        fl2_prs.dbd_btn.checked
                                                = lss['fl2'] ? lss['fl2']['dbd_sensor'] : false
                                        fl2_prs.pp_btn.checked
                                                = lss['fl2'] ? lss['fl2']['pp_sensor'] : false
                                    }
                                }
                            }
                        }
                    }
                    Loader {
                        id: fl1_robotsetting
                        anchors.fill: parent
                        visible: false
                        asynchronous: true
                        property string fl1_vc1: fl1_robotsetting.item.prs_vc1
                        property string fl1_vc2: fl1_robotsetting.item.prs_vc2
                        property string fl1_dbd: fl1_robotsetting.item.prs_dbd
                        property string fl1_pp: fl1_robotsetting.item.prs_pp

                        sourceComponent: fl1_prsComp
                        Component {
                            id: fl1_prsComp
                            ProgramRobotSettings {
                                id: fl1_prs
                                anchors.fill: parent
                                waytext: qsTr("FL1")
                                property string prs_vc1: vc1_btn.clicked ? (vc1_btn.checked ? vc1_btn.checked : "") : ""
                                property string prs_vc2: vc2_btn.clicked ? (vc2_btn.checked ? vc2_btn.checked : "") : ""
                                property string prs_dbd: dbd_btn.clicked ? (dbd_btn.checked ? dbd_btn.checked : "") : ""
                                property string prs_pp: pp_btn.clicked ? (pp_btn.checked ? pp_btn.checked : "") : ""
                                Component.onCompleted: {
                                    var lss = []
                                    lss = arm_properties
                                    if (!lss == []) {
                                        fl1_prs.vc1_btn.checked
                                                = lss['fl1'] ? lss['fl1']['vaccum_cup_1'] : false
                                        fl1_prs.vc2_btn.checked
                                                = lss['fl1'] ? lss['fl1']['vaccum_cup_2'] : false
                                        fl1_prs.dbd_btn.checked
                                                = lss['fl1'] ? lss['fl1']['dbd_sensor'] : false
                                        fl1_prs.pp_btn.checked
                                                = lss['fl1'] ? lss['fl1']['pp_sensor'] : false
                                    }
                                }
                            }
                        }
                    }
                    Loader {
                        id: rl2_robotsetting
                        anchors.fill: parent
                        visible: false
                        asynchronous: true
                        property string rl2_vc1: rl2_robotsetting.item.prs_vc1 ? rl2_robotsetting.item.prs_vc1 : ""
                        property string rl2_vc2: rl2_robotsetting.item.prs_vc2 ? rl2_robotsetting.item.prs_vc2 : ""
                        property string rl2_dbd: rl2_robotsetting.item.prs_dbd ? rl2_robotsetting.item.prs_dbd : ""
                        property string rl2_pp: rl2_robotsetting.item.prs_pp ? rl2_robotsetting.item.prs_pp : ""

                        sourceComponent: rl2_prsComp
                        Component {
                            id: rl2_prsComp
                            ProgramRobotSettings {
                                id: rl2_prs
                                anchors.fill: parent
                                waytext: qsTr("RL2")
                                property string prs_vc1: vc1_btn.checked ? vc1_btn.checked : ""
                                property string prs_vc2: vc2_btn.checked ? vc2_btn.checked : ""
                                property string prs_dbd: dbd_btn.checked ? dbd_btn.checked : ""
                                property string prs_pp: pp_btn.checked ? pp_btn.checked : ""
                                Component.onCompleted: {
                                    var lss = []
                                    lss = arm_properties
                                    if (!lss == []) {
                                        rl2_prs.vc1_btn.checked
                                                = lss['rl2'] ? lss['rl2']['vaccum_cup_1'] : false
                                        rl2_prs.vc2_btn.checked
                                                = lss['rl2'] ? lss['rl2']['vaccum_cup_2'] : false
                                        rl2_prs.dbd_btn.checked
                                                = lss['rl2'] ? lss['rl2']['dbd_sensor'] : false
                                        rl2_prs.pp_btn.checked
                                                = lss['rl2'] ? lss['rl2']['pp_sensor'] : false
                                    }
                                }
                            }
                        }
                    }
                    Loader {
                        id: rl1_robotsetting
                        anchors.fill: parent
                        visible: false
                        asynchronous: true
                        property string rl1_vc1: rl1_robotsetting.item.prs_vc1 ? rl1_robotsetting.item.prs_vc1 : ""
                        property string rl1_vc2: rl1_robotsetting.item.prs_vc2 ? rl1_robotsetting.item.prs_vc2 : ""
                        property string rl1_dbd: rl1_robotsetting.item.prs_dbd ? rl1_robotsetting.item.prs_dbd : ""
                        property string rl1_pp: rl1_robotsetting.item.prs_pp ? rl1_robotsetting.item.prs_pp : ""

                        sourceComponent: rl1_prsComp
                        Component {
                            id: rl1_prsComp
                            ProgramRobotSettings {
                                id: rl1_prs
                                anchors.fill: parent
                                waytext: qsTr("RL1")
                                property string prs_vc1: vc1_btn.checked ? vc1_btn.checked : ""
                                property string prs_vc2: vc2_btn.checked ? vc2_btn.checked : ""
                                property string prs_dbd: dbd_btn.checked ? dbd_btn.checked : ""
                                property string prs_pp: pp_btn.checked ? pp_btn.checked : ""
                                Component.onCompleted: {
                                    var lss = []
                                    lss = arm_properties
                                    if (!lss == []) {
                                        rl1_prs.vc1_btn.checked
                                                = lss['rl1'] ? lss['rl1']['vaccum_cup_1'] : false
                                        rl1_prs.vc2_btn.checked
                                                = lss['rl1'] ? lss['rl1']['vaccum_cup_2'] : false
                                        rl1_prs.dbd_btn.checked
                                                = lss['rl1'] ? lss['rl1']['dbd_sensor'] : false
                                        rl1_prs.pp_btn.checked
                                                = lss['rl1'] ? lss['rl1']['pp_sensor'] : false
                                    }
                                }
                            }
                        }
                    }
                    Loader {
                        id: fr1_robotsetting
                        anchors.fill: parent
                        visible: false
                        asynchronous: true
                        property string fr1_vc1: fr1_robotsetting.item.prs_vc1 ? fr1_robotsetting.item.prs_vc1 : ""
                        property string fr1_vc2: fr1_robotsetting.item.prs_vc2 ? fr1_robotsetting.item.prs_vc2 : ""
                        property string fr1_dbd: fr1_robotsetting.item.prs_dbd ? fr1_robotsetting.item.prs_dbd : ""
                        property string fr1_pp: fr1_robotsetting.item.prs_pp ? fr1_robotsetting.item.prs_pp : ""

                        sourceComponent: fr1_prsComp
                        Component {
                            id: fr1_prsComp
                            ProgramRobotSettings {
                                id: fr1_prs
                                anchors.fill: parent
                                waytext: qsTr("FR1")
                                property string prs_vc1: vc1_btn.checked ? vc1_btn.checked : ""
                                property string prs_vc2: vc2_btn.checked ? vc2_btn.checked : ""
                                property string prs_dbd: dbd_btn.checked ? dbd_btn.checked : ""
                                property string prs_pp: pp_btn.checked ? pp_btn.checked : ""
                                Component.onCompleted: {
                                    var lss = []
                                    lss = arm_properties
                                    if (!lss == []) {
                                        fr1_prs.vc1_btn.checked
                                                = lss['fr1'] ? lss['fr1']['vaccum_cup_1'] : false
                                        fr1_prs.vc2_btn.checked
                                                = lss['fr1'] ? lss['fr1']['vaccum_cup_2'] : false
                                        fr1_prs.dbd_btn.checked
                                                = lss['fr1'] ? lss['fr1']['dbd_sensor'] : false
                                        fr1_prs.pp_btn.checked
                                                = lss['fr1'] ? lss['fr1']['pp_sensor'] : false
                                    }
                                }
                            }
                        }
                    }
                    Loader {
                        id: fr2_robotsetting
                        anchors.fill: parent
                        visible: false
                        asynchronous: true
                        property string fr2_vc1: fr2_robotsetting.item.prs_vc1 ? fr2_robotsetting.item.prs_vc1 : ""
                        property string fr2_vc2: fr2_robotsetting.item.prs_vc2 ? fr2_robotsetting.item.prs_vc2 : ""
                        property string fr2_dbd: fr2_robotsetting.item.prs_dbd ? fr2_robotsetting.item.prs_dbd : ""
                        property string fr2_pp: fr2_robotsetting.item.prs_pp ? fr2_robotsetting.item.prs_pp : ""

                        sourceComponent: fr2_prsComp
                        Component {
                            id: fr2_prsComp
                            ProgramRobotSettings {
                                id: fr2_prs
                                anchors.fill: parent
                                waytext: qsTr("FR2")
                                property string prs_vc1: vc1_btn.checked ? vc1_btn.checked : ""
                                property string prs_vc2: vc2_btn.checked ? vc2_btn.checked : ""
                                property string prs_dbd: dbd_btn.checked ? dbd_btn.checked : ""
                                property string prs_pp: pp_btn.checked ? pp_btn.checked : ""
                                Component.onCompleted: {
                                    var lss = []
                                    lss = arm_properties
                                    if (!lss == []) {
                                        fr2_prs.vc1_btn.checked
                                                = lss['fr2'] ? lss['fr2']['vaccum_cup_1'] : false
                                        fr2_prs.vc2_btn.checked
                                                = lss['fr2'] ? lss['fr2']['vaccum_cup_2'] : false
                                        fr2_prs.dbd_btn.checked
                                                = lss['fr2'] ? lss['fr2']['dbd_sensor'] : false
                                        fr2_prs.pp_btn.checked
                                                = lss['fr2'] ? lss['fr2']['pp_sensor'] : false
                                    }
                                }
                            }
                        }
                    }
                    Loader {
                        id: rr1_robotsetting
                        anchors.fill: parent
                        visible: false
                        asynchronous: true
                        property string rr1_vc1: rr1_robotsetting.item.prs_vc1 ? rr1_robotsetting.item.prs_vc1 : ""
                        property string rr1_vc2: rr1_robotsetting.item.prs_vc2 ? rr1_robotsetting.item.prs_vc2 : ""
                        property string rr1_dbd: rr1_robotsetting.item.prs_dbd ? rr1_robotsetting.item.prs_dbd : ""
                        property string rr1_pp: rr1_robotsetting.item.prs_pp ? rr1_robotsetting.item.prs_pp : ""

                        sourceComponent: rr1_prsComp
                        Component {
                            id: rr1_prsComp
                            ProgramRobotSettings {
                                id: rr1_prs
                                anchors.fill: parent
                                waytext: qsTr("RR1")
                                property string prs_vc1: vc1_btn.checked ? vc1_btn.checked : ""
                                property string prs_vc2: vc2_btn.checked ? vc2_btn.checked : ""
                                property string prs_dbd: dbd_btn.checked ? dbd_btn.checked : ""
                                property string prs_pp: pp_btn.checked ? pp_btn.checked : ""
                                Component.onCompleted: {
                                    var lss = []
                                    lss = arm_properties
                                    if (!lss == []) {
                                        rr1_prs.vc1_btn.checked
                                                = lss['rr1'] ? lss['rr1']['vaccum_cup_1'] : false
                                        rr1_prs.vc2_btn.checked
                                                = lss['rr1'] ? lss['rr1']['vaccum_cup_2'] : false
                                        rr1_prs.dbd_btn.checked
                                                = lss['rr1'] ? lss['rr1']['dbd_sensor'] : false
                                        rr1_prs.pp_btn.checked
                                                = lss['rr1'] ? lss['rr1']['pp_sensor'] : false
                                    }
                                }
                            }
                        }
                    }
                    Loader {
                        id: rr2_robotsetting
                        anchors.fill: parent
                        visible: false
                        asynchronous: true
                        property string rr2_vc1: rr2_robotsetting.item.prs_vc1 ? rr2_robotsetting.item.prs_vc1 : ""
                        property string rr2_vc2: rr2_robotsetting.item.prs_vc2 ? rr2_robotsetting.item.prs_vc2 : ""
                        property string rr2_dbd: rr2_robotsetting.item.prs_dbd ? rr2_robotsetting.item.prs_dbd : ""
                        property string rr2_pp: rr2_robotsetting.item.prs_pp ? rr2_robotsetting.item.prs_pp : ""

                        sourceComponent: rr2_prsComp
                        Component {
                            id: rr2_prsComp
                            ProgramRobotSettings {
                                id: rr2_prs
                                anchors.fill: parent
                                waytext: qsTr("RR2")
                                property string prs_vc1: vc1_btn.checked ? vc1_btn.checked : ""
                                property string prs_vc2: vc2_btn.checked ? vc2_btn.checked : ""
                                property string prs_dbd: dbd_btn.checked ? dbd_btn.checked : ""
                                property string prs_pp: pp_btn.checked ? pp_btn.checked : ""
                                Component.onCompleted: {
                                    var lss = []
                                    lss = arm_properties
                                    if (!lss == []) {
                                        rr2_prs.vc1_btn.checked
                                                = lss['rr2'] ? lss['rr2']['vaccum_cup_1'] : false
                                        rr2_prs.vc2_btn.checked
                                                = lss['rr2'] ? lss['rr2']['vaccum_cup_2'] : false
                                        rr2_prs.dbd_btn.checked
                                                = lss['rr2'] ? lss['rr2']['dbd_sensor'] : false
                                        rr2_prs.pp_btn.checked
                                                = lss['rr2'] ? lss['rr2']['pp_sensor'] : false
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        Item {
            id: waypointitem
            width: parent.width
            height: parent.height * 0.4
            Text {
                id: loadertext
                text: qsTr(" Click/select arm for Arm Position ")
                anchors.fill: parent
                color: Style.tertiary
                visible: true
                font.pixelSize: Style.font30
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                fontSizeMode: Text.Fit
                minimumPixelSize: 2
            }

            Loader {
                id: fl2loader
                anchors.fill: parent
                asynchronous: true
                property int fl2_st1A: fl2loader.item.st1A_get ? fl2loader.item.st1A_get : 0
                property int fl2_st1B: fl2loader.item.st1B_get ? fl2loader.item.st1B_get : 0

                property int fl2_st2A: fl2loader.item.st2A_get ? fl2loader.item.st2A_get : 0
                property int fl2_st2B: fl2loader.item.st2B_get ? fl2loader.item.st2B_get : 0

                property int fl2_st3A: fl2loader.item.st3A_get ? fl2loader.item.st3A_get : 0
                property int fl2_st3B: fl2loader.item.st3B_get ? fl2loader.item.st3B_get : 0

                sourceComponent: fl2_wh_comp
                Component {
                    id: fl2_wh_comp
                    WaypointHold {
                        id: fl2_wh
                        anchors.fill: parent
                        property int st1
                        property int st2
                        waytext: qsTr("FL2")
                        Connections {
                            target: fl2_wh.stepbutton1
                            function onClicked() {

                                var lss = []
                                lss = arm_properties ?? []
                                ld1.ld1_ax1 = (lss['fl2'] ? lss['fl2']['waypoints'] ? lss['fl2']['waypoints'][0]['A'] : 0 : 0)
                                ld1.ld1_ax2 = (lss['fl2'] ? lss['fl2']['waypoints'] ? lss['fl2']['waypoints'][0]['B'] : 0 : 0)
                            }
                        }
                        Connections {
                            target: fl2_wh.stepbutton2
                            function onClicked() {

                                var lss = []
                                lss = arm_properties ?? []
                                ld2.ld2_ax1 = (lss['fl2'] ? lss['fl2']['waypoints'] ? lss['fl2']['waypoints'][1]['A'] : 0 : 0)
                                ld2.ld2_ax2 = (lss['fl2'] ? lss['fl2']['waypoints'] ? lss['fl2']['waypoints'][1]['B'] : 0 : 0)
                            }
                        }
                        Connections {
                            target: fl2_wh.stepbutton3
                            function onClicked() {

                                var lss = []
                                lss = arm_properties ?? []
                                ld3.ld3_ax1 = (lss['fl2'] ? lss['fl2']['waypoints'] ? lss['fl2']['waypoints'][2]['A'] : 0 : 0)
                                ld3.ld3_ax2 = (lss['fl2'] ? lss['fl2']['waypoints'] ? lss['fl2']['waypoints'][2]['B'] : 0 : 0)
                            }
                        }
                    }
                }

                visible: false
            }
            Loader {
                id: rl2loader
                anchors.fill: parent
                asynchronous: true
                property int rl2_st1A: rl2loader.item.st1A_get ? rl2loader.item.st1A_get : 0
                property int rl2_st1B: rl2loader.item.st1B_get ? rl2loader.item.st1B_get : 0

                property int rl2_st2A: rl2loader.item.st2A_get ? rl2loader.item.st2A_get : 0
                property int rl2_st2B: rl2loader.item.st2B_get ? rl2loader.item.st2B_get : 0

                property int rl2_st3A: rl2loader.item.st3A_get ? rl2loader.item.st3A_get : 0
                property int rl2_st3B: rl2loader.item.st3B_get ? rl2loader.item.st3B_get : 0
                sourceComponent: rl2_wh_comp
                Component {
                    id: rl2_wh_comp
                    WaypointHold {
                        id: rl2_wh
                        anchors.fill: parent
                        waytext: qsTr("RL2")
                        Connections {
                            target: rl2_wh.stepbutton1
                            function onClicked() {

                                var lss = []
                                lss = arm_properties ?? []
                                ld1.ld1_ax1 = (lss['rl2'] ? lss['rl2']['waypoints'] ? lss['rl2']['waypoints'][0]['A'] : 0 : 0)
                                ld1.ld1_ax2 = (lss['rl2'] ? lss['rl2']['waypoints'] ? lss['rl2']['waypoints'][0]['B'] : 0 : 0)
                            }
                        }
                        Connections {
                            target: rl2_wh.stepbutton2
                            function onClicked() {

                                var lss = []
                                lss = arm_properties ?? []
                                ld2.ld2_ax1 = (lss['rl2'] ? lss['rl2']['waypoints'] ? lss['rl2']['waypoints'][1]['A'] : 0 : 0)
                                ld2.ld2_ax2 = (lss['rl2'] ? lss['rl2']['waypoints'] ? lss['rl2']['waypoints'][1]['B'] : 0 : 0)
                            }
                        }
                        Connections {
                            target: rl2_wh.stepbutton3
                            function onClicked() {

                                var lss = []
                                lss = arm_properties ?? []
                                ld3.ld3_ax1 = (lss['rl2'] ? lss['rl2']['waypoints'] ? lss['rl2']['waypoints'][2]['A'] : 0 : 0)
                                ld3.ld3_ax2 = (lss['rl2'] ? lss['rl2']['waypoints'] ? lss['rl2']['waypoints'][2]['B'] : 0 : 0)
                            }
                        }
                    }
                }

                visible: false
            }
            Loader {
                id: fl1loader
                anchors.fill: parent
                asynchronous: true
                property int fl1_st1A: fl1loader.item.st1A_get ? fl1loader.item.st1A_get : 0
                property int fl1_st1B: fl1loader.item.st1B_get ? fl1loader.item.st1B_get : 0

                property int fl1_st2A: fl1loader.item.st2A_get ? fl1loader.item.st2A_get : 0
                property int fl1_st2B: fl1loader.item.st2B_get ? fl1loader.item.st2B_get : 0

                property int fl1_st3A: fl1loader.item.st3A_get ? fl1loader.item.st3A_get : 0
                property int fl1_st3B: fl1loader.item.st3B_get ? fl1loader.item.st3B_get : 0
                sourceComponent: fl1_wh_comp
                Component {
                    id: fl1_wh_comp
                    WaypointHold {
                        id: fl1_wh
                        anchors.fill: parent
                        waytext: qsTr("FL1")
                        Connections {
                            target: fl1_wh.stepbutton1
                            function onClicked() {

                                var lss = []
                                lss = arm_properties ?? []
                                ld1.ld1_ax1 = (lss['fl1'] ? lss['fl1']['waypoints'] ? lss['fl1']['waypoints'][0]['A'] : 0 : 0)
                                ld1.ld1_ax2 = (lss['fl1'] ? lss['fl1']['waypoints'] ? lss['fl1']['waypoints'][0]['B'] : 0 : 0)
                            }
                        }
                        Connections {
                            target: fl1_wh.stepbutton2
                            function onClicked() {

                                var lss = []
                                lss = arm_properties ?? []
                                ld2.ld2_ax1 = (lss['fl1'] ? lss['fl1']['waypoints'] ? lss['fl1']['waypoints'][1]['A'] : 0 : 0)
                                ld2.ld2_ax2 = (lss['fl1'] ? lss['fl1']['waypoints'] ? lss['fl1']['waypoints'][1]['B'] : 0 : 0)
                            }
                        }
                        Connections {
                            target: fl1_wh.stepbutton3
                            function onClicked() {

                                var lss = []
                                lss = arm_properties ?? []
                                ld3.ld3_ax1 = (lss['fl1'] ? lss['fl1']['waypoints'] ? lss['fl1']['waypoints'][2]['A'] : 0 : 0)
                                ld3.ld3_ax2 = (lss['fl1'] ? lss['fl1']['waypoints'] ? lss['fl1']['waypoints'][2]['B'] : 0 : 0)
                            }
                        }
                    }
                }

                visible: false
            }
            Loader {
                id: rl1loader
                anchors.fill: parent
                asynchronous: true
                property int rl1_st1A: rl1loader.item.st1A_get ? rl1loader.item.st1A_get : 0
                property int rl1_st1B: rl1loader.item.st1B_get ? rl1loader.item.st1B_get : 0

                property int rl1_st2A: rl1loader.item.st2A_get ? rl1loader.item.st2A_get : 0
                property int rl1_st2B: rl1loader.item.st2B_get ? rl1loader.item.st2B_get : 0

                property int rl1_st3A: rl1loader.item.st3A_get ? rl1loader.item.st3A_get : 0
                property int rl1_st3B: rl1loader.item.st3B_get ? rl1loader.item.st3B_get : 0
                sourceComponent: rl1_wh_comp
                Component {
                    id: rl1_wh_comp
                    WaypointHold {
                        id: rl1_wh
                        anchors.fill: parent
                        waytext: qsTr("RL1")
                        Connections {
                            target: rl1_wh.stepbutton1
                            function onClicked() {

                                var lss = []
                                lss = arm_properties ?? []
                                ld1.ld1_ax1 = (lss['rl1'] ? lss['rl1']['waypoints'] ? lss['rl1']['waypoints'][0]['A'] : 0 : 0)
                                ld1.ld1_ax2 = (lss['rl1'] ? lss['rl1']['waypoints'] ? lss['rl1']['waypoints'][0]['B'] : 0 : 0)
                            }
                        }
                        Connections {
                            target: rl1_wh.stepbutton2
                            function onClicked() {

                                var lss = []
                                lss = arm_properties ?? []
                                ld2.ld2_ax1 = (lss['rl1'] ? lss['rl1']['waypoints'] ? lss['rl1']['waypoints'][1]['A'] : 0 : 0)
                                ld2.ld2_ax2 = (lss['rl1'] ? lss['rl1']['waypoints'] ? lss['rl1']['waypoints'][1]['B'] : 0 : 0)
                            }
                        }
                        Connections {
                            target: rl1_wh.stepbutton3
                            function onClicked() {

                                var lss = []
                                lss = arm_properties ?? []
                                ld3.ld3_ax1 = (lss['rl1'] ? lss['rl1']['waypoints'] ? lss['rl1']['waypoints'][2]['A'] : 0 : 0)
                                ld3.ld3_ax2 = (lss['rl1'] ? lss['rl1']['waypoints'] ? lss['rl1']['waypoints'][2]['B'] : 0 : 0)
                            }
                        }
                    }
                }

                visible: false
            }
            Loader {
                id: fr2loader
                anchors.fill: parent
                asynchronous: true
                property int fr2_st1A: fr2loader.item.st1A_get ? fr2loader.item.st1A_get : 0
                property int fr2_st1B: fr2loader.item.st1B_get ? fr2loader.item.st1B_get : 0

                property int fr2_st2A: fr2loader.item.st2A_get ? fr2loader.item.st2A_get : 0
                property int fr2_st2B: fr2loader.item.st2B_get ? fr2loader.item.st2B_get : 0

                property int fr2_st3A: fr2loader.item.st3A_get ? fr2loader.item.st3A_get : 0
                property int fr2_st3B: fr2loader.item.st3B_get ? fr2loader.item.st3B_get : 0
                sourceComponent: fr2_wh_comp
                Component {
                    id: fr2_wh_comp
                    WaypointHold {
                        id: fr2_wh
                        anchors.fill: parent
                        waytext: qsTr("FR2")
                        Connections {
                            target: fr2_wh.stepbutton1
                            function onClicked() {

                                var lss = []
                                lss = arm_properties ?? []
                                ld1.ld1_ax1 = (lss['fr2'] ? lss['fr2']['waypoints'] ? lss['fr2']['waypoints'][0]['A'] : 0 : 0)
                                ld1.ld1_ax2 = (lss['fr2'] ? lss['fr2']['waypoints'] ? lss['fr2']['waypoints'][0]['B'] : 0 : 0)
                            }
                        }
                        Connections {
                            target: fr2_wh.stepbutton2
                            function onClicked() {

                                var lss = []
                                lss = arm_properties ?? []
                                ld2.ld2_ax1 = (lss['fr2'] ? lss['fr2']['waypoints'] ? lss['fr2']['waypoints'][1]['A'] : 0 : 0)
                                ld2.ld2_ax2 = (lss['fr2'] ? lss['fr2']['waypoints'] ? lss['fr2']['waypoints'][1]['B'] : 0 : 0)
                            }
                        }
                        Connections {
                            target: fr2_wh.stepbutton3
                            function onClicked() {

                                var lss = []
                                lss = arm_properties ?? []
                                ld3.ld3_ax1 = (lss['fr2'] ? lss['fr2']['waypoints'] ? lss['fr2']['waypoints'][2]['A'] : 0 : 0)
                                ld3.ld3_ax2 = (lss['fr2'] ? lss['fr2']['waypoints'] ? lss['fr2']['waypoints'][2]['B'] : 0 : 0)
                            }
                        }
                    }
                }

                visible: false
            }
            Loader {
                id: rr2loader
                anchors.fill: parent
                asynchronous: true
                property int rr2_st1A: rr2loader.item.st1A_get ? rr2loader.item.st1A_get : 0
                property int rr2_st1B: rr2loader.item.st1B_get ? rr2loader.item.st1B_get : 0

                property int rr2_st2A: rr2loader.item.st2A_get ? rr2loader.item.st2A_get : 0
                property int rr2_st2B: rr2loader.item.st2B_get ? rr2loader.item.st2B_get : 0

                property int rr2_st3A: rr2loader.item.st3A_get ? rr2loader.item.st3A_get : 0
                property int rr2_st3B: rr2loader.item.st3B_get ? rr2loader.item.st3B_get : 0
                sourceComponent: rr2_wh_comp
                Component {
                    id: rr2_wh_comp
                    WaypointHold {
                        id: rr2_wh
                        anchors.fill: parent
                        waytext: qsTr("RR2")
                        Connections {
                            target: rr2_wh.stepbutton1
                            function onClicked() {

                                var lss = []
                                lss = arm_properties ?? []
                                ld1.ld1_ax1 = (lss['rr2'] ? lss['rr2']['waypoints'] ? lss['rr2']['waypoints'][0]['A'] : 0 : 0)
                                ld1.ld1_ax2 = (lss['rr2'] ? lss['rr2']['waypoints'] ? lss['rr2']['waypoints'][0]['B'] : 0 : 0)
                            }
                        }
                        Connections {
                            target: rr2_wh.stepbutton2
                            function onClicked() {

                                var lss = []
                                lss = arm_properties ?? []
                                ld2.ld2_ax1 = (lss['rr2'] ? lss['rr2']['waypoints'] ? lss['rr2']['waypoints'][1]['A'] : 0 : 0)
                                ld2.ld2_ax2 = (lss['rr2'] ? lss['rr2']['waypoints'] ? lss['rr2']['waypoints'][1]['B'] : 0 : 0)
                            }
                        }
                        Connections {
                            target: rr2_wh.stepbutton3
                            function onClicked() {

                                var lss = []
                                lss = arm_properties ?? []
                                ld3.ld3_ax1 = (lss['rr2'] ? lss['rr2']['waypoints'] ? lss['rr2']['waypoints'][2]['A'] : 0 : 0)
                                ld3.ld3_ax2 = (lss['rr2'] ? lss['rr2']['waypoints'] ? lss['rr2']['waypoints'][2]['B'] : 0 : 0)
                            }
                        }
                    }
                }

                visible: false
            }
            Loader {
                id: fr1loader
                anchors.fill: parent
                asynchronous: true
                property int fr1_st1A: fr1loader.item.st1A_get ? fr1loader.item.st1A_get : 0
                property int fr1_st1B: fr1loader.item.st1B_get ? fr1loader.item.st1B_get : 0

                property int fr1_st2A: fr1loader.item.st2A_get ? fr1loader.item.st2A_get : 0
                property int fr1_st2B: fr1loader.item.st2B_get ? fr1loader.item.st2B_get : 0

                property int fr1_st3A: fr1loader.item.st3A_get ? fr1loader.item.st3A_get : 0
                property int fr1_st3B: fr1loader.item.st3B_get ? fr1loader.item.st3B_get : 0
                sourceComponent: fr1_wh_comp
                Component {
                    id: fr1_wh_comp
                    WaypointHold {
                        id: fr1_wh
                        anchors.fill: parent
                        waytext: qsTr("FR1")
                        Connections {
                            target: fr1_wh.stepbutton1
                            function onClicked() {

                                var lss = []
                                lss = arm_properties ?? []
                                ld1.ld1_ax1 = (lss['fr1'] ? lss['fr1']['waypoints'] ? lss['fr1']['waypoints'][0]['A'] : 0 : 0)
                                ld1.ld1_ax2 = (lss['fr1'] ? lss['fr1']['waypoints'] ? lss['fr1']['waypoints'][0]['B'] : 0 : 0)
                            }
                        }
                        Connections {
                            target: fr1_wh.stepbutton2
                            function onClicked() {

                                var lss = []
                                lss = arm_properties ?? []
                                ld2.ld2_ax1 = (lss['fr1'] ? lss['fr1']['waypoints'] ? lss['fr1']['waypoints'][1]['A'] : 0 : 0)
                                ld2.ld2_ax2 = (lss['fr1'] ? lss['fr1']['waypoints'] ? lss['fr1']['waypoints'][1]['B'] : 0 : 0)
                            }
                        }
                        Connections {
                            target: fr1_wh.stepbutton3
                            function onClicked() {

                                var lss = []
                                lss = arm_properties ?? []
                                ld3.ld3_ax1 = (lss['fr1'] ? lss['fr1']['waypoints'] ? lss['fr1']['waypoints'][2]['A'] : 0 : 0)
                                ld3.ld3_ax2 = (lss['fr1'] ? lss['fr1']['waypoints'] ? lss['fr1']['waypoints'][2]['B'] : 0 : 0)
                            }
                        }
                    }
                }

                visible: false
            }
            Loader {
                id: rr1loader
                anchors.fill: parent
                asynchronous: true
                property int rr1_st1A: rr1loader.item.st1A_get ? rr1loader.item.st1A_get : 0
                property int rr1_st1B: rr1loader.item.st1B_get ? rr1loader.item.st1B_get : 0

                property int rr1_st2A: rr1loader.item.st2A_get ? rr1loader.item.st2A_get : 0
                property int rr1_st2B: rr1loader.item.st2B_get ? rr1loader.item.st2B_get : 0

                property int rr1_st3A: rr1loader.item.st3A_get ? rr1loader.item.st3A_get : 0
                property int rr1_st3B: rr1loader.item.st3B_get ? rr1loader.item.st3B_get : 0
                sourceComponent: Component {
                    WaypointHold {
                        id: rr1_wh
                        anchors.fill: parent
                        waytext: qsTr("RR1")
                        Connections {
                            target: rr1_wh.stepbutton1
                            function onClicked() {

                                var lss = []
                                lss = arm_properties ?? []
                                ld1.ld1_ax1 = (lss['rr1'] ? lss['rr1']['waypoints'] ? lss['rr1']['waypoints'][0]['A'] : 0 : 0)
                                ld1.ld1_ax2 = (lss['rr1'] ? lss['rr1']['waypoints'] ? lss['rr1']['waypoints'][0]['B'] : 0 : 0)
                            }
                        }
                        Connections {
                            target: rr1_wh.stepbutton2
                            function onClicked() {

                                var lss = []
                                lss = arm_properties ?? []
                                ld2.ld2_ax1 = (lss['rr1'] ? lss['rr1']['waypoints'] ? lss['rr1']['waypoints'][1]['A'] : 0 : 0)
                                ld2.ld2_ax2 = (lss['rr1'] ? lss['rr1']['waypoints'] ? lss['rr1']['waypoints'][1]['B'] : 0 : 0)
                            }
                        }
                        Connections {
                            target: rr1_wh.stepbutton3
                            function onClicked() {

                                var lss = []
                                lss = arm_properties ?? []
                                ld3.ld3_ax1 = (lss['rr1'] ? lss['rr1']['waypoints'] ? lss['rr1']['waypoints'][2]['A'] : 0 : 0)
                                ld3.ld3_ax2 = (lss['rr1'] ? lss['rr1']['waypoints'] ? lss['rr1']['waypoints'][2]['B'] : 0 : 0)
                            }
                        }
                    }
                }

                visible: false
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

        Rectangle {
            id: item4
            width: parent.width
            height: parent.height * 0.099
            anchors.right: parent.right
            color: Style.secondary

            Row {
                id: row6
                spacing: 4

                width: parent.width * 0.35
                height: parent.height * 0.7
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                layoutDirection: Qt.RightToLeft
                anchors.rightMargin: 10

                HoverButton {
                    id: summuryy
                    width: parent.width * 0.3
                    height: parent.height
                    stepcolor: "#7d00ff"
                    stepcolortext: "white"
                    steptext: qsTr("Summary")
                    anchors.verticalCenter: parent.verticalCenter
                    onClicked: {
                        
                        var get_name = lsm.get(
                                    index).name ? lsm.get(index).name : ""
                        var data_sum = arm_properties ?? []
                        stackView6.push("../pages/ProgramSummary.qml", {
                                        
                                            "data_summary" : data_sum,
                                            "progname" : get_name
                                        })
                    }
                }
                HoverButton {
                    id: cancel
                    width: parent.width * 0.3
                    height: parent.height
                    stepcolor: "#505050"
                    stepcolortext: "white"
                    steptext: qsTr("Cancel")
                    anchors.verticalCenter: parent.verticalCenter
                }
                HoverButton {
                    id: save
                    width: parent.width * 0.3
                    height: parent.height
                    stepcolor: "#7d00ff"
                    stepcolortext: "white"
                    steptext: qsTr("Save")
                    anchors.verticalCenter: parent.verticalCenter
                }
                HoverButton {
                    id: back
                    width: parent.width * 0.3
                    height: parent.height
                    stepcolor: "#7d00ff"
                    stepcolortext: "white"
                    steptext: qsTr("Back")
                    anchors.verticalCenter: parent.verticalCenter

                    onClicked: {
                        stackView6.pop()
                    }
                }
            }
        }
    }
}