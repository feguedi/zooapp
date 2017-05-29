import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

ApplicationWindow {
    id: window
    visible: true
    height: 720
    width: 480
    title: qsTr("ZooApp")

    property bool logueado: false
    property alias depth: stackView.depth

    header: ToolBar {
        id: toolBar
        visible: logueado
        height: 35

        RowLayout {
            anchors.fill: parent
            spacing: 20
            Layout.fillWidth: true

            ToolButton {
                id: botonMenu
                height: toolBar.height
                width: height
                flat: true
                contentItem: Image {
                    height: toolBar.height - 3
                    width: height
                    source: "images/menu-2.png"
                    fillMode: Image.Pad
                }
                onClicked: drawer.open()

            }

            Label {
                id: tituloLabel
                anchors.left: botonMenu.right
                anchors.right: botonOpciones.left
                //text: listViewDrawer.currentItem ? listViewDrawer.currentItem.text : "ZooApp"
                text: "ZooApp"
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                font.pixelSize: 20
                elide: Label.ElideRight
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
            }

            ToolButton{
                id: botonOpciones
                Layout.fillHeight: true
                anchors.right: parent.right
                contentItem: Image {
                    height: toolBar.height - 3
                    width: height
                    fillMode: Image.Pad
                    horizontalAlignment: Image.AlignHCenter
                    verticalAlignment: Image.AlignVCenter
                    source: "images/more-1.png"
                }
                onClicked: menuOpciones.open()

                Menu {
                    id: menuOpciones
                    x: parent.width - width
                    transformOrigin: Menu.TopRight

                    MenuItem {
                        id: datosUsuario
                        text: qsTr("Datos")
                        onClicked: {
                            stackView.push(empleadosInfoForm)
                        }
                    }

                    MenuItem {
                        id: salir
                        text: qsTr("Salir")
                        onClicked: {
                            stackView.pop(loginForm)
                            logueado = !logueado
                        }
                    }
                }
            }
        }
    }

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: loginForm

        Login {
            id: loginForm
            anchors.fill: parent
            btnEntrar.onClicked: {
                if(txtUsuario == "root" && txtContra == "toor")
                {
                    stackView.push(zonasForm)
                    logueado = !logueado
                }
            }
        }
    }

    Component {
        id: zonasForm
        Zonas {
            anchors.fill: parent
            btnMapa.onClicked: {

            }
            btnItinerario.onClicked: { stackView.push(itinerariosForm) }
        }
    }

    Component {
        id: especiesInfoForm
        EspeciesInfo {
            anchors.fill: parent
        }
    }

    Component {
        id: itinerariosForm
        Itinerarios {
            anchors.fill: parent
        }
    }

    Component {
        id: itinerariosInfoForm
        ItinerariosInfo {
            anchors.fill: parent
        }
    }

    Component {
        id: empleadosForm
        Empleados {
            anchors.fill: parent
        }
    }

    Component {
        id: empleadosInfoForm
        EmpleadosInfo {
            anchors.fill: parent
        }
    }

    Component {
        id: habitatForm
        Habitat {
            anchors.fill: parent
        }
    }

    Component {
        id: guiasForm
        Guias {
            anchors.fill: parent
        }
    }

    Component {
        id: especiesForm
        Especies {
            anchors.fill: parent
        }
    }

    Component {
        id: recorridosForm
        Recorridos {
            anchors.fill: parent
        }
    }

    Drawer {
        id: drawer
        width: Math.min(window.width, window.height) / 3
        height: window.height
        dragMargin: stackView.depth > 1 ? 0 : undefined

        ListViewDrawer {
            id: listViewDrawer
            anchors.fill: parent
            especies.onClicked: { stackView.push(especiesForm) }
            habitat.onClicked: { stackView.push(habitatForm) }
            zonas.onClicked: { stackView.push(zonasForm) }
            empleados.onClicked: { stackView.push(empleadosForm) }
        }
    }

    Component.onCompleted: {
        console.log("Estado actual: " + stackView.currentItem)
        console.log("Tamaño del drawer: " + drawer.width)
        console.log("Tamaño del listView: " + listViewDrawer.width)
        console.log("Tamaño del título: " + tituloLabel.height)
    }
}
