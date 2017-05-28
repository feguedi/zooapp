import QtQuick 2.0
import QtQuick.Controls 2.1

TextField {
    id: buscador

    placeholderText: qsTr("Buscar especie...")
    background: Rectangle {
        color: "white"
        border.color: "#aaa"
        radius: height / 2
    }
}
