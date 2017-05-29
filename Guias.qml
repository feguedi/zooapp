import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.1

Item {
    id: root

    Buscador {
        id: buscador
        anchors.top: parent.top
        anchors.topMargin: 25
        anchors.left: parent.left
        anchors.leftMargin: 15
        anchors.right: parent.right
        anchors.rightMargin: 15

    }

    ColumnLayout {
        anchors.top: buscador.bottom
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 15
        anchors.right: parent.right
        anchors.rightMargin: 15
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 15

        TableView {
            id: tableView
            frameVisible: false
            Layout.fillHeight: true
            Layout.fillWidth: true

            model: elementos

            TableViewColumn {
                role: "nombre"
                title: "Nombre"
            }
            TableViewColumn {
                role: "direccion"
                title: "Dirección"
            }
            TableViewColumn {
                role: "telefono"
                title: "Teléfono"
            }
            TableViewColumn {
                role: "fechaIngreso"
                title: "Fecha de Ingreso"
            }
            TableViewColumn {
                role: "itinerarios"
                title: "Itinerarios Asignados"
            }
            TableViewColumn {
                role: "botonModificar"
            }
            TableViewColumn {
                role: "botonEliminar"
            }
        }

        ListModel {
            id: elementos
            ListElement {
                botonModificar: "M"
                botonEliminar: "E"
                nombre: "Raúl García"
                direccion: "San Simón 2, Candiles, Corregidora, Querétaro"
                telefono: "4421649758"
                fechaIngreso: "15/05/2010"
                itinerarios: 5209
            }
            ListElement {
                botonModificar: "M"
                botonEliminar: "E"
                nombre: "María Ledezma"
                direccion: "San Mateo 39, Residencial San Mateo, Corregidora, Querétaro"
                telefono: "4421649758"
                fechaIngreso: "15/05/2010"
                itinerarios: 5209
            }
        }

        BotonAgregar {
            id: botonAgregar
            implicitHeight: 100
            Layout.fillWidth: true
            anchors.top: tableView.bottom
            anchors.topMargin: 10
            anchors.left: parent.left
            anchors.right: parent.right
        }
    }
}
