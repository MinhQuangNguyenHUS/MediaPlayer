import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtQuick.Controls 1.4

import QtQuick.Layouts 1.3
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Column {
        id: column
        anchors.fill: parent

        Row {
            id: row
            width: parent.width

            ComboBox {
                id: comboBox
            }

            ComboBox {
                id: comboBox1
            }

        }

        Row {
            id: row1
            y: 20
            width: 640
            height: 420

            Column {
                id: column1
                width: 150
                height: 420
                anchors.left: parent.left
                anchors.leftMargin: 0

                ComboBox {
                    id: comboBox2
                    width: 150
                }
            }

            GridView {
                id: gridView
                x: 150
                y: 0
                width: 490
                height: 420
                transformOrigin: Item.Center
                layoutDirection: Qt.RightToLeft
                cacheBuffer: 320
                contentWidth: 50
                opacity: 0.8
                boundsBehavior: Flickable.StopAtBounds
                highlightMoveDuration: 150
                snapMode: GridView.NoSnap
                flow: GridView.FlowLeftToRight
                highlightRangeMode: GridView.StrictlyEnforceRange
                flickableDirection: Flickable.HorizontalAndVerticalFlick
                cellWidth: 245
                delegate: Item {
                    x: 5
                    height: 210
                    Column {
                        anchors.top: column.bottom
                        anchors.topMargin: -480
                        anchors.bottom: column.top
                        anchors.bottomMargin: -118
                        anchors.left: column.right
                        anchors.leftMargin: -640
                        anchors.right: column.left
                        anchors.rightMargin: -200
                        anchors.horizontalCenter: column.horizontalCenter
                        anchors.verticalCenter: column.verticalCenter
                        Rectangle {
                            width: 200
                            height: 100
                            color: colorCode
                            anchors.horizontalCenter: parent.horizontalCenter
                        }

                        Text {
                            x: 5
                            text: name
                            font.bold: true
                            anchors.horizontalCenter: parent.horizontalCenter
                        }
                        spacing: 5
                    }
                }
                cellHeight: 150
                model: ListModel {
                    ListElement {
                        name: "Grey"
                        colorCode: "grey"
                    }

                    ListElement {
                        name: "Red"
                        colorCode: "red"
                    }

                    ListElement {
                        name: "Blue"
                        colorCode: "blue"
                    }

                    ListElement {
                        name: "Green"
                        colorCode: "green"
                    }

                    ListElement {
                        name: "Black"
                        colorCode: "black"
                    }

                    ListElement {
                        name: "Yellow"
                        colorCode: "yellow"
                    }
                }
            }
        }

        Row {
            id: row2
            width: 640
            height: 40

            Button {
                id: button1
                width: 100
                height: 40
                text: qsTr("Pause")
                anchors.left: parent.left
                anchors.leftMargin: 270
            }

            Button {
                id: button2
                text: qsTr("Next")
                anchors.right: parent.right
                anchors.rightMargin: 170
            }

            Button {
                id: button
                text: qsTr("Return")
                anchors.left: parent.left
                anchors.leftMargin: 170
            }
        }


    }

}
