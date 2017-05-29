import QtQuick 2.4
import QtQuick.Controls 2.0
import QtQuick.Window 2.2
//import QtQuick.Controls.Material 2.0
import QtQuick.Layouts 1.0

Pane {
    id: pane
    width: 400
    height: 400

    property alias btnEntrar: btn_entrar
    property string txtUsuario: txt_usuario.text
    property string txtContra: txt_contra.text
    property alias usuario: txt_usuario
    property alias contra: txt_contra

    MouseArea {
        id: mouseArea1
        anchors.fill: parent

        ColumnLayout {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            spacing: 40

            TextField {
                id: txt_usuario
                Layout.fillWidth: true
                font.pointSize: 13

                maximumLength: 20
                placeholderText: qsTr("Usuario")
            }

            TextField {
                id: txt_contra
                Layout.fillWidth: true
                font.pointSize: 13

                placeholderText: qsTr("Contraseña")
                echoMode: TextInput.Password
            }

            Button {
                id: btn_entrar

                text: qsTr("Entrar")
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                flat: true
                highlighted: true
                font.pointSize: 16
            }
        }
    }
}
