import QtQuick 2.9
import QtQuick 2.7
import QtQuick.Window 2.3
import QtQuick.Controls 2.2
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.3
import QtQml 2.2
Window {
    visible: true
    width: 640
    height: 505
    property alias rectangle1: rectangle1
    property alias rectangle: rectangle
    property alias text1: text1
    title: qsTr("Hello World")

    Column {
        id: column

        Row {
            id: row
            width: parent.width
            height: 40

            ComboBox {
                id: comboBox
                width: 70
                height: 25
                transformOrigin: Item.Center
                activeFocusOnPress: true
                model: ["Stream"]
            }
            ComboBox {
                id: comboBox1
                width: 100
                height: 25
                transformOrigin: Item.Center
                activeFocusOnPress: true
                model: ["Organize"]
            }
            ComboBox {
                id: comboBox2
                width: 110
                height: 25
                transformOrigin: Item.Center
                activeFocusOnPress: true
                model: ["Create playlist"]
            }
        }


        RowLayout {
            id: rowLayout
            width: 640
            height: 420

            ColumnLayout {
                id: columnLayout
                width: 100
                height: 100

                Item {
                    id: item1
                    Rectangle{
                        id: rectangle
                        x: 3
                        y: 35
                        width: 66
                        height: 30
                        border.color: "black"
                        border.width:   1

                        Text {
                            id: text1
                            x: 5
                            y: 3
                            width: 64
                            height: 22
                            text: qsTr("Playlist")
                            verticalAlignment: Text.AlignVCenter
                            horizontalAlignment: Text.AlignHCenter
                            font.pixelSize: 12

                        }


                    }
                    Rectangle {
                        id: rectangle1
                        x: 3
                        y: 99
                        width: 69
                        height: 29
                        color: "#ffffff"
                        border.color: "black"
                        border.width:   1
                        Text {
                            id: text2
                            x: 5
                            y: 3
                            width: 64
                            height: 22
                            text: qsTr("Artist")
                            verticalAlignment: Text.AlignVCenter
                            horizontalAlignment: Text.AlignHCenter
                            font.pixelSize: 12

                        }

                    }

                    Rectangle {
                        id: rectangle2
                        x: 3
                        y: 172
                        width: 76
                        height: 28
                        color: "#ffffff"
                        border.color: "black"
                        border.width:   1
                        Text {
                            id: text3
                            x: 5
                            y: 3
                            width: 71
                            height: 22
                            text: qsTr("Other Library")
                            verticalAlignment: Text.AlignVCenter
                            horizontalAlignment: Text.AlignLeft
                            font.pixelSize: 12

                        }

                    }

                }
            }

            GridLayout {
                id: gridLayout
                x: 120
                y: 0
                width: 520
                height: 420
                Layout.columnSpan: 0
                Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                Layout.fillWidth: false
                Layout.fillHeight: false
                Layout.rowSpan: 0
                Layout.preferredHeight: 420
                Layout.preferredWidth: 540
                columnSpacing: 40
                rowSpacing: 30
                layoutDirection: Qt.LeftToRight
                columns: 3
                rows: 2
                flow: GridLayout.TopToBottom

                Button {
                    id: button
                    height: 100
                    text: qsTr("Button")
                    Layout.preferredHeight: 120
                    Layout.preferredWidth: 120
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }

                Button {
                    id: button1
                    height: 100
                    text: qsTr("Button")
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    Layout.preferredHeight: 120
                    Layout.preferredWidth: 120
                }

                Button {
                    id: button2
                    height: 100
                    text: qsTr("Button")
                    Layout.preferredHeight: 120
                    Layout.preferredWidth: 120
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }

                Button {
                    id: button3
                    height: 100
                    text: qsTr("Button")
                    Layout.preferredHeight: 120
                    Layout.preferredWidth: 120
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }

                Button {
                    id: button4
                    width: 100
                    height: 100
                    text: qsTr("Button")
                    Layout.preferredHeight: 120
                    Layout.preferredWidth: 120
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }

                Button {
                    id: button5
                    height: 100
                    text: qsTr("Button")
                    Layout.preferredHeight: 120
                    Layout.preferredWidth: 120
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }
            }

        }
        Row {
            id: row2
            width: 640
            height: 40

            RoundButton {
                id: roundButton
                x: 180
                y: 0
                width: 40
                text: "Return"
                anchors.left: roundButton1.right
                anchors.leftMargin: -200
            }

            RoundButton {
                id: roundButton1
                y: 0
                text: "Play"
                anchors.left: roundButton2.right
                anchors.leftMargin: -200
            }

            RoundButton {
                id: roundButton2
                x: 800
                y: 0
                text: "Next"
                focusPolicy: Qt.NoFocus
                anchors.right: parent.right
                anchors.rightMargin: 80
            }
            Slider{
                id:slider
                x: 100
                y: 10
                width: 80
                height: 20

            }
        }
    }
}


