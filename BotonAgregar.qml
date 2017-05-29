import QtQuick 2.0
import QtQuick.Controls 2.1

Button {
    id: boton
    contentItem: Image {
        source: "images/plus.png"
        fillMode: Image.PreserveAspectFit
    }
    background: Rectangle {
        color: "transparent"
    }
}
