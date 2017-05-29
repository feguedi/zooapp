import QtQuick 2.5
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.0

ColumnLayout {
    id: columna
    spacing: 12

    property alias especies: especiesDelegate
    property alias habitat: habitatDelegate
    property alias zonas: zonasDelegate
    property alias empleados: empleadosDelegate

    ItemDelegate {
        id: habitatDelegate
        anchors.horizontalCenter: parent.horizontalCenter
        Layout.fillWidth: true
        Layout.fillHeight: true
        ColumnLayout{
            anchors.fill: parent
            //height: parent.height / 4 - 16
            Image {
                id: image3
                //Layout.preferredHeight: 100
                Layout.fillHeight: true
                source: "images/safari/022-tree.png"
                fillMode: Image.PreserveAspectFit
                //Layout.preferredWidth: 100
                Layout.fillWidth: true
            }

            Label {
                id: label3
                text: qsTr("Habitats")
                horizontalAlignment: Text.AlignHCenter
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Layout.fillWidth: true
                verticalAlignment: Text.AlignVCenter
            }
        }
    }

    Rectangle {
        id: rectangle
        width: parent.width
        height: 3
        color: "#80000000"
    }

    ItemDelegate {
        id: especiesDelegate
        anchors.horizontalCenter: parent.horizontalCenter
        Layout.fillHeight: true
        Layout.fillWidth: true
        //height: parent.height / 4 - 16
        ColumnLayout{
            anchors.fill: parent
            Image {
                id: image2
                //Layout.preferredHeight: 100
                Layout.fillHeight: true
                source: "images/safari/012-rhinoceros.png"
                fillMode: Image.PreserveAspectFit
                //Layout.preferredWidth: 100
                Layout.fillWidth: true
            }

            Label {
                id: label2
                text: qsTr("Especies")
                horizontalAlignment: Text.AlignHCenter
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Layout.fillWidth: true
                verticalAlignment: Text.AlignVCenter
            }
        }
    }

    Rectangle {
        id: rectangle1
        width: parent.width
        height: 3
        color: "#80000000"
    }

    ItemDelegate {
        id: zonasDelegate
        anchors.horizontalCenter: parent.horizontalCenter
        Layout.fillWidth: true
        Layout.fillHeight: true
        //height: parent.height / 4 - 16
        ColumnLayout{
            anchors.fill: parent
            Image {
                id: image1
                //Layout.preferredHeight: 100
                Layout.fillHeight: true
                source: "images/map.png"
                fillMode: Image.PreserveAspectFit
                //Layout.preferredWidth: 100
                Layout.fillWidth: true
            }

            Label {
                id: label1
                text: qsTr("Zonas")
                horizontalAlignment: Text.AlignHCenter
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Layout.fillWidth: true
                verticalAlignment: Text.AlignVCenter
            }
        }
    }

    Rectangle {
        id: rectangle2
        width: parent.width
        height: 3
        color: "#80000000"
    }

    ItemDelegate {
        id: empleadosDelegate
        anchors.horizontalCenter: parent.horizontalCenter
        Layout.fillWidth: true
        Layout.fillHeight: true
        //height: parent.height / 4 - 16
        //anchors.bottom: parent.bottom
        ColumnLayout {
            anchors.fill: parent
            Image {
                id: image
                Layout.fillHeight: true
                Layout.fillWidth: true
                fillMode: Image.PreserveAspectFit
                //Layout.preferredHeight: 100
                //Layout.preferredWidth: 100
                source: "images/users-1.png"
            }

            Label {
                id: label
                text: qsTr("Empleados")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            }
        }
    }
}
