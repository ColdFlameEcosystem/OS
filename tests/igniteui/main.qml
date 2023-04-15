import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Controls.Material
import igniteui

Window {
    width: 640
    height: 400
    visible: true
    title: qsTr("Example Project")

    MyItem {
        id: rect
        anchors.top: parent.top
        anchors.margins: 20
        width: 100
        height: 100
    }
}
