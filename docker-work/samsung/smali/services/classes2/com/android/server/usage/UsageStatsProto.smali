.class public final Lcom/android/server/usage/UsageStatsProto;
.super Ljava/lang/Object;
.source "UsageStatsProto.java"


# static fields
.field public static TAG:Ljava/lang/String; = "UsageStatsProto"


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadChooserCounts(Landroid/util/proto/ProtoInputStream;Landroid/app/usage/UsageStats;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    .line 184
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    :cond_b
    const/4 v0, 0x0

    const-wide v1, 0x10900000001L

    .line 188
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 191
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 192
    iget-object v3, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    if-nez v3, :cond_35

    .line 194
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 195
    iget-object v4, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    .line 199
    :cond_30
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 203
    :cond_35
    :goto_35
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5d

    const/4 v5, 0x1

    if-eq v4, v5, :cond_53

    const/4 v5, 0x3

    if-eq v4, v5, :cond_43

    goto :goto_35

    :cond_43
    const-wide v1, 0x20b00000003L

    .line 210
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 212
    invoke-static {p0, v3}, Lcom/android/server/usage/UsageStatsProto;->loadCountsForAction(Landroid/util/proto/ProtoInputStream;Landroid/util/ArrayMap;)V

    .line 213
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_5d

    .line 206
    :cond_53
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 207
    iget-object v4, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    :cond_5d
    :goto_5d
    if-nez v0, :cond_66

    .line 217
    iget-object p0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    const-string p1, ""

    invoke-virtual {p0, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_66
    return-void
.end method

.method public static loadConfigStats(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide p1

    .line 253
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    const-wide v1, 0x10b00000001L

    .line 255
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1d

    .line 258
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 259
    invoke-virtual {p3, v0}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v3

    goto :goto_22

    .line 263
    :cond_1d
    new-instance v3, Landroid/app/usage/ConfigurationStats;

    invoke-direct {v3}, Landroid/app/usage/ConfigurationStats;-><init>()V

    .line 266
    :goto_22
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_7f

    const/4 v6, 0x1

    if-eq v5, v6, :cond_6a

    const/4 v6, 0x2

    if-eq v5, v6, :cond_5b

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4f

    const/4 v6, 0x4

    if-eq v5, v6, :cond_43

    const/4 v6, 0x5

    if-eq v5, v6, :cond_39

    goto :goto_22

    :cond_39
    const-wide v4, 0x10800000005L

    .line 289
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v4

    goto :goto_22

    :cond_43
    const-wide v5, 0x10500000004L

    .line 285
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    iput v5, v3, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    goto :goto_22

    :cond_4f
    const-wide v5, 0x10300000003L

    .line 281
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v5

    iput-wide v5, v3, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    goto :goto_22

    .line 277
    :cond_5b
    iget-wide v5, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v7, 0x10300000002L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v3, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    goto :goto_22

    .line 269
    :cond_6a
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 270
    invoke-virtual {p3, v0}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v5

    .line 271
    iget-wide v6, v3, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    iput-wide v6, v5, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 272
    iget-wide v6, v3, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    iput-wide v6, v5, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 273
    iget v3, v3, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    iput v3, v5, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    move-object v3, v5

    goto :goto_22

    :cond_7f
    if-eqz v4, :cond_85

    .line 293
    iget-object v0, v3, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    iput-object v0, p3, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 295
    :cond_85
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    return-void
.end method

.method public static loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V
    .registers 8

    .line 162
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 164
    :goto_4
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2a

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1e

    const/4 v3, 0x2

    if-eq v2, v3, :cond_12

    goto :goto_4

    :cond_12
    const-wide v2, 0x10300000002L

    .line 169
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v2

    iput-wide v2, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    goto :goto_4

    :cond_1e
    const-wide v2, 0x10500000001L

    .line 166
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    goto :goto_4

    .line 172
    :cond_2a
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2d} :catch_2e

    return-void

    :catch_2e
    move-exception p0

    .line 177
    sget-object p3, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to read event tracker "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static loadCountsForAction(Landroid/util/proto/ProtoInputStream;Landroid/util/ArrayMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 229
    :goto_2
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_24

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1a

    const/4 v3, 0x3

    if-eq v2, v3, :cond_10

    goto :goto_2

    :cond_10
    const-wide v1, 0x10500000003L

    .line 235
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    goto :goto_2

    :cond_1a
    const-wide v2, 0x10900000001L

    .line 231
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_24
    if-nez v0, :cond_30

    .line 240
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p1, v0, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    .line 242
    :cond_30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_37
    return-void
.end method

.method public static loadEvent(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            "J",
            "Lcom/android/server/usage/IntervalStats;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide p1

    .line 304
    invoke-virtual {p3, p0, p4}, Lcom/android/server/usage/IntervalStats;->buildEvent(Landroid/util/proto/ProtoInputStream;Ljava/util/List;)Landroid/app/usage/UsageEvents$Event;

    move-result-object p4

    .line 305
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 306
    iget-object p0, p4, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz p0, :cond_15

    .line 309
    iget-object p0, p3, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p0, p4}, Landroid/app/usage/EventList;->insert(Landroid/app/usage/UsageEvents$Event;)V

    return-void

    .line 307
    :cond_15
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "no package field present"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loadUsageStats(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats;Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            "J",
            "Lcom/android/server/usage/IntervalStats;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide p1

    const-wide v0, 0x10500000002L

    .line 69
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v2

    const-wide v3, 0x10900000001L

    if-eqz v2, :cond_25

    .line 73
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 72
    invoke-virtual {p3, v2}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v2

    goto :goto_39

    .line 74
    :cond_25
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 77
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {p3, v2}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v2

    goto :goto_39

    .line 80
    :cond_34
    new-instance v2, Landroid/app/usage/UsageStats;

    invoke-direct {v2}, Landroid/app/usage/UsageStats;-><init>()V

    .line 83
    :goto_39
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_12a

    .line 84
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v5

    packed-switch v5, :pswitch_data_12e

    goto :goto_39

    .line 151
    :pswitch_48
    iget-wide v5, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v7, 0x1030000000cL

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v2, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    goto :goto_39

    :pswitch_57
    const-wide v5, 0x1030000000bL

    .line 147
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v5

    iput-wide v5, v2, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    goto :goto_39

    .line 143
    :pswitch_63
    iget-wide v5, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v7, 0x1030000000aL

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v2, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    goto :goto_39

    :pswitch_72
    const-wide v5, 0x10300000009L

    .line 138
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v5

    iput-wide v5, v2, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    goto :goto_39

    .line 134
    :pswitch_7e
    iget-wide v5, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v7, 0x10300000008L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v2, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    goto :goto_39

    :pswitch_8d
    const-wide v5, 0x20b00000007L

    .line 124
    :try_start_92
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v5

    .line 126
    invoke-static {p0, v2}, Lcom/android/server/usage/UsageStatsProto;->loadChooserCounts(Landroid/util/proto/ProtoInputStream;Landroid/app/usage/UsageStats;)V

    .line 127
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_9c} :catch_9d

    goto :goto_39

    :catch_9d
    move-exception v5

    .line 129
    sget-object v6, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to read chooser counts for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39

    :pswitch_b7
    const-wide v5, 0x10500000006L

    .line 119
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    iput v5, v2, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    goto/16 :goto_39

    :pswitch_c4
    const-wide v5, 0x10500000005L

    .line 116
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    iput v5, v2, Landroid/app/usage/UsageStats;->mLastEvent:I

    goto/16 :goto_39

    :pswitch_d1
    const-wide v5, 0x10300000004L

    .line 111
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v5

    iput-wide v5, v2, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    goto/16 :goto_39

    .line 107
    :pswitch_de
    iget-wide v5, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v7, 0x10300000003L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v2, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    goto/16 :goto_39

    .line 98
    :pswitch_ee
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 97
    invoke-interface {p4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p3, v5}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v5

    .line 99
    iget-wide v6, v2, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    iput-wide v6, v5, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 100
    iget-wide v6, v2, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    iput-wide v6, v5, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 101
    iget v6, v2, Landroid/app/usage/UsageStats;->mLastEvent:I

    iput v6, v5, Landroid/app/usage/UsageStats;->mLastEvent:I

    .line 102
    iget v2, v2, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    iput v2, v5, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    goto :goto_127

    .line 88
    :pswitch_10f
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    .line 87
    invoke-virtual {p3, v5}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v5

    .line 89
    iget-wide v6, v2, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    iput-wide v6, v5, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 90
    iget-wide v6, v2, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    iput-wide v6, v5, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 91
    iget v6, v2, Landroid/app/usage/UsageStats;->mLastEvent:I

    iput v6, v5, Landroid/app/usage/UsageStats;->mLastEvent:I

    .line 92
    iget v2, v2, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    iput v2, v5, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    :goto_127
    move-object v2, v5

    goto/16 :goto_39

    .line 156
    :cond_12a
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    return-void

    :pswitch_data_12e
    .packed-switch 0x1
        :pswitch_10f
        :pswitch_ee
        :pswitch_de
        :pswitch_d1
        :pswitch_c4
        :pswitch_b7
        :pswitch_8d
        :pswitch_7e
        :pswitch_72
        :pswitch_63
        :pswitch_57
        :pswitch_48
    .end packed-switch
.end method

.method public static read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 509
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 512
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 513
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    const/4 p0, 0x0

    .line 514
    iput-object p0, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 515
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1}, Landroid/app/usage/EventList;->clear()V

    .line 518
    :goto_17
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_d2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_ad

    const/4 v2, 0x3

    if-eq v1, v2, :cond_a0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_93

    packed-switch v1, :pswitch_data_d6

    packed-switch v1, :pswitch_data_e2

    goto :goto_17

    :pswitch_31
    const-wide v1, 0x20b00000016L

    .line 571
    :try_start_36
    invoke-static {v0, v1, v2, p1, p0}, Lcom/android/server/usage/UsageStatsProto;->loadEvent(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats;Ljava/util/List;)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_17

    :catch_3a
    move-exception v1

    .line 573
    sget-object v2, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    const-string v3, "Unable to read some events from proto."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    :pswitch_43
    const-wide v1, 0x20b00000015L

    .line 564
    :try_start_48
    invoke-static {v0, v1, v2, p1}, Lcom/android/server/usage/UsageStatsProto;->loadConfigStats(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats;)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_17

    :catch_4c
    move-exception v1

    .line 566
    sget-object v2, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    const-string v3, "Unable to read some configuration stats from proto."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    :pswitch_55
    const-wide v1, 0x20b00000014L

    .line 557
    :try_start_5a
    invoke-static {v0, v1, v2, p1, p0}, Lcom/android/server/usage/UsageStatsProto;->loadUsageStats(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats;Ljava/util/List;)V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_17

    :catch_5e
    move-exception v1

    .line 559
    sget-object v2, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    const-string v3, "Unable to read some usage stats from proto."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    :pswitch_67
    const-wide v1, 0x10b0000000dL

    .line 544
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/usage/UsageStatsProto;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    goto :goto_17

    :pswitch_72
    const-wide v1, 0x10b0000000cL

    .line 540
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/usage/UsageStatsProto;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    goto :goto_17

    :pswitch_7d
    const-wide v1, 0x10b0000000bL

    .line 536
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/usage/UsageStatsProto;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    goto :goto_17

    :pswitch_88
    const-wide v1, 0x10b0000000aL

    .line 532
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/usage/UsageStatsProto;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    goto :goto_17

    :cond_93
    const-wide v1, 0x10500000004L

    .line 528
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, p1, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    goto/16 :goto_17

    :cond_a0
    const-wide v1, 0x10500000003L

    .line 524
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    goto/16 :goto_17

    .line 549
    :cond_ad
    :try_start_ad
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsProto;->readStringPool(Landroid/util/proto/ProtoInputStream;)Ljava/util/List;

    move-result-object p0

    .line 550
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b6} :catch_b8

    goto/16 :goto_17

    :catch_b8
    move-exception v1

    .line 552
    sget-object v2, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    const-string v3, "Unable to read string pool from proto."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_17

    .line 520
    :cond_c2
    iget-wide v1, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v3, 0x10300000001L

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    goto/16 :goto_17

    .line 577
    :cond_d2
    invoke-virtual {p1}, Lcom/android/server/usage/IntervalStats;->upgradeIfNeeded()V

    return-void

    :pswitch_data_d6
    .packed-switch 0xa
        :pswitch_88
        :pswitch_7d
        :pswitch_72
        :pswitch_67
    .end packed-switch

    :pswitch_data_e2
    .packed-switch 0x14
        :pswitch_55
        :pswitch_43
        :pswitch_31
    .end packed-switch
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

    const-wide v0, 0x10b00000002L

    .line 45
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10500000001L

    .line 47
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 48
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_23

    .line 50
    :cond_1e
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 52
    :goto_23
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3f

    .line 53
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_32

    goto :goto_23

    :cond_32
    const-wide v2, 0x20900000002L

    .line 55
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 59
    :cond_3f
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    return-object v4
.end method

.method public static write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 591
    new-instance v6, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v6, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 592
    iget-wide v0, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    iget-wide v2, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 593
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/usage/UsageStatsProtoV2;->getOffsetTimestamp(JJ)J

    move-result-wide v0

    const-wide v2, 0x10300000001L

    .line 592
    invoke-virtual {v6, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 594
    iget p0, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    const-wide v0, 0x10500000003L

    invoke-virtual {v6, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 595
    iget p0, p1, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    const-wide v0, 0x10500000004L

    invoke-virtual {v6, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 598
    :try_start_29
    invoke-static {v6, p1}, Lcom/android/server/usage/UsageStatsProto;->writeStringPool(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/usage/IntervalStats;)V
    :try_end_2c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_35

    :catch_2d
    move-exception p0

    .line 600
    sget-object v0, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    const-string v1, "Unable to write string pool to proto."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_35
    const-wide v1, 0x10b0000000aL

    .line 604
    :try_start_3a
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v3, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-wide v4, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsProto;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V

    const-wide v1, 0x10b0000000bL

    .line 606
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v3, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-wide v4, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsProto;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V

    const-wide v1, 0x10b0000000cL

    .line 608
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v3, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-wide v4, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsProto;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V

    const-wide v1, 0x10b0000000dL

    .line 610
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v3, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-wide v4, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsProto;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V
    :try_end_71
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3a .. :try_end_71} :catch_72

    goto :goto_7a

    :catch_72
    move-exception p0

    .line 613
    sget-object v0, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    const-string v1, "Unable to write some interval stats trackers to proto."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 616
    :goto_7a
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    const/4 v7, 0x0

    move v0, v7

    :goto_82
    if-ge v0, p0, :cond_a0

    const-wide v1, 0x20b00000014L

    .line 619
    :try_start_89
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 620
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStats;

    .line 619
    invoke-static {v6, v1, v2, p1, v3}, Lcom/android/server/usage/UsageStatsProto;->writeUsageStats(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageStats;)V
    :try_end_94
    .catch Ljava/lang/IllegalArgumentException; {:try_start_89 .. :try_end_94} :catch_95

    goto :goto_9d

    :catch_95
    move-exception v1

    .line 622
    sget-object v2, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    const-string v3, "Unable to write some usage stats to proto."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9d
    add-int/lit8 v0, v0, 0x1

    goto :goto_82

    .line 625
    :cond_a0
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    move v8, v7

    :goto_a7
    if-ge v8, p0, :cond_d6

    .line 627
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v5

    const-wide v1, 0x20b00000015L

    .line 629
    :try_start_bc
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    .line 630
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/app/usage/ConfigurationStats;

    move-object v0, v6

    move-object v3, p1

    .line 629
    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsProto;->writeConfigStats(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/usage/IntervalStats;Landroid/app/usage/ConfigurationStats;Z)V
    :try_end_ca
    .catch Ljava/lang/IllegalArgumentException; {:try_start_bc .. :try_end_ca} :catch_cb

    goto :goto_d3

    :catch_cb
    move-exception v0

    .line 632
    sget-object v1, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    const-string v2, "Unable to write some configuration stats to proto."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d3
    add-int/lit8 v8, v8, 0x1

    goto :goto_a7

    .line 635
    :cond_d6
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p0}, Landroid/app/usage/EventList;->size()I

    move-result p0

    :goto_dc
    if-ge v7, p0, :cond_f8

    const-wide v0, 0x20b00000016L

    .line 638
    :try_start_e3
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v2, v7}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v2

    invoke-static {v6, v0, v1, p1, v2}, Lcom/android/server/usage/UsageStatsProto;->writeEvent(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageEvents$Event;)V
    :try_end_ec
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e3 .. :try_end_ec} :catch_ed

    goto :goto_f5

    :catch_ed
    move-exception v0

    .line 640
    sget-object v1, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    const-string v2, "Unable to write some events to proto."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f5
    add-int/lit8 v7, v7, 0x1

    goto :goto_dc

    .line 644
    :cond_f8
    invoke-virtual {v6}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public static writeChooserCounts(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageStats;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_4f

    .line 375
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v0, :cond_4f

    .line 376
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_4f

    .line 379
    :cond_11
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v0, :cond_4f

    .line 381
    iget-object v2, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 382
    iget-object v3, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    if-eqz v2, :cond_4c

    if-eqz v3, :cond_4c

    .line 383
    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_35

    goto :goto_4c

    :cond_35
    const-wide v4, 0x20b00000007L

    .line 386
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v6, 0x10900000001L

    .line 387
    invoke-virtual {p0, v6, v7, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 388
    invoke-static {p0, v3}, Lcom/android/server/usage/UsageStatsProto;->writeCountsForAction(Landroid/util/proto/ProtoOutputStream;Landroid/util/ArrayMap;)V

    .line 389
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_4c
    :goto_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_4f
    :goto_4f
    return-void
.end method

.method public static writeConfigStats(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/usage/IntervalStats;Landroid/app/usage/ConfigurationStats;Z)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 411
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p1

    .line 412
    iget-object v0, p4, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 413
    iget-wide v6, p4, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    iget-wide v8, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v4, 0x10300000002L

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 416
    iget-wide v0, p4, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    const-wide v2, 0x10300000003L

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 418
    iget p3, p4, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    const-wide v0, 0x10500000004L

    invoke-virtual {p0, v0, v1, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide p3, 0x10800000005L

    .line 419
    invoke-virtual {p0, p3, p4, p5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 420
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public static writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 366
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p1

    const-wide v0, 0x10500000001L

    .line 367
    invoke-virtual {p0, v0, v1, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10300000002L

    .line 368
    invoke-virtual {p0, v0, v1, p4, p5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 369
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public static writeCountsForAction(Landroid/util/proto/ProtoOutputStream;Landroid/util/ArrayMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 395
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_38

    .line 397
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 398
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_35

    const-wide v4, 0x20b00000003L

    .line 400
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v6, 0x10900000001L

    .line 401
    invoke-virtual {p0, v6, v7, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v6, 0x10500000003L

    .line 402
    invoke-virtual {p0, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 403
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_38
    return-void
.end method

.method public static writeEvent(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageEvents$Event;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 425
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p1

    .line 426
    iget-object v0, p3, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    iget-object v1, p4, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_19

    const-wide v1, 0x10500000002L

    add-int/lit8 v0, v0, 0x1

    .line 428
    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_23

    :cond_19
    const-wide v0, 0x10900000001L

    .line 431
    iget-object v2, p4, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 433
    :goto_23
    iget-object v0, p4, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v0, :cond_44

    .line 434
    iget-object v1, p3, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_3a

    const-wide v1, 0x10500000004L

    add-int/lit8 v0, v0, 0x1

    .line 436
    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_44

    :cond_3a
    const-wide v0, 0x10900000003L

    .line 439
    iget-object v2, p4, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_44
    :goto_44
    const-wide v4, 0x10300000005L

    .line 442
    iget-wide v6, p4, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v8, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v0, 0x10500000006L

    .line 444
    iget v2, p4, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000007L

    .line 445
    iget v2, p4, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x1050000000eL

    .line 446
    iget v2, p4, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 447
    iget-object v0, p4, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-eqz v0, :cond_85

    .line 448
    iget-object v1, p3, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_85

    const-wide v1, 0x1050000000fL

    add-int/lit8 v0, v0, 0x1

    .line 450
    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 454
    :cond_85
    iget-object v0, p4, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    if-eqz v0, :cond_9b

    .line 455
    iget-object v1, p3, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_9b

    const-wide v1, 0x10500000010L

    add-int/lit8 v0, v0, 0x1

    .line 457
    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 461
    :cond_9b
    iget v0, p4, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_104

    const/16 v1, 0x8

    if-eq v0, v1, :cond_f7

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_e0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_d3

    const/16 v1, 0xc

    if-eq v0, v1, :cond_b1

    goto :goto_110

    .line 478
    :cond_b1
    iget-object v0, p4, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-eqz v0, :cond_110

    .line 479
    iget-object p3, p3, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p3

    if-ltz p3, :cond_c8

    const-wide v0, 0x1050000000dL

    add-int/lit8 p3, p3, 0x1

    .line 482
    invoke-virtual {p0, v0, v1, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_110

    :cond_c8
    const-wide v0, 0x1090000000cL

    .line 486
    iget-object p3, p4, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_110

    .line 473
    :cond_d3
    iget p3, p4, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    if-eqz p3, :cond_110

    const-wide v0, 0x1050000000bL

    .line 474
    invoke-virtual {p0, v0, v1, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_110

    .line 492
    :cond_e0
    iget-object p4, p4, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    if-eqz p4, :cond_110

    .line 493
    iget-object p3, p3, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {p3, p4}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p3

    if-ltz p3, :cond_110

    const-wide v0, 0x10500000011L

    add-int/lit8 p3, p3, 0x1

    .line 495
    invoke-virtual {p0, v0, v1, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_110

    .line 468
    :cond_f7
    iget-object p3, p4, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-eqz p3, :cond_110

    const-wide v0, 0x10900000009L

    .line 469
    invoke-virtual {p0, v0, v1, p3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_110

    .line 463
    :cond_104
    iget-object p3, p4, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz p3, :cond_110

    const-wide v0, 0x10b00000008L

    .line 464
    invoke-virtual {p3, p0, v0, v1}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 499
    :cond_110
    :goto_110
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public static writeStringPool(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/usage/IntervalStats;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-wide v0, 0x10b00000002L

    .line 314
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 315
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    const-wide v3, 0x10500000001L

    .line 316
    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_2d

    const-wide v4, 0x20900000002L

    .line 318
    iget-object v6, p1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v6, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 320
    :cond_2d
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public static writeUsageStats(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageStats;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 326
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p1

    .line 328
    iget-object v0, p3, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    iget-object v1, p4, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_19

    const-wide v1, 0x10500000002L

    add-int/lit8 v0, v0, 0x1

    .line 330
    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_23

    :cond_19
    const-wide v0, 0x10900000001L

    .line 333
    iget-object v2, p4, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :goto_23
    const-wide v4, 0x10300000003L

    .line 335
    iget-wide v6, p4, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    iget-wide v8, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v0, 0x10300000004L

    .line 338
    iget-wide v2, p4, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10500000005L

    .line 340
    iget v2, p4, Landroid/app/usage/UsageStats;->mLastEvent:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10300000008L

    .line 342
    iget-wide v6, p4, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    iget-wide v8, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v0, 0x10300000009L

    .line 345
    iget-wide v2, p4, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x1030000000aL

    .line 347
    iget-wide v7, p4, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    iget-wide v9, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    move-object v4, p0

    invoke-static/range {v4 .. v10}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v0, 0x1030000000bL

    .line 350
    iget-wide v2, p4, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x1030000000cL

    .line 352
    iget-wide v7, p4, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    iget-wide v9, p3, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static/range {v4 .. v10}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v0, 0x10500000006L

    .line 355
    iget p3, p4, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    invoke-virtual {p0, v0, v1, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 357
    :try_start_88
    invoke-static {p0, p4}, Lcom/android/server/usage/UsageStatsProto;->writeChooserCounts(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageStats;)V
    :try_end_8b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_88 .. :try_end_8b} :catch_8c

    goto :goto_a5

    :catch_8c
    move-exception p3

    .line 359
    sget-object v0, Lcom/android/server/usage/UsageStatsProto;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to write chooser counts for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p4, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    :goto_a5
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
