import QtQuick 2.0
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.1
import QtGraphicalEffects 1.0

Page {
    id: page

    property alias modeloEspecies: elementos
    property bool seleccionado: false

    header: ToolBar {
        id: toolBar
        height: 40
        background: Rectangle {
            color: "transparent"
        }

        Rectangle {
            anchors.fill: parent
            visible: seleccionado
            color: "#212121"
            ToolButton {
                id: botonModificar
                x: 0
                width: parent.width / 2
                flat: true
                Layout.fillHeight: true
                contentItem: Label {
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 18
                    text: qsTr("Modificar")
                    color: "white"
                }
            }
            Rectangle {
                height: parent.height
                width: 2
                x: parent.width / 2 - 1
                color: "#e0e0e0"
            }
            ToolButton {
                id: botonEliminar
                x: parent.width / 2
                width: parent.width / 2
                flat: true
                Layout.fillHeight: true
                contentItem: Label {
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 18
                    color: "white"
                    text: qsTr("Eliminar")
                }
            }
        }
        Buscador {
            id: buscador
            visible: !seleccionado
            anchors.fill: parent
            anchors.leftMargin: 10
            anchors.rightMargin: 10
            // anchors.centerIn: toolBar
            placeholderText: "Buscar especie..."
        }
    }

    ListModel {
        id: elementos
        ListElement {
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

    Page {
        id: todosForm
        ListView {
            id: listViewTodos
            anchors.fill: parent
            anchors.margins: 15
            focus: true
            highlight: Rectangle { color: Qt.rgba(244, 218, 183, 0); border.color: "transparent" }

            model: elementos

            delegate: ItemDelegate {
                width: listViewTodos.width
                checkable: true
                highlighted: ListView.isCurrentItem

                RowLayout {
                    width: parent.width
                    Label {
                        id: nombreSwipeDelegate
                        anchors.left: parent.left
                        anchors.leftMargin: 4
                        anchors.verticalCenter: parent.verticalCenter
                        text: model.nombre
                        font.pointSize: 16
                        color: "black"
                    }
                    Label {
                        id: cargoSwipeDelegate
                        font.pointSize: 11
                        anchors.right: parent.right
                        anchors.rightMargin: 4
                        anchors.verticalCenter: parent.verticalCenter
                        text: model.taxonomia
                        color: "#555"
                    }
                }

                onPressAndHold: {
                    seleccionado = !seleccionado;
                    checked = !checked;
                }
                onClicked: {
                    stackView.push(especiesInfoForm)
                    especiesInfoForm.txtNombre = model.nombre;
                    especiesInfoForm.txtTaxonomia = model.taxonomia;
                    especiesInfoForm.txtDescripcion = model.descripcion;
                    especiesInfoForm.txtHabitat = model.habitatt;
                    especiesInfoForm.txtZona = model.zona;
                }
            }
            ScrollIndicator.vertical: ScrollIndicator { }
        }

        Component.onCompleted: {
            seleccionado = false;
            listViewTodos.currentIndex = -1;
        }
    }



    Popup {
        id: nuevoPopup
        modal: true
        focus: true
        x: (page.width - width) / 2
        y: page.height / 6
        width: Math.min(page.width, page.height) / 3 * 2
        contentHeight: nuevaEspecie.height

        Column {
            id: nuevaEspecie
            spacing: 20

            Label {
                text: "Nombre"
                font.pointSize: 9
            }
            TextField {
                placeholderText: "Nombre"
                onPressed: {
                    nombreSubrayado.visible = !nombreSubrayado.visible
                }
                Rectangle {
                    id: nombreSubrayado
                    visible: false
                    anchors.bottom: parent.bottom
                    width: parent.width
                    height: 2
                    color: "#212121"
                }
                font.pointSize: 14
                background: Rectangle { border.color: "transparent" }
            }
            Label {
                text: ""
            }
        }

        onClosed: {
            botonAgregar.z = listViewTodos.z;
            //efecto.radius = 0;
        }
    }

    /*GaussianBlur {
        id: efecto
        anchors.fill: parent
        source: page
        radius: 0
        samples: 16
    }*/

    BotonAgregar {
        id: botonAgregar
        height: 85
        width: height
        z: 1
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 15
        anchors.right: parent.right
        anchors.rightMargin: 15
        onClicked: {
            nuevoPopup.open();
            botonAgregar.z = 0;
            //efecto.radius = 6;
        }
    }

    DropShadow {
        anchors.fill: botonAgregar
        horizontalOffset: 3
        verticalOffset: 3
        radius: 8.0
        samples: 17
        source: botonAgregar
        color: "#80000000"
    }

}
