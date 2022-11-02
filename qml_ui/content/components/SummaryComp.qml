import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

Rectangle {
    color: Style.secondary

        property bool fl2dbd_checked
        property bool fl2pp_checked
        property string fl2_step1_A
        property int fl2_step1_B
        property int fl2_step2_A
        property int fl2_step2_B
        property int fl2_step3_A
        property int fl2_step3_B  

        property int fl1_step1_A
        property int fl1_step1_B
        property int fl1_step2_A
        property int fl1_step2_B
        property int fl1_step3_A
        property int fl1_step3_B  

        property int fr2_step1_A
        property int fr2_step1_B
        property int fr2_step2_A
        property int fr2_step2_B
        property int fr2_step3_A
        property int fr2_step3_B    

        property int fr1_step1_A
        property int fr1_step1_B
        property int fr1_step2_A
        property int fr1_step2_B
        property int fr1_step3_A
        property int fr1_step3_B    

        property int rl2_step1_A
        property int rl2_step1_B
        property int rl2_step2_A
        property int rl2_step2_B
        property int rl2_step3_A
        property int rl2_step3_B    

        property int rl1_step1_A
        property int rl1_step1_B
        property int rl1_step2_A
        property int rl1_step2_B
        property int rl1_step3_A
        property int rl1_step3_B    

        property int rr2_step1_A
        property int rr2_step1_B
        property int rr2_step2_A
        property int rr2_step2_B
        property int rr2_step3_A
        property int rr2_step3_B    

        property int rr1_step1_A
        property int rr1_step1_B
        property int rr1_step2_A
        property int rr1_step2_B
        property int rr1_step3_A
        property int rr1_step3_B  
    //to string
        property string fl2_step1_A_string: fl2_step1_A
        property string fl2_step1_B_string: fl2_step1_B
        property string fl2_step2_A_string: fl2_step2_A
        property string fl2_step2_B_string: fl2_step2_B
        property string fl2_step3_A_string: fl2_step3_A
        property string fl2_step3_B_string: fl2_step3_B  

        property string fl1_step1_A_string: fl1_step1_A
        property string fl1_step1_B_string: fl1_step1_B
        property string fl1_step2_A_string: fl1_step2_A
        property string fl1_step2_B_string: fl1_step2_B
        property string fl1_step3_A_string: fl1_step3_A
        property string fl1_step3_B_string: fl1_step3_B  

        property string fr2_step1_A_string: fr2_step1_A
        property string fr2_step1_B_string: fr2_step1_B
        property string fr2_step2_A_string: fr2_step2_A
        property string fr2_step2_B_string: fr2_step2_B
        property string fr2_step3_A_string: fr2_step3_A
        property string fr2_step3_B_string: fr2_step3_B    

        property string fr1_step1_A_string: fr1_step1_A
        property string fr1_step1_B_string: fr1_step1_B
        property string fr1_step2_A_string: fr1_step2_A
        property string fr1_step2_B_string: fr1_step2_B
        property string fr1_step3_A_string: fr1_step3_A
        property string fr1_step3_B_string: fr1_step3_B    

        property string rl2_step1_A_string: rl2_step1_A
        property string rl2_step1_B_string: rl2_step1_B
        property string rl2_step2_A_string: rl2_step2_A
        property string rl2_step2_B_string: rl2_step2_B
        property string rl2_step3_A_string: rl2_step3_A
        property string rl2_step3_B_string: rl2_step3_B    

        property string rl1_step1_A_string: rl1_step1_A
        property string rl1_step1_B_string: rl1_step1_B
        property string rl1_step2_A_string: rl1_step2_A
        property string rl1_step2_B_string: rl1_step2_B
        property string rl1_step3_A_string: rl1_step3_A
        property string rl1_step3_B_string: rl1_step3_B    

        property string rr2_step1_A_string: rr2_step1_A
        property string rr2_step1_B_string: rr2_step1_B
        property string rr2_step2_A_string: rr2_step2_A
        property string rr2_step2_B_string: rr2_step2_B
        property string rr2_step3_A_string: rr2_step3_A
        property string rr2_step3_B_string: rr2_step3_B    

        property string rr1_step1_A_string: rr1_step1_A
        property string rr1_step1_B_string: rr1_step1_B
        property string rr1_step2_A_string: rr1_step2_A
        property string rr1_step2_B_string: rr1_step2_B
        property string rr1_step3_A_string: rr1_step3_A
        property string rr1_step3_B_string: rr1_step3_B  


        property bool fl1dbd_checked
        property bool fl1pp_checked

        property bool fr2dbd_checked
        property bool fr2pp_checked

        property bool fr1dbd_checked
        property bool fr1pp_checked

        property bool rl2dbd_checked
        property bool rl2pp_checked

        property bool rl1dbd_checked
        property bool rl1pp_checked

        property bool rr2dbd_checked
        property bool rr2pp_checked

        property bool rr1dbd_checked
        property bool rr1pp_checked
        
        property alias fl2pp: fl2pp

        property alias fl1dbd: fl1dbd
        property alias fl1pp: fl1pp

        property alias fr2dbd: fr2dbd
        property alias fr2pp: fr2pp

        property alias fr1dbd: fr1dbd
        property alias fr1pp: fr1pp

        property alias rl2dbd: rl2dbd
        property alias rl2pp: rl2pp

        property alias rl1dbd: rl1dbd
        property alias rl1pp: rl1pp

        property alias rr2dbd: rr2dbd
        property alias rr2pp: rr2pp

        property alias rr1dbd: rr1dbd
        property alias rr1pp: rr1pp

    Rectangle {
        id: rectangle22
        color: Style.secondary
        width: parent.width * 0.975
        height: parent.height

        Assembly {
            id: rectangle1
            width: parent.width * 0.9
            height: parent.height * 0.80

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
        }

        Item {
            id: upperitem
            width: parent.width
            height: parent.height * 0.42
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            Item {
                id: fl2left_i
                width: parent.width * 0.095
                height: parent.height * 0.88
                anchors.bottom: parent.bottom
                OnOff {
                    id: fl2dbd
                    anchors.top: parent.top
                    anchors.rightMargin: 0
                    height: parent.height * 0.13
                    anchors.right: parent.right
                    width: parent.width * 0.75

                    checked: fl2dbd_checked
                }
            }
            Item {
                id: zz11
                width: parent.width * 0.095
                height: parent.height * 0.98
                anchors.bottom: parent.bottom
            }
            Item {
                id: fl2right_i
                width: parent.width * 0.14
                height: parent.height * 0.88
                anchors.bottom: parent.bottom
                OnOff {
                    id: fl2pp
                    height: parent.height * 0.13
                    anchors.left: parent.right
                    width: parent.width * 0.50
                    checked: fl2pp_checked                }
            }
            SummaryRect {
                width: parent.width * 0.08
                height: parent.height * 0.50
                anchors.left: fl2right_i.right
                radius: 5
                step1_axA:  fl2_step1_A_string
                step1_axB : fl2_step1_B_string
                step2_axA : fl2_step2_A_string
                step2_axB : fl2_step2_B_string
                step3_axA : fl2_step3_A_string
                step3_axB : fl2_step3_B_string
                border.color: "black"
                anchors.bottom: fl2right_i.bottom
                anchors.leftMargin: 15
            }
            Item {
                id: fl2pp_i
                width: parent.width * 0.14
                height: parent.height * 0.98
                anchors.bottom: parent.bottom
            }
            Item {
                id: fl1left_I
                width: parent.width * 0.33
                height: parent.height * 0.88
                anchors.bottom: parent.bottom
                OnOff {
                    id: fl1dbd
                    anchors.top: parent.top
                    anchors.rightMargin: 0
                    height: parent.height * 0.13
                    anchors.right: parent.right
                    width: parent.width * 0.2
                    checked: fl1dbd_checked
                }
            }
            Item {
                id: dbdleft_I
                width: parent.width * 0.33
                height: parent.height * 0.98
                anchors.bottom: parent.bottom
            }

            Item {
                id: verti2
                width: parent.width * 0.37
                height: parent.height * 0.88
                anchors.bottom: parent.bottom

                Item {
                    id: item344
                    width: parent.width * 0.7
                    height: parent.height * 0.3
                    anchors.left: parent.right

                    OnOff {
                        id: fl1pp
                        anchors.top: parent.top
                        height: parent.height * 0.48
                        width: parent.width / 4
                        checked: fl1pp_checked                    }
                }
            }
            SummaryRect {
                width: parent.width * 0.08
                height: parent.height * 0.50
                anchors.left: verti2.right
                radius: 5
                step1_axA:  fl1_step1_A_string
                step1_axB : fl1_step1_B_string
                step2_axA : fl1_step2_A_string
                step2_axB : fl1_step2_B_string
                step3_axA : fl1_step3_A_string
                step3_axB : fl1_step3_B_string
                anchors.bottom: verti2.bottom
                anchors.leftMargin: 15
            }
            Item {
                id: nameff
                width: parent.width * 0.37
                height: parent.height * 0.98
                anchors.bottom: parent.bottom
            }
            Item {
                id: verti3
                width: parent.width * 0.63
                height: parent.height * 0.98
                anchors.bottom: parent.bottom
            }
            Item {
                id: namep
                width: parent.width * 0.67
                height: parent.height * 0.98
                anchors.bottom: parent.bottom
            }
            Item {
                id: namej
                width: parent.width * 0.91
                height: parent.height * 0.88
                anchors.bottom: parent.bottom
                OnOff {
                    id: fr2pp

                    height: parent.height * 0.13
                    anchors.left: parent.right
                    width: parent.width * 0.08
                    checked: fr2pp_checked                }
            }
            Item {
                id: namek
                width: parent.width * 0.91
                height: parent.height * 0.98
                anchors.bottom: parent.bottom
            }
            SummaryRect {
                width: parent.width * 0.083
                height: parent.height * 0.50
                radius: 5
                step1_axA:  fr2_step1_A_string
                step1_axB : fr2_step1_B_string
                step2_axA : fr2_step2_A_string
                step2_axB : fr2_step2_B_string
                step3_axA : fr2_step3_A_string
                step3_axB : fr2_step3_B_string
                anchors.left: namek.right
                anchors.bottom: namek.bottom
                anchors.leftMargin: 15
            }
            Item {
                id: namel
                width: parent.width * 0.87
                height: parent.height * 0.98
                anchors.bottom: parent.bottom
            }
            Item {
                id: nameo
                width: parent.width * 0.87
                height: parent.height * 0.88
                anchors.bottom: parent.bottom
                OnOff {
                    id: fr2dbd
                    anchors.top: parent.top
                    anchors.rightMargin: 0
                    height: parent.height * 0.13
                    anchors.right: parent.right
                    width: parent.width * 0.1
                    checked: fr2dbd_checked
                }
            }
            Item {
                id: nameg
                width: parent.width * 0.67
                height: parent.height * 0.88
                anchors.bottom: parent.bottom
                OnOff {
                    id: fr1pp
                    height: parent.height * 0.13
                    anchors.left: parent.right
                    width: parent.width * 0.10
                    checked: fr1pp_checked                }
            }
            SummaryRect {
                width: parent.width * 0.08
                height: parent.height * 0.50
                radius: 5
                step1_axA:  fr1_step1_A_string
                step1_axB : fr1_step1_B_string
                step2_axA : fr1_step2_A_string
                step2_axB : fr1_step2_B_string
                step3_axA : fr1_step3_A_string
                step3_axB : fr1_step3_B_string
                anchors.left: nameg.right
                anchors.bottom: nameg.bottom
                anchors.leftMargin: 15
            }

            Item {
                id: verti4
                width: parent.width * 0.63
                height: parent.height * 0.88
                anchors.bottom: parent.bottom
                OnOff {
                    id: fr1dbd
                    anchors.top: parent.top
                    anchors.rightMargin: 0
                    height: parent.height * 0.13
                    anchors.right: parent.right
                    width: parent.width * 0.1
                    checked: fr1dbd_checked
                }
            }
        }

        Item {
            id: upperitemg
            width: parent.width
            height: parent.height * 0.42
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            Item {
                id: fl2left_ig
                width: parent.width * 0.095
                height: parent.height * 0.88
                anchors.top: parent.top
                OnOff {
                    id: rl2dbd
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 0
                    height: parent.height * 0.13
                    anchors.right: parent.right
                    width: parent.width * 0.75
                    checked: rl2dbd_checked
                }
            }
            Item {
                id: zz11g
                width: parent.width * 0.095
                height: parent.height * 0.98
                anchors.top: parent.top
            }
            Item {
                id: fl2right_ig
                width: parent.width * 0.14
                height: parent.height * 0.88
                anchors.top: parent.top
                OnOff {
                    id: rl2pp
                    anchors.bottom: parent.bottom
                    height: parent.height * 0.13
                    anchors.left: parent.right
                    width: parent.width * 0.50
                    checked: rl2pp_checked                }
            }
            SummaryRect {
                width: parent.width * 0.08
                height: parent.height * 0.50
                radius: 5
                step1_axA:  rl2_step1_A_string
                step1_axB : rl2_step1_B_string
                step2_axA : rl2_step2_A_string
                step2_axB : rl2_step2_B_string
                step3_axA : rl2_step3_A_string
                step3_axB : rl2_step3_B_string
                anchors.left: fl2right_ig.right
                anchors.top: fl2right_ig.top
                anchors.leftMargin: 15
            }

            Item {
                id: fl2pp_ig
                width: parent.width * 0.14
                height: parent.height * 0.98
                anchors.top: parent.top
            }
            Item {
                id: fl1left_Igg
                width: parent.width * 0.33
                height: parent.height * 0.88
                anchors.top: parent.top

                OnOff {
                    id: rl1dbd
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 0
                    height: parent.height * 0.13
                    anchors.right: parent.right
                    width: parent.width * 0.2
                    checked: rl1dbd_checked
                }
            }
            Item {
                id: dbdleft_Ig
                width: parent.width * 0.33
                height: parent.height * 0.98
                anchors.top: parent.top
            }

            Item {
                id: verti2g
                width: parent.width * 0.37
                height: parent.height * 0.88
                anchors.top: parent.top

                Item {
                    id: item344g
                    width: parent.width * 0.7
                    height: parent.height * 0.3
                    anchors.left: parent.right
                    anchors.bottom: parent.bottom

                    OnOff {
                        id: rl1pp
                        anchors.bottom: parent.bottom
                        height: parent.height * 0.48
                        width: parent.width / 4
                        checked: rl1pp_checked                    }
                }
            }

            SummaryRect {
                width: parent.width * 0.08
                height: parent.height * 0.50
                radius: 5
                step1_axA:  rl1_step1_A_string
                step1_axB : rl1_step1_B_string
                step2_axA : rl1_step2_A_string
                step2_axB : rl1_step2_B_string
                step3_axA : rl1_step3_A_string
                step3_axB : rl1_step3_B_string
                anchors.left: verti2g.right
                anchors.top: verti2g.top
                anchors.leftMargin: 15
            }
            Item {
                id: nameffg
                width: parent.width * 0.37
                height: parent.height * 0.98
                anchors.top: parent.top
            }
            Item {
                id: verti3g
                width: parent.width * 0.63
                height: parent.height * 0.98
                anchors.top: parent.top
            }
            Item {
                id: namepg
                width: parent.width * 0.67
                height: parent.height * 0.98
                anchors.top: parent.top
            }
            Item {
                id: namejg
                width: parent.width * 0.91
                height: parent.height * 0.88
                anchors.top: parent.top
                OnOff {
                    id: rr2pp
                    anchors.bottom: parent.bottom
                    height: parent.height * 0.13
                    anchors.left: parent.right
                    width: parent.width * 0.08

                    checked: rr2pp_checked                }
            }
            SummaryRect {
                width: parent.width * 0.083
                height: parent.height * 0.50
                radius: 5
                step1_axA:  rr2_step1_A_string
                step1_axB : rr2_step1_B_string
                step2_axA : rr2_step2_A_string
                step2_axB : rr2_step2_B_string
                step3_axA : rr2_step3_A_string
                step3_axB : rr2_step3_B_string
                anchors.left: namejg.right
                anchors.top: namejg.top
                anchors.leftMargin: 15
            }
            Item {
                id: namekg
                width: parent.width * 0.91
                height: parent.height * 0.98
                anchors.top: parent.top
            }
            Item {
                id: namelg
                width: parent.width * 0.87
                height: parent.height * 0.98
                anchors.top: parent.top
            }
            Item {
                id: nameog
                width: parent.width * 0.87
                height: parent.height * 0.88
                anchors.top: parent.top
                OnOff {
                    id: rr2dbd
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 0
                    height: parent.height * 0.13
                    anchors.right: parent.right
                    width: parent.width * 0.1
                    checked: rr2dbd_checked
                }
            }
            Item {
                id: namegg
                width: parent.width * 0.67
                height: parent.height * 0.88
                anchors.top: parent.top
                OnOff {
                    id: rr1pp
                    anchors.bottom: parent.bottom
                    height: parent.height * 0.13
                    anchors.left: parent.right
                    width: parent.width * 0.10
                    checked: rr1pp_checked                }
            }
            SummaryRect {
                width: parent.width * 0.08
                height: parent.height * 0.50
                radius: 5
                step1_axA:  rr1_step1_A_string
                step1_axB : rr1_step1_B_string
                step2_axA : rr1_step2_A_string
                step2_axB : rr1_step2_B_string
                step3_axA : rr1_step3_A_string
                step3_axB : rr1_step3_B_string
                anchors.left: namegg.right
                anchors.top: namegg.top
                anchors.leftMargin: 15
            }
            Item {
                id: verti4g
                width: parent.width * 0.63
                height: parent.height * 0.88
                anchors.top: parent.top
                OnOff {
                    id: rr1dbd
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 0
                    height: parent.height * 0.13
                    anchors.right: parent.right
                    width: parent.width * 0.1
                    checked: rr1dbd_checked
                }
            }
        }
    }
}
