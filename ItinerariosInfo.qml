import QtQuick 2.0
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.1

Page {
    id: page

    property alias txtEvento: evento.text
    property alias txtCodigo: codigo.text
    property alias txtHorario: horario.text
    property alias txtVisitantes: maxVisitantes.text
    property alias txtNoEspecies: noEspecies.text
    property alias txtZonas: zonas.text

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

    ColumnLayout {
        id: columnInfo
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.bottomMargin: 20

        RowLayout {
            Layout.fillWidth: true

            Label {
                id: labelEvento
                text: qsTr("Evento: ")
                font.pointSize: 14
                font.bold: true
                Layout.preferredHeight: 28
                Layout.preferredWidth: 144
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter

            }

            Label {
                id: evento
                text: qsTr("Label")
                Layout.fillWidth: true
            }
        }

        RowLayout {
            Layout.fillWidth: true

            Label {
                id: labelCodigo
                text: qsTr("Código: ")
                font.pointSize: 14
                font.bold: true
                Layout.preferredHeight: 28
                Layout.preferredWidth: 144
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter

            }

            Label {
                id: codigo
                text: qsTr("Label")
                Layout.fillWidth: true
            }
        }

        RowLayout {
            Layout.fillWidth: true

            Label {
                id: labelHorario
                text: qsTr("Horario: ")
                font.pointSize: 14
                font.bold: true
                Layout.preferredHeight: 28
                Layout.preferredWidth: 144
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter

            }

            Label {
                id: horario
                text: qsTr("Label")
                Layout.fillWidth: true
            }
        }

        RowLayout {
            Layout.fillWidth: true

            Label {
                id: labelMaxVisitantes
                text: qsTr("Max. No. Visitantes: ")
                font.pointSize: 14
                font.bold: true
                Layout.preferredHeight: 28
                Layout.preferredWidth: 144
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter

            }

            Label {
                id: maxVisitantes
                text: qsTr("Label")
                Layout.fillWidth: true
            }
        }

        RowLayout {
            Layout.fillWidth: true

            Label {
                id: labelNoEspecies
                text: qsTr("No. de Especies a Visitar: ")
                font.pointSize: 14
                font.bold: true
                Layout.preferredHeight: 28
                Layout.preferredWidth: 144
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter

            }

            Label {
                id: noEspecies
                text: qsTr("Label")
                Layout.fillWidth: true
            }
        }

        RowLayout {
            Layout.fillWidth: true

            Label {
                id: labelZonas
                text: qsTr("Zonas que Recorre: ")
                font.pointSize: 14
                font.bold: true
                Layout.preferredHeight: 28
                Layout.preferredWidth: 144
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter

            }

            Label {
                id: zonas
                text: qsTr("Label")
                Layout.fillWidth: true
            }
        }
    }
}
