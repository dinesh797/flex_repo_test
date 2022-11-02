import QtQuick
import QtQuick.Controls 2.1
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
// import QtQuick.Layouts 1.15
import QtQuick 2.15

Item {
    id: profile_main
    anchors.fill: parent
    property alias stackView_profile: stackView_profile

    StackView {
        id: stackView_profile
        anchors.fill: parent
        clip: true
        initialItem: pcomp
    }
    Component {
        id: pcomp
        Rectangle {
            id: profiles
            color: Style.hoverprimary

            property var stringToColour: function (str) {
                var hash = 0
                for (var i = 0; i < str.length; i++) {
                    hash = str.charCodeAt(i) + ((hash << 5) - hash)
                }
                var colour = '#'
                for (var i = 0; i < 3; i++) {
                    var value = (hash >> (i * 8)) & 0xFF
                    colour += ('00' + value.toString(16)).substr(-2)
                }
                return colour
            }

            property ListModel lsm: ListModel {}
            function reload() {
                var lss = profile.get_allprofile()
                lsm.clear()

                for (var numberr = 0; numberr < lss.length; numberr++) {
                    lsm.append({
                                   "id": lss[numberr]["id"] ? lss[numberr]["id"] : '',
                                   "first_name": lss[numberr]["name"] ? lss[numberr]["name"] : "",
                                   "familyname": lss[numberr]["familyName"] ? lss[numberr]["familyName"] : "",
                                   "contactnumber": lss[numberr]["mobile"] ? lss[numberr]["mobile"] : "",
                                   "email": lss[numberr]["email"] ? lss[numberr]["email"] : "",
                                   "gender": lss[numberr]["gender"] ? lss[numberr]["gender"] : "",
                                   "weight": lss[numberr]["weight"] ? lss[numberr]["weight"] : 0,
                                   "height": lss[numberr]["height"] ? lss[numberr]["height"] : 0.0,
                                   "birthday": lss[numberr]["birthday"] ? lss[numberr]["birthday"] : 0,
                                   "ethnicity": lss[numberr]["ethnicity"] ? lss[numberr]["ethnicity"] : ""
                               })
                }
            }
            function applyFilter(progname) {
                var proglist = profile.search_profile(progname + ("*"))
                lsm.clear()
                for (var numberr = 0; numberr < proglist.length; numberr++) {
                    lsm.append({
                                   "id": proglist[numberr]["id"] ? proglist[numberr]["id"] : '',
                                   "first_name": proglist[numberr]["name"] ? proglist[numberr]["name"] : "",
                                   "familyname": proglist[numberr]["familyName"] ? proglist[numberr]["familyName"] : "",
                                   "contactnumber": proglist[numberr]["mobile"] ? proglist[numberr]["mobile"] : "",
                                   "email": proglist[numberr]["email"] ? proglist[numberr]["email"] : "",
                                   "gender": proglist[numberr]["gender"] ? proglist[numberr]["gender"] : "",
                                   "weight": proglist[numberr]["weight"] ? proglist[numberr]["weight"] : 0,
                                   "height": proglist[numberr]["height"] ? proglist[numberr]["height"] : 0.0,
                                   "birthday": proglist[numberr]["birthday"] ? proglist[numberr]["birthday"] : 0,
                                   "ethnicity": proglist[numberr]["ethnicity"] ? proglist[numberr]["ethnicity"] : ""
                               })
                }
            }

            border.color: "transparent"

            Column {
                id: column
                width: parent.width
                height: parent.height * 0.97
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 4

                Rectangle {

                    color: Style.primary
                    width: parent.width
                    height: parent.height * 0.12

                    Item {
                        id: itemq
                        anchors.fill: parent
                        Row {
                            anchors.left: parent.left
                            anchors.bottom: parent.bottom
                            anchors.bottomMargin: 7
                            spacing: 20
                            width: parent.width * 0.4
                            height: parent.height * 0.4
                            Item {
                                id: item25
                                width: parent.width * 0.5
                                height: parent.height
                                anchors.verticalCenter: parent.verticalCenter

                                Text {
                                    id: rr1text5
                                    text: qsTr("Profiles")
                                    height: parent.height
                                    width: parent.width
                                    color: Style.tertiary
                                    font.pixelSize: 20
                                    verticalAlignment: Text.AlignVCenter
                                    fontSizeMode: Text.Fit
                                    minimumPixelSize: 2
                                }
                            }
                            Item {
                                id: useritem
                                width: parent.width * 0.7
                                height: parent.height
                                anchors.verticalCenter: parent.verticalCenter

                                TextField {
                                    id: username_field
                                    anchors.fill: parent
                                    placeholderText: qsTr("Search by name")
                                    font.pixelSize: 15
                                    color: Style.tertiary
                                    horizontalAlignment: Text.AlignLeft
                                    rightInset: 10
                                    leftPadding: 33
                                    layer.smooth: true
                                    layer.wrapMode: ShaderEffectSource.ClampToEdge
                                    antialiasing: true
                                    bottomPadding: 0
                                    topPadding: 0
                                    renderType: Text.QtRendering
                                    font.weight: Font.Light
                                    font.italic: false
                                    baselineOffset: 33
                                    onTextChanged: {
                                        if (username_field.text.length > 0) {
                                            applyFilter(username_field.text)
                                        } else {
                                            reload()
                                        }
                                    }

                                    Item {
                                        id: search_item_icon
                                        anchors.leftMargin: 5
                                        anchors.left: parent.left
                                        width: parent.width * 0.07
                                        height: parent.height * 0.55
                                        anchors.bottom: parent.bottom
                                        anchors.verticalCenter: parent.verticalCenter

                                        Text {
                                            text: "\uf78b"
                                            font.pixelSize: 70
                                            font.family: Style.fonticon.name
                                            height: parent.height
                                            color: "#3393d3"
                                            anchors.fill: parent
                                            horizontalAlignment: Text.AlignRight
                                            verticalAlignment: Text.AlignBottom
                                            fontSizeMode: Text.Fit
                                            minimumPixelSize: 2
                                        }
                                    }
                                    background: Rectangle {
                                        color: "transparent"
                                        border.color: "#dbc282"
                                        border.width: 0.5
                                        radius: 10
                                        anchors.fill: parent
                                    }
                                }
                            }

                            Profilebutton {
                                id: profile_button
                                width: parent.width * 0.25
                                height: parent.height
                                buttonText: qsTr("  New Profile")
                                iconText: "\ue8fa"
                                space_item: 0

                                onClicked: {
                                    adp.ethnicity_add.currentIndex = 0
                                    adp.weight_add.text = ""
                                    adp.feet_add.text = ""
                                    adp.height_add.text = ""
                                    adp.gender_add.currentIndex = 0
                                    adp.contact_add.text = ""
                                    adp.email_add.text = ""
                                    adp.lastname_add.text = ""
                                    adp.firstname_add.text = ""
                                    pop.open()
                                }
                            }
                            Profilebutton {
                                id: delete_button
                                width: parent.width * 0.35
                                height: parent.height
                                buttonText: qsTr("Delete")
                                iconText: "\ue0cf"
                                space_item: 0
                                visible: true
                            }
                        }

                        Item {
                            id: item1rr
                            width: parent.width * 0.11
                            height: parent.height

                            anchors.right: parent.right
                            ButtonGroup {
                                buttons: row2.children
                            }

                            Row {
                                id: row2
                                width: parent.width * 0.80
                                height: parent.height

                                spacing: 2

                                Button {
                                    id: sortvertical
                                    width: parent.width * 0.5
                                    height: parent.height * 0.5
                                    anchors.bottom: parent.bottom
                                    checked: true
                                    checkable: true
                                    autoExclusive: true

                                    contentItem: Text {
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
                                        stack.push(listcomp)
                                        delete_button.visible = true
                                    }
                                }
                                Button {
                                    id: sortgrid
                                    width: parent.width * 0.50
                                    height: parent.height * 0.5
                                    anchors.bottom: parent.bottom
                                    checkable: true
                                    autoExclusive: true

                                    contentItem: Text {
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
                                        stack.push(gridcomp)
                                        delete_button.visible = false
                                    }
                                }
                            }
                        }
                    }
                }
                Item {
                    width: parent.width
                    height: parent.height * 0.02

                    Rectangle {
                        color: "#4a4a4c"
                        width: parent.width * 0.98
                        height: parent.height * 0.1
                    }
                }
                Item {
                    id: views
                    height: parent.height * 0.79
                    width: parent.width

                    StackView {
                        id: stack
                        initialItem: listcomp
                        anchors.fill: parent
                        clip: true
                    }
                    Component {
                        id: listcomp
                        Rectangle {
                            id: listrect
                            color: "transparent"
                            visible: true
                            height: parent.height
                            width: parent.width

                            Column {
                                width: parent.width
                                height: parent.height

                                Item {
                                    width: parent.width
                                    height: parent.height * 0.07
                                    Row {
                                        width: parent.width * 0.98
                                        height: parent.height
                                        spacing: 0.05
                                        Item {
                                            width: parent.width * 0.2
                                            height: parent.height
                                            Text {
                                                id: firstname
                                                text: qsTr("First Name")
                                                height: parent.height
                                                width: parent.width
                                                color: Style.tertiary
                                                font.pixelSize: 10
                                                horizontalAlignment: Text.AlignHCenter
                                                verticalAlignment: Text.AlignVCenter
                                                fontSizeMode: Text.Fit
                                                minimumPixelSize: 2
                                            }
                                            Button {
                                                id: firstname_sort
                                                width: parent.width * 0.10
                                                height: parent.height
                                                anchors.right: parent.right
                                                checkable: true
                                                checked: true

                                                Item {

                                                    height: parent.height
                                                    width: parent.width

                                                    Text {
                                                        id: first_text_line

                                                        text: "\uedc0"
                                                        font.family: Style.fonticon.name
                                                        anchors.fill: parent
                                                        color: Style.tertiary
                                                        font.pixelSize: 17
                                                        verticalAlignment: Text.AlignVCenter
                                                        fontSizeMode: Text.Fit
                                                        minimumPixelSize: 2
                                                    }
                                                }

                                                onCheckedChanged: {
                                                    if (firstname_sort.checked == true) {
                                                        first_text_line.text = "\uedc0"
                                                        var sortasc = profile.sort_profile(
                                                                    "name",
                                                                    "asc")
                                                        lsm.clear()
                                                        for (var numberr = 0; numberr
                                                             < sortasc.length; numberr++) {

                                                            lsm.append({
                                                                           "id": sortasc[numberr]["id"] ? sortasc[numberr]["id"] : '',
                                                                           "first_name": sortasc[numberr]["name"] ? sortasc[numberr]["name"] : "",
                                                                           "familyname": sortasc[numberr]["familyName"] ? sortasc[numberr]["familyName"] : "",
                                                                           "contactnumber": sortasc[numberr]["mobile"] ? sortasc[numberr]["mobile"] : "",
                                                                           "email": sortasc[numberr]["email"] ? sortasc[numberr]["email"] : "",
                                                                           "gender": sortasc[numberr]["gender"] ? sortasc[numberr]["gender"] : "",
                                                                           "weight": sortasc[numberr]["weight"] ? sortasc[numberr]["weight"] : 0,
                                                                           "height": sortasc[numberr]["height"] ? sortasc[numberr]["height"] : 0.0,
                                                                           "birthday": sortasc[numberr]["birthday"] ? sortasc[numberr]["birthday"] : 0,
                                                                           "ethnicity": sortasc[numberr]["ethnicity"] ? sortasc[numberr]["ethnicity"] : ""
                                                                       })
                                                        }
                                                    } else {
                                                        first_text_line.text = "\uedc1"
                                                        var sortdesc = profile.sort_profile(
                                                                    "name",
                                                                    "desc")
                                                        lsm.clear()
                                                        for (var numberr = 0; numberr
                                                             < sortdesc.length; numberr++) {

                                                            lsm.append({
                                                                           "id": sortdesc[numberr]["id"] ? sortdesc[numberr]["id"] : '',
                                                                           "first_name": sortdesc[numberr]["name"] ? sortdesc[numberr]["name"] : "",
                                                                           "familyname": sortdesc[numberr]["familyName"] ? sortdesc[numberr]["familyName"] : "",
                                                                           "contactnumber": sortdesc[numberr]["mobile"] ? sortdesc[numberr]["mobile"] : "",
                                                                           "email": sortdesc[numberr]["email"] ? sortdesc[numberr]["email"] : "",
                                                                           "gender": sortdesc[numberr]["gender"] ? sortdesc[numberr]["gender"] : "",
                                                                           "weight": sortdesc[numberr]["weight"] ? sortdesc[numberr]["weight"] : 0,
                                                                           "height": sortdesc[numberr]["height"] ? sortdesc[numberr]["height"] : 0.0,
                                                                           "birthday": sortdesc[numberr]["birthday"] ? sortdesc[numberr]["birthday"] : 0,
                                                                           "ethnicity": sortdesc[numberr]["ethnicity"] ? sortdesc[numberr]["ethnicity"] : ""
                                                                       })
                                                        }
                                                    }
                                                }

                                                background: Rectangle {
                                                    anchors.fill: parent
                                                    color: "transparent"
                                                }
                                            }
                                        }
                                        Rectangle {
                                            width: parent.width * 0.00098
                                            color: "#4a4a4c"
                                            border.width: 2
                                            border.color: "#4a4a4c"
                                            height: parent.height
                                        }
                                        Item {
                                            width: parent.width * 0.15
                                            height: parent.height
                                            Text {
                                                id: firstname2
                                                text: qsTr("Family Name")
                                                height: parent.height
                                                width: parent.width
                                                leftPadding: 5
                                                color: Style.tertiary
                                                font.pixelSize: 10
                                                horizontalAlignment: Text.AlignLeft
                                                verticalAlignment: Text.AlignVCenter
                                                fontSizeMode: Text.Fit
                                                minimumPixelSize: 2
                                            }
                                            Button {
                                                id: familyname_sort
                                                width: parent.width * 0.15
                                                height: parent.height
                                                anchors.right: parent.right
                                                checkable: true
                                                checked: true

                                                Item {

                                                    height: parent.height
                                                    width: parent.width

                                                    Text {
                                                        id: fmly_text

                                                        text: "\uedc0"
                                                        font.family: Style.fonticon.name
                                                        anchors.fill: parent
                                                        color: Style.tertiary
                                                        font.pixelSize: 17
                                                        verticalAlignment: Text.AlignVCenter
                                                        fontSizeMode: Text.Fit
                                                        minimumPixelSize: 2
                                                    }
                                                }

                                                onCheckedChanged: {
                                                    if (familyname_sort.checked == true) {
                                                        fmly_text.text = "\uedc0"
                                                        var sort_asc = profile.sort_profile(
                                                                    "familyName",
                                                                    "asc")
                                                        lsm.clear()
                                                        for (var numberr = 0; numberr
                                                             < sort_asc.length; numberr++) {

                                                            lsm.append({
                                                                           "id": sort_asc[numberr]["id"] ? sort_asc[numberr]["id"] : '',
                                                                           "first_name": sort_asc[numberr]["name"] ? sort_asc[numberr]["name"] : "",
                                                                           "familyname": sort_asc[numberr]["familyName"] ? sort_asc[numberr]["familyName"] : "",
                                                                           "contactnumber": sort_asc[numberr]["mobile"] ? sort_asc[numberr]["mobile"] : "",
                                                                           "email": sort_asc[numberr]["email"] ? sort_asc[numberr]["email"] : "",
                                                                           "gender": sort_asc[numberr]["gender"] ? sort_asc[numberr]["gender"] : "",
                                                                           "weight": sort_asc[numberr]["weight"] ? sort_asc[numberr]["weight"] : 0,
                                                                           "height": sort_asc[numberr]["height"] ? sort_asc[numberr]["height"] : 0.0,
                                                                           "birthday": sort_asc[numberr]["birthday"] ? sort_asc[numberr]["birthday"] : 0,
                                                                           "ethnicity": sort_asc[numberr]["ethnicity"] ? sort_asc[numberr]["ethnicity"] : ""
                                                                       })
                                                        }
                                                    } else {
                                                        fmly_text.text = "\uedc1"
                                                        var sort_desc = profile.sort_profile(
                                                                    "familyName",
                                                                    "desc")
                                                        lsm.clear()
                                                        for (var numberr = 0; numberr
                                                             < sort_desc.length; numberr++) {

                                                            lsm.append({
                                                                           "id": sort_desc[numberr]["id"] ? sort_desc[numberr]["id"] : '',
                                                                           "first_name": sort_desc[numberr]["name"] ? sort_desc[numberr]["name"] : "",
                                                                           "familyname": sort_desc[numberr]["familyName"] ? sort_desc[numberr]["familyName"] : "",
                                                                           "contactnumber": sort_desc[numberr]["mobile"] ? sort_desc[numberr]["mobile"] : "",
                                                                           "email": sort_desc[numberr]["email"] ? sort_desc[numberr]["email"] : "",
                                                                           "gender": sort_desc[numberr]["gender"] ? sort_desc[numberr]["gender"] : "",
                                                                           "weight": sort_desc[numberr]["weight"] ? sort_desc[numberr]["weight"] : 0,
                                                                           "height": sort_desc[numberr]["height"] ? sort_desc[numberr]["height"] : 0.0,
                                                                           "birthday": sort_desc[numberr]["birthday"] ? sort_desc[numberr]["birthday"] : 0,
                                                                           "ethnicity": sort_desc[numberr]["ethnicity"] ? sort_desc[numberr]["ethnicity"] : ""
                                                                       })
                                                        }
                                                    }
                                                }

                                                background: Rectangle {
                                                    anchors.fill: parent
                                                    color: "transparent"
                                                }
                                            }
                                        }
                                        Rectangle {
                                            width: parent.width * 0.001
                                            color: "#4a4a4c"
                                            border.width: 2
                                            border.color: "#4a4a4c"
                                            height: parent.height
                                        }
                                        Item {
                                            width: parent.width * 0.13
                                            height: parent.height
                                            Text {
                                                id: firstname3
                                                text: qsTr("Gender")
                                                height: parent.height
                                                width: parent.width
                                                leftPadding: 5
                                                color: Style.tertiary
                                                font.pixelSize: 10
                                                horizontalAlignment: Text.AlignLeft
                                                verticalAlignment: Text.AlignVCenter
                                                fontSizeMode: Text.Fit
                                                minimumPixelSize: 2
                                            }
                                            Button {
                                                id: gender_sort
                                                width: parent.width * 0.15
                                                height: parent.height
                                                anchors.right: parent.right
                                                checkable: true
                                                checked: true
                                                Item {

                                                    height: parent.height
                                                    width: parent.width

                                                    Text {
                                                        id: gender_text_button

                                                        text: "\uedc0"
                                                        font.family: Style.fonticon.name
                                                        anchors.fill: parent
                                                        color: Style.tertiary
                                                        font.pixelSize: 17
                                                        verticalAlignment: Text.AlignVCenter
                                                        fontSizeMode: Text.Fit
                                                        minimumPixelSize: 2
                                                    }
                                                }

                                                onCheckedChanged: {
                                                    if (gender_sort.checked == true) {
                                                        gender_text_button.text = "\uedc0"
                                                        var sort_asc = profile.sort_profile(
                                                                    "gender",
                                                                    "asc")
                                                        lsm.clear()
                                                        for (var numberr = 0; numberr
                                                             < sort_asc.length; numberr++) {

                                                            lsm.append({
                                                                           "id": sort_asc[numberr]["id"] ? sort_asc[numberr]["id"] : '',
                                                                           "first_name": sort_asc[numberr]["name"] ? sort_asc[numberr]["name"] : "",
                                                                           "familyname": sort_asc[numberr]["familyName"] ? sort_asc[numberr]["familyName"] : "",
                                                                           "contactnumber": sort_asc[numberr]["mobile"] ? sort_asc[numberr]["mobile"] : "",
                                                                           "email": sort_asc[numberr]["email"] ? sort_asc[numberr]["email"] : "",
                                                                           "gender": sort_asc[numberr]["gender"] ? sort_asc[numberr]["gender"] : "",
                                                                           "weight": sort_asc[numberr]["weight"] ? sort_asc[numberr]["weight"] : 0,
                                                                           "height": sort_asc[numberr]["height"] ? sort_asc[numberr]["height"] : 0.0,
                                                                           "birthday": sort_asc[numberr]["birthday"] ? sort_asc[numberr]["birthday"] : 0,
                                                                           "ethnicity": sort_asc[numberr]["ethnicity"] ? sort_asc[numberr]["ethnicity"] : ""
                                                                       })
                                                        }
                                                    } else {
                                                        gender_text_button.text = "\uedc1"
                                                        var sort_desc = profile.sort_profile(
                                                                    "gender",
                                                                    "desc")
                                                        lsm.clear()
                                                        for (var numberr = 0; numberr
                                                             < sort_desc.length; numberr++) {

                                                            lsm.append({
                                                                           "id": sort_desc[numberr]["id"] ? sort_desc[numberr]["id"] : '',
                                                                           "first_name": sort_desc[numberr]["name"] ? sort_desc[numberr]["name"] : "",
                                                                           "familyname": sort_desc[numberr]["familyName"] ? sort_desc[numberr]["familyName"] : "",
                                                                           "contactnumber": sort_desc[numberr]["mobile"] ? sort_desc[numberr]["mobile"] : "",
                                                                           "email": sort_desc[numberr]["email"] ? sort_desc[numberr]["email"] : "",
                                                                           "gender": sort_desc[numberr]["gender"] ? sort_desc[numberr]["gender"] : "",
                                                                           "weight": sort_desc[numberr]["weight"] ? sort_desc[numberr]["weight"] : 0,
                                                                           "height": sort_desc[numberr]["height"] ? sort_desc[numberr]["height"] : 0.0,
                                                                           "birthday": sort_desc[numberr]["birthday"] ? sort_desc[numberr]["birthday"] : 0,
                                                                           "ethnicity": sort_desc[numberr]["ethnicity"] ? sort_desc[numberr]["ethnicity"] : ""
                                                                       })
                                                        }
                                                    }
                                                }

                                                background: Rectangle {
                                                    anchors.fill: parent
                                                    color: "transparent"
                                                }
                                            }
                                        }
                                        Rectangle {
                                            width: parent.width * 0.001
                                            color: "#4a4a4c"
                                            border.width: 2
                                            border.color: "#4a4a4c"
                                            height: parent.height
                                        }
                                        Item {
                                            width: parent.width * 0.15
                                            height: parent.height
                                            Text {
                                                text: qsTr("Email")
                                                height: parent.height
                                                width: parent.width
                                                color: Style.tertiary
                                                font.pixelSize: 10
                                                leftPadding: 10
                                                horizontalAlignment: Text.AlignLeft
                                                verticalAlignment: Text.AlignVCenter
                                                fontSizeMode: Text.Fit
                                                minimumPixelSize: 2
                                            }
                                            Button {
                                                id: email_sort
                                                width: parent.width * 0.15
                                                height: parent.height
                                                anchors.right: parent.right
                                                checkable: true
                                                checked: true

                                                Item {

                                                    height: parent.height
                                                    width: parent.width

                                                    Text {
                                                        id: email_Text
                                                        text: "\uedc0"
                                                        font.family: Style.fonticon.name
                                                        anchors.fill: parent
                                                        color: Style.tertiary
                                                        font.pixelSize: 17
                                                        verticalAlignment: Text.AlignVCenter
                                                        fontSizeMode: Text.Fit
                                                        minimumPixelSize: 2
                                                    }
                                                }

                                                onCheckedChanged: {
                                                    if (email_sort.checked == true) {
                                                        email_Text.text = "\uedc0"
                                                        var sort_asc = profile.sort_profile(
                                                                    "email",
                                                                    "asc")
                                                        lsm.clear()
                                                        for (var numberr = 0; numberr
                                                             < sort_asc.length; numberr++) {

                                                            lsm.append({
                                                                           "id": sort_asc[numberr]["id"] ? sort_asc[numberr]["id"] : '',
                                                                           "first_name": sort_asc[numberr]["name"] ? sort_asc[numberr]["name"] : "",
                                                                           "familyname": sort_asc[numberr]["familyName"] ? sort_asc[numberr]["familyName"] : "",
                                                                           "contactnumber": sort_asc[numberr]["mobile"] ? sort_asc[numberr]["mobile"] : "",
                                                                           "email": sort_asc[numberr]["email"] ? sort_asc[numberr]["email"] : "",
                                                                           "gender": sort_asc[numberr]["gender"] ? sort_asc[numberr]["gender"] : "",
                                                                           "weight": sort_asc[numberr]["weight"] ? sort_asc[numberr]["weight"] : 0,
                                                                           "height": sort_asc[numberr]["height"] ? sort_asc[numberr]["height"] : 0.0,
                                                                           "birthday": sort_asc[numberr]["birthday"] ? sort_asc[numberr]["birthday"] : 0,
                                                                           "ethnicity": sort_asc[numberr]["ethnicity"] ? sort_asc[numberr]["ethnicity"] : ""
                                                                       })
                                                        }
                                                    } else {
                                                        email_Text.text = "\uedc1"
                                                        var sort_desc = profile.sort_profile(
                                                                    "email",
                                                                    "desc")
                                                        lsm.clear()
                                                        for (var numberr = 0; numberr
                                                             < sort_desc.length; numberr++) {

                                                            lsm.append({
                                                                           "id": sort_desc[numberr]["id"] ? sort_desc[numberr]["id"] : '',
                                                                           "first_name": sort_desc[numberr]["name"] ? sort_desc[numberr]["name"] : "",
                                                                           "familyname": sort_desc[numberr]["familyName"] ? sort_desc[numberr]["familyName"] : "",
                                                                           "contactnumber": sort_desc[numberr]["mobile"] ? sort_desc[numberr]["mobile"] : "",
                                                                           "email": sort_desc[numberr]["email"] ? sort_desc[numberr]["email"] : "",
                                                                           "gender": sort_desc[numberr]["gender"] ? sort_desc[numberr]["gender"] : "",
                                                                           "weight": sort_desc[numberr]["weight"] ? sort_desc[numberr]["weight"] : 0,
                                                                           "height": sort_desc[numberr]["height"] ? sort_desc[numberr]["height"] : 0.0,
                                                                           "birthday": sort_desc[numberr]["birthday"] ? sort_desc[numberr]["birthday"] : 0,
                                                                           "ethnicity": sort_desc[numberr]["ethnicity"] ? sort_desc[numberr]["ethnicity"] : ""
                                                                       })
                                                        }
                                                    }
                                                }

                                                background: Rectangle {
                                                    anchors.fill: parent
                                                    color: "transparent"
                                                }
                                            }
                                        }
                                        Rectangle {
                                            width: parent.width * 0.00098
                                            color: "#4a4a4c"
                                            border.width: 2
                                            border.color: "#4a4a4c"
                                            height: parent.height
                                        }
                                        Item {
                                            width: parent.width * 0.15
                                            height: parent.height
                                            Text {
                                                id: firstname5
                                                text: qsTr("Contact Number")
                                                height: parent.height
                                                width: parent.width
                                                color: Style.tertiary
                                                font.pixelSize: 10
                                                leftPadding: 5
                                                horizontalAlignment: Text.AlignLeft
                                                verticalAlignment: Text.AlignVCenter
                                                fontSizeMode: Text.Fit
                                                minimumPixelSize: 2
                                            }
                                            Button {
                                                id: contact_sort
                                                width: parent.width * 0.15
                                                height: parent.height
                                                anchors.right: parent.right
                                                checkable: true
                                                checked: true
                                                Item {

                                                    height: parent.height
                                                    width: parent.width

                                                    Text {
                                                        id: contact_text

                                                        text: "\uedc0"
                                                        font.family: Style.fonticon.name
                                                        anchors.fill: parent
                                                        color: Style.tertiary
                                                        font.pixelSize: 17
                                                        verticalAlignment: Text.AlignVCenter
                                                        fontSizeMode: Text.Fit
                                                        minimumPixelSize: 2
                                                    }
                                                }

                                                onCheckedChanged: {
                                                    if (contact_sort.checked == true) {
                                                        contact_text.text = "\uedc0"
                                                        var sort_asc = profile.sort_profile(
                                                                    "mobile",
                                                                    "asc")
                                                        lsm.clear()
                                                        for (var numberr = 0; numberr
                                                             < sort_asc.length; numberr++) {

                                                            lsm.append({
                                                                           "id": sort_asc[numberr]["id"] ? sort_asc[numberr]["id"] : '',
                                                                           "first_name": sort_asc[numberr]["name"] ? sort_asc[numberr]["name"] : "",
                                                                           "familyname": sort_asc[numberr]["familyName"] ? sort_asc[numberr]["familyName"] : "",
                                                                           "contactnumber": sort_asc[numberr]["mobile"] ? sort_asc[numberr]["mobile"] : "",
                                                                           "email": sort_asc[numberr]["email"] ? sort_asc[numberr]["email"] : "",
                                                                           "gender": sort_asc[numberr]["gender"] ? sort_asc[numberr]["gender"] : "",
                                                                           "weight": sort_asc[numberr]["weight"] ? sort_asc[numberr]["weight"] : 0,
                                                                           "height": sort_asc[numberr]["height"] ? sort_asc[numberr]["height"] : 0.0,
                                                                           "birthday": sort_asc[numberr]["birthday"] ? sort_asc[numberr]["birthday"] : 0,
                                                                           "ethnicity": sort_asc[numberr]["ethnicity"] ? sort_asc[numberr]["ethnicity"] : ""
                                                                       })
                                                        }
                                                    } else {
                                                        contact_text.text = "\uedc1"
                                                        var sort_desc = profile.sort_profile(
                                                                    "mobile",
                                                                    "desc")
                                                        lsm.clear()
                                                        for (var numberr = 0; numberr
                                                             < sort_desc.length; numberr++) {

                                                            lsm.append({
                                                                           "id": sort_desc[numberr]["id"] ? sort_desc[numberr]["id"] : '',
                                                                           "first_name": sort_desc[numberr]["name"] ? sort_desc[numberr]["name"] : "",
                                                                           "familyname": sort_desc[numberr]["familyName"] ? sort_desc[numberr]["familyName"] : "",
                                                                           "contactnumber": sort_desc[numberr]["mobile"] ? sort_desc[numberr]["mobile"] : "",
                                                                           "email": sort_desc[numberr]["email"] ? sort_desc[numberr]["email"] : "",
                                                                           "gender": sort_desc[numberr]["gender"] ? sort_desc[numberr]["gender"] : "",
                                                                           "weight": sort_desc[numberr]["weight"] ? sort_desc[numberr]["weight"] : 0,
                                                                           "height": sort_desc[numberr]["height"] ? sort_desc[numberr]["height"] : 0.0,
                                                                           "birthday": sort_desc[numberr]["birthday"] ? sort_desc[numberr]["birthday"] : 0,
                                                                           "ethnicity": sort_desc[numberr]["ethnicity"] ? sort_desc[numberr]["ethnicity"] : ""
                                                                       })
                                                        }
                                                    }
                                                }

                                                background: Rectangle {
                                                    anchors.fill: parent
                                                    color: "transparent"
                                                }
                                            }
                                        }
                                    }
                                }
                                Rectangle {
                                    width: parent.width * 0.98
                                    height: parent.width * 0.001
                                    color: Style.profiletextcol
                                }
                                Rectangle {
                                    id: rectangle_scroll
                                    color: "transparent"
                                    width: parent.width
                                    height: parent.height
                                    ScrollView {
                                        id: framelist
                                        clip: true
                                        anchors.fill: parent
                                        ButtonGroup {
                                            id: childGroup
                                            exclusive: true
                                        }
                                        ScrollBar.vertical: ScrollBar {
                                            id: sblist
                                            parent: framelist
                                            x: framelist.mirrored ? 0 : framelist.width - width
                                            y: framelist.topPadding
                                            height: framelist.availableHeight
                                            antialiasing: true
                                            wheelEnabled: true
                                            active: framelist.ScrollBar.horizontal.active
                                            contentItem: Rectangle {
                                                // id: scr_rec
                                                width: 14
                                                opacity: 0.312
                                                implicitWidth: 6
                                                implicitHeight: 100
                                                radius: width / 2
                                                color: sblist.pressed ? "orange" : "#686c95"
                                            }
                                        }
                                        ListView {
                                            id: cploader

                                            width: parent.width * 0.98
                                            height: parent.height
                                            anchors.top: parent.top
                                            anchors.topMargin: 5

                                            add: Transition {
                                                NumberAnimation {
                                                    properties: "x, y"
                                                    from: 100
                                                    duration: 300
                                                }
                                            }

                                            delegate: Item {
                                                id: itemy

                                                width: cploader.width
                                                height: cploader.height * 0.1

                                                MouseArea {
                                                    anchors.fill: parent
                                                    onClicked: {
                                                        var weight = lsm.get(
                                                                    index).weight
                                                        var height = lsm.get(
                                                                    index).height
                                                        var contactnumber = lsm.get(
                                                                    index).contactnumber
                                                        var email = lsm.get(
                                                                    index).email
                                                        var rect_col_list = stringToColour(
                                                                    (first_name) + (familyname))
                                                        var vp_name = lsm.get(
                                                                    index).first_name
                                                                + " " + lsm.get(
                                                                    index).familyname
                                                                + "-" + lsm.get(
                                                                    index).id
                                                        var logo_name = (lsm.get(index).first_name == "" ? "" : lsm.get(index).first_name[0]) + " " + (lsm.get(index).familyname == "" ? "" : lsm.get(index).familyname[0])
                                                        stackView_profile.push(
                                                                    "../pages/Viewprofile.qml",
                                                                    {
                                                                        "rectcol": rect_col_list,
                                                                        "view_namecardtext": vp_name,
                                                                        "view_card_text": logo_name,
                                                                        "view_emailcardtext": email,
                                                                        "view_card_contact": contactnumber,
                                                                        "view_card_gender": gender,
                                                                        "view_card_height": height,
                                                                        "view_card_weight": weight
                                                                    })
                                                    }
                                                }
                                                Column {
                                                    id: content

                                                    width: parent.width
                                                    height: parent.height
                                                    Column {
                                                        width: parent.width
                                                        height: parent.height
                                                        Item {
                                                            width: parent.width
                                                            height: parent.height * 0.3
                                                        }

                                                        Item {
                                                            width: parent.width
                                                            height: parent.height * 0.70
                                                            Row {
                                                                width: parent.width
                                                                height: parent.height
                                                                spacing: 0.05
                                                                Row {
                                                                    id: f1
                                                                    width: parent.width * 0.2
                                                                    height: parent.height

                                                                    spacing: 2
                                                                    CheckBox {
                                                                        id: checkclick
                                                                        ButtonGroup.group: childGroup
                                                                        tristate: true
                                                                        checkable: true

                                                                        indicator: Rectangle {

                                                                            width: parent.width * 0.75
                                                                            height: parent.height * 0.55
                                                                            color: "transparent"
                                                                            radius: 3
                                                                            border.color: Style.tertiary
                                                                            anchors.verticalCenter: parent.verticalCenter
                                                                            anchors.horizontalCenter: parent.horizontal
                                                                            Text {
                                                                                width: parent.width * 0.5
                                                                                height: parent.height
                                                                                text: "✔"
                                                                                anchors.verticalCenter: parent.verticalCenter
                                                                                horizontalAlignment: Text.AlignHCenter
                                                                                verticalAlignment: Text.AlignVCenter
                                                                                anchors.horizontalCenter: parent.horizontalCenter
                                                                                font.pointSize: 10
                                                                                color: Style.tertiary
                                                                                visible: checkclick.checked
                                                                            }
                                                                        }
                                                                        leftPadding: 10
                                                                        width: parent.width * 0.1
                                                                        height: parent.height
                                                                        anchors.bottom: parent.bottom
                                                                        anchors.bottomMargin: 2

                                                                        Connections {
                                                                            target: delete_button
                                                                            function onClicked() {

                                                                                if (checkclick.checked) {
                                                                                    popdelete.open()
                                                                                    dp.deleteID = lsm.get(index).first_name
                                                                                    dp.prg_id_dp = lsm.get(index).id
                                                                                    dp.deleteindex = index
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    Button {
                                                                        width: parent.width * 0.15
                                                                        height: parent.height

                                                                        background: Rectangle {
                                                                            anchors.fill: parent
                                                                            color: "transparent"
                                                                        }
                                                                        Text {
                                                                            id: editicon

                                                                            text: "\u0102"
                                                                            font.pixelSize: 25
                                                                            font.family: Style.fonticon.name
                                                                            width: parent.width
                                                                            height: parent.height
                                                                            color: Style.tertiary
                                                                            anchors.verticalCenter: parent.verticalCenter
                                                                            horizontalAlignment: Text.AlignHCenter
                                                                            verticalAlignment: Text.AlignVCenter

                                                                            fontSizeMode: Text.Fit
                                                                        }
                                                                        onClicked: {
                                                                            edp.ethnicity_add.econtent = lsm.get(index).ethnicity
                                                                            edp.gender_add.gcontent = lsm.get(index).gender

                                                                            edp.weight_add.text = lsm.get(index).weight
                                                                            var strheight = lsm.get(index).height.toString()
                                                                            var htfeet = strheight.split('.')

                                                                            edp.height_add.text = htfeet[0]
                                                                            edp.feet_add.text = htfeet[1] ? htfeet[1] : 0
                                                                            edp.date_str = lsm.get(index).birthday

                                                                            edp.contact_add.text = lsm.get(index).contactnumber
                                                                            edp.email_add.text = lsm.get(index).email
                                                                            edp.lastname_add.text = lsm.get(index).familyname
                                                                            edp.firstname_add.text = lsm.get(index).first_name
                                                                            edp.titlename.text = lsm.get(index).first_name

                                                                            edp.profile_id = lsm.get(index).id
                                                                            edp.profile_id_num = index
                                                                            popedit.open()
                                                                        }
                                                                    }
                                                                    Rectangle {
                                                                        id: rectangle
                                                                        color: stringToColour((first_name) + (familyname))

                                                                        width: parent.width * 0.10
                                                                        height: parent.width * 0.10

                                                                        radius: 90
                                                                        anchors.verticalCenter: parent.verticalCenter

                                                                        Text {
                                                                            id: firsttext2
                                                                            text: qsTr((first_name == "" ? "" : first_name[0]) + (familyname == "" ? "" : familyname[0]))
                                                                            height: parent.height
                                                                            width: parent.width
                                                                            color: Style.circletext
                                                                            font.pixelSize: 10

                                                                            horizontalAlignment: Text.AlignHCenter
                                                                            verticalAlignment: Text.AlignVCenter
                                                                            anchors.horizontalCenter: parent.horizontalCenter
                                                                            fontSizeMode: Text.Fit
                                                                            minimumPixelSize: 2
                                                                        }
                                                                    }
                                                                    Rectangle {
                                                                        id: firstnamecontent
                                                                        color: "transparent"
                                                                        width: parent.width * 0.47
                                                                        height: parent.height
                                                                        Text {
                                                                            id: firstname_text
                                                                            text: qsTr(first_name)
                                                                            height: parent.height
                                                                            width: parent.width
                                                                            color: Style.tertiary
                                                                            leftPadding: 10
                                                                            font.pixelSize: 10
                                                                            verticalAlignment: Text.AlignVCenter
                                                                            fontSizeMode: Text.Fit
                                                                            minimumPixelSize: 2
                                                                        }
                                                                    }
                                                                }
                                                                Rectangle {
                                                                    width: parent.width * 0.001
                                                                    color: "#4a4a4c"
                                                                    border.width: 2
                                                                    border.color: "#4a4a4c"
                                                                    height: parent.height
                                                                }
                                                                Item {
                                                                    width: parent.width * 0.15
                                                                    height: parent.height
                                                                    Text {
                                                                        id: family_text
                                                                        text: qsTr(familyname)
                                                                        height: parent.height
                                                                        width: parent.width
                                                                        leftPadding: 5
                                                                        color: Style.tertiary
                                                                        font.pixelSize: 10
                                                                        horizontalAlignment: Text.AlignLeft
                                                                        verticalAlignment: Text.AlignVCenter
                                                                        fontSizeMode: Text.Fit
                                                                        minimumPixelSize: 2
                                                                    }
                                                                }
                                                                Rectangle {
                                                                    width: parent.width * 0.001
                                                                    color: "#4a4a4c"
                                                                    border.width: 2
                                                                    border.color: "#4a4a4c"
                                                                    height: parent.height
                                                                }
                                                                Item {
                                                                    width: parent.width * 0.13
                                                                    height: parent.height
                                                                    Text {
                                                                        id: gender_text
                                                                        text: qsTr(gender)
                                                                        height: parent.height
                                                                        width: parent.width
                                                                        leftPadding: 5
                                                                        color: Style.tertiary
                                                                        font.pixelSize: 10
                                                                        horizontalAlignment: Text.AlignLeft
                                                                        verticalAlignment: Text.AlignVCenter
                                                                        fontSizeMode: Text.Fit
                                                                        minimumPixelSize: 2
                                                                    }
                                                                }
                                                                Rectangle {
                                                                    width: parent.width * 0.001
                                                                    color: "#4a4a4c"
                                                                    border.width: 2
                                                                    border.color: "#4a4a4c"
                                                                    height: parent.height
                                                                }
                                                                Item {
                                                                    width: parent.width * 0.15
                                                                    height: parent.height
                                                                    Text {
                                                                        id: email_text
                                                                        text: qsTr(email)
                                                                        height: parent.height
                                                                        width: parent.width
                                                                        color: Style.tertiary
                                                                        font.pixelSize: 10
                                                                        leftPadding: 10
                                                                        horizontalAlignment: Text.AlignLeft
                                                                        verticalAlignment: Text.AlignVCenter
                                                                        fontSizeMode: Text.Fit
                                                                        minimumPixelSize: 2
                                                                    }
                                                                }
                                                                Rectangle {
                                                                    width: parent.width * 0.00098
                                                                    color: "#4a4a4c"
                                                                    border.width: 2
                                                                    border.color: "#4a4a4c"
                                                                    height: parent.height
                                                                }
                                                                Item {
                                                                    width: parent.width * 0.15
                                                                    height: parent.height
                                                                    Text {
                                                                        id: contact_text_duplicate_id
                                                                        text: qsTr(contactnumber)
                                                                        height: parent.height
                                                                        width: parent.width
                                                                        color: Style.tertiary
                                                                        font.pixelSize: 10
                                                                        leftPadding: 5
                                                                        horizontalAlignment: Text.AlignLeft
                                                                        verticalAlignment: Text.AlignVCenter
                                                                        fontSizeMode: Text.Fit
                                                                        minimumPixelSize: 2
                                                                    }
                                                                }
                                                            }
                                                        }
                                                        Rectangle {
                                                            width: parent.width
                                                            height: parent.width * 0.001
                                                            color: Style.profiletextcol
                                                        }
                                                        Item {
                                                            width: parent.width
                                                            height: parent.width * 0.004
                                                        }
                                                    }
                                                }
                                            }

                                            model: lsm
                                        }
                                    }
                                }
                            }
                        }
                    }

                    Component {
                        id: gridcomp
                        Rectangle {
                            id: gridrect
                            color: "transparent"
                            visible: true
                            height: parent.height
                            width: parent.width
                            Rectangle {
                                id: item1
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
                                            // id: scr_rec_grid
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
                                        cellWidth: parent.width / 4
                                        cellHeight: 150
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
                                            width: cploader.cellWidth
                                            height: cploader.cellHeight

                                            Rectangle {
                                                id: rectangle1
                                                width: parent.width * 0.90
                                                height: parent.height * 0.90
                                                color: Style.gridbox
                                                border.color: "grey"
                                                border.width: 1

                                                Rectangle {
                                                    id: item11
                                                    color: "transparent"
                                                    width: parent.width
                                                    height: parent.height * 0.7
                                                    MouseArea {
                                                        anchors.fill: parent
                                                        onClicked: {
                                                            var weight = lsm.get(
                                                                        index).weight
                                                            var height = lsm.get(
                                                                        index).height
                                                            var contactnumber = lsm.get(
                                                                        index).contactnumber
                                                            var email = lsm.get(
                                                                        index).email

                                                            var rect_col_grid = stringToColour(
                                                                        (first_name) + (familyname))

                                                            var vp_name = lsm.get(
                                                                        index).first_name + " " + lsm.get(index).familyname + "-" + lsm.get(
                                                                        index).id
                                                            var logo_name = (lsm.get(index).first_name == "" ? "" : lsm.get(index).first_name[0]) + " " + (lsm.get(index).familyname == "" ? "" : lsm.get(index).familyname[0])
                                                            stackView_profile.push(
                                                                        "../pages/Viewprofile.qml",
                                                                        {
                                                                            "rectcol": rect_col_grid,
                                                                            "view_namecardtext": vp_name,
                                                                            "view_card_text": logo_name,
                                                                            "view_emailcardtext": email,
                                                                            "view_card_contact": contactnumber,
                                                                            "view_card_gender": gender,
                                                                            "view_card_height": height,
                                                                            "view_card_weight": weight
                                                                        })
                                                        }
                                                    }

                                                    Grid {
                                                        id: grid
                                                        columns: 2

                                                        rowSpacing: 5
                                                        columnSpacing: 1
                                                        topPadding: 10
                                                        width: parent.width
                                                        height: parent.height

                                                        Item {
                                                            id: name
                                                            width: parent.width * 0.20
                                                            height: parent.height * 0.27
                                                            Rectangle {
                                                                id: rectangle_grid
                                                                width: parent.width * 0.5
                                                                height: parent.width * 0.5
                                                                color: stringToColour(
                                                                           (first_name) + (familyname))
                                                                radius: 90
                                                                anchors.verticalCenter: parent.verticalCenter
                                                                anchors.horizontalCenter: parent.horizontalCenter
                                                                Text {
                                                                    id: card_text
                                                                    text: qsTr((first_name == "" ? "" : first_name[0]) + (familyname == "" ? "" : familyname[0]))
                                                                    height: parent.height
                                                                    width: parent.width
                                                                    color: Style.circletext
                                                                    font.pixelSize: 10
                                                                    horizontalAlignment: Text.AlignHCenter
                                                                    verticalAlignment: Text.AlignVCenter
                                                                    anchors.horizontalCenter: parent.horizontalCenter
                                                                    fontSizeMode: Text.Fit
                                                                    minimumPixelSize: 2
                                                                }
                                                            }
                                                        }
                                                        Item {
                                                            id: name444
                                                            width: parent.width * 0.81
                                                            height: parent.height * 0.22
                                                            Text {
                                                                id: namecardtext
                                                                minimumPixelSize: 2
                                                                width: parent.width * 0.83
                                                                height: parent.height
                                                                horizontalAlignment: Text.AlignLeft
                                                                verticalAlignment: Text.AlignVCenter
                                                                fontSizeMode: Text.Fit
                                                                color: Style.tertiary
                                                                text: qsTr(
                                                                          first_name + " "
                                                                          + familyname)
                                                                font.pixelSize: Style.font15 ? Style.font15 : 15
                                                            }
                                                        }

                                                        Item {
                                                            id: email_item
                                                            width: parent.width * 0.20
                                                            height: parent.height * 0.25

                                                            Item {
                                                                height: parent.height * 0.95
                                                                width: parent.width
                                                                anchors.bottom: parent.bottom
                                                                Text {
                                                                    text: "\ue0ce"
                                                                    anchors.verticalCenter: parent.verticalCenter
                                                                    font.pixelSize: 70
                                                                    font.family: Style.fonticon.name
                                                                    height: parent.height
                                                                    width: parent.width
                                                                    color: "#3393d3"
                                                                    horizontalAlignment: Text.AlignHCenter
                                                                    verticalAlignment: Text.AlignBottom
                                                                    anchors.horizontalCenter: parent.horizontalCenter
                                                                    fontSizeMode: Text.Fit
                                                                    minimumPixelSize: 2
                                                                }
                                                            }
                                                        }
                                                        Item {
                                                            id: email_text_item
                                                            width: parent.width * 0.81
                                                            height: parent.height * 0.25
                                                            Text {
                                                                id: emailcardtext
                                                                color: Style.tertiary
                                                                text: qsTr(
                                                                          email)
                                                                width: parent.width * 0.90
                                                                height: parent.height
                                                                elide: Text.ElideMiddle
                                                                font.pixelSize: Style.font15 ? Style.font15 : 15
                                                                horizontalAlignment: Text.AlignLeft
                                                                verticalAlignment: Text.AlignVCenter
                                                                fontSizeMode: Text.Fit
                                                                minimumPixelSize: 2
                                                            }
                                                        }

                                                        Item {
                                                            id: call_item_icon
                                                            width: parent.width * 0.20
                                                            height: parent.height * 0.25

                                                            Text {
                                                                text: "\ue0cd"
                                                                anchors.verticalCenter: parent.verticalCenter
                                                                font.pixelSize: 75
                                                                font.family: Style.fonticon.name
                                                                height: parent.height
                                                                color: "#3393d3"
                                                                horizontalAlignment: Text.AlignHCenter
                                                                verticalAlignment: Text.AlignVCenter
                                                                anchors.horizontalCenter: parent.horizontalCenter
                                                                fontSizeMode: Text.Fit
                                                                minimumPixelSize: 2
                                                            }
                                                        }
                                                        Item {
                                                            id: name77
                                                            width: parent.width * 0.81
                                                            height: parent.height * 0.25
                                                            Text {
                                                                id: contactcardtext
                                                                minimumPixelSize: 2
                                                                width: parent.width * 0.90
                                                                height: parent.height
                                                                horizontalAlignment: Text.AlignLeft
                                                                verticalAlignment: Text.AlignVCenter
                                                                fontSizeMode: Text.Fit
                                                                color: Style.tertiary
                                                                text: qsTr(contactnumber)
                                                                font.pixelSize: Style.font10 ? Style.font10 : 10
                                                            }
                                                        }
                                                    }
                                                }

                                                Rectangle {
                                                    id: item2
                                                    color: Style.gridbox
                                                    border.color: "grey"
                                                    border.width: 1
                                                    width: parent.width
                                                    height: parent.height * 0.3
                                                    anchors.bottom: parent.bottom
                                                    Row {
                                                        anchors.verticalCenter: parent.verticalCenter
                                                        anchors.left: parent.left
                                                        anchors.leftMargin: 15
                                                        spacing: 5
                                                        width: parent.width * 0.9
                                                        height: parent.height * 0.5
                                                        Profilebutton {
                                                            id: profile_card_button
                                                            width: parent.width * 0.4
                                                            height: parent.height
                                                            buttonText: qsTr("Edit")
                                                            iconText: "\u0102"
                                                            onClicked: {
                                                                var prg_id = lsm.get(
                                                                            index).id

                                                                edp.weight_add.text = lsm.get(
                                                                            index).weight
                                                                var strheight = lsm.get(
                                                                            index).height.toString()
                                                                var htfeet = strheight.split(
                                                                            '.')

                                                                edp.height_add.text = htfeet[0]
                                                                edp.feet_add.text
                                                                        = htfeet[1] ? htfeet[1] : 0
                                                                edp.date_str = lsm.get(
                                                                            index).birthday
                                                                edp.contact_add.text = lsm.get(
                                                                            index).contactnumber
                                                                edp.email_add.text = lsm.get(
                                                                            index).email
                                                                edp.lastname_add.text = lsm.get(
                                                                            index).familyname
                                                                edp.firstname_add.text = lsm.get(
                                                                            index).first_name
                                                                edp.profile_id = lsm.get(
                                                                            index).id

                                                                edp.titlename.text = lsm.get(
                                                                            index).first_name
                                                                edp.profile_id_num = index
                                                                popedit.open()
                                                            }
                                                        }
                                                        Profilebutton {
                                                            id: delete_card_button
                                                            width: parent.width * 0.4
                                                            height: parent.height
                                                            buttonText: qsTr("Delete")
                                                            iconText: "\ue0cf"
                                                            space_item: 0.150

                                                            Connections {
                                                                target: delete_card_button
                                                                function onClicked() {
                                                                    popdelete.open()
                                                                    dp.deleteID = lsm.get(
                                                                                index).first_name
                                                                    dp.prg_id_dp = lsm.get(index).id
                                                                    dp.deleteindex = index
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }

                                        model: lsm
                                    }
                                }
                            }
                        }
                    }
                }
            }
            Component.onCompleted: {

                var lss = profile.get_allprofile()

                for (var numberr = 0; numberr < lss.length; numberr++) {
                    lsm.append({
                                   "id": lss[numberr]["id"] ? lss[numberr]["id"] : '',
                                   "first_name": lss[numberr]["name"] ? lss[numberr]["name"] : "",
                                   "familyname": lss[numberr]["familyName"] ? lss[numberr]["familyName"] : "",
                                   "contactnumber": lss[numberr]["mobile"] ? lss[numberr]["mobile"] : "",
                                   "email": lss[numberr]["email"] ? lss[numberr]["email"] : "",
                                   "gender": lss[numberr]["gender"] ? lss[numberr]["gender"] : "",
                                   "weight": lss[numberr]["weight"] ? lss[numberr]["weight"] : 0,
                                   "height": lss[numberr]["height"] ? lss[numberr]["height"] : 0.0,
                                   "birthday": lss[numberr]["birthday"] ? lss[numberr]["birthday"] : 0,
                                   "ethnicity": lss[numberr]["ethnicity"] ? lss[numberr]["ethnicity"] : ""
                               })
                }
            }
            Popup {
                id: pop
                width: parent.width * 0.9
                height: parent.height * 0.9
                anchors.centerIn: parent
                modal: true
                dim : false
                enter: Transition {
                    NumberAnimation {
                        property: "opacity"
                        from: 0.0
                        to: 1.0
                    }
                }
                background: Rectangle {
                    color: Style.popprimary
                    border.color: Style.topprimary
                }
                closePolicy: Popup.CloseOnEscape //| Popup.CloseOnPressOutsideParent
                AddProfile {
                    id: adp

                    Connections {
                        target: adp.discard_add
                        function onClicked() {
                            pop.close()
                        }
                    }
                    Connections {
                        target: adp.create_add
                        function onClicked() {
                            if (adp.name_color == "#00000000"
                                    && adp.lastname_col == "#00000000") {

                                var p_height = adp.height_add.text + "." + adp.feet_add.text
                                var ls = profile.create_profile(
                                            adp.firstname_add.text,
                                            adp.lastname_add.text,
                                            adp.email_add.text,
                                            adp.contact_add.text,
                                            adp.gender_add.currentText,
                                            adp.dob_add.text, p_height,
                                            adp.weight_add.text,
                                            adp.ethnicity_add.currentText)
                                lsm.append({
                                               "id": ls["id"] ? ls["id"] : '',
                                               "first_name": ls["name"] ? ls["name"] : "",
                                               "familyname": ls["familyName"] ? ls["familyName"] : "",
                                               "contactnumber": ls["mobile"] ? ls["mobile"] : "",
                                               "email": ls["email"] ? ls["email"] : "",
                                               "gender": ls["gender"] ? ls["gender"] : "",
                                               "weight": ls["weight"] ? ls["weight"] : 0,
                                               "height": ls["height"] ? ls["height"] : 0.0,
                                               "birthday": ls["birthday"] ? ls["birthday"] : 0,
                                               "ethnicity": ls["ethnicity"] ? ls["ethnicity"] : ''
                                           })

                                pop.close()
                            }
                        }
                    }
                }
            }

            Popup {
                id: popdelete
                width: parent.width * 0.5
                height: parent.height * 0.5
                anchors.centerIn: parent
                enter: Transition {
                    NumberAnimation {
                        property: "opacity"
                        from: 0.0
                        to: 1.0
                    }
                }
                background: Rectangle {
                    color: Style.popprimary
                    border.color: Style.topprimary
                }
                modal: true
                dim : false
                closePolicy: Popup.CloseOnEscape //| Popup.CloseOnPressOutsideParent
                Deletepop {
                    id: dp
                    anchors.fill: parent
                    property string prg_id_dp: ""
                    property int deleteindex: 0
                    Connections {
                        target: dp.deletepop
                        function onClicked() {
                            profile.delete_profile(dp.prg_id_dp)
                            lsm.remove(dp.deleteindex)
                            popdelete.close()
                        }
                    }
                    Connections {
                        target: dp.cancelpop
                        function onClicked() {
                            popdelete.close()
                        }
                    }
                }
            }

            Popup {
                id: popedit
                width: parent.width * 0.9
                height: parent.height * 0.9
                anchors.centerIn: parent
                modal: true
                dim : false
                enter: Transition {
                    NumberAnimation {
                        property: "opacity"
                        from: 0.0
                        to: 1.0
                    }
                }
                background: Rectangle {
                    color: Style.popprimary
                    border.color: Style.topprimary
                }
                closePolicy: Popup.CloseOnEscape //| Popup.CloseOnPressOutsideParent
                Editprofile {
                    id: edp

                    property string profile_id: ""
                    property int profile_id_num: 0

                    Connections {
                        target: edp.discard_add
                        function onClicked() {
                            popedit.close()
                        }
                    }

                    Connections {
                        target: edp.update_add

                        function onClicked() {
                            if (edp.name_color == "#00000000"
                                    && edp.lastname_col == "#00000000") {

                                var p_height = edp.height_add.text + "." + edp.feet_add.text

                                var ls = profile.update_profile(
                                            edp.firstname_add.text,
                                            edp.lastname_add.text,
                                            edp.email_add.text,
                                            edp.contact_add.text,
                                            edp.gender_add.currentText,
                                            edp.dob_add.text, p_height,
                                            edp.weight_add.text,
                                            edp.ethnicity_add.currentText,
                                            edp.profile_id)

                                lsm.get(edp.profile_id_num).first_name
                                        = ls["name"] ? ls["name"] : ""
                                lsm.get(edp.profile_id_num).familyname
                                        = ls["familyName"] ? ls["familyName"] : ""
                                lsm.get(edp.profile_id_num).contactnumber
                                        = ls["mobile"] ? ls["mobile"] : 0

                                lsm.get(edp.profile_id_num).birthday
                                        = ls["birthday"] ? ls["birthday"] : 0

                                lsm.get(edp.profile_id_num).email = ls["email"] ? ls["email"] : ""
                                lsm.get(edp.profile_id_num).gender
                                        = ls["gender"] ? ls["gender"] : ""
                                lsm.get(edp.profile_id_num).weight = ls["weight"] ? ls["weight"] : 0
                                lsm.get(edp.profile_id_num).height = ls["height"] ? ls["height"] : 0
                                lsm.get(edp.profile_id_num).ethnicity
                                        = ls["ethnicity"] ? ls["ethnicity"] : ""

                                popedit.close()
                            }
                        }
                    }
                }
            }
        }
    }
}
