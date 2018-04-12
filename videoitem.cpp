#include "videoitem.h"

VideoItem::VideoItem()
{

}

QString VideoItem::getName() const
{
    return name;
}

void VideoItem::setName(const QString &value)
{
    name = value;
}

QString VideoItem::getSource() const
{
    return source;
}

void VideoItem::setSource(const QString &value)
{
    source = value;
}
