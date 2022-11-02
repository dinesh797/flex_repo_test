import QtQuick
import QtQuick.Controls
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import "../theme"
import QtQuick.Layouts 6.0

StackLayout {
    id: stackV
    currentIndex: 0
    width: parent.width * 0.98
    height: parent.height * 0.98
    anchors.verticalCenter: parent.verticalCenter
    anchors.horizontalCenter: parent.horizontalCenter
    HomePage {
        id: homePagestack
    }
    ProgramsPage {
        id: programPagestack
    }
    ChangePositionPage {
        id: changePositionsPagetack
    }
    ChangeRobotTorquePage {
        id: changeRobotTorquePagestack
    }
    CurrentPositionPage {
        id: currentPositionstack
    }
    MasteringPositionPage {
        id: masteringPositionPagestack
    }
    SetupLightPage {
        id: setupLightPagestack
    }
    SetupSensorsPage {
        id: setupSensorsPagestack
    }
    SetupRobotPage {
        id: setupRobotPagestack
    }
    LoginPage {
        id: loginPagestack
    }
}
