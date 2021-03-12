#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
  QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

  QGuiApplication app(argc, argv);

  QQmlApplicationEngine engine;

  engine.addImportPath( ":/" );

//  qmlRegisterSingletonType<Util>("Font", 1, 0, "Font", &Util::qmlSingletonInstance);
//  qmlRegisterSingletonType( QUrl( "file:///Users/ericg/depot_qt/questions/font_test/assets/Fonts/Fonts.qml"), "Font", 1, 0, "Font" );

  const QUrl url(QStringLiteral("qrc:/main.qml"));

  QObject::connect( &engine,
                    &QQmlApplicationEngine::objectCreated,
                    &app,
                    [url](QObject *obj, const QUrl &objUrl )
                    {
                      if (!obj && url == objUrl)
                        QCoreApplication::exit(-1);
                    },
                    Qt::QueuedConnection);

  engine.load(url);

  return app.exec();
}
