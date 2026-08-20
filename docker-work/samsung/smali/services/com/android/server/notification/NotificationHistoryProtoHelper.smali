.class public final Lcom/android/server/notification/NotificationHistoryProtoHelper;
.super Ljava/lang/Object;
.source "NotificationHistoryProtoHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "NotifHistoryProto"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadIcon(Landroid/util/proto/ProtoInputStream;Landroid/app/NotificationHistory$HistoricalNotification$Builder;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move v3, v1

    move v4, v3

    move v5, v4

    move v6, v5

    move-object v1, v2

    .line 173
    :goto_8
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v7

    packed-switch v7, :pswitch_data_8a

    :pswitch_f
    goto :goto_8

    :pswitch_10
    const-wide v7, 0x10900000008L

    .line 198
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :pswitch_1a
    const-wide v7, 0x10500000007L

    .line 184
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    goto :goto_8

    :pswitch_24
    const-wide v6, 0x10500000006L

    .line 181
    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v6

    goto :goto_8

    :pswitch_2e
    const-wide v7, 0x10c00000005L

    .line 178
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object v0

    goto :goto_8

    :pswitch_38
    const-wide v7, 0x10900000004L

    .line 194
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :pswitch_42
    const-wide v7, 0x10500000003L

    .line 191
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v4

    goto :goto_8

    :pswitch_4c
    const-wide v7, 0x10900000002L

    .line 187
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    goto :goto_8

    :pswitch_55
    const-wide v7, 0x10e00000001L

    .line 175
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v3

    goto :goto_8

    :pswitch_5f
    const/4 p0, 0x3

    if-ne v3, p0, :cond_6c

    if-eqz v0, :cond_88

    .line 204
    invoke-static {v0, v5, v6}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_88

    :cond_6c
    const/4 p0, 0x2

    if-ne v3, p0, :cond_7c

    if-eqz v4, :cond_88

    if-eqz v2, :cond_74

    move-object p2, v2

    .line 209
    :cond_74
    invoke-static {p2, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_88

    :cond_7c
    const/4 p0, 0x4

    if-ne v3, p0, :cond_88

    if-eqz v1, :cond_88

    .line 217
    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    :cond_88
    :goto_88
    return-void

    nop

    :pswitch_data_8a
    .packed-switch -0x1
        :pswitch_5f
        :pswitch_f
        :pswitch_55
        :pswitch_4c
        :pswitch_42
        :pswitch_38
        :pswitch_2e
        :pswitch_24
        :pswitch_1a
        :pswitch_10
    .end packed-switch
.end method

.method public static read(Ljava/io/InputStream;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 308
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 310
    :goto_a
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_21

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1c

    const/4 v2, 0x3

    if-eq v1, v2, :cond_18

    goto :goto_a

    .line 315
    :cond_18
    invoke-static {v0, p0, p1, p2}, Lcom/android/server/notification/NotificationHistoryProtoHelper;->readNotification(Landroid/util/proto/ProtoInputStream;Ljava/util/List;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V

    goto :goto_a

    .line 312
    :cond_1c
    invoke-static {v0}, Lcom/android/server/notification/NotificationHistoryProtoHelper;->readStringPool(Landroid/util/proto/ProtoInputStream;)Ljava/util/List;

    move-result-object p0

    goto :goto_a

    .line 318
    :cond_21
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationHistoryFilter;->isFiltering()Z

    move-result p2

    if-eqz p2, :cond_2b

    .line 319
    invoke-virtual {p1}, Landroid/app/NotificationHistory;->poolStringsFromNotifications()V

    goto :goto_2e

    .line 321
    :cond_2b
    invoke-virtual {p1, p0}, Landroid/app/NotificationHistory;->addPooledStrings(Ljava/util/List;)V

    :goto_2e
    return-void
.end method

.method public static readNotification(Landroid/util/proto/ProtoInputStream;Ljava/util/List;)Landroid/app/NotificationHistory$HistoricalNotification;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/NotificationHistory$HistoricalNotification;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    new-instance v0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    invoke-direct {v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;-><init>()V

    const/4 v1, 0x0

    .line 97
    :goto_6
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    packed-switch v2, :pswitch_data_fe

    :pswitch_d
    goto :goto_6

    :pswitch_e
    const-wide v2, 0x1050000000eL

    .line 147
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 148
    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setConversationId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_6

    :pswitch_23
    const-wide v2, 0x1090000000dL

    .line 151
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setConversationId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 153
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :pswitch_33
    const-wide v2, 0x10b0000000cL

    .line 141
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v2

    .line 142
    invoke-static {p0, v0, v1}, Lcom/android/server/notification/NotificationHistoryProtoHelper;->loadIcon(Landroid/util/proto/ProtoInputStream;Landroid/app/NotificationHistory$HistoricalNotification$Builder;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_6

    :pswitch_43
    const-wide v2, 0x1090000000bL

    .line 138
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setText(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_6

    :pswitch_50
    const-wide v2, 0x1090000000aL

    .line 135
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setTitle(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_6

    :pswitch_5d
    const-wide v2, 0x10300000009L

    .line 132
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setPostedTimeMs(J)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_6

    :pswitch_6a
    const-wide v2, 0x10500000008L

    .line 129
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setUserId(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_6

    :pswitch_77
    const-wide v2, 0x10500000007L

    .line 126
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setUid(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_6

    :pswitch_84
    const-wide v2, 0x10500000006L

    .line 122
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto/16 :goto_6

    :pswitch_9a
    const-wide v2, 0x10900000005L

    .line 117
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 119
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :pswitch_ab
    const-wide v2, 0x10500000004L

    .line 113
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelName(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto/16 :goto_6

    :pswitch_c1
    const-wide v2, 0x10900000003L

    .line 108
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelName(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 110
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :pswitch_d2
    const-wide v1, 0x10500000002L

    .line 104
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 105
    invoke-virtual {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setPackage(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto/16 :goto_6

    :pswitch_e8
    const-wide v1, 0x10900000001L

    .line 99
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setPackage(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    .line 101
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 156
    :pswitch_f9
    invoke-virtual {v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->build()Landroid/app/NotificationHistory$HistoricalNotification;

    move-result-object p0

    return-object p0

    :pswitch_data_fe
    .packed-switch -0x1
        :pswitch_f9
        :pswitch_d
        :pswitch_e8
        :pswitch_d2
        :pswitch_c1
        :pswitch_ab
        :pswitch_9a
        :pswitch_84
        :pswitch_77
        :pswitch_6a
        :pswitch_5d
        :pswitch_50
        :pswitch_43
        :pswitch_33
        :pswitch_23
        :pswitch_e
    .end packed-switch
.end method

.method public static readNotification(Landroid/util/proto/ProtoInputStream;Ljava/util/List;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/NotificationHistory;",
            "Lcom/android/server/notification/NotificationHistoryFilter;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v0, 0x20b00000003L

    .line 78
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 80
    :try_start_9
    invoke-static {p0, p1}, Lcom/android/server/notification/NotificationHistoryProtoHelper;->readNotification(Landroid/util/proto/ProtoInputStream;Ljava/util/List;)Landroid/app/NotificationHistory$HistoricalNotification;

    move-result-object p1

    .line 81
    invoke-virtual {p3, p1}, Lcom/android/server/notification/NotificationHistoryFilter;->matchesPackageAndChannelFilter(Landroid/app/NotificationHistory$HistoricalNotification;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 82
    invoke-virtual {p3, p2}, Lcom/android/server/notification/NotificationHistoryFilter;->matchesCountFilter(Landroid/app/NotificationHistory;)Z

    move-result p3

    if-eqz p3, :cond_1c

    .line 83
    invoke-virtual {p2, p1}, Landroid/app/NotificationHistory;->addNotificationToWrite(Landroid/app/NotificationHistory$HistoricalNotification;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1c} :catch_22
    .catchall {:try_start_9 .. :try_end_1c} :catchall_20

    .line 88
    :cond_1c
    :goto_1c
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_2b

    :catchall_20
    move-exception p1

    goto :goto_2c

    :catch_22
    move-exception p1

    :try_start_23
    const-string p2, "NotifHistoryProto"

    const-string p3, "Error reading notification"

    .line 86
    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_20

    goto :goto_1c

    :goto_2b
    return-void

    .line 88
    :goto_2c
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 89
    throw p1
.end method

.method public static readStringPool(Landroid/util/proto/ProtoInputStream;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v0, 0x10b00000001L

    .line 46
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10500000001L

    .line 48
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 49
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_23

    .line 51
    :cond_1e
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 53
    :goto_23
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3f

    .line 54
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_32

    goto :goto_23

    :cond_32
    const-wide v2, 0x20900000002L

    .line 56
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 60
    :cond_3f
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    return-object v4
.end method

.method public static write(Ljava/io/OutputStream;Landroid/app/NotificationHistory;I)V
    .registers 7

    .line 329
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-wide v1, 0x10500000002L

    .line 330
    invoke-virtual {v0, v1, v2, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 332
    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationHistoryProtoHelper;->writeStringPool(Landroid/util/proto/ProtoOutputStream;Landroid/app/NotificationHistory;)V

    .line 334
    invoke-virtual {p1}, Landroid/app/NotificationHistory;->getNotificationsToWrite()Ljava/util/List;

    move-result-object p0

    .line 335
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_19
    if-ge v1, p2, :cond_2b

    .line 337
    invoke-virtual {p1}, Landroid/app/NotificationHistory;->getPooledStringsToWrite()[Ljava/lang/String;

    move-result-object v2

    .line 338
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationHistory$HistoricalNotification;

    .line 337
    invoke-static {v0, v2, v3}, Lcom/android/server/notification/NotificationHistoryProtoHelper;->writeNotification(Landroid/util/proto/ProtoOutputStream;[Ljava/lang/String;Landroid/app/NotificationHistory$HistoricalNotification;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 341
    :cond_2b
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public static writeIcon(Landroid/util/proto/ProtoOutputStream;Landroid/app/NotificationHistory$HistoricalNotification;)V
    .registers 7

    const-wide v0, 0x10b0000000cL

    .line 228
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 230
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    const-wide v3, 0x10e00000001L

    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 231
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6d

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3c

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2b

    goto :goto_9f

    :cond_2b
    const-wide v2, 0x10900000008L

    .line 247
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_9f

    :cond_3c
    const-wide v2, 0x10c00000005L

    .line 233
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Icon;->getDataBytes()[B

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    const-wide v2, 0x10500000006L

    .line 235
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Icon;->getDataLength()I

    move-result v4

    .line 234
    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000007L

    .line 237
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    move-result p1

    .line 236
    invoke-virtual {p0, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_9f

    :cond_6d
    const-wide v2, 0x10500000003L

    .line 240
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 241
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9f

    const-wide v2, 0x10900000004L

    .line 243
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object p1

    .line 242
    invoke-virtual {p0, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 254
    :cond_9f
    :goto_9f
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public static writeNotification(Landroid/util/proto/ProtoOutputStream;[Ljava/lang/String;Landroid/app/NotificationHistory$HistoricalNotification;)V
    .registers 10

    const-wide v0, 0x20b00000003L

    .line 259
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 260
    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    const-string v3, ") not found in string cache"

    const-string v4, "NotifHistoryProto"

    if-ltz v2, :cond_22

    const-wide v5, 0x10500000002L

    add-int/lit8 v2, v2, 0x1

    .line 262
    invoke-virtual {p0, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_4a

    .line 265
    :cond_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notification package name ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v5, 0x10900000001L

    .line 267
    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 269
    :goto_4a
    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_5f

    const-wide v5, 0x10500000004L

    add-int/lit8 v2, v2, 0x1

    .line 271
    invoke-virtual {p0, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_87

    .line 273
    :cond_5f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notification channel name ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v5, 0x10900000003L

    .line 275
    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 277
    :goto_87
    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_9c

    const-wide v5, 0x10500000006L

    add-int/lit8 v2, v2, 0x1

    .line 279
    invoke-virtual {p0, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_c4

    .line 281
    :cond_9c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notification channel id ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v5, 0x10900000005L

    .line 283
    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 285
    :goto_c4
    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10b

    .line 287
    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object v2

    .line 286
    invoke-static {p1, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_e3

    const-wide v2, 0x1050000000eL

    add-int/lit8 p1, p1, 0x1

    .line 289
    invoke-virtual {p0, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_10b

    .line 291
    :cond_e3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notification conversation id ("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v2, 0x1090000000dL

    .line 293
    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_10b
    :goto_10b
    const-wide v2, 0x10500000007L

    .line 296
    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getUid()I

    move-result p1

    invoke-virtual {p0, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000008L

    .line 297
    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getUserId()I

    move-result p1

    invoke-virtual {p0, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10300000009L

    .line 298
    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x1090000000aL

    .line 299
    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v2, 0x1090000000bL

    .line 300
    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 301
    invoke-static {p0, p2}, Lcom/android/server/notification/NotificationHistoryProtoHelper;->writeIcon(Landroid/util/proto/ProtoOutputStream;Landroid/app/NotificationHistory$HistoricalNotification;)V

    .line 302
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public static writeStringPool(Landroid/util/proto/ProtoOutputStream;Landroid/app/NotificationHistory;)V
    .registers 8

    const-wide v0, 0x10b00000001L

    .line 66
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 67
    invoke-virtual {p1}, Landroid/app/NotificationHistory;->getPooledStringsToWrite()[Ljava/lang/String;

    move-result-object p1

    .line 68
    array-length v2, p1

    const-wide v3, 0x10500000001L

    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v2, 0x0

    .line 69
    :goto_17
    array-length v3, p1

    if-ge v2, v3, :cond_27

    const-wide v3, 0x20900000002L

    .line 70
    aget-object v5, p1, v2

    invoke-virtual {p0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 72
    :cond_27
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
