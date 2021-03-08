import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

import Fonts 1.0

Window {
  width: 640
  height: 480
  visible: true
  title: qsTr("Hello World")

  Column
  {
    spacing: 8

    anchors.fill: parent
    anchors.margins: 8

    Label
    {
      text: "DEFAULT: Pack my box with five dozen liquor jugs"
    }

    Label
    {
      text: "DEFAULT: ART BREWERY: Pack my box with five dozen liquor jugs"

      font.family: Fonts.artBrewery.name
      font.pixelSize: 36
    }

    Label
    {
      font.family: Fonts.robotoRegular.name // Fonts.robotoRegular.name
      text: "DEFAULT: ROBOTO: Pack my box with five dozen liquor jugs"
    }
  }
}
