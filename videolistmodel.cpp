#include "videolistmodel.h"

VideoListModel::VideoListModel(QObject *parent)
    : QAbstractListModel(parent)
{
}

int VideoListModel::rowCount(const QModelIndex &parent) const
{
    return mList.size();
}

QVariant VideoListModel::data(const QModelIndex &index, int role) const
{
    if (!index.isValid())
        return QVariant();

    const VideoItem item = mList.at(index.row());

    switch (role){
        case NAME_ROLE:
            return QVariant(item.getName());
        case SOURCE_ROLE:
            return QVariant(item.getSource());
    }

    return QVariant();
}

void VideoListModel::append(VideoItem * item)
{
    mList.append(*item);
}

QHash<int, QByteArray> VideoListModel::mRoleName = {
    {(int) NAME_ROLE, "name"},
     {(int) SOURCE_ROLE, "source"}
};

QHash<int, QByteArray> VideoListModel::roleNames() const
{
    return mRoleName;
}
