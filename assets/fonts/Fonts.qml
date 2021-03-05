pragma Singleton
import QtQuick 2.12

Item
{
  readonly property FontLoader artBrewery: FontLoader { source: "qrc:/Fonts/Art Brewery.ttf" }
  readonly property FontLoader robotoLight: FontLoader { source: "qrc:/Fonts/Roboto-Light.ttf" }
  readonly property FontLoader robotoMedium: FontLoader { source: "qrc:/Fonts/Roboto-Medium.ttf" }
  readonly property FontLoader robotoRegular: FontLoader { source: "qrc:/Fonts/Roboto-Regular.ttf" }
}
