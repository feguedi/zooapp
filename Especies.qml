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
            sortIndicatorVisible: true
            anchors.fill: parent

            TableViewColumn {
                role: "nombre"
                title: "Nombre"
            }
            TableViewColumn {
                role: "taxonomia"
                title: "Taxonomía"
            }
            TableViewColumn {
                role: "descripcion"
                title: "Descripción"
            }
            TableViewColumn {
                role: "habitatt"
                title: "Hábitat"
            }
            TableViewColumn {
                role: "zona"
                title: "Zona Asignada"
            }
            model: elementos
        }

        ListModel {
            id: elementos
            ListElement {
                boton: "images/delete.png"
                nombre: "León"
                taxonomia: "Pantera Leo"
                descripcion: "Mamífero"
                habitatt: "Sabana"
                zona: "2"
            }
            ListElement {
                nombre: "Tigre"
                taxonomia: "Pantera Tigris"
                descripcion: "Mamífero"
                habitatt: "Sabana / Selva"
                zona: "2"
            }
        }

    }
}
