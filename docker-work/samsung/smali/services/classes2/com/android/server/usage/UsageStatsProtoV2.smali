.class public final Lcom/android/server/usage/UsageStatsProtoV2;
.super Ljava/lang/Object;
.source "UsageStatsProtoV2.java"


# static fields
.field public static final ONE_HOUR_MS:J

.field public static final TAG:Ljava/lang/String; = "UsageStatsProtoV2"


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 43
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/usage/UsageStatsProtoV2;->ONE_HOUR_MS:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOffsetTimestamp(JJ)J
    .registers 4

    sub-long/2addr p0, p2

    const-wide/16 p2, 0x0

    cmp-long p2, p0, p2

    if-nez p2, :cond_a

    const-wide/16 p2, 0x1

    add-long/2addr p0, p2

    :cond_a
    return-wide p0
.end method

.method public static loadChooserCounts(Landroid/util/proto/ProtoInputStream;Landroid/app/usage/UsageStats;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v0, 0x10500000001L

    .line 133
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_26

    .line 135
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    sub-int/2addr v2, v3

    .line 136
    iget-object v4, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseIntArray;

    if-nez v4, :cond_2b

    .line 138
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .line 139
    iget-object v5, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2b

    .line 142
    :cond_26
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .line 146
    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_53

    if-eq v2, v3, :cond_48

    const/4 v5, 0x2

    if-eq v2, v5, :cond_38

    goto :goto_2b

    :cond_38
    const-wide v5, 0x20b00000002L

    .line 154
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v5

    .line 155
    invoke-static {p0, v4}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountsForAction(Landroid/util/proto/ProtoInputStream;Landroid/util/SparseIntArray;)V

    .line 156
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_2b

    .line 149
    :cond_48
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    sub-int/2addr v2, v3

    .line 151
    iget-object v5, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2b

    :cond_53
    return-void
.end method

.method public static loadConfigStats(Landroid/util/proto/ProtoInputStream;Lcom/android/server/usage/IntervalStats;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 192
    new-instance v1, Landroid/app/usage/ConfigurationStats;

    invoke-direct {v1}, Landroid/app/usage/ConfigurationStats;-><init>()V

    const-wide v2, 0x10b00000001L

    .line 193
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1d

    .line 195
    invoke-virtual {v0, p0, v2, v3}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 196
    invoke-virtual {p1, v0}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v1

    .line 200
    :cond_1d
    :goto_1d
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_7b

    const/4 v6, 0x1

    if-eq v4, v6, :cond_66

    const/4 v6, 0x2

    if-eq v4, v6, :cond_57

    const/4 v6, 0x3

    if-eq v4, v6, :cond_4b

    const/4 v6, 0x4

    if-eq v4, v6, :cond_3f

    const/4 v6, 0x5

    if-eq v4, v6, :cond_34

    goto :goto_1d

    :cond_34
    const-wide v4, 0x10800000005L

    .line 223
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v4

    move v5, v4

    goto :goto_1d

    :cond_3f
    const-wide v6, 0x10500000004L

    .line 219
    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v4

    iput v4, v1, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    goto :goto_1d

    :cond_4b
    const-wide v6, 0x10300000003L

    .line 215
    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    iput-wide v6, v1, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    goto :goto_1d

    .line 211
    :cond_57
    iget-wide v6, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v8, 0x10300000002L

    invoke-virtual {p0, v8, v9}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, v1, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    goto :goto_1d

    .line 203
    :cond_66
    invoke-virtual {v0, p0, v2, v3}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 204
    invoke-virtual {p1, v0}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v4

    .line 205
    iget-wide v6, v1, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    iput-wide v6, v4, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 206
    iget-wide v6, v1, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    iput-wide v6, v4, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 207
    iget v1, v1, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    iput v1, v4, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    move-object v1, v4

    goto :goto_1d

    :cond_7b
    if-eqz v5, :cond_81

    .line 228
    iget-object p0, v1, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    iput-object p0, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    :cond_81
    return-void
.end method

.method public static loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V
    .registers 8

    .line 108
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 110
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

    .line 116
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v2

    iput-wide v2, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    goto :goto_4

    :cond_1e
    const-wide v2, 0x10500000001L

    .line 112
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    goto :goto_4

    .line 120
    :cond_2a
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2d} :catch_2e

    return-void

    :catch_2e
    move-exception p0

    .line 125
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to read event tracker "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UsageStatsProtoV2"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static loadCountsForAction(Landroid/util/proto/ProtoInputStream;Landroid/util/SparseIntArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    .line 169
    :goto_3
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    if-eq v3, v0, :cond_25

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1a

    const/4 v4, 0x2

    if-eq v3, v4, :cond_10

    goto :goto_3

    :cond_10
    const-wide v3, 0x10500000002L

    .line 176
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    goto :goto_3

    :cond_1a
    const-wide v2, 0x10500000001L

    .line 171
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    sub-int/2addr v2, v4

    goto :goto_3

    :cond_25
    if-eq v2, v0, :cond_2a

    .line 181
    invoke-virtual {p1, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_2a
    return-void
.end method

.method public static loadPackagesMap(Landroid/util/proto/ProtoInputStream;Landroid/util/SparseArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 587
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    move v2, v1

    .line 589
    :goto_7
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    if-eq v3, v1, :cond_2c

    const/4 v4, 0x1

    if-eq v3, v4, :cond_21

    const/4 v4, 0x2

    if-eq v3, v4, :cond_14

    goto :goto_7

    :cond_14
    const-wide v3, 0x20900000002L

    .line 594
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_21
    const-wide v2, 0x10500000001L

    .line 591
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    sub-int/2addr v2, v4

    goto :goto_7

    :cond_2c
    if-eq v2, v1, :cond_31

    .line 598
    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_31
    return-void
.end method

.method public static parseEvent(Landroid/util/proto/ProtoInputStream;J)Landroid/app/usage/UsageEvents$Event;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 239
    :goto_5
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    packed-switch v1, :pswitch_data_c8

    :pswitch_c
    goto :goto_5

    :pswitch_d
    const-wide v1, 0x1050000000dL

    .line 282
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    goto :goto_5

    :pswitch_1b
    const-wide v1, 0x1050000000cL

    .line 278
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClassToken:I

    goto :goto_5

    :pswitch_29
    const-wide v1, 0x1050000000bL

    .line 274
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackageToken:I

    goto :goto_5

    :pswitch_37
    const-wide v1, 0x1050000000aL

    .line 271
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    goto :goto_5

    :pswitch_43
    const-wide v1, 0x10500000009L

    .line 267
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    goto :goto_5

    :pswitch_51
    const-wide v1, 0x10500000008L

    .line 264
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    goto :goto_5

    :pswitch_5d
    const-wide v1, 0x10500000007L

    .line 260
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    goto :goto_5

    .line 256
    :pswitch_6b
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v2, 0x10b00000006L

    .line 257
    invoke-virtual {v1, p0, v2, v3}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    goto :goto_5

    :pswitch_7b
    const-wide v1, 0x10500000005L

    .line 253
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    goto/16 :goto_5

    :pswitch_88
    const-wide v1, 0x10500000004L

    .line 250
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    goto/16 :goto_5

    :pswitch_95
    const-wide v1, 0x10300000003L

    .line 247
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    goto/16 :goto_5

    :pswitch_a3
    const-wide v1, 0x10500000002L

    .line 244
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mClassToken:I

    goto/16 :goto_5

    :pswitch_b2
    const-wide v1, 0x10500000001L

    .line 241
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    goto/16 :goto_5

    .line 286
    :pswitch_c1
    iget p0, v0, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    const/4 p1, -0x1

    if-ne p0, p1, :cond_c7

    const/4 v0, 0x0

    :cond_c7
    return-object v0

    :pswitch_data_c8
    .packed-switch -0x1
        :pswitch_c1
        :pswitch_c
        :pswitch_b2
        :pswitch_a3
        :pswitch_95
        :pswitch_88
        :pswitch_7b
        :pswitch_6b
        :pswitch_5d
        :pswitch_51
        :pswitch_43
        :pswitch_37
        :pswitch_29
        :pswitch_1b
        :pswitch_d
    .end packed-switch
.end method

.method public static parseGlobalComponentUsage(Landroid/util/proto/ProtoInputStream;)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    const-wide/16 v1, 0x0

    .line 823
    :goto_4
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_26

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1c

    const/4 v4, 0x2

    if-eq v3, v4, :cond_12

    goto :goto_4

    :cond_12
    const-wide v1, 0x10300000002L

    .line 829
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    goto :goto_4

    :cond_1c
    const-wide v3, 0x10900000001L

    .line 825
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 832
    :cond_26
    new-instance p0, Landroid/util/Pair;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static parsePendingEvent(Landroid/util/proto/ProtoInputStream;)Landroid/app/usage/UsageEvents$Event;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 661
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 663
    :goto_5
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    packed-switch v1, :pswitch_data_d4

    :pswitch_c
    goto :goto_5

    :pswitch_d
    const-wide v1, 0x1090000000cL

    .line 700
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    goto :goto_5

    :pswitch_19
    const-wide v1, 0x1090000000bL

    .line 697
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    goto :goto_5

    :pswitch_25
    const-wide v1, 0x1050000000aL

    .line 694
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    goto :goto_5

    :pswitch_31
    const-wide v1, 0x10900000009L

    .line 690
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    goto :goto_5

    :pswitch_3d
    const-wide v1, 0x10500000008L

    .line 687
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    goto :goto_5

    :pswitch_49
    const-wide v1, 0x10900000007L

    .line 684
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    goto :goto_5

    .line 680
    :pswitch_55
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v2, 0x10b00000006L

    .line 681
    invoke-virtual {v1, p0, v2, v3}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    goto :goto_5

    :pswitch_65
    const-wide v1, 0x10500000005L

    .line 677
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    goto :goto_5

    :pswitch_71
    const-wide v1, 0x10500000004L

    .line 674
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    goto :goto_5

    :pswitch_7d
    const-wide v1, 0x10300000003L

    .line 671
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    goto/16 :goto_5

    :pswitch_8a
    const-wide v1, 0x10900000002L

    .line 668
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    goto/16 :goto_5

    :pswitch_97
    const-wide v1, 0x10900000001L

    .line 665
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    goto/16 :goto_5

    .line 704
    :pswitch_a4
    iget p0, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v1, 0x5

    if-eq p0, v1, :cond_c2

    const/16 v1, 0x8

    const-string v2, ""

    if-eq p0, v1, :cond_bb

    const/16 v1, 0xc

    if-eq p0, v1, :cond_b4

    goto :goto_cd

    .line 716
    :cond_b4
    iget-object p0, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-nez p0, :cond_cd

    .line 717
    iput-object v2, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    goto :goto_cd

    .line 711
    :cond_bb
    iget-object p0, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-nez p0, :cond_cd

    .line 712
    iput-object v2, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    goto :goto_cd

    .line 706
    :cond_c2
    iget-object p0, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-nez p0, :cond_cd

    .line 707
    new-instance p0, Landroid/content/res/Configuration;

    invoke-direct {p0}, Landroid/content/res/Configuration;-><init>()V

    iput-object p0, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 721
    :cond_cd
    :goto_cd
    iget-object p0, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-nez p0, :cond_d2

    const/4 v0, 0x0

    :cond_d2
    return-object v0

    nop

    :pswitch_data_d4
    .packed-switch -0x1
        :pswitch_a4
        :pswitch_c
        :pswitch_97
        :pswitch_8a
        :pswitch_7d
        :pswitch_71
        :pswitch_65
        :pswitch_55
        :pswitch_49
        :pswitch_3d
        :pswitch_31
        :pswitch_25
        :pswitch_19
        :pswitch_d
    .end packed-switch
.end method

.method public static parseUsageStats(Landroid/util/proto/ProtoInputStream;J)Landroid/app/usage/UsageStats;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    new-instance v0, Landroid/app/usage/UsageStats;

    invoke-direct {v0}, Landroid/app/usage/UsageStats;-><init>()V

    .line 53
    :goto_5
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_b7

    const/4 v2, 0x1

    if-eq v1, v2, :cond_a9

    const/4 v2, 0x3

    if-eq v1, v2, :cond_9b

    const/4 v2, 0x4

    if-eq v1, v2, :cond_8e

    packed-switch v1, :pswitch_data_b8

    goto :goto_5

    :pswitch_19
    const-wide v1, 0x1030000000cL

    .line 96
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    goto :goto_5

    :pswitch_26
    const-wide v1, 0x1030000000bL

    .line 92
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    goto :goto_5

    :pswitch_32
    const-wide v1, 0x1030000000aL

    .line 88
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    goto :goto_5

    :pswitch_3f
    const-wide v1, 0x10300000009L

    .line 84
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    goto :goto_5

    :pswitch_4b
    const-wide v1, 0x10300000008L

    .line 80
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    goto :goto_5

    :pswitch_58
    const-wide v1, 0x20b00000007L

    .line 72
    :try_start_5d
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 73
    invoke-static {p0, v0}, Lcom/android/server/usage/UsageStatsProtoV2;->loadChooserCounts(Landroid/util/proto/ProtoInputStream;Landroid/app/usage/UsageStats;)V

    .line 74
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_67} :catch_68

    goto :goto_5

    .line 76
    :catch_68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read chooser counts for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/app/usage/UsageStats;->mPackageToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsageStatsProtoV2"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :pswitch_81
    const-wide v1, 0x10500000006L

    .line 67
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    goto/16 :goto_5

    :cond_8e
    const-wide v1, 0x10300000004L

    .line 63
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    goto/16 :goto_5

    :cond_9b
    const-wide v1, 0x10300000003L

    .line 59
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    goto/16 :goto_5

    :cond_a9
    const-wide v3, 0x10500000001L

    .line 55
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/app/usage/UsageStats;->mPackageToken:I

    goto/16 :goto_5

    :cond_b7
    return-object v0

    :pswitch_data_b8
    .packed-switch 0x6
        :pswitch_81
        :pswitch_58
        :pswitch_4b
        :pswitch_3f
        :pswitch_32
        :pswitch_26
        :pswitch_19
    .end packed-switch
.end method

.method public static read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 442
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 444
    :cond_5
    :goto_5
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_d2

    const/4 v2, 0x1

    if-eq p0, v2, :cond_c2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_b5

    const/4 v2, 0x3

    if-eq p0, v2, :cond_a8

    packed-switch p0, :pswitch_data_f0

    const-string v2, "UsageStatsProtoV2"

    packed-switch p0, :pswitch_data_fc

    goto :goto_5

    :pswitch_1e
    const-wide v3, 0x20b00000016L

    .line 496
    :try_start_23
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 498
    iget-wide v5, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v0, v5, v6}, Lcom/android/server/usage/UsageStatsProtoV2;->parseEvent(Landroid/util/proto/ProtoInputStream;J)Landroid/app/usage/UsageEvents$Event;

    move-result-object p0

    .line 499
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    if-eqz p0, :cond_5

    .line 501
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1, p0}, Landroid/app/usage/EventList;->insert(Landroid/app/usage/UsageEvents$Event;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_37} :catch_38

    goto :goto_5

    :catch_38
    move-exception p0

    const-string v1, "Unable to read some events from proto."

    .line 504
    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :pswitch_3f
    const-wide v3, 0x20b00000015L

    .line 486
    :try_start_44
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 488
    invoke-static {v0, p1}, Lcom/android/server/usage/UsageStatsProtoV2;->loadConfigStats(Landroid/util/proto/ProtoInputStream;Lcom/android/server/usage/IntervalStats;)V

    .line 489
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4e} :catch_4f

    goto :goto_5

    :catch_4f
    move-exception p0

    const-string v1, "Unable to read some configuration stats from proto."

    .line 491
    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :pswitch_56
    const-wide v3, 0x20b00000014L

    .line 473
    :try_start_5b
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 475
    iget-wide v5, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v0, v5, v6}, Lcom/android/server/usage/UsageStatsProtoV2;->parseUsageStats(Landroid/util/proto/ProtoInputStream;J)Landroid/app/usage/UsageStats;

    move-result-object p0

    .line 476
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 477
    iget v3, p0, Landroid/app/usage/UsageStats;->mPackageToken:I

    if-eq v3, v1, :cond_5

    .line 478
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v1, v3, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_71} :catch_72

    goto :goto_5

    :catch_72
    move-exception p0

    const-string v1, "Unable to read some usage stats from proto."

    .line 481
    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :pswitch_79
    const-wide v1, 0x10b0000000dL

    .line 468
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    goto :goto_5

    :pswitch_84
    const-wide v1, 0x10b0000000cL

    .line 464
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    goto/16 :goto_5

    :pswitch_90
    const-wide v1, 0x10b0000000bL

    .line 460
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    goto/16 :goto_5

    :pswitch_9c
    const-wide v1, 0x10b0000000aL

    .line 456
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    goto/16 :goto_5

    :cond_a8
    const-wide v1, 0x10500000003L

    .line 453
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p0

    iput p0, p1, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    goto/16 :goto_5

    :cond_b5
    const-wide v1, 0x10500000002L

    .line 450
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p0

    iput p0, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    goto/16 :goto_5

    .line 446
    :cond_c2
    iget-wide v1, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v3, 0x10300000001L

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    goto/16 :goto_5

    .line 509
    :cond_d2
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_d9
    if-ge v0, p0, :cond_ee

    .line 511
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStats;

    .line 512
    iget-wide v2, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iput-wide v2, v1, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    .line 513
    iget-wide v2, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    iput-wide v2, v1, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_d9

    :cond_ee
    return-void

    nop

    :pswitch_data_f0
    .packed-switch 0xa
        :pswitch_9c
        :pswitch_90
        :pswitch_84
        :pswitch_79
    .end packed-switch

    :pswitch_data_fc
    .packed-switch 0x14
        :pswitch_56
        :pswitch_3f
        :pswitch_1e
    .end packed-switch
.end method

.method public static readGlobalComponentUsage(Ljava/io/InputStream;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 845
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 847
    :cond_5
    :goto_5
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_4e

    const/16 v1, 0x18

    if-eq p0, v1, :cond_11

    goto :goto_5

    :cond_11
    const-wide v1, 0x20b00000018L

    .line 850
    :try_start_16
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 851
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsProtoV2;->parseGlobalComponentUsage(Landroid/util/proto/ProtoInputStream;)Landroid/util/Pair;

    move-result-object p0

    .line 852
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 853
    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_5

    .line 854
    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_44} :catch_45

    goto :goto_5

    :catch_45
    move-exception p0

    const-string v1, "UsageStatsProtoV2"

    const-string v2, "Unable to parse some package usage from proto."

    .line 857
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :cond_4e
    return-void
.end method

.method public static readObfuscatedData(Ljava/io/InputStream;Lcom/android/server/usage/PackagesTokenData;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 613
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 615
    :goto_5
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_31

    const/4 v1, 0x1

    if-eq p0, v1, :cond_25

    const/4 v1, 0x2

    if-eq p0, v1, :cond_13

    goto :goto_5

    :cond_13
    const-wide v1, 0x20b00000002L

    .line 620
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 621
    iget-object p0, p1, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-static {v0, p0}, Lcom/android/server/usage/UsageStatsProtoV2;->loadPackagesMap(Landroid/util/proto/ProtoInputStream;Landroid/util/SparseArray;)V

    .line 622
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_5

    :cond_25
    const-wide v1, 0x10500000001L

    .line 617
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result p0

    iput p0, p1, Lcom/android/server/usage/PackagesTokenData;->counter:I

    goto :goto_5

    :cond_31
    return-void
.end method

.method public static readPendingEvents(Ljava/io/InputStream;Ljava/util/LinkedList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/LinkedList<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 734
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 736
    :cond_5
    :goto_5
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_30

    const/16 v1, 0x17

    if-eq p0, v1, :cond_11

    goto :goto_5

    :cond_11
    const-wide v1, 0x20b00000017L

    .line 739
    :try_start_16
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 740
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsProtoV2;->parsePendingEvent(Landroid/util/proto/ProtoInputStream;)Landroid/app/usage/UsageEvents$Event;

    move-result-object p0

    .line 741
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    if-eqz p0, :cond_5

    .line 743
    invoke-virtual {p1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_26} :catch_27

    goto :goto_5

    :catch_27
    move-exception p0

    const-string v1, "UsageStatsProtoV2"

    const-string v2, "Unable to parse some pending events from proto."

    .line 746
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :cond_30
    return-void
.end method

.method public static write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "UsageStatsProtoV2"

    .line 528
    new-instance v7, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v7, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 529
    iget-wide v1, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    iget-wide v3, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 530
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/usage/UsageStatsProtoV2;->getOffsetTimestamp(JJ)J

    move-result-wide v1

    const-wide v3, 0x10300000001L

    .line 529
    invoke-virtual {v7, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 531
    iget p0, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    const-wide v1, 0x10500000002L

    invoke-virtual {v7, v1, v2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 532
    iget p0, p1, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    const-wide v1, 0x10500000003L

    invoke-virtual {v7, v1, v2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10b0000000aL

    .line 535
    :try_start_30
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v4, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-wide v5, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    move-object v1, v7

    invoke-static/range {v1 .. v6}, Lcom/android/server/usage/UsageStatsProtoV2;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V

    const-wide v2, 0x10b0000000bL

    .line 537
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v4, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-wide v5, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    move-object v1, v7

    invoke-static/range {v1 .. v6}, Lcom/android/server/usage/UsageStatsProtoV2;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V

    const-wide v2, 0x10b0000000cL

    .line 539
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v4, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-wide v5, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    move-object v1, v7

    invoke-static/range {v1 .. v6}, Lcom/android/server/usage/UsageStatsProtoV2;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V

    const-wide v2, 0x10b0000000dL

    .line 541
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget v4, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    iget-wide v5, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    move-object v1, v7

    invoke-static/range {v1 .. v6}, Lcom/android/server/usage/UsageStatsProtoV2;->writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V
    :try_end_67
    .catch Ljava/lang/IllegalArgumentException; {:try_start_30 .. :try_end_67} :catch_68

    goto :goto_6e

    :catch_68
    move-exception p0

    const-string v1, "Unable to write some interval stats trackers to proto."

    .line 544
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 547
    :goto_6e
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v1, 0x0

    move v2, v1

    :goto_76
    if-ge v2, p0, :cond_9b

    const-wide v3, 0x20b00000014L

    .line 550
    :try_start_7d
    invoke-virtual {v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 551
    iget-wide v5, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-object v8, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/UsageStats;

    invoke-static {v7, v5, v6, v8}, Lcom/android/server/usage/UsageStatsProtoV2;->writeUsageStats(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageStats;)V

    .line 552
    invoke-virtual {v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_91
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7d .. :try_end_91} :catch_92

    goto :goto_98

    :catch_92
    move-exception v3

    const-string v4, "Unable to write some usage stats to proto."

    .line 554
    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_98
    add-int/lit8 v2, v2, 0x1

    goto :goto_76

    .line 557
    :cond_9b
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    move v2, v1

    :goto_a2
    if-ge v2, p0, :cond_d5

    .line 559
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    iget-object v4, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Configuration;

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v3

    const-wide v4, 0x20b00000015L

    .line 561
    :try_start_b7
    invoke-virtual {v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 562
    iget-wide v8, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-object v6, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/ConfigurationStats;

    invoke-static {v7, v8, v9, v6, v3}, Lcom/android/server/usage/UsageStatsProtoV2;->writeConfigStats(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/ConfigurationStats;Z)V

    .line 563
    invoke-virtual {v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_cb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b7 .. :try_end_cb} :catch_cc

    goto :goto_d2

    :catch_cc
    move-exception v3

    const-string v4, "Unable to write some configuration stats to proto."

    .line 565
    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d2
    add-int/lit8 v2, v2, 0x1

    goto :goto_a2

    .line 568
    :cond_d5
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p0}, Landroid/app/usage/EventList;->size()I

    move-result p0

    :goto_db
    if-ge v1, p0, :cond_fe

    const-wide v2, 0x20b00000016L

    .line 571
    :try_start_e2
    invoke-virtual {v7, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 572
    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-object v6, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v6, v1}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v6

    invoke-static {v7, v4, v5, v6}, Lcom/android/server/usage/UsageStatsProtoV2;->writeEvent(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageEvents$Event;)V

    .line 573
    invoke-virtual {v7, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_f4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e2 .. :try_end_f4} :catch_f5

    goto :goto_fb

    :catch_f5
    move-exception v2

    const-string v3, "Unable to write some events to proto."

    .line 575
    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_fb
    add-int/lit8 v1, v1, 0x1

    goto :goto_db

    .line 579
    :cond_fe
    invoke-virtual {v7}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public static writeChooserCounts(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageStats;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_47

    .line 341
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_47

    .line 344
    :cond_b
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_47

    .line 346
    iget-object v2, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 347
    iget-object v3, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    if-eqz v3, :cond_44

    .line 348
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-nez v4, :cond_2b

    goto :goto_44

    :cond_2b
    const-wide v4, 0x20b00000007L

    .line 351
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v6, 0x10500000001L

    add-int/lit8 v2, v2, 0x1

    .line 352
    invoke-virtual {p0, v6, v7, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 353
    invoke-static {p0, v3}, Lcom/android/server/usage/UsageStatsProtoV2;->writeCountsForAction(Landroid/util/proto/ProtoOutputStream;Landroid/util/SparseIntArray;)V

    .line 354
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_44
    :goto_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_47
    :goto_47
    return-void
.end method

.method public static writeConfigStats(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/ConfigurationStats;Z)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 378
    iget-object v0, p3, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 380
    iget-wide v6, p3, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    const-wide v4, 0x10300000002L

    move-object v3, p0

    move-wide v8, p1

    invoke-static/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 382
    iget-wide p1, p3, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    const-wide v0, 0x10300000003L

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 384
    iget p1, p3, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    const-wide p2, 0x10500000004L

    invoke-virtual {p0, p2, p3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide p1, 0x10800000005L

    .line 385
    invoke-virtual {p0, p1, p2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    return-void
.end method

.method public static writeCountAndTime(Landroid/util/proto/ProtoOutputStream;JIJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 333
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p1

    const-wide v0, 0x10500000001L

    .line 334
    invoke-virtual {p0, v0, v1, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10300000002L

    .line 335
    invoke-virtual {p0, v0, v1, p4, p5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 336
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public static writeCountsForAction(Landroid/util/proto/ProtoOutputStream;Landroid/util/SparseIntArray;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 360
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_33

    .line 362
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 363
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-gtz v3, :cond_12

    goto :goto_30

    :cond_12
    const-wide v4, 0x20b00000002L

    .line 367
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v6, 0x10500000001L

    add-int/lit8 v2, v2, 0x1

    .line 368
    invoke-virtual {p0, v6, v7, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10500000002L

    .line 370
    invoke-virtual {p0, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 371
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_33
    return-void
.end method

.method public static writeEvent(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageEvents$Event;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 390
    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    add-int/lit8 v0, v0, 0x1

    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 391
    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mClassToken:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    const-wide v2, 0x10500000002L

    add-int/lit8 v0, v0, 0x1

    .line 392
    invoke-virtual {p0, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_1b
    const-wide v5, 0x10300000003L

    .line 394
    iget-wide v7, p3, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    move-object v4, p0

    move-wide v9, p1

    invoke-static/range {v4 .. v10}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide p1, 0x10500000004L

    .line 395
    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide p1, 0x10500000005L

    .line 396
    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide p1, 0x1050000000aL

    .line 397
    iget v0, p3, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 398
    iget p1, p3, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackageToken:I

    if-eq p1, v1, :cond_53

    const-wide v2, 0x1050000000bL

    add-int/lit8 p1, p1, 0x1

    .line 399
    invoke-virtual {p0, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 402
    :cond_53
    iget p1, p3, Landroid/app/usage/UsageEvents$Event;->mTaskRootClassToken:I

    if-eq p1, v1, :cond_61

    const-wide v2, 0x1050000000cL

    add-int/lit8 p1, p1, 0x1

    .line 403
    invoke-virtual {p0, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 405
    :cond_61
    iget p1, p3, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 p2, 0x5

    if-eq p1, p2, :cond_b1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_a2

    const/16 p2, 0x1e

    if-eq p1, p2, :cond_93

    const/16 p2, 0xb

    if-eq p1, p2, :cond_86

    const/16 p2, 0xc

    if-eq p1, p2, :cond_77

    goto :goto_bd

    .line 427
    :cond_77
    iget p1, p3, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    if-eq p1, v1, :cond_bd

    const-wide p2, 0x10500000009L

    add-int/lit8 p1, p1, 0x1

    .line 428
    invoke-virtual {p0, p2, p3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_bd

    .line 412
    :cond_86
    iget p1, p3, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    if-eqz p1, :cond_bd

    const-wide p2, 0x10500000008L

    .line 413
    invoke-virtual {p0, p2, p3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_bd

    .line 422
    :cond_93
    iget p1, p3, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    if-eq p1, v1, :cond_bd

    const-wide p2, 0x1050000000dL

    add-int/lit8 p1, p1, 0x1

    .line 423
    invoke-virtual {p0, p2, p3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_bd

    .line 417
    :cond_a2
    iget p1, p3, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    if-eq p1, v1, :cond_bd

    const-wide p2, 0x10500000007L

    add-int/lit8 p1, p1, 0x1

    .line 418
    invoke-virtual {p0, p2, p3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_bd

    .line 407
    :cond_b1
    iget-object p1, p3, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz p1, :cond_bd

    const-wide p2, 0x10b00000006L

    .line 408
    invoke-virtual {p1, p0, p2, p3}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_bd
    :goto_bd
    return-void
.end method

.method public static writeGlobalComponentUsage(Ljava/io/OutputStream;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 874
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 876
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/Map$Entry;

    .line 877
    array-length p1, p0

    const/4 v1, 0x0

    :goto_11
    if-ge v1, p1, :cond_59

    .line 879
    aget-object v2, p0, v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_26

    goto :goto_56

    :cond_26
    const-wide v2, 0x20b00000018L

    .line 880
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v4, 0x10900000001L

    .line 881
    aget-object v6, p0, v1

    .line 882
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 881
    invoke-virtual {v0, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v4, 0x10300000002L

    .line 883
    aget-object v6, p0, v1

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 884
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_59
    return-void
.end method

.method public static writeObfuscatedData(Ljava/io/OutputStream;Lcom/android/server/usage/PackagesTokenData;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 638
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 639
    iget p0, p1, Lcom/android/server/usage/PackagesTokenData;->counter:I

    const-wide v1, 0x10500000001L

    invoke-virtual {v0, v1, v2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 641
    iget-object p0, p1, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v3, 0x0

    move v4, v3

    :goto_17
    if-ge v4, p0, :cond_53

    const-wide v5, 0x20b00000002L

    .line 643
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 644
    iget-object v7, p1, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    .line 645
    invoke-virtual {v0, v1, v2, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 647
    iget-object v7, p1, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 648
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v3

    :goto_3a
    if-ge v9, v8, :cond_4d

    const-wide v10, 0x20900000002L

    .line 650
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v0, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3a

    .line 652
    :cond_4d
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 655
    :cond_53
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public static writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V
    .registers 9

    .line 295
    sget-wide v0, Lcom/android/server/usage/UsageStatsProtoV2;->ONE_HOUR_MS:J

    sub-long v0, p5, v0

    cmp-long v0, p3, v0

    if-lez v0, :cond_f

    .line 298
    invoke-static {p3, p4, p5, p6}, Lcom/android/server/usage/UsageStatsProtoV2;->getOffsetTimestamp(JJ)J

    move-result-wide p3

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_f
    return-void
.end method

.method public static writePendingEvent(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageEvents$Event;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 757
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const-wide v1, 0x10900000001L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 758
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v0, :cond_16

    const-wide v1, 0x10900000002L

    .line 759
    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_16
    const-wide v0, 0x10300000003L

    .line 761
    iget-wide v2, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10500000004L

    .line 762
    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000005L

    .line 763
    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x1050000000aL

    .line 764
    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 765
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-eqz v0, :cond_4a

    const-wide v1, 0x1090000000bL

    .line 766
    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 768
    :cond_4a
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    if-eqz v0, :cond_56

    const-wide v1, 0x1090000000cL

    .line 769
    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 771
    :cond_56
    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_8f

    const/16 v1, 0x8

    if-eq v0, v1, :cond_82

    const/16 v1, 0xb

    if-eq v0, v1, :cond_75

    const/16 v1, 0xc

    if-eq v0, v1, :cond_68

    goto :goto_9b

    .line 788
    :cond_68
    iget-object p1, p1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-eqz p1, :cond_9b

    const-wide v0, 0x10900000009L

    .line 789
    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_9b

    .line 778
    :cond_75
    iget p1, p1, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    if-eqz p1, :cond_9b

    const-wide v0, 0x10500000008L

    .line 779
    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_9b

    .line 783
    :cond_82
    iget-object p1, p1, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-eqz p1, :cond_9b

    const-wide v0, 0x10900000007L

    .line 784
    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_9b

    .line 773
    :cond_8f
    iget-object p1, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz p1, :cond_9b

    const-wide v0, 0x10b00000006L

    .line 774
    invoke-virtual {p1, p0, v0, v1}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_9b
    :goto_9b
    return-void
.end method

.method public static writePendingEvents(Ljava/io/OutputStream;Ljava/util/LinkedList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/LinkedList<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 804
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 805
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, p0, :cond_2d

    const-wide v2, 0x20b00000017L

    .line 808
    :try_start_11
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 809
    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageEvents$Event;

    invoke-static {v0, v4}, Lcom/android/server/usage/UsageStatsProtoV2;->writePendingEvent(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageEvents$Event;)V

    .line 810
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_21} :catch_22

    goto :goto_2a

    :catch_22
    move-exception v2

    const-string v3, "UsageStatsProtoV2"

    const-string v4, "Unable to write some pending events to proto."

    .line 812
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 815
    :cond_2d
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public static writeUsageStats(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageStats;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 310
    iget v0, p3, Landroid/app/usage/UsageStats;->mPackageToken:I

    add-int/lit8 v0, v0, 0x1

    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 311
    iget-wide v6, p3, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    const-wide v4, 0x10300000003L

    move-object v3, p0

    move-wide v8, p1

    invoke-static/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 313
    iget-wide v0, p3, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    const-wide v2, 0x10300000004L

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 314
    iget-wide v7, p3, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    const-wide v5, 0x10300000008L

    move-object v4, p0

    move-wide v9, p1

    invoke-static/range {v4 .. v10}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 316
    iget-wide v0, p3, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    const-wide v2, 0x10300000009L

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 318
    iget-wide v7, p3, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    const-wide v5, 0x1030000000aL

    invoke-static/range {v4 .. v10}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 320
    iget-wide v0, p3, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    const-wide v2, 0x1030000000bL

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 321
    iget-wide v7, p3, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    const-wide v5, 0x1030000000cL

    invoke-static/range {v4 .. v10}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 323
    iget p1, p3, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    const-wide v0, 0x10500000006L

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 325
    :try_start_60
    invoke-static {p0, p3}, Lcom/android/server/usage/UsageStatsProtoV2;->writeChooserCounts(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageStats;)V
    :try_end_63
    .catch Ljava/lang/IllegalArgumentException; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_7d

    :catch_64
    move-exception p0

    .line 327
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to write chooser counts for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UsageStatsProtoV2"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7d
    return-void
.end method
