import QtQuick 2.15
import QtQuick.Window
// import "./components"
// import "./pages"
import "./theme"
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.12
// import QtQuick.Layouts 6.0

Window {
    id: _main_screen
    x: Screen.width / 2 - width / 2
    y: Screen.height / 2 - height / 2
    width: 1000 / 1.020
    height: 600 / 1.020
    flags: Qt.Window | Qt.FramelessWindowHint
    modality: Qt.ApplicationModal
    property alias main_stack: main_stack

    StackView {
        id: main_stack
        initialItem: app_stack
    }

    Component {
        id: app_stack

        LoginScreen {
            property  bool thm_var
            Component.onCompleted: {
                var rv = program.read_setting()==[] ?  {"theme": "true", "font": "Medium", "language": "English"} : program.read_setting()  //== [] ? {
                                                        //       "theme": "true",
                                                        //       "font": "Medium",
                                                        //       "language": "English"
                                                        //   } : program.read_setting()

                Style.darkTheme = rv['theme']=="false" ? false : true
      
                if (rv['language'] == "Hindi") {
                    main_app.set_language("Hindi")
                }
                if (rv['language'] == "English") {
                    main_app.set_language("English")
                }
                if (rv['font'] == "Small") {
                    Style.font15 = 10
                    Style.font15_2 = 15
                    Style.hindi = "kdjfnj"
                    Style.font12 = 7
                    Style.font20 = 15
                    Style.font10 = 5
                    Style.font30 = 25
                    Style.font16 = 11
                    Style.font13 = 8
                }
                if (rv['font'] == "Medium") {
                    Style.font15 = 15
                    Style.font15_
                    Style.font12 = 12
                    Style.font20 = 20
                    Style.font10 = 10
                    Style.font30 = 30
                    Style.font16 = 16
                    Style.font13 = 13
                }
                if (rv['font'] == "Large") {
                    Style.font15 = 20
                    Style.font15_
                    Style.font12 = 17
                    Style.font20 = 25
                    Style.font10 = 15
                    Style.font30 = 35
                    Style.font16 = 21
                    Style.font13 = 18
                }
                if (rv['font'] == "Small_Hindi") {
                    Style.font15 = 10
                    Style.font15_2 = 15
                    Style.hindi = "kdjfnj"
                    Style.font12 = 7
                    Style.font20 = 15
                    Style.font10 = 5
                    Style.font30 = 25
                    Style.font16 = 11
                    Style.font13 = 8
                    return "लघु"
                }
                if (rv['font'] == "Medium_Hindi") {
                    Style.font15 = 15
                    Style.font15_
                    Style.font12 = 12
                    Style.font20 = 20
                    Style.font10 = 10
                    Style.font30 = 30
                    Style.font16 = 16
                    Style.font13 = 13
                }
                if (rv['font'] == "Large_Hindi") {
                    Style.font15 = 20
                    Style.font15_
                    Style.font12 = 17
                    Style.font20 = 25
                    Style.font10 = 15
                    Style.font30 = 35
                    Style.font16 = 21
                    Style.font13 = 18
                }
            }
        }
    }
}
