import QtQuick 2.0
import QtQuick.Controls 2.1

Button {
    id: boton
    height: 25
    width: height
    contentItem: Image {
        source: "images/error.png"
        fillMode: Image.PreserveAspectFit
    }
    background: Rectangle {
        color: "transparent"
    }
}
