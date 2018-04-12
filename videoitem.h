#ifndef VIDEOITEM_H
#define VIDEOITEM_H
#include <QString>

class VideoItem
{
public:
    VideoItem();

    QString getName() const;
    void setName(const QString &value);

    QString getSource() const;
    void setSource(const QString &value);

private:
    QString name;
    QString source;
};

#endif // VIDEOITEM_H
