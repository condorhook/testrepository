import Felgo 3.0
import QtQuick 2.0


GameWindow {

  // this rectangle fills the whole screen with grey
  Rectangle {
    color: "#f0f0f0"
    anchors.fill: parent
  }
  Rectangle {
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.bottom: parent.bottom

    width: myText.width + 10
    height: myText.height + 10

    color: mouseArea.pressed ? "lightblue" : "blue"


    Text {
      id: myText

      text: "Button"
      color: "white"

      anchors.centerIn: parent
    }

    MouseArea {
      id: mouseArea

      anchors.fill: parent

      onClicked: {
        console.debug("Button clicked")
        myText.text = "Clicked Button"
      }
    }
  }

  Scene {

    Text {
      text: "Welcome to Felgo"

      font.pixelSize: 16
      anchors.centerIn: parent
    }
  }
}
