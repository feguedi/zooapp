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
            anchors.fill: parent

            model: elementos

            TableViewColumn {
                role: "evento"
                title: "Evento"
            }
            TableViewColumn {
                role: "codigo"
                title: "Código"
            }
            TableViewColumn {
                role: "horario"
                title: "Horario"
            }
            TableViewColumn {
                role: "maxVisitantes"
                title: "Max. No. Visitantes"
            }
            TableViewColumn {
                role: "especiesVisitar"
                title: "No. Especies a Visitar"
            }
            TableViewColumn {
                role: "zonasRecorre"
                title: "Zonas que recorre"
            }
        }

        ListModel {
            id: elementos
            ListElement {
                evento: "Aqualandia"
                codigo: 5209
                horario: "15:00 a 17:00"
                maxVisitantes: 20
                especiesVisitar: 32
                zonasRecorre: "4"
            }
            ListElement {
                evento: "África Salvaje"
                codigo: 5310
                horario: "8:00 a 12:00"
                maxVisitantes: 30
                especiesVisitar: 50
                zonasRecorre: "1, 2, 3"
            }
        }
    }
}
