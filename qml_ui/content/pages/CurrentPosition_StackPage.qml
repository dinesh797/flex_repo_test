import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
// import "../components"
import "../pages"
// import "../theme"
// import QtQuick.Layouts 6.0

Item {
    id: pg
    anchors.fill: parent

    StackView {
        id: stack
        initialItem: crnt_comp
        anchors.fill: parent
        clip: true
    }
    Component {

        id: crnt_comp
        CurrentPositionPage {
            id: currentpage

            Component.onCompleted: {

                var fl2cpp=[];
                var fl2lst = setting.get_robot_position("fl2")? setting.get_robot_position("fl2"): 0
                fl2cpp= fl2lst

                var rl2cpp=[];
                var lst2 = setting.get_robot_position("rl2")? setting.get_robot_position("rl2"): 0
                rl2cpp= lst2

                var fl1cpp=[];
                var fl1lst = setting.get_robot_position("fl1")? setting.get_robot_position("fl1"): 0
                fl1cpp= fl1lst

                var rl1cpp=[];
                var rl1lst = setting.get_robot_position("rl1")? setting.get_robot_position("rl1"): 0
                rl1cpp= rl1lst

                var fr2cpp=[];
                var fr2lst = setting.get_robot_position("fr2")? setting.get_robot_position("fr2"): 0
                fr2cpp= fr2lst

                var rr2cpp=[];
                var rr2lst = setting.get_robot_position("rr2")? setting.get_robot_position("rr2"): 0
                rr2cpp= rr2lst

                var fr1cpp=[];
                var fr1lst = setting.get_robot_position("fr1")? setting.get_robot_position("fr1"): 0
                fr1cpp= fr1lst

                var rr1cpp=[];
                var rr1lst = setting.get_robot_position("rr1")? setting.get_robot_position("rr1"): 0
                rr1cpp= rr1lst

                fl2A_axisposition.changeboxB= fl2cpp['fl2'] ? fl2cpp['fl2']['axisA'] : 0
                fl2B_axisposition.changeboxB= fl2cpp['fl2'] ? fl2cpp['fl2']['axisB'] : 0
                fl2dbd.checked= fl2cpp['fl2']? fl2cpp['fl2']['vacuumCup1']: false
                fl2pp.checked= fl2cpp['fl2']? fl2cpp['fl2']['vacuumCup2']: false

                rl2A_axisposition.changeboxB= rl2cpp['rl2'] ? rl2cpp['rl2']['axisA'] : 0
                rl2B_axisposition.changeboxB= rl2cpp['rl2'] ? rl2cpp['rl2']['axisB'] : 0
                rl2dbd.checked= rl2cpp['rl2']? rl2cpp['rl2']['vacuumCup1']: false
                rl2pp.checked= rl2cpp['rl2']? rl2cpp['rl2']['vacuumCup2']: false

                fl1A_axisposition.changeboxB= fl1cpp['fl1'] ? fl1cpp['fl1']['axisA'] : 0
                fl1B_axisposition.changeboxB= fl1cpp['fl1'] ? fl1cpp['fl1']['axisB'] : 0
                fl1dbd.checked= fl1cpp['fl1'] ? fl1cpp['fl1']['vacuumCup1']: false
                fl1pp.checked= fl1cpp['fl1'] ? fl1cpp['fl1']['vacuumCup2']: false

                rl1A_axisposition.changeboxB= rl1cpp['rl1'] ? rl1cpp['rl1']['axisA'] : 0
                rl1B_axisposition.changeboxB= rl1cpp['rl1'] ? rl1cpp['rl1']['axisB'] : 0
                rl1dbd.checked= rl1cpp['rl1'] ? rl1cpp['rl1']['vacuumCup1']: false
                rl1pp.checked= rl1cpp['rl1'] ? rl1cpp['rl1']['vacuumCup2']: false

                fr2A_axisposition.changeboxB= fr2cpp['fr2'] ? fr2cpp['fr2']['axisA'] : 0
                fr2B_axisposition.changeboxB= fr2cpp['fr2'] ? fr2cpp['fr2']['axisB'] : 0
                fr2dbd.checked= fr2cpp['fr2'] ? fr2cpp['fr2']['vacuumCup1']: false
                fr2pp.checked= fr2cpp['fr2'] ? fr2cpp['fr2']['vacuumCup2']: false

                rr2A_axisposition.changeboxB= rr2cpp['rr2'] ? rr2cpp['rr2']['axisA'] : 0
                rr2B_axisposition.changeboxB= rr2cpp['rr2'] ? rr2cpp['rr2']['axisB'] : 0
                rr2dbd.checked= rr2cpp['rr2'] ? rr2cpp['rr2']['vacuumCup1']: false
                rr2pp.checked= rr2cpp['rr2'] ? rr2cpp['rr2']['vacuumCup2']: false

                fr1A_axisposition.changeboxB= fr1cpp['fr1'] ? fr1cpp['fr1']['axisA'] : 0
                fr1B_axisposition.changeboxB= fr1cpp['fr1'] ? fr1cpp['fr1']['axisB'] : 0
                fr1dbd.checked= fr1cpp['fr1']? fr1cpp['fr1']['vacuumCup1']: false
                fr1pp.checked= fr1cpp['fr1']? fr1cpp['fr1']['vacuumCup2']: false

                rr1A_axisposition.changeboxB= rr1cpp['rr1'] ? rr1cpp['rr1']['axisA'] : 0
                rr1B_axisposition.changeboxB= rr1cpp['rr1'] ? rr1cpp['rr1']['axisB'] : 0
                rr1dbd.checked= rr1cpp['rr1'] ? rr1cpp['rr1']['vacuumCup1']: false
                rr1pp.checked= rr1cpp['rr1'] ? rr1cpp['rr1']['vacuumCup2']: false

            }

            Connections {
                target: currentpage.changeposition
                function onClicked ()
                {
                    stack.push(chng_pp_comp)
                }
            }
        }
    }
    Component{
        id: chng_pp_comp
        ChangePositionPage {
            id: changepage
            Connections {
                target: changepage.back
                function onClicked ()
                {

                    stack.pop()
                }
            }


        }
    }
}