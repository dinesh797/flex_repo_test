import QtQuick 2.9
import QtQuick.Timeline 1.0

Item {
    id: root
    anchors.fill: parent
    property alias progress: timeline.currentFrame

    Rectangle {
        id: pb_back
        color: "transparent"
        radius: 4
        anchors.fill: parent
        Rectangle {
            id: pb_front
            radius: 4
            color: "transparent"
            anchors.bottomMargin: 5
            anchors.left: parent.left
            anchors.leftMargin: 5
            anchors.bottom: parent.bottom
            anchors.top: parent.top
            anchors.topMargin: 5
            width: parent.width * 0.99
            height: parent.height * 0.99
        }
    }

    Timeline {
        id: timeline
        enabled: true
        startFrame: 0
        endFrame: 100

        KeyframeGroup {
            target: pb_front
            property: "width"

            Keyframe {
                value: 0
                frame: 0
            }

            Keyframe {
                value: parent.width
                frame: 100
            }
        }

        KeyframeGroup {
            target: pb_front
            property: "color"
            Keyframe {
                value: "#8de98d"
                frame: 0
            }

            Keyframe {
                value: "#de4f4f"
                frame: 50
            }

            Keyframe {
                value: "#f0c861"
                frame: 100
            }
        }
    }
}
