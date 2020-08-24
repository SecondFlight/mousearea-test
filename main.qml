import QtQuick 2.15
import QtQuick.Window 2.15

// Custom C++ class, implementation below
import io.github.myProject.utilities.mousehelper 1.0

Window {
    visible: true
    width: 800
    height: 600

    MouseHelper {
        id: mouseHelper
    }

    MouseArea {
        id: mouseArea
        hoverEnabled: true
        anchors.fill: parent

        property var p

        onPressed: {
            p = mouseArea.mapToGlobal(
                mouseArea.width * .5, mouseArea.height * 0.5
            );
            mouseHelper.setCursorPosition(0, 0);
        }

        onReleased: {
            mouseHelper.setCursorPosition(p.x, p.y);
        }

        onExited: {
            mouse.accepted = false;
            console.log('This happens when the mouse is moved out, not ');
        }
    }
}
