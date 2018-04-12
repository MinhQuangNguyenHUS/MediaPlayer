#ifndef VIDEOLISTMODEL_H
#define VIDEOLISTMODEL_H

#include <QAbstractListModel>
#include <QVector>

#include "videoitem.h"

class VideoListModel : public QAbstractListModel
{
    Q_OBJECT

public:
    explicit VideoListModel(QObject *parent = nullptr);

    enum {
        NAME_ROLE = Qt::UserRole + 1,
        SOURCE_ROLE
    };

    // Basic functionality:
    int rowCount(const QModelIndex &parent = QModelIndex()) const override;

    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const override;

    void append(VideoItem*);

    QHash<int, QByteArray> roleNames() const override;

private:

    QVector<VideoItem> mList;

    static QHash<int, QByteArray> mRoleName;
};

#endif // VIDEOLISTMODEL_H
