import QtQuick 2.0
import QtQuick.Controls 2.1

Button {
    id: root
    width: dimensiones
    height: dimensiones
    flat: true
    property int dimensiones: 45

    contentItem: BotonMenuImagen {
        id: img
        anchors.fill: parent
    }

    onClicked: {
        //img.arrowFormState = !img.arrowFormState
        if(depth > 1)
        {
            img.arrowFormState = !img.arrowFormState
        }
    }
}
