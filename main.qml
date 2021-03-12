import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

import Fonts 1.0

ApplicationWindow {
  width: 640
  height: 480
  visible: true
  title: qsTr("Hello World")

  Column
  {
    spacing: 8

    anchors.fill: parent
    anchors.margins: 20

    Label // #1
    {
      text: "Pack my box with five dozen liquor jugs -- DEFAULT"
    }

//    Label // #2
//    {
//      font.family: Fonts.robotoBold.name
//      text: "Pack my box with five dozen liquor jugs -- Roboto Bold"
//    }

//    Label // #3
//    {
//      font.family: Fonts.robotoMonoRegular.name // Fonts.robotoRegular.name
//      text: "Pack my box with five dozen liquor jugs -- Roboto Mono"
//    }

//    Label // #4
//    {
//      text: "Pack my box with five dozen liquor jugs -- Art Brewery"
//      font.family: Fonts.artBrewery.name
//      font.pixelSize: 36
//    }
  }
}
