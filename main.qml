import QtQuick 2.9
import QtQuick.Window 2.3
import QtQuick.Controls 2.2
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.3
import QtQml 2.2
Window {
    visible: true
    width: 640
    height: 505
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
                        Text:"Playlist"

                        Text {
                            id: text1
                            text: qsTr("Playlist")
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
        }
    }






}


