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
    property alias text1: text1
    title: qsTr("Audio_app")

    Column {
        id: column

        Row {
            id: row
            width: parent.width
            height: 40
            clip: true

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
                Layout.minimumHeight: 420
                Layout.minimumWidth: 540
                Layout.columnSpan: 0
                Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                Layout.fillWidth: false
                Layout.fillHeight: false
                Layout.rowSpan: 0
                Layout.preferredHeight: -1
                Layout.preferredWidth: -1
                columnSpacing: 40
                rowSpacing: 30
                layoutDirection: Qt.LeftToRight
                columns: 3
                rows: 2
                flow: GridLayout.TopToBottom

                Demo {
                    id: demo
                }

                Demo {
                    id: demo1
                }

                Demo {
                    id: demo2
                }

                Demo {
                    id: demo3
                }

                Demo {
                    id: demo4
                }

                Demo {
                    id: demo5
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
                y: 10
                width: 80
                height: 20
                anchors.left: parent.left
                anchors.leftMargin: 100

            }
        }
    }

    Frame {
        id: frame
        x: 0
        y: 40
        width: 100
        height: 420
    }

    Frame {
        id: frame1
        x: 100
        y: 40
        width: 540
        height: 420
        focusPolicy: Qt.ClickFocus
    }

    Frame {
        id: frame2
        width: 640
        height: 40
    }
}


