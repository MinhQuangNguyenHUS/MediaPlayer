import QtQuick 2.9
import QtQuick 2.7
import QtQuick.Window 2.3
import QtQuick.Controls 2.2
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.3
import QtQml 2.2

Item {
    width: 120
    height: 120




    Rectangle {
        id: rectangle
        width: 120
        height: 120
        color: "#a4a0c4"
    }

    Frame {
        id: frame
        x: 30
        y: 85
        width: 70
        height: 30
        focusPolicy: Qt.StrongFocus
        font.wordSpacing: 10
        contentWidth: -7
        font.capitalization: Font.Capitalize
        font.family: "Times New Roman"
        font.bold: true
        font.pointSize: 17
    }
    Image {
        id: image
        x: 12
        y: 0
        width: 100
        height: 80
        sourceSize.height: 120
        sourceSize.width: 120
        source: "da_click.png"
    }
    Text {
        id: text1
        x: 30
        y: 85
        width: 70
        height: 30
        text: qsTr("video_name")
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 12
    }
}
