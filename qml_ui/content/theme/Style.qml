pragma Singleton

import QtQuick 2.2

QtObject {

    property int font15

    property int font12

    property int font20

    property int font10

    property int font30

    property int font16

    property int font13

    property string hindi
    property string english

    /////// darkTheme = true ==> DarkTheme

    /////// darkTheme = false ==> lightTheme
    property bool darkTheme: true

    property color bord: darkTheme ? "" : "#faf8f6"

    property color sortcol: darkTheme ? "#fdfdfd" : "grey"

    //font color dropdown
    property color fontdrop: darkTheme ? "lightblue" : "#352e4c"

    property FontLoader fonticon: FontLoader {
        source: "../fonts/iconfont.ttf"
    }

    //logincredcolor
    property color credcolor: darkTheme ? "yellow" : "red"

    ///profile
    property color profiletextcol: darkTheme ? "#4a4a4c" : "#4a4a4c"

    //login progress bar
    property color loginbar_color: darkTheme ? "#FFABE1" : "#4700D8"

    //login successful
    property color loginstatus_color: darkTheme ? "#6fde00" : "green"

    //top bar buttons
    property color top_barcolor: darkTheme ? "#303030" : "#D4ECDD"
    property color topprimary: darkTheme ? "#1c1c1f" : "#D4ECDD"
    property color popprimary: darkTheme ? "#424242" : "#D4ECDD"
    property color dropprimary: darkTheme ? "#1c1c1f" : "#add0cd"
    property color createpop_close : darkTheme ? "transparent" : "#dedede"

    property color gridbox: darkTheme ? "#1b1a19" : "#D4ECDD"

    property color minibtnColor: darkTheme ? "#1c1c1f" : "#aaaaff" //"#00aa7f"
    property color expndbtnColor: darkTheme ? "#1c1c1f" : "#aaaaff" //"#705697"
    property color closebtnColor: darkTheme ? "#df4a16" : "#df4a16"
    //popup overlay
    property color backcolor: darkTheme ? "#aa798777" : "#aaE3FDFD"
    //rectangle border
    property color bordercolor: darkTheme ? "" : "#fafbfd"
    property color bordercolor2: darkTheme ? "" : "grey"
    property int borderwidth: darkTheme ? 2 : 1
    property color bordercol: darkTheme ? "#8204e4" : "transparent"

    /////button hover and select top menu
    property color primary: darkTheme ? "#1c1c1f" : "#EFFFFD" ///unselect, unhover
    property color secondary: darkTheme ? "#252529" : "#fafbfd"
    property color secondary2: darkTheme ? "#252529" : "#EFFFFD" //hover, select

    /////button hover and select left menu
    property color hoverprimary: darkTheme ? "#1c1c1f" : "#e8faf8" //hover, select
    property color hover_leftbutton: darkTheme ? "#273539" : "#e8faf8" //hover, select

    property color hoversecondary: darkTheme ? "#252529" : "#fafbfd" //unselect, unhover

    property color btnSelect: darkTheme ? "#37373a" : "#FFF8DC"

    /////popup rect
    property color poprect1: darkTheme ? "#222124" : "#f6f1f4"
    property color poprect2: darkTheme ? "#323333" : "#f6f1f4"
    property url popplus: darkTheme ? "../images/plus_logo.png" : "../images/plus.png"
    property url popminus: darkTheme ? "../images/minus_logo.png" : "../images/minus.png"
    property color steprect1: darkTheme ? "#273539" : "#f6f1f4"
    property url steparrow: darkTheme ? "../images/rightarrow.svg" : "../images/arrow2.png"

    //////text colors
    property color tertiary: darkTheme ? "white" : "black"

    property color circletext: darkTheme ? "white" : "white"

    property color tertiary3: darkTheme ? "grey" : "grey"
    property color tertiary2: darkTheme ? "white" : "#fafbfd"
    property color btnSelecttext: darkTheme ? "white" : "black"
    property color btnSelect_tgl_light: darkTheme ? "#252529" : "#c4eee2"
    property color btnSelect_tgl_dark: darkTheme ? "white" : "transparent"

    property color textColBlack: darkTheme ? "black" : "white"
    property color border1cf: darkTheme ? "#1c1c1f" : "#f6f1f4"
    property color bordershallow: darkTheme ? "transparent" : "#f6f1f4"
    property color colorshallow: darkTheme ? "transparent" : "transparent"

    //stepbutton color
    property color reccol: darkTheme ? "#273555" : "#d4ecdd"
    property color reccol3: darkTheme ? "#1c1c1f" : "grey"
    property color reccol2: darkTheme ? "#252529" : "#aaaaff"
    property url flexIcon: darkTheme ? "images/flexboticlogo.png" : "images/flexlight.png"
    property color menuIcon: darkTheme ? "white" : "black"

    /////general setting page icon
    property url processIcon: darkTheme ? "../images/process.svg" : "../images/process_dark.png"
    property url generalSettingIcon: darkTheme ? "../images/general.svg" : "../images/general_dark.png"
    property url appearanceIcon: darkTheme ? "../images/appearance.svg" : "../images/appearance_dark.png"

    property url arrowIcon: darkTheme ? "../images/rightarrow.svg" : "../images/arrow_dark.png"
    property url homeIcon: darkTheme ? "../images/Home.svg" : "../images/home_Dark.png"
    property url programsIcon: darkTheme ? "../images/programs.svg" : "../images/program_dark.png"
    property url manualIcon: darkTheme ? "../images/Manual_Mode_Symbol.svg" : "../images/manual_dark.png"
    property url runIcon: darkTheme ? "../images/Run_Icon.svg" : "../images/runmode1_dark.png"
    property url masteringIcon: darkTheme ? "../images/robot_mastering.svg" : "../images/mastering_dark.png"
    property url robotsIcon: darkTheme ? "../images/robots.svg" : "../images/robot_dark.png"
    property url detectorIcon: darkTheme ? "../images/robot_detectors.svg" : "../images/detectors_dark.png"
    property url speedIcon: darkTheme ? "../images/speed_light.svg" : "../images/speed_dark.png"
    property url torqueIcon: darkTheme ? "../images/robot_torque.svg" : "../images/robot_torque_dark.png"
    property url lightIcon: darkTheme ? "../images/robot_light.svg" : "../images/robotlight_dark.png"
    property url aboutIcon: darkTheme ? "../images/About_Icon.svg" : "../images/about_dark.png"
    property url webIcon: darkTheme ? "../images/web_light.png" : "../images/web_dark.png"
    property url settingIcon: darkTheme ? "../images/Setup_Icon.svg" : "../images/setup_dark.png"

    property url leftIcon: darkTheme ? "../images/Left_Arrow.png" : "../images/squreleftarrow.png"
    property url dropIcon: darkTheme ? "../images/Drop_down_arrow.png" : "../images/dropdown.png"
    property url rightIcon: darkTheme ? "../images/Right_Arrow.png" : "../images/leftupbluerightarrow.png"

    property url uprightleftIcon: darkTheme ? "../images/Arrow_top_left.png" : "../images/lefttoparrow.png"
    property url uprightrightIcon: darkTheme ? "../images/Arrow_right.png" : "../images/righttoparrow.png"

    property url downrightrightIcon: darkTheme ? "../images/Arrow_Down_right.png" : "../images/righttoparrow(copy).png"
    property url downrightleftIcon: darkTheme ? "../images/Arrow_down_left.png" : "../images/lefttoparrow.png"

    property url listIcon: darkTheme ? "../images/menuline.png" : "../images/listview.png"
    property url gridIcon: darkTheme ? "../images/Layout_Button.png" : "../images/gridview.png"

    property url sortasc: darkTheme ? "../images/asc_light.png" : "../images/asc_dark.png"
    property url sortdesc: darkTheme ? "../images/desc_light.png" : "../images/desc_dark.png"
}
