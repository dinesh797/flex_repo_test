import QtQuick 2.15
import QtQuick.Window

Image {
    id: logo

    anchors.fill: parent
    x: Screen.width / 2 - width / 2
    y: Screen.height / 2 - height / 2
    width: 1000 / 1.050
    height: 600 / 1.050
    source: "./images/robot_bg.jpg"
    fillMode: Image.PreserveAspectFit
}
