import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls.Material 2.1
import QtGraphicalEffects 1.0

ApplicationWindow {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("ZooApp")

    property bool logueado: false
    property string especies
    property string habitat
    property string zonas
    property date itinerarios
    property string guias
    property alias depth: stackView.depth

    header: ToolBar {
        Material.foreground: "white"
        visible: logueado

        RowLayout {
            spacing: 20
            anchors.fill: parent

            ToolButton {
                id: botonMenu
                Layout.fillHeight: true
                width: height
                flat: true
                contentItem: Image {
                    source: "images/menu-2.png"
                    sourceSize: Qt.size(parent.width, parent.height)
                }

                onClicked: {
                    if(stackView.depth > 1)
                    {
                        stackView.pop()
                        listViewDrawer.currentIndex = -1
                    }
                    else
                    {
                        drawer.open()
                    }
                }
            }

            Label {
                id: tituloLabel
                text: listViewDrawer.currentItem ? listViewDrawer.currentItem.text : "ZooApp"
                font.pixelSize: 20
                elide: Label.ElideRight
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
                Layout.fillWidth: true
            }

            ToolButton{
                contentItem: Image {
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
                }
            }
        }
    }

    StackView {
        id: stackView
        anchors.fill: parent

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

        Zonas {
            id: zonasForm
            anchors.fill: parent
        }

        Itinerarios {
            id: itinerariosForm
            anchors.fill: parent
        }

        Empleados {
            id: empleadosForm
            anchors.fill: parent
        }

        Habitat {
            id: habitatForm
            anchors.fill: parent
        }

        Guias {
            id: guiasForm
            anchors.fill: parent
        }

        Especies {
            id: especiesForm
            anchors.fill: parent
        }

        Recorridos {
            id: recorridosForm
            anchors.fill: parent
        }

        Blend {
            anchors.fill: loginForm
            source: loginForm
            foregroundSource: zonasForm
            mode: "substract"
        }
    }

    Drawer {
        id: drawer
        width: Math.min(window.width, window.height) / 3 * 2
        height: window.height
        dragMargin: stackView.depth > 1 ? 0 : undefined

        ListView {
            id: listViewDrawer
            focus: true
            currentIndex: -1
            anchors.fill: parent

            delegate: ItemDelegate {
                width: parent.width
                height: parent.height / 7
                text: model.title
                highlighted: ListView.isCurrentItem
                onClicked: {
                    listViewDrawer.currentIndex = index
                    stackView.push(model.source)
                    drawer.close()
                }
            }

            model: ListModel {
                ListElement { title: "Itinerarios"; source: "Itinerarios.qml" }
                ListElement { title: "Recorridos"; source: "Recorridos.qml" }
                ListElement { title: "Especies"; source: "Especies.qml" }
                ListElement { title: "Hábitat"; source: "Habitat.qml" }
                ListElement { title: "Guías"; source: "Guias.qml" }
                ListElement { title: "Zonas"; source: "Zonas.qml" }
                ListElement { title: "Empleados"; source: "Empleados.qml" }
            }

            ScrollIndicator.vertical: ScrollIndicator { }
        }
    }
}
