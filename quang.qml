import QtQuick 2.9
import QtQuick.Window 2.3
import QtQuick.Controls 2.2
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.3
import QtQml 2.2
Window {
    id: applicationWindow
    Text {
        id: text1
        x: 0
        y: 0
        width: 640
        height: 27
        color: "#b3248907"
        text: qsTr("AudioPlayer")
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 453
        renderType: Text.QtRendering
        elide: Text.ElideMiddle
        wrapMode: Text.NoWrap
        verticalAlignment: Text.AlignVCenter
        fontSizeMode: Text.FixedSize
        font.pixelSize: 20

        TabBar {
            id: tabBar
            x: 0
            y: 30
            width: 640
            height: 20
        }

        TabButton {
            id: tabButton1
            x: 42
            y: 27
            width: 40
            height: 23
            text: qsTr("Help")
            checked: true
            autoExclusive: true
        }
    }

    TabButton {
        id: tabButton
        x: 0
        y: 27
        width: 40
        height: 23
        text: qsTr("File")
        checked: true
        clip: false
        font.weight: Font.Normal
        font.capitalization: Font.Capitalize
        autoExclusive: true
        checkable: true
    }

    ToolBar {
        id: toolBar
        x: 0
        y: 43
        width: 640
        height: 22
    }

    ItemDelegate {
        id: itemDelegate
        x: 0
        y: 71
        width: 85
        height: 365
        text: qsTr("Item Delegate")
    }
    Button{

    }

    Button {
        id: button
        x: 91
        y: 101
        width: 150
        height: 151
        text: qsTr("Music 1")
    }

    Button {
        id: button1
        x: 272
        y: 101
        width: 150
        height: 151
        text: qsTr("Music 2")
    }

    Button {
        id: button2
        x: 454
        y: 101
        width: 150
        height: 151
        text: qsTr("Music 3")
    }

    Button {
        id: button3
        x: 91
        y: 285
        width: 150
        height: 151
        text: qsTr("Music 4")
    }

    Button {
        id: button4
        x: 272
        y: 285
        width: 150
        height: 151
        text: qsTr("Music 5")
    }

    Button {
        id: button5
        x: 454
        y: 285
        width: 150
        height: 151
        text: qsTr("Music 6")
    }

    ScrollView {
        id: scrollView
        x: 86
        y: 71
        width: 554
        height: 365
    }



}
