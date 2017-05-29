import QtQuick 2.7
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.0
import QtGraphicalEffects 1.0

Page {
    id: page
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
            placeholderText: "Buscar empleado..."
        }
    }

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        ListModel {
            id: modeloEmpleados
            ListElement {
                nombre: "Lorem"
                puesto: "Ipsum"
                noEmpleado: "fadsfa"
                zooAsignado: "adsfadsfa"
                area: "asdfasdfa"
                telefono: "adsfadsfa"
                eMail: "adsfasdfadfsa"
            }
            ListElement {
                nombre: "Dolor"
                puesto: "Sit"
                noEmpleado: "gjhkghjkg"
                zooAsignado: "ghjgjk"
                area: "gjhkg"
                telefono: "gjhkgjh"
                eMail: "gjhkgjhk"
            }
            ListElement {
                nombre: "Amet"
                puesto: "Consectetur"
                noEmpleado: "tuyituyi"
                zooAsignado: "tutyuiiiutr"
                area: "ooiytuiot"
                telefono: "tyuit"
                eMail: "tyuituiytyui"
            }
            ListElement {
                nombre: "Adipiscing"
                puesto: "Elit"
                noEmpleado: "qwerty"
                zooAsignado: "qwerqerwqrtw"
                area: "rwetwretw"
                telefono: "qwerqtrqertq"
                eMail: "ewrqwerqewrq"
            }
            ListElement {
                nombre: "Quisque"
                puesto: "Arcu"
                noEmpleado: "vczxcvzcxvz"
                zooAsignado: "cxzxcvzxcvz"
                area: "zxcvxzx"
                telefono: "646465465464"
                eMail: "hdgjjfghjfhgjdgfhsfg"
                especies: "Pantheras"
            }
            ListElement {
                nombre: "Velit"
                puesto: "Iaculis"
                noEmpleado: "vnbmvbnm"
                zooAsignado: "vnbmv"
                area: "mvnnmvbnmv"
                telefono: "fhjfjhkkldf"
                eMail: "nbmdghxvb"
                itinerarios: "43/12"
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

                model: modeloEmpleados

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
                            text: model.puesto
                            color: "#555"
                        }
                    }

                    onPressAndHold: {
                        seleccionado = !seleccionado;
                        checked = !checked;
                    }
                    onClicked: {
                        stackView.push("EmpleadosInfo.qml")
                        empleadosInfoForm.txtNombre = model.nombre;
                        empleadosInfoForm.txtPuesto = model.puesto;
                        empleadosInfoForm.txtNoEmpleado = model.noEmpleado;
                        empleadosInfoForm.txtZooAsignado = model.zooAsignado;
                        empleadosInfoForm.txtArea = model.area;
                        empleadosInfoForm.txtTelefono = model.telefono;
                        empleadosInfoForm.txtEMail = model.eMail;
                        if(model.especies != "")
                        {
                            empleadosInfoForm.vsbEspecies = true;
                            empleadosInfoForm.txtEspecies = model.especies;
                        }
                        if(model.itinerarios != "")
                        {
                            empleadosInfoForm.vsbItinerarios = true;
                            empleadosInfoForm.txtItinerarios = model.itinerarios;
                        }
                    }
                }
                ScrollIndicator.vertical: ScrollIndicator { }
            }

            Component.onCompleted: {
                seleccionado = false;
                listViewTodos.currentIndex = -1;
                buscador.placeholderText = "Buscar empleados...";
            }
        }

        Page {
            id: guiasForm
            ListView {
                id: listViewGuias
                anchors.fill: parent
                anchors.margins: 15
                focus: true
                highlight: Rectangle { color: Qt.rgba(244, 218, 183, 0); border.color: "transparent" }

                model: modeloEmpleados

                delegate: ItemDelegate {
                    width: listViewTodos.width
                    checkable: true
                    highlighted: ListView.isCurrentItem

                    RowLayout {
                        width: parent.width
                        Label {
                            id: nombreGuiaSwipeDelegate
                            anchors.left: parent.left
                            anchors.leftMargin: 4
                            anchors.verticalCenter: parent.verticalCenter
                            text: model.nombre
                            font.pointSize: 16
                            color: "black"
                        }
                        Label {
                            id: cargoGuiaSwipeDelegate
                            font.pointSize: 11
                            anchors.right: parent.right
                            anchors.rightMargin: 4
                            anchors.verticalCenter: parent.verticalCenter
                            text: model.puesto
                            color: "#555"
                        }
                    }

                    onPressAndHold: {
                        seleccionado = !seleccionado;
                        checked = !checked;
                    }
                    onClicked: {
                        stackView.push("EmpleadosInfo.qml")
                        EmpleadosInfo.txtNombre = model.nombre;
                        EmpleadosInfo.txtPuesto = model.puesto;
                        EmpleadosInfo.txtNoEmpleado = model.noEmpleado;
                        EmpleadosInfo.txtZooAsignado = model.zooAsignado;
                        EmpleadosInfo.txtArea = model.area;
                        EmpleadosInfo.txtTelefono = model.telefono;
                        EmpleadosInfo.txtEMail = model.eMail;
                        if(model.especies != "")
                        {
                            EmpleadosInfo.vsbEspecies = true;
                            EmpleadosInfo.txtEspecies = model.especies;
                        }
                        if(model.itinerarios != "")
                        {
                            EmpleadosInfo.vsbItinerarios = true;
                            EmpleadosInfo.txtItinerarios = model.itinerarios;
                        }
                    }
                }
                ScrollIndicator.vertical: ScrollIndicator { }
            }
            Component.onCompleted: {
                seleccionado = false;
                listViewGuias.currentIndex = -1;
                if(swipeView.currentIndex == 1)
                {
                    buscador.placeholderText = "Buscar guía...";
                }
            }
        }

        Page {
            id: cuidadoresForm
            ListView {
                id: listViewCuidadores
                anchors.fill: parent
                anchors.margins: 15
                focus: true
                highlight: Rectangle { color: Qt.rgba(244, 218, 183, 0); border.color: "transparent" }

                model: modeloEmpleados

                delegate: ItemDelegate {
                    width: listViewTodos.width
                    checkable: true
                    highlighted: ListView.isCurrentItem

                    RowLayout {
                        width: parent.width
                        Label {
                            id: nombreCuidadorSwipeDelegate
                            anchors.left: parent.left
                            anchors.leftMargin: 4
                            anchors.verticalCenter: parent.verticalCenter
                            text: model.nombre
                            font.pointSize: 16
                            color: "black"
                        }
                        Label {
                            id: cargoCuidadorSwipeDelegate
                            font.pointSize: 11
                            anchors.right: parent.right
                            anchors.rightMargin: 4
                            anchors.verticalCenter: parent.verticalCenter
                            text: model.puesto
                            color: "#555"
                        }
                    }

                    onPressAndHold: {
                        seleccionado = !seleccionado;
                        checked = !checked;
                    }
                    onClicked: {
                        stackView.push("EmpleadosInfo.qml")
                        EmpleadosInfo.txtNombre = model.nombre;
                        EmpleadosInfo.txtPuesto = model.puesto;
                        EmpleadosInfo.txtNoEmpleado = model.noEmpleado;
                        EmpleadosInfo.txtZooAsignado = model.zooAsignado;
                        EmpleadosInfo.txtArea = model.area;
                        EmpleadosInfo.txtTelefono = model.telefono;
                        EmpleadosInfo.txtEMail = model.eMail;
                        if(model.especies != "")
                        {
                            EmpleadosInfo.vsbEspecies = true;
                            EmpleadosInfo.txtEspecies = model.especies;
                        }
                        if(model.itinerarios != "")
                        {
                            EmpleadosInfo.vsbItinerarios = true;
                            EmpleadosInfo.txtItinerarios = model.itinerarios;
                        }
                    }
                }
                ScrollIndicator.vertical: ScrollIndicator { }
            }
            Component.onCompleted: {
                seleccionado = false
                listViewCuidadores.currentIndex = -1;
                if(swipeView.currentIndex == 2)
                {
                    buscador.placeholderText = "Buscar cuidador...";
                }
            }
        }
    }

    Popup {
        id: nuevoPopup
        modal: true
        focus: true
        x: (page.width - width) / 2
        y: page.height / 6
        width: Math.min(page.width, page.height) / 3 * 2
        contentHeight: nuevoEmpleado.height

        Column {
            id: nuevoEmpleado
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
    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        TabButton {
            text: qsTr("Todos")
            font.pointSize: 18
        }
        TabButton {
            text: qsTr("Guías")
            font.pointSize: 18
        }
        TabButton {
            text: qsTr("Cuidadores")
            font.pointSize: 18
        }
    }
}
