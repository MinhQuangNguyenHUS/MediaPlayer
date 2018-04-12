#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "videolistmodel.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    VideoListModel videoModel;
    VideoItem item;
    item.setName("ádfá");
    item.setSource("sadsa");
    videoModel.append(&item);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("videoModel", &videoModel);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
