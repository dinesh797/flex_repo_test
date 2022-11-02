import QtQuick
import QtQuick.Controls 2.1
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Rectangle {
    id: rectangle1
    width: parent.width
    height: parent.height
    color: Style.hoverprimary
    Material.theme: Material.Dark
    Material.accent: Material.Purple
    property alias discard_add: discard_add
    property alias update_add: update_add
    property alias ethnicity_add: ethnicity_add
    property alias weight_add: weight_add
    property alias feet_add: feet_add
    property alias height_add: height_add
    property alias dob_add: dob_add
    property alias gender_add: gender_add
    property alias contact_add: contact_add
    property alias email_add: email_add
    property alias lastname_add: lastname_add
    property alias titlename: titlename
    transformOrigin: Item.Center

    border.color: "transparent"
    property alias firstname_add: firstname_add
    property string lastname_col: lastname_required.color
    property string name_color: name_required.color
    property real date_str
    property int date_int

    property string someDate: {
        return new Date(date_str)
    }

    Column {
        id: column
        width: parent.width * 0.97
        height: parent.height * 0.97
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        Item {
            id: item3
            width: parent.width
            height: parent.height * 0.1

            Text {
                id: titlename
                color: Style.tertiary
                text: qsTr("New Profile")
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: Style.font16 ? Style.font16 : 16
            }
        }

        Rectangle {
            id: rectangle
            width: parent.width * 0.97
            height: parent.height * 0.88
            color: Style.secondary
            anchors.horizontalCenter: parent.horizontalCenter

            Column {
                id: column1
                width: parent.width * 0.97
                height: parent.height * 0.95
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 5

                Row {
                    id: row
                    width: parent.width
                    height: parent.height * 0.08
                    Item {
                        id: name
                        width: parent.width * 0.15
                        height: parent.height * 0.90
                        anchors.verticalCenter: parent.verticalCenter
                        Text {
                            id: firstnametext

                            color: Style.tertiary
                            text: qsTr(" First Name: ")
                            anchors.verticalCenter: parent.verticalCenter
                            font.pixelSize: Style.font12 ? Style.font12 : 12
                        }
                    }

                    TextField {
                        id: firstname_add
                        leftPadding: 10
                        maximumLength: 20
                        validator: RegularExpressionValidator {
                            regularExpression: /^[a-z/]+$/
                        }
                        width: parent.width * 0.55
                        height: parent.height * 0.92
                        color: Style.tertiary
                        text: qsTr("")
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: Style.font13 ? Style.font13 : 13

                        topPadding: 0
                        bottomPadding: 0
                        background: Rectangle {
                            color: Style.secondary
                            radius: 5
                            border.color: "black"
                            border.width: 0.5
                        }
                        Connections {
                            target: firstname_add
                            function onTextChanged() {
                                if (!firstname_add.text == "") {
                                    name_required.color = "transparent"
                                } else {
                                    name_required.color = "red"
                                }
                            }
                        }
                    }
                    Item {
                        id: item1

                        width: parent.width * 0.30
                        height: parent.height
                        Text {
                            id: name_required

                            color: "red"
                            text: qsTr("*Required")
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.left: parent.left
                            font.pixelSize: Style.font12 ? Style.font12 : 12
                            anchors.leftMargin: 20
                        }
                    }
                }
                Row {
                    id: row2
                    width: parent.width
                    height: parent.height * 0.08
                    Item {
                        id: name2
                        width: parent.width * 0.15
                        height: parent.height * 0.90
                        anchors.verticalCenter: parent.verticalCenter
                        Text {
                            id: lastnametext

                            color: Style.tertiary
                            text: qsTr(" Last Name: ")
                            anchors.verticalCenter: parent.verticalCenter
                            font.pixelSize: Style.font12 ? Style.font12 : 12
                        }
                    }

                    TextField {
                        id: lastname_add
                        leftPadding: 10
                        maximumLength: 20
                        validator: RegularExpressionValidator {
                            regularExpression: /^[a-z/]+$/
                        }
                        width: parent.width * 0.55
                        height: parent.height * 0.92
                        color: Style.tertiary
                        text: qsTr("")
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: Style.font13 ? Style.font13 : 13

                        topPadding: 0
                        bottomPadding: 0
                        background: Rectangle {
                            color: Style.secondary
                            radius: 5
                            border.color: "black"
                            border.width: 0.5
                        }
                        Connections {
                            target: lastname_add
                            function onTextChanged() {
                                if (!lastname_add.text == "") {
                                    lastname_required.color = "transparent"
                                } else {
                                    lastname_required.color = "red"
                                }
                            }
                        }
                    }
                    Item {

                        width: parent.width * 0.30
                        height: parent.height
                        Text {
                            id: lastname_required
                            color: "red"
                            text: qsTr("*Required")
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.left: parent.left
                            font.pixelSize: Style.font12 ? Style.font12 : 12
                            anchors.leftMargin: 20
                        }
                    }
                }

                Row {
                    id: row3
                    width: parent.width
                    height: parent.height * 0.08
                    Item {
                        id: name3
                        width: parent.width * 0.15
                        height: parent.height * 0.90
                        anchors.verticalCenter: parent.verticalCenter
                        Text {
                            id: emailtext

                            color: Style.tertiary
                            text: qsTr(" Email: ")
                            anchors.verticalCenter: parent.verticalCenter
                            font.pixelSize: Style.font12 ? Style.font12 : 12
                        }
                    }

                    TextField {
                        id: email_add
                        leftPadding: 10
                        width: parent.width * 0.55
                        height: parent.height * 0.92
                        color: Style.tertiary
                        text: qsTr("")
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: Style.font13 ? Style.font13 : 13
                        validator: RegularExpressionValidator {
                            regularExpression: /\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/
                        }

                        onTextChanged: acceptableInput ? (email_required.text = "") : (email_required.text = "  Input not acceptable")

                        topPadding: 0
                        bottomPadding: 0
                        background: Rectangle {
                            color: Style.secondary
                            radius: 5
                            border.color: "black"
                            border.width: 0.5
                        }
                    }
                    Item {
                        id: item2

                        width: parent.width * 0.30
                        height: parent.height
                        Text {
                            id: email_required
                            visible: true

                            color: email_add.acceptableInput ? "green" : "red"

                            anchors.verticalCenter: parent.verticalCenter
                            anchors.left: parent.left
                            font.pixelSize: Style.font12 ? Style.font12 : 12
                            verticalAlignment: Text.AlignVCenter
                            anchors.leftMargin: 20
                        }
                    }
                }
                Row {
                    id: row4
                    width: parent.width
                    height: parent.height * 0.08
                    Item {
                        id: name4
                        width: parent.width * 0.15
                        height: parent.height * 0.90
                        anchors.verticalCenter: parent.verticalCenter
                        Text {
                            id: contacttext

                            color: Style.tertiary
                            text: qsTr(" Contact Number: ")
                            anchors.verticalCenter: parent.verticalCenter
                            font.pixelSize: Style.font12 ? Style.font12 : 12
                        }
                    }

                    TextField {
                        id: contact_add
                        leftPadding: 10
                        maximumLength: 10
                        inputMethodHints: Qt.ImhFormattedNumbersOnly
                        validator: RegularExpressionValidator {
                            regularExpression: /[0-9,/]*/
                        }
                        width: parent.width * 0.55
                        height: parent.height * 0.92
                        color: Style.tertiary
                        text: qsTr("")
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: Style.font13 ? Style.font13 : 13

                        topPadding: 0
                        bottomPadding: 0
                        background: Rectangle {
                            color: Style.secondary
                            radius: 5
                            border.color: "black"
                            border.width: 0.5
                        }
                    }
                }
                Row {
                    id: row5
                    width: parent.width
                    height: parent.height * 0.08
                    Item {
                        id: name5
                        width: parent.width * 0.15
                        height: parent.height * 0.90
                        anchors.verticalCenter: parent.verticalCenter
                        Text {
                            id: gendertext

                            color: Style.tertiary
                            text: qsTr(" Gender: ")
                            anchors.verticalCenter: parent.verticalCenter
                            font.pixelSize: Style.font12 ? Style.font12 : 12
                        }
                    }
                    ComboBox {
                        id: gender_add
                        property string gcontent
                        width: parent.width * 0.55
                        height: 39
                        anchors.verticalCenter: parent.verticalCenter
                        Connections {
                            target: gender_add
                            function onGcontentChanged() {
                                if (gender_add.gcontent == "male") {
                                    gender_add.currentIndex = 0
                                }
                                if (gender_add.gcontent == "female") {
                                    gender_add.currentIndex = 1
                                }
                                if (gender_add.gcontent == "other") {
                                    gender_add.currentIndex = 2
                                }
                            }
                        }
                        background: Rectangle {
                            color: Style.dropprimary
                            border.color: "black"
                            radius: 5
                        }
                        palette.button: 'transparent'
                        model: [qsTr("Male"), qsTr("Female"), qsTr("Transgender")]

                        delegate: ItemDelegate {
                            width: row5.width
                            height: row5.height
                            contentItem: Label {
                                text: modelData
                                color: "black"
                                font.pixelSize: Style.font12 ? Style.font12 : 12
                                elide: Text.ElideRight
                                verticalAlignment: Text.AlignVCenter
                            }
                            highlighted: gender_add.highlightedIndex === index
                        }
                    }
                }
                Row {
                    id: row6
                    width: parent.width
                    height: parent.height * 0.08
                    Item {
                        id: name6
                        width: parent.width * 0.15
                        height: parent.height * 0.90
                        anchors.verticalCenter: parent.verticalCenter
                        Text {
                            id: dateofbirthtext

                            color: Style.tertiary
                            text: qsTr(" Date of Birth: ")
                            anchors.verticalCenter: parent.verticalCenter
                            font.pixelSize: Style.font12 ? Style.font12 : 12
                        }
                    }

                    TextField {
                        id: dob_add
                        leftPadding: 10
                        z: 0
                        width: parent.width * 0.55
                        height: parent.height * 0.92
                        color: Style.tertiary
                        text: someDate
                        anchors.verticalCenter: parent.verticalCenter
                        topPadding: 0
                        bottomPadding: 0
                        inputMask: "9999-99-99"
                        placeholderText: qsTr("DOB of the pattern 999-AAA")
                        selectByMouse: true
                        font.pixelSize: Style.font12 ? Style.font12 : 12

                        background: Rectangle {
                            color: Style.secondary
                            radius: 5
                            border.color: "black"
                            border.width: 0.5
                        }
                    }
                }
                Item {
                    id: item32
                    width: parent.width
                    height: parent.height * 0.08

                    Text {
                        id: text12
                        color: Style.tertiary
                        text: qsTr("Additional Information")
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: Style.font16 ? Style.font16 : 16
                    }
                }
                Row {
                    id: row61
                    width: parent.width
                    height: parent.height * 0.08
                    Item {
                        id: name61
                        width: parent.width * 0.15
                        height: parent.height * 0.90
                        anchors.verticalCenter: parent.verticalCenter
                        Text {
                            id: heighttext

                            color: Style.tertiary
                            text: qsTr(" Height: ")
                            anchors.verticalCenter: parent.verticalCenter
                            font.pixelSize: Style.font12 ? Style.font12 : 12
                        }
                    }

                    TextField {
                        id: height_add
                        leftPadding: 10
                        maximumLength: 3
                        inputMethodHints: Qt.ImhFormattedNumbersOnly
                        validator: RegularExpressionValidator {
                            regularExpression: /[0-9,/]*/
                        }
                        width: parent.width * 0.13
                        height: parent.height * 0.92
                        color: Style.tertiary
                        text: qsTr("")
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: Style.font13 ? Style.font13 : 13

                        topPadding: 0
                        bottomPadding: 0
                        background: Rectangle {
                            color: Style.secondary
                            radius: 5
                            border.color: "black"
                            border.width: 0.5
                        }
                    }
                    Item {
                        id: name612
                        width: parent.width * 0.15
                        height: parent.height * 0.90
                        anchors.verticalCenter: parent.verticalCenter
                        Text {
                            id: feettext
                            width: parent.width
                            color: Style.tertiary
                            text: qsTr("   Feet ")
                            anchors.verticalCenter: parent.verticalCenter
                            font.pixelSize: Style.font12 ? Style.font12 : 12
                        }
                    }

                    TextField {
                        id: feet_add
                        leftPadding: 10
                        maximumLength: 30
                        inputMethodHints: Qt.ImhFormattedNumbersOnly
                        validator: RegularExpressionValidator {
                            regularExpression: /[0-9,/]*/
                        }
                        width: parent.width * 0.13
                        height: parent.height * 0.92
                        color: Style.tertiary
                        text: qsTr("")
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: Style.font13 ? Style.font13 : 13

                        topPadding: 0
                        bottomPadding: 0
                        background: Rectangle {
                            color: Style.secondary
                            radius: 5
                            border.color: "black"
                            border.width: 0.5
                        }
                    }

                    Item {
                        id: name6121
                        width: parent.width * 0.15
                        height: parent.height * 0.90
                        anchors.verticalCenter: parent.verticalCenter
                        Text {
                            id: inchestext
                            width: parent.width
                            color: Style.tertiary
                            text: qsTr("   Inches ")
                            anchors.verticalCenter: parent.verticalCenter
                            font.pixelSize: Style.font12 ? Style.font12 : 12
                        }
                    }
                    Row {
                        id: row64
                        width: parent.width
                        height: parent.height
                        Item {
                            id: name64
                            width: parent.width * 0.07
                            height: parent.height * 0.90
                            anchors.verticalCenter: parent.verticalCenter
                            Text {
                                id: wighttext

                                color: Style.tertiary
                                text: qsTr(" Weight: ")
                                anchors.verticalCenter: parent.verticalCenter
                                font.pixelSize: Style.font12 ? Style.font12 : 12
                            }
                        }

                        TextField {
                            id: weight_add
                            leftPadding: 10
                            maximumLength: 3
                            inputMethodHints: Qt.ImhFormattedNumbersOnly
                            validator: RegularExpressionValidator {
                                regularExpression: /[0-9,/]*/
                            }
                            width: parent.width * 0.15
                            height: parent.height * 0.92
                            color: Style.tertiary
                            text: qsTr("")
                            anchors.verticalCenter: parent.verticalCenter
                            font.pixelSize: Style.font13 ? Style.font13 : 13

                            topPadding: 0
                            bottomPadding: 0
                            background: Rectangle {
                                color: Style.secondary
                                radius: 5
                                border.color: "black"
                                border.width: 0.5
                            }
                        }
                        Item {
                            id: name648
                            width: parent.width * 0.15
                            height: parent.height * 0.90
                            anchors.verticalCenter: parent.verticalCenter
                            Text {
                                id: kgtext

                                color: Style.tertiary
                                text: qsTr("    Kgs ")
                                anchors.verticalCenter: parent.verticalCenter
                                font.pixelSize: Style.font12 ? Style.font12 : 12
                            }
                        }
                    }
                }
                Row {
                    id: row65
                    width: parent.width
                    height: parent.height * 0.08
                    Item {
                        id: name65
                        width: parent.width * 0.15
                        height: parent.height * 0.90
                        anchors.verticalCenter: parent.verticalCenter
                        Text {
                            id: companynameID65

                            color: Style.tertiary
                            text: qsTr(" Ethnicity: ")
                            anchors.verticalCenter: parent.verticalCenter
                            font.pixelSize: Style.font12 ? Style.font12 : 12
                        }
                    }
                    ComboBox {
                        id: ethnicity_add
                        property string econtent
                        width: parent.width * 0.55
                        height: 39
                        anchors.verticalCenter: parent.verticalCenter
                        Connections {
                            target: ethnicity_add
                            function onEcontentChanged() {
                                if (ethnicity_add.econtent == "asian") {
                                    ethnicity_add.currentIndex = 0
                                }
                                if (ethnicity_add.econtent == "american") {
                                    ethnicity_add.currentIndex = 1
                                }
                                if (ethnicity_add.econtent == "african") {
                                    ethnicity_add.currentIndex = 2
                                }
                                if (ethnicity_add.econtent == "outh Asian") {
                                    ethnicity_add.currentIndex = 3
                                }
                                if (ethnicity_add.econtent == "chinese") {
                                    ethnicity_add.currentIndex = 4
                                }
                                if (ethnicity_add.econtent == "european") {
                                    ethnicity_add.currentIndex = 5
                                }
                                if (ethnicity_add.econtent == "other") {
                                    ethnicity_add.currentIndex = 6
                                }
                            }
                        }
                        background: Rectangle {
                            color: Style.dropprimary
                            border.color: "black"
                            radius: 5
                        }
                        palette.button: 'transparent'
                        model: ["Asian", "American", "African", "South Asian", "Chinese", "European", "Other"]

                        delegate: ItemDelegate {
                            width: row5.width
                            height: row5.height
                            contentItem: Label {
                                text: modelData
                                color: "black"
                                font.pixelSize: Style.font12 ? Style.font12 : 12
                                elide: Text.ElideRight
                                verticalAlignment: Text.AlignVCenter
                            }
                            highlighted: ethnicity_add.highlightedIndex === index
                        }
                    }
                }
                Row {
                    id: row651
                    spacing: 5

                    width: parent.width
                    height: parent.height * 0.16
                    Item {
                        id: name651
                        width: parent.width * 0.145
                        height: parent.height * 0.90
                        anchors.verticalCenter: parent.verticalCenter
                    }
                    Item {
                        width: parent.width * 0.17
                        height: parent.height
                        HoverButton {
                            id: update_add
                            z: -1
                            width: parent.width
                            height: parent.height * 0.70
                            stepcolor: "#347efb"
                            radiuso: 5
                            steptext: qsTr("Update")
                            stepcolortext: "white"
                            anchors.verticalCenter: parent.verticalCenter
                        }
                    }

                    Item {
                        width: parent.width * 0.17
                        height: parent.height
                        HoverButton {
                            id: discard_add
                            z: -2
                            width: parent.width
                            height: parent.height * 0.70
                            stepcolor: "transparent"
                            stepcolortext: "#347efb"
                            radiuso: 5
                            radiusi: 5
                            steptext: qsTr("Discard")
                            inerbord: "transparent"
                            hovercol: "transparent"
                            clickcol: "#1c1c1f"
                            // stepcolortext: "white"

                            anchors.verticalCenter: parent.verticalCenter
                        }
                    }
                }
            }
        }
    }
}
