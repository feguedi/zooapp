import QtQuick 2.0
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.0

Page {
    id: page

    property alias txtNombre: nombre.text
    property alias txtPuesto: puesto.text
    property alias txtNoEmpleado: noEmpleado.text
    property alias txtZooAsignado: zooAsignado.text
    property alias txtArea: area.text
    property alias txtTelefono: telefono.text
    property alias txtEMail: eMail.text
    property alias txtItinerarios: itinerarios.text
    property alias txtEspecies: especiesCargo.text
    property alias vsbItinerarios: itinerarios.visible
    property alias vsbEspecies: especiesCargo.visible

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
        source: "images/user-3.png"
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
                id: labelPuesto
                text: qsTr("Puesto: ")
                font.pointSize: 14
                font.bold: true
                Layout.preferredHeight: 28
                Layout.preferredWidth: 144
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
            }

            Label {
                id: puesto
                text: qsTr("Label")
                Layout.fillWidth: true
            }
        }

        RowLayout {
            Layout.fillWidth: true

            Label {
                id: labelNoEmpleado
                text: qsTr("No. empleado: ")
                font.pointSize: 14
                font.bold: true
                Layout.preferredHeight: 28
                Layout.preferredWidth: 144
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignRight
            }

            Label {
                id: noEmpleado
                text: qsTr("Label")
                Layout.fillWidth: true
            }
        }

        RowLayout {
            Layout.fillWidth: true

            Label {
                id: labelZooAsignado
                text: qsTr("Zoológico asignado: ")
                font.pointSize: 14
                font.bold: true
                Layout.preferredHeight: 28
                Layout.preferredWidth: 144
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
            }

            Label {
                id: zooAsignado
                text: qsTr("Label")
                Layout.fillWidth: true
            }
        }

        RowLayout {
            Layout.fillWidth: true

            Label {
                id: labelArea
                text: qsTr("Área: ")
                font.pointSize: 14
                font.bold: true
                Layout.preferredHeight: 28
                Layout.preferredWidth: 144
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
            }

            Label {
                id: area
                text: qsTr("Label")
                Layout.fillWidth: true
            }
        }

        RowLayout {
            Layout.fillWidth: true

            Label {
                id: labelTelefono
                text: qsTr("Teléfono de Contacto: ")
                font.pointSize: 14
                font.bold: true
                Layout.preferredHeight: 28
                Layout.preferredWidth: 144
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
            }

            Label {
                id: telefono
                text: qsTr("Label")
                Layout.fillWidth: true
            }
        }

        RowLayout {
            Layout.fillWidth: true

            Label {
                id: labelEMail
                text: qsTr("Correo electrónico: ")
                font.pointSize: 14
                font.bold: true
                Layout.preferredHeight: 28
                Layout.preferredWidth: 144
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
            }

            Label {
                id: eMail
                text: qsTr("Label")
                Layout.fillWidth: true
            }
        }

        RowLayout {
            visible: false
            Layout.fillWidth: true

            Label {
                id: labelItinerarios
                text: qsTr("Itinerarios: ")
                font.pointSize: 14
                font.bold: true
                Layout.preferredHeight: 28
                Layout.preferredWidth: 144
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
            }

            Label {
                id: itinerarios
                text: qsTr("Label")
                Layout.fillWidth: true
            }
        }

        RowLayout {
            visible: false
            Layout.fillWidth: true

            Label {
                id: labelEspecies
                text: qsTr("Especies a Cargo: ")
                font.pointSize: 14
                font.bold: true
                Layout.preferredHeight: 28
                Layout.preferredWidth: 144
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
            }

            Label {
                id: especiesCargo
                text: qsTr("Label")
                Layout.fillWidth: true
            }
        }
    }

}
