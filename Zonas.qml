import QtQuick 2.0
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.1

Page {
    id: page

    property alias btnMapa: botonMapa
    property alias btnItinerario: botonItinerarios

    ColumnLayout {
        anchors.leftMargin: 56
        anchors.bottomMargin: 35
        anchors.rightMargin: 56
        anchors.topMargin: 35
        anchors.fill: parent

        ColumnLayout {
            Button {
                id: botonMapa
                Layout.fillHeight: true
                Layout.fillWidth: true
                flat: true
                contentItem: Image {
                    fillMode: Image.PreserveAspectFit
                    source: "images/map.png"
                }
            }
            Label {
                id: label
                text: qsTr("Mapa")
                Layout.fillHeight: true
                Layout.fillWidth: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }
        }

        ColumnLayout {
            Button {
                id: botonItinerarios
                Layout.fillHeight: true
                Layout.fillWidth: true
                flat: true
                contentItem: Image {
                    source: "images/calendar-5.png"
                    fillMode: Image.PreserveAspectFit
                }
            }
            Label {
                id: label1
                text: qsTr("Itinerarios")
                horizontalAlignment: Text.AlignHCenter
                Layout.fillHeight: true
                Layout.fillWidth: true
                verticalAlignment: Text.AlignVCenter
            }
        }
    }
}
