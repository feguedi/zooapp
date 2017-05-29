import QtQuick 2.0
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.0

Page {
    id: page

    property alias txtNombre: nombre.text
    property alias txtTaxonomia: taxonomia.text
    property alias txtDescripcion: descripcion.text
    property alias txtHabitat: habitatt.text
    property alias txtZona: zona.text

    header: ToolBar {
        height: 30
        background: Rectangle {
            color: "transparent"
        }
        ToolButton {
            height: 25
            width: height
            flat: true
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 10
            contentItem: Image {
                source: "images/back.png"
                fillMode: Image.PreserveAspectFit
            }
            onClicked: {
                stackView.pop();
            }
        }
    }

    Image {
        id: image
        width: 100
        anchors.horizontalCenter: parent.horizontalCenter
        fillMode: Image.PreserveAspectFit
        anchors.bottom: columnInfo.top
        anchors.bottomMargin: 10
        anchors.top: parent.top
        anchors.topMargin: 20
        source: "images/safari/012-rhinoceros.png"
    }

    ColumnLayout {
        id: columnInfo
        width: 294
        height: 226
        anchors.horizontalCenter: parent.horizontalCenter
        //anchors.top: image.bottom
        //anchors.topMargin: 10
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20

        RowLayout {
            Layout.fillWidth: true

            Label {
                id: labelNombre
                text: qsTr("Nombre: ")
                font.pointSize: 14
                font.bold: true
                Layout.preferredHeight: 28
                Layout.preferredWidth: 144
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter

            }

            Label {
                id: nombre
                text: qsTr("Label")
                Layout.fillWidth: true
            }
        }

        RowLayout {
            Layout.fillWidth: true

            Label {
                id: labelTaxonomia
                text: qsTr("Taxonomía: ")
                font.pointSize: 14
                font.bold: true
                Layout.preferredHeight: 28
                Layout.preferredWidth: 144
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
            }

            Label {
                id: taxonomia
                text: qsTr("Label")
                Layout.fillWidth: true
            }
        }

        RowLayout {
            Layout.fillWidth: true

            Label {
                id: labelDescripcion
                text: qsTr("Descripción: ")
                font.pointSize: 14
                font.bold: true
                Layout.preferredHeight: 28
                Layout.preferredWidth: 144
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignRight
            }

            Label {
                id: descripcion
                text: qsTr("Label")
                Layout.fillWidth: true
            }
        }

        RowLayout {
            Layout.fillWidth: true

            Label {
                id: labelHabitat
                text: qsTr("Hábitat: ")
                font.pointSize: 14
                font.bold: true
                Layout.preferredHeight: 28
                Layout.preferredWidth: 144
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
            }

            Label {
                id: habitatt
                text: qsTr("Label")
                Layout.fillWidth: true
            }
        }

        RowLayout {
            Layout.fillWidth: true

            Label {
                id: labelZona
                text: qsTr("Zona: ")
                font.pointSize: 14
                font.bold: true
                Layout.preferredHeight: 28
                Layout.preferredWidth: 144
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
            }

            Label {
                id: zona
                text: qsTr("Label")
                Layout.fillWidth: true
            }
        }

    }
}
