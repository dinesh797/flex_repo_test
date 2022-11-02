import QtQuick
import QtQuick.Controls
import "../components"
import "../pages"
import "../theme"
// import QtQuick.Layouts 1.15

Item {
    id: name
    anchors.fill: parent
    property alias stackView6: stackView6

    StackView {
        id: stackView6
        anchors.fill: parent
        clip: true
        initialItem: yy
    }
    Component {
        id: yy
        Rectangle {
            id: programpg
            property var lsm2

            property string text1: Qt.formatTime(new Date(), "hh: mm")
            property string text2: Qt.formatTime(new Date(), "hh: mm")
            property string text3: Qt.formatTime(new Date(), "hh: mm")
            property string text11: Qt.formatTime(new Date(), "hh: mm")
            property string text22: Qt.formatTime(new Date(), "hh: mm")
            property string text33: Qt.formatTime(new Date(), "hh: mm")
            property int number: 0
            property int number1: 0
            property var ls
            color: Style.primary
            border.color: "transparent"

            Column {
                id: column
                anchors.fill: parent
                spacing: 3

                Item {
                    id: topbar
                    width: parent.width
                    height: parent.height * 0.15

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
                                text: qsTr("Programs")
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
                                text: qsTr("List of available programs")
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
                Rectangle {
                    id: name
                    color: Style.primary
                    width: parent.width
                    height: parent.height * 0.10

                    Item {
                        id: itemq
                        anchors.fill: parent
                        Row {
                            anchors.left: parent.left
                            spacing: 20
                            width: parent.width * 0.4
                            height: parent.height * 0.5
                            anchors.verticalCenter: parent.verticalCenter

                            HoverButton {
                                id: addprog
                                width: parent.width * 0.3
                                height: parent.height
                                anchors.verticalCenter: parent.verticalCenter
                                leftPadding: 18
                                radiuso: 7
                                radiusi: 7
                                stepcolor: "#7d00ff"
                                stepcolortext: "white"
                                steptext: qsTr("New Program")

                                onClicked: {
                                    // var ls = program.get_programs()
                                    // var pname = "Program " + (ls.length+1)
                                    // program.add_program(pname)
                                    // for (var i = 0; i < ls.length; i++) {
                                    //     if (ls[i]["name"] == pname) {

                                    //         lsm2.append({
                                    //                         "id": ls[ls.length - 1]["id"],
                                    //                         "name": ls[ls.length - 1]["name"]
                                    //                     })
                                    //     }
                                    // }
                                    var ls = program.get_programs()
                                    var pname = "Program " + (ls.length + 1)
                                    program.add_program(pname)
                                    //    lsm2.clear()
                                    // for (var i = 0; i < ls.length; i++) 
                                    // for (var numberrr = 0; numberrr< ls.length; numberrr++) {
                                        // if (ls[numberrr]["name"] == pname) {
                                               
                                    lsm2.append({
                                                    "id": ls[ls.length - 1]["id"],
                                                    "name": ls[ls.length - 1]["name"]
                                                })
                                }
                            }
                            HoverButton {
                                id: deletearm
                                width: parent.width * 0.30
                                height: parent.height
                                anchors.verticalCenter: parent.verticalCenter
                                radiuso: 7
                                radiusi: 7
                                stepcolor: "orange"
                                stepcolortext: "white"
                                steptext: qsTr("Delete")
                                ToolTip.delay: 700
                                ToolTip.timeout: 5000
                                ToolTip.visible: hovered
                                ToolTip.text: qsTr("Select the Program name to delete ")
                            }
                        }

                        Item {
                            id: item1rr
                            width: parent.width * 0.6
                            height: parent.height

                            anchors.right: parent.right
                            Row {
                                id: row2
                                anchors.fill: parent
                                layoutDirection: Qt.RightToLeft
                                spacing: 15

                                Button {
                                    id: sortgrid
                                    checked: true
                                    checkable: true
                                    autoExclusive: true
                                    width: parent.width * 0.065
                                    height: parent.height * 0.65
                                    anchors.verticalCenter: parent.verticalCenter
                                    contentItem: Label {
                                        text: "\u0129"
                                        font.pixelSize: 30
                                        horizontalAlignment: Text.AlignHCenter
                                        verticalAlignment: Text.AlignVCenter
                                        font.family: Style.fonticon.name
                                        color: sortgrid.checked ? "#027fe4" : Style.sortcol
                                    }
                                    background: Rectangle {
                                        color: Style.colorshallow
                                        anchors.fill: parent
                                        border.color: sortgrid.checked ? "grey" : "transparent"
                                        border.width: 1
                                    }
                                    onCheckedChanged: {
                                        stack.push(prog_grid_comp)
                                    }
                                }

                                Button {
                                    id: sortvertical

                                    width: parent.width * 0.065
                                    height: parent.height * 0.65
                                    anchors.verticalCenter: parent.verticalCenter

                                    checkable: true
                                    autoExclusive: true

                                    contentItem: Label {
                                        text: "\u012a"
                                        font.pixelSize: 30
                                        color: sortvertical.checked ? "#027fe4" : Style.sortcol
                                        horizontalAlignment: Text.AlignHCenter
                                        verticalAlignment: Text.AlignVCenter
                                        font.family: Style.fonticon.name
                                    }
                                    background: Rectangle {
                                        color: Style.colorshallow
                                        anchors.fill: parent
                                        border.color: sortvertical.checked ? "grey" : "transparent"
                                    }
                                    onCheckedChanged: {
                                        stack.push(prog_list_comp)
                                    }
                                }

                                Item {
                                    id: useritem
                                    width: parent.width * 0.25
                                    height: parent.height * 0.50
                                    anchors.verticalCenter: parent.verticalCenter

                                    TextField {
                                        id: username_field
                                        width: parent.width
                                        height: parent.height
                                        placeholderText: qsTr("Search by name")
                                        placeholderTextColor: Style.tertiary
                                        font.pixelSize: Style.font15 ? Style.font15 : 15 ? Style.font15 : 15
                                        horizontalAlignment: Text.AlignLeft
                                        rightInset: 10
                                        leftPadding: 10
                                        layer.smooth: true
                                        layer.wrapMode: ShaderEffectSource.ClampToEdge
                                        antialiasing: true
                                        bottomPadding: 0
                                        topPadding: 0
                                        renderType: Text.QtRendering
                                        font.weight: Font.Light
                                        font.italic: false
                                        baselineOffset: 33
                                        background: Rectangle {
                                            color: Style.secondary
                                            border.color: "#dbc282"
                                            border.width: 0.5
                                            radius: 10
                                            anchors.fill: parent
                                        }
                                    }
                                }

                                SortButton {
                                    id: bytagbutton
                                    anchors.top: parent.top
                                    width: parent.width * 0.15
                                    anchors.verticalCenter: parent.verticalCenter
                                    buttonIcon: Style.dropIcon
                                    sortText: qsTr("By Tag")
                                    items: [text11, text22, text33]
                                    icon_left: false
                                    icon_right: true
                                    uncheckedcolor: Style.primary
                                }

                                SortButton {
                                    id: bydatebutton
                                    anchors.top: parent.top
                                    width: parent.width * 0.15
                                    anchors.verticalCenter: parent.verticalCenter
                                    buttonIcon: Style.dropIcon
                                    sortText: qsTr("By Date")
                                    icon_left: false
                                    focus: true
                                    items: [text1, text2, text3]
                                    icon_right: true
                                    uncheckedcolor: Style.primary
                                }
                            }
                        }
                    }
                }

                Item {
                    id: views
                    height: parent.height * 0.736
                    width: parent.width
                    StackView {
                        id: stack
                        initialItem: prog_grid_comp
                        anchors.fill: parent
                        clip: true
                    }
                    Component {
                        id: prog_grid_comp

                        Rectangle {
                            id: grid_rect
                            property ListModel lsm: ListModel {}
                            color: "transparent"
                            visible: true
                            height: parent.height
                            width: parent.width

                            ScrollView {
                                id: frame
                                clip: true
                                anchors.fill: parent
                                ScrollBar.vertical: ScrollBar {
                                    id: sc
                                    parent: frame
                                    x: frame.mirrored ? 0 : frame.width - width
                                    y: frame.topPadding
                                    height: frame.availableHeight
                                    antialiasing: true
                                    wheelEnabled: true
                                    active: frame.ScrollBar.horizontal.active
                                    contentItem: Rectangle {
                                        width: 14
                                        opacity: 0.312
                                        implicitWidth: 6
                                        implicitHeight: 100
                                        radius: width / 2
                                        color: sc.pressed ? "orange" : "#686c95"
                                    }
                                }

                                GridView {
                                    id: cploader
                                    cellWidth: parent.width / 5
                                    cellHeight: 200
                                    width: parent.width
                                    height: parent.height
                                    add: Transition {
                                        NumberAnimation {
                                            properties: "x, y"
                                            from: 100
                                            duration: 300
                                        }
                                    }

                                    delegate: Item {
                                        id: itemy
                                        width: cploader.cellWidth - 8
                                        height: cploader.cellHeight - 8

                                        Item {
                                            id: namettt
                                            property color checkedcolor: "#1c1c1f"
                                            property color uncheckedcolor: "#252529"
                                            property string progname: "Program 1"
                                            width: parent.width * 0.90
                                            height: parent.height * 0.90
                                            property alias button: button

                                            Column {
                                                id: column6
                                                width: parent.width
                                                height: parent.height
                                                spacing: 10

                                                Component {

                                                    id: ps_comp
                                                    Programs {
                                                        id: ps
                                                        Connections {
                                                            target: ps.save
                                                            function onClicked() {

                                                                var prg_name = ps.prg_name.text ? ps.prg_name.text : ""
                                                                var prg_disc = ps.prg_disc.text ? ps.prg_disc.text : ""

                                                                var fl2_vc1_val = fl2_robotsetting.fl2_vc1 ? fl2_robotsetting.fl2_vc1 : false
                                                                var fl2_vc2_val = fl2_robotsetting.fl2_vc2 ? fl2_robotsetting.fl2_vc2 : false
                                                                var fl2_dbd_val = fl2_robotsetting.fl2_dbd ? fl2_robotsetting.fl2_dbd : false
                                                                var fl2_pp_val = fl2_robotsetting.fl2_pp ? fl2_robotsetting.fl2_pp : false
                                                                
                                                                var fl2_st1a = fl2loader.fl2_st1A ? fl2loader.fl2_st1A : 0
                                                                var fl2_st1b = fl2loader.fl2_st1B ? fl2loader.fl2_st1B : 0
                                                                
                                                                var fl2_st2a = fl2loader.fl2_st2A ? fl2loader.fl2_st2A : 0
                                                                var fl2_st2b = fl2loader.fl2_st2B ? fl2loader.fl2_st2B : 0
                                                                
                                                                var fl2_st3a = fl2loader.fl2_st3A ? fl2loader.fl2_st3A : 0
                                                                var fl2_st3b = fl2loader.fl2_st3B ? fl2loader.fl2_st3B : 0

                                                                var fl1_vc1_val = fl1_robotsetting.fl1_vc1 ? fl1_robotsetting.fl1_vc1 : false
                                                                var fl1_vc2_val = fl1_robotsetting.fl1_vc2 ? fl1_robotsetting.fl1_vc2 : false
                                                                var fl1_dbd_val = fl1_robotsetting.fl1_dbd ? fl1_robotsetting.fl1_dbd : false
                                                                var fl1_pp_val = fl1_robotsetting.fl1_pp ? fl1_robotsetting.fl1_pp : false
                                                                
                                                                var fl1_st1a = fl1loader.fl1_st1A ? fl1loader.fl1_st1A : 0
                                                                var fl1_st1b = fl1loader.fl1_st1B ? fl1loader.fl1_st1B : 0
                                                                
                                                                var fl1_st2a = fl1loader.fl1_st2A ? fl1loader.fl1_st2A : 0
                                                                var fl1_st2b = fl1loader.fl1_st2B ? fl1loader.fl1_st2B : 0
                                                                
                                                                var fl1_st3a = fl1loader.fl1_st3A ? fl1loader.fl1_st3A : 0
                                                                var fl1_st3b = fl1loader.fl1_st3B ? fl1loader.fl1_st3B : 0

                                                                var fr1_vc1_val = fr1_robotsetting.fr1_vc1 ? fr1_robotsetting.fr1_vc1 : false
                                                                var fr1_vc2_val = fr1_robotsetting.fr1_vc2 ? fr1_robotsetting.fr1_vc2 : false
                                                                var fr1_dbd_val = fr1_robotsetting.fr1_dbd ? fr1_robotsetting.fr1_dbd : false
                                                                var fr1_pp_val = fr1_robotsetting.fr1_pp ? fr1_robotsetting.fr1_pp : false
                                                                
                                                                var fr1_st1a = fr1loader.fr1_st1A ? fr1loader.fr1_st1A : 0
                                                                var fr1_st1b = fr1loader.fr1_st1B ? fr1loader.fr1_st1B : 0
                                                                
                                                                var fr1_st2a = fr1loader.fr1_st2A ? fr1loader.fr1_st2A : 0
                                                                var fr1_st2b = fr1loader.fr1_st2B ? fr1loader.fr1_st2B : 0
                                                                
                                                                var fr1_st3a = fr1loader.fr1_st3A ? fr1loader.fr1_st3A : 0
                                                                var fr1_st3b = fr1loader.fr1_st3B ? fr1loader.fr1_st3B : 0

                                                                var fr2_vc1_val = fr2_robotsetting.fr2_vc1 ? fr2_robotsetting.fr2_vc1 : false
                                                                var fr2_vc2_val = fr2_robotsetting.fr2_vc2 ? fr2_robotsetting.fr2_vc2 : false
                                                                var fr2_dbd_val = fr2_robotsetting.fr2_dbd ? fr2_robotsetting.fr2_dbd : false
                                                                var fr2_pp_val = fr2_robotsetting.fr2_pp ? fr2_robotsetting.fr2_pp : false
                                                                
                                                                var fr2_st1a = fr2loader.fr2_st1A ? fr2loader.fr2_st1A : 0
                                                                var fr2_st1b = fr2loader.fr2_st1B ? fr2loader.fr2_st1B : 0
                                                                
                                                                var fr2_st2a = fr2loader.fr2_st2A ? fr2loader.fr2_st2A : 0
                                                                var fr2_st2b = fr2loader.fr2_st2B ? fr2loader.fr2_st2B : 0
                                                                
                                                                var fr2_st3a = fr2loader.fr2_st3A ? fr2loader.fr2_st3A : 0
                                                                var fr2_st3b = fr2loader.fr2_st3B ? fr2loader.fr2_st3B : 0

                                                                var rl1_vc1_val = rl1_robotsetting.rl1_vc1 ? rl1_robotsetting.rl1_vc1 : false
                                                                var rl1_vc2_val = rl1_robotsetting.rl1_vc2 ? rl1_robotsetting.rl1_vc2 : false
                                                                var rl1_dbd_val = rl1_robotsetting.rl1_dbd ? rl1_robotsetting.rl1_dbd : false
                                                                var rl1_pp_val = rl1_robotsetting.rl1_pp ? rl1_robotsetting.rl1_pp : false
                                                                
                                                                var rl1_st1a = rl1loader.rl1_st1A ? rl1loader.rl1_st1A : 0
                                                                var rl1_st1b = rl1loader.rl1_st1B ? rl1loader.rl1_st1B : 0
                                                                
                                                                var rl1_st2a = rl1loader.rl1_st2A ? rl1loader.rl1_st2A : 0
                                                                var rl1_st2b = rl1loader.rl1_st2B ? rl1loader.rl1_st2B : 0
                                                                
                                                                var rl1_st3a = rl1loader.rl1_st3A ? rl1loader.rl1_st3A : 0
                                                                var rl1_st3b = rl1loader.rl1_st3B ? rl1loader.rl1_st3B : 0

                                                                var rl2_vc1_val = rl2_robotsetting.rl2_vc1 ? rl2_robotsetting.rl2_vc1 : false
                                                                var rl2_vc2_val = rl2_robotsetting.rl2_vc2 ? rl2_robotsetting.rl2_vc2 : false
                                                                var rl2_dbd_val = rl2_robotsetting.rl2_dbd ? rl2_robotsetting.rl2_dbd : false
                                                                var rl2_pp_val = rl2_robotsetting.rl2_pp ? rl2_robotsetting.rl2_pp : false
                                                                
                                                                var rl2_st1a = rl2loader.rl2_st1A ? rl2loader.rl2_st1A : 0
                                                                var rl2_st1b = rl2loader.rl2_st1B ? rl2loader.rl2_st1B : 0
                                                                
                                                                var rl2_st2a = rl2loader.rl2_st2A ? rl2loader.rl2_st2A : 0
                                                                var rl2_st2b = rl2loader.rl2_st2B ? rl2loader.rl2_st2B : 0
                                                                
                                                                var rl2_st3a = rl2loader.rl2_st3A ? rl2loader.rl2_st3A : 0
                                                                var rl2_st3b = rl2loader.rl2_st3B ? rl2loader.rl2_st3B : 0

                                                                var rr1_vc1_val = rr1_robotsetting.rr1_vc1 ? rr1_robotsetting.rr1_vc1 : false
                                                                var rr1_vc2_val = rr1_robotsetting.rr1_vc2 ? rr1_robotsetting.rr1_vc2 : false
                                                                var rr1_dbd_val = rr1_robotsetting.rr1_dbd ? rr1_robotsetting.rr1_dbd : false
                                                                var rr1_pp_val = rr1_robotsetting.rr1_pp ? rr1_robotsetting.rr1_pp : false
                                                                
                                                                var rr1_st1a = rr1loader.rr1_st1A ? rr1loader.rr1_st1A : 0
                                                                var rr1_st1b = rr1loader.rr1_st1B ? rr1loader.rr1_st1B : 0
                                                                
                                                                var rr1_st2a = rr1loader.rr1_st2A ? rr1loader.rr1_st2A : 0
                                                                var rr1_st2b = rr1loader.rr1_st2B ? rr1loader.rr1_st2B : 0
                                                                
                                                                var rr1_st3a = rr1loader.rr1_st3A ? rr1loader.rr1_st3A : 0
                                                                var rr1_st3b = rr1loader.rr1_st3B ? rr1loader.rr1_st3B : 0

                                                                var rr2_vc1_val = rr2_robotsetting.rr2_vc1 ? rr2_robotsetting.rr2_vc1 : false
                                                                var rr2_vc2_val = rr2_robotsetting.rr2_vc2 ? rr2_robotsetting.rr2_vc2 : false
                                                                var rr2_dbd_val = rr2_robotsetting.rr2_dbd ? rr2_robotsetting.rr2_dbd : false
                                                                var rr2_pp_val = rr2_robotsetting.rr2_pp ? rr2_robotsetting.rr2_pp : false
                                                                
                                                                var rr2_st1a = rr2loader.rr2_st1A ? rr2loader.rr2_st1A : 0
                                                                var rr2_st1b = rr2loader.rr2_st1B ? rr2loader.rr2_st1B : 0
                                                                
                                                                var rr2_st2a = rr2loader.rr2_st2A ? rr2loader.rr2_st2A : 0
                                                                var rr2_st2b = rr2loader.rr2_st2B ? rr2loader.rr2_st2B : 0
                                                                
                                                                var rr2_st3a = rr2loader.rr2_st3A ? rr2loader.rr2_st3A : 0
                                                                var rr2_st3b = rr2loader.rr2_st3B ? rr2loader.rr2_st3B : 0

                                                                // var someDate = new Date(dateString);
                                                                // someDate = someDate.getTime()

                                                                // var myDate = new Date("July 1, 1978 02:30:00"); // Your timezone!
                                                                // var myEpoch = myDate.getTime()/1000.0;
                                                                // document.write(myEpoch)
                                                                const dateToday = new Date()
                                                                const timestamp = dateToday.getTime()/1000.0;
                                                                
                                                                // console.log(timestamp)
                                                                

                                                                var steps = {
                                                                    "name": prg_name,
                                                                    "description": prg_disc,
                                                                    "tags": ["string"],
                                                                    "modified_on" : timestamp,
                                                                    "steps": {
                                                                        "fl2": {
                                                                            "vaccumCup1": fl2_vc1_val,
                                                                            "vaccumCup2": fl2_vc2_val,
                                                                            "DBDSensor": fl2_dbd_val,
                                                                            "PPSensor": fl2_pp_val,
                                                                            "waypoints": [{
                                                                                    "A": fl2_st1a,
                                                                                    "B": fl2_st1b
                                                                                },{
                                                                                    "A": fl2_st2a,
                                                                                    "B": fl2_st2b
                                                                                },{
                                                                                    "A": fl2_st3a,
                                                                                    "B": fl2_st3b
                                                                                }]
                                                                        },
                                                                        "fl1": {
                                                                            "vaccumCup1": fl1_vc1_val,
                                                                            "vaccumCup2": fl1_vc2_val,
                                                                            "DBDSensor": fl1_dbd_val,
                                                                            "PPSensor": fl1_pp_val,
                                                                            "waypoints": [{
                                                                                    "A": fl1_st1a,
                                                                                    "B": fl1_st1b
                                                                                },{
                                                                                    "A": fl1_st2a,
                                                                                    "B": fl1_st2b
                                                                                },{
                                                                                    "A": fl1_st3a,
                                                                                    "B": fl1_st3b
                                                                                }]
                                                                        },
                                                                        "fr2": {
                                                                            "vaccumCup1": fr2_vc1_val,
                                                                            "vaccumCup2": fr2_vc2_val,
                                                                            "DBDSensor": fr2_dbd_val,
                                                                            "PPSensor": fr2_pp_val,
                                                                            "waypoints": [{
                                                                                    "A": fr2_st1a,
                                                                                    "B": fr2_st1b
                                                                                },{
                                                                                    "A": fr2_st2a,
                                                                                    "B": fr2_st2b
                                                                                },{
                                                                                    "A": fr2_st3a,
                                                                                    "B": fr2_st3b
                                                                                }]
                                                                        },
                                                                        "fr1": {
                                                                            "vaccumCup1": fr1_vc1_val,
                                                                            "vaccumCup2": fr1_vc2_val,
                                                                            "DBDSensor": fr1_dbd_val,
                                                                            "PPSensor": fr1_pp_val,
                                                                            "waypoints": [{
                                                                                    "A": fr1_st1a,
                                                                                    "B": fr1_st1b
                                                                                },{
                                                                                    "A": fr1_st2a,
                                                                                    "B": fr1_st2b
                                                                                },{
                                                                                    "A": fr1_st3a,
                                                                                    "B": fr1_st3b
                                                                                }]
                                                                        },
                                                                        "rl2": {
                                                                            "vaccumCup1": rl2_vc1_val,
                                                                            "vaccumCup2": rl2_vc2_val,
                                                                            "DBDSensor": rl2_dbd_val,
                                                                            "PPSensor": rl2_pp_val,
                                                                            "waypoints": [{
                                                                                    "A": rl2_st1a,
                                                                                    "B": rl2_st1b
                                                                                },{
                                                                                    "A": rl2_st2a,
                                                                                    "B": rl2_st2b
                                                                                },{
                                                                                    "A": rl2_st3a,
                                                                                    "B": rl2_st3b
                                                                                }]
                                                                        },
                                                                        "rl1": {
                                                                            "vaccumCup1": rl1_vc1_val,
                                                                            "vaccumCup2": rl1_vc2_val,
                                                                            "DBDSensor": rl1_dbd_val,
                                                                            "PPSensor": rl1_pp_val,
                                                                            "waypoints": [{
                                                                                    "A": rl1_st1a,
                                                                                    "B": rl1_st1b
                                                                                },{
                                                                                    "A": rl1_st2a,
                                                                                    "B": rl1_st2b
                                                                                },{
                                                                                    "A": rl1_st3a,
                                                                                    "B": rl1_st3b
                                                                                }]
                                                                        },
                                                                        "rr2": {
                                                                            "vaccumCup1": rr2_vc1_val,
                                                                            "vaccumCup2": rr2_vc2_val,
                                                                            "DBDSensor": rr2_dbd_val,
                                                                            "PPSensor": rr2_pp_val,
                                                                            "waypoints": [{
                                                                                    "A": rr2_st1a,
                                                                                    "B": rr2_st1b
                                                                                },{
                                                                                    "A": rr2_st2a,
                                                                                    "B": rr2_st2b
                                                                                },{
                                                                                    "A": rr2_st3a,
                                                                                    "B": rr2_st3b
                                                                                }]
                                                                        },
                                                                        "rr1": {
                                                                            "vaccumCup1": rr1_vc1_val,
                                                                            "vaccumCup2": rr1_vc2_val,
                                                                            "DBDSensor": rr1_dbd_val,
                                                                            "PPSensor": rr1_pp_val,
                                                                            "waypoints": [{
                                                                                    "A": rr1_st1a,
                                                                                    "B": rr1_st1b
                                                                                },{
                                                                                    "A": rr1_st2a,
                                                                                    "B": rr1_st2b
                                                                                },{
                                                                                    "A": rr1_st3a,
                                                                                    "B": rr1_st3b
                                                                                }]
                                                                        }
                                                                    }
                                                                }
                                                        var progid_name = lsm.get(
                                                                    index).name
                                                        var get_id = lsm.get(
                                                                    index).id
                                                        var status_saved = program.update_program(get_id,steps)
                                                
                                                        if(status_saved=="Saved"){
                                                            popstatus_program.pop_message= qsTr("Program - " +progid_name + " Saved !")
                                                            popstatus_program.open()
                                                        }
                                                        else{
                                                        popstatus_speed.pop_message= qsTr("Program NOT Saved !")
                                                        popstatus_speed.open()
                                                        }
                                                            }
                                                        }
                                                        Connections {
                                                            target: ps.back
                                                            function onClicked() {
                                                                var lss = program.get_programs()
                                                                lsm.clear()
                                                                for (var numberr = 0; numberr
                                                                     < lss.length; numberr++) {
                                                                    lsm.append({
                                                                                   "id": lss[numberr]["id"] ? lss[numberr]["id"] : "",
                                                                                   "name": lss[numberr]["name"] ? lss[numberr]["name"] : "",
                                                                                   "description": lss[numberr]["description"] ? lss[numberr]["description"] : "",
                                                                                   "created_by": lss[numberr]["created_by"] ? lss[numberr]["created_by"] : "",
                                                                                   "modified_on": lss[numberr]["modified_on"] ? lss[numberr]["modified_on"] : 0,
                                                                                   "properties": lss[numberr]["properties"] ? lss[numberr]["properties"] : []
                                                                               })
                                                                }
                                                            }
                                                        }
                                                    }
                                                }

                                                Button {
                                                    id: button
                                                    width: parent.width
                                                    height: parent.height * 0.8

                                                    onClicked: {

                                                        var get_name = lsm.get(
                                                                    index).name ? lsm.get(index).name : ""
                                                        var get_discp = lsm.get(
                                                                    index).description ? lsm.get(index).description : ""
                                                        var get_id = lsm.get(
                                                                    index).id
                                                        var get_created_by = lsm.get(
                                                                    index).created_by
                                                        var get_modifiedOn = lsm.get(
                                                                    index).modified_on
                                                        var get_properties = lsm.get(
                                                                    index).properties
                                                        stackView6.push(
                                                                    ps_comp, {
                                                                        "ps_prog_name": get_name,
                                                                        "ps_prog_disc": get_discp,
                                                                        "prog_ps_id": id,
                                                                        "ps_prog_createdBy": get_created_by,
                                                                        "ps_prog_modifiedOn": Number(get_modifiedOn),
                                                                        "arm_properties": get_properties
                                                                    })
                                                    }
                                                    Rectangle {
                                                        id: rectangle
                                                        radius: 5
                                                        width: parent.width
                                                        height: parent.height
                                                        color: get_random_color(
                                                                   )

                                                        function get_random_color() {
                                                            var color = ""
                                                            for (var i = 0; i < 3; i++) {
                                                                var sub = Math.floor(
                                                                            Math.random(
                                                                                ) * 256).toString(
                                                                            16)
                                                                color += (sub.length
                                                                          == 1 ? "0" + sub : sub)
                                                            }
                                                            return '#' + (0x1000000 + Math.random()
                                                                          * 0xffffff).toString(
                                                                        16).substr(
                                                                        1, 6)
                                                        }

                                                        Image {
                                                            id: assembly_Isometric_Render
                                                            anchors.fill: parent
                                                            source: "../images/Assembly_Isometric_Render.svg"
                                                            fillMode: Image.PreserveAspectFit
                                                        }
                                                    }
                                                }
                                                CustomButton {
                                                    id: fordeletion
                                                    height: parent.height * 0.15
                                                    width: parent.width
                                                    checkable: true
                                                    autoExclusive: false

                                                    buttonIcon: ""
                                                    Connections {
                                                        target: fordeletion
                                                        function onClicked() {
                                                            if (fordeletion.checked) {
                                                                item1gt.color = rectangle.color
                                                            } else {

                                                                item1gt.color = "transparent"
                                                            }
                                                        }
                                                    }

                                                    Connections {
                                                        target: deletearm
                                                        function onClicked() {
                                                            if (fordeletion.checked) {

                                                                var prg_id = lsm.get(
                                                                            index).id
                                                                program.delete_program(
                                                                            prg_id)
                                                                lsm.remove(index)
                                                            }
                                                        }
                                                    }

                                                    Rectangle {
                                                        id: item1gt
                                                        color: "transparent"
                                                        width: parent.width
                                                        radius: 5
                                                        border.color: fordeletion.checked ? Style.bord : rectangle.color
                                                        border.width: 1
                                                        height: parent.height
                                                        Text {
                                                            id: programtextgt
                                                            text: qsTr(name)
                                                            anchors.verticalCenter: parent.verticalCenter
                                                            height: parent.height / 2
                                                            width: parent.width
                                                            color: Style.tertiary
                                                            font.pixelSize: Style.font20 ? Style.font20 : 20
                                                            verticalAlignment: Text.AlignVCenter
                                                            leftPadding: 5
                                                            fontSizeMode: Text.Fit
                                                            minimumPixelSize: 2
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }

                                    model: ListModel {
                                        id: lsm
                                    }
                                }
                            }
                            Component.onCompleted: {
                                var lss = program.get_programs()
                                programpg.lsm2 = lsm

                                for (var numberr = 0; numberr < lss.length; numberr++) {
                                    lsm.append({
                                                   "id": lss[numberr]["id"] ? lss[numberr]["id"] : "",
                                                   "name": lss[numberr]["name"] ? lss[numberr]["name"] : "",
                                                   "description": lss[numberr]["description"] ? lss[numberr]["description"] : "",
                                                   "created_by": lss[numberr]["created_by"] ? lss[numberr]["created_by"] : "",
                                                   "modified_on": lss[numberr]["modified_on"] ? lss[numberr]["modified_on"] : 0,
                                                   "properties": lss[numberr]["properties"] ? lss[numberr]["properties"] : []
                                               })
                                }
                            }
                        }
                    }
                    Component {
                        id: prog_list_comp

                        Rectangle {
                            id: list_rect
                            height: parent.height
                            width: parent.width
                            color: "#252529"
                        }
                    }
                }
            }
        }
    }
    UpdateStatus{
        id: popstatus_program
        width: parent.width * 0.5
        height: parent.height * 0.4
        anchors.centerIn: parent
    }
}
