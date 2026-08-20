.class public Lcom/android/server/usage/IntervalStats;
.super Ljava/lang/Object;
.source "IntervalStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/IntervalStats$EventTracker;
    }
.end annotation


# static fields
.field public static final CURRENT_MAJOR_VERSION:I = 0x1

.field public static final CURRENT_MINOR_VERSION:I = 0x1

.field public static final TAG:Ljava/lang/String; = "IntervalStats"


# instance fields
.field public activeConfiguration:Landroid/content/res/Configuration;

.field public beginTime:J

.field public final configurations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/res/Configuration;",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation
.end field

.field public endTime:J

.field public final events:Landroid/app/usage/EventList;

.field public final interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

.field public final keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

.field public final keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

.field public lastTimeSaved:J

.field public final mStringCache:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public majorVersion:I

.field public minorVersion:I

.field public final nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

.field public final packageStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field public final packageStatsObfuscated:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 65
    iput v0, p0, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    .line 66
    iput v0, p0, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    .line 70
    new-instance v0, Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats$EventTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 71
    new-instance v0, Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats$EventTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 72
    new-instance v0, Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats$EventTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 73
    new-instance v0, Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats$EventTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 74
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    .line 77
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    .line 79
    new-instance v0, Landroid/app/usage/EventList;

    invoke-direct {v0}, Landroid/app/usage/EventList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 85
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public addEvent(Landroid/app/usage/UsageEvents$Event;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 334
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 335
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 336
    invoke-virtual {p0, v0}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 338
    :cond_12
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 339
    invoke-virtual {p0, v0}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 341
    :cond_1c
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 342
    invoke-virtual {p0, v0}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    .line 344
    :cond_26
    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_34

    .line 345
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 347
    :cond_34
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0, p1}, Landroid/app/usage/EventList;->insert(Landroid/app/usage/UsageEvents$Event;)V

    .line 348
    iget-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v2, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_43

    .line 349
    iput-wide v0, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    :cond_43
    return-void
.end method

.method public addEventStatsTo(Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/EventStats;",
            ">;)V"
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v3, p0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-wide v5, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    const/16 v2, 0xf

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usage/IntervalStats$EventTracker;->addToEventStats(Ljava/util/List;IJJ)V

    .line 423
    iget-object v7, p0, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v10, p0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-wide v12, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    const/16 v9, 0x10

    move-object v8, p1

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/usage/IntervalStats$EventTracker;->addToEventStats(Ljava/util/List;IJJ)V

    .line 425
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v3, p0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-wide v5, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    const/16 v2, 0x11

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usage/IntervalStats$EventTracker;->addToEventStats(Ljava/util/List;IJJ)V

    .line 427
    iget-object v7, p0, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    iget-wide v10, p0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-wide v12, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    const/16 v9, 0x12

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/usage/IntervalStats$EventTracker;->addToEventStats(Ljava/util/List;IJJ)V

    return-void
.end method

.method public buildEvent(Landroid/util/proto/ProtoInputStream;Ljava/util/List;)Landroid/app/usage/UsageEvents$Event;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/usage/UsageEvents$Event;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 179
    :goto_5
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    packed-switch v1, :pswitch_data_168

    :pswitch_c
    goto :goto_5

    :pswitch_d
    const-wide v1, 0x10500000011L

    .line 240
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 239
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    goto :goto_5

    :pswitch_25
    const-wide v1, 0x10500000010L

    .line 236
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 235
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    goto :goto_5

    :pswitch_3d
    const-wide v1, 0x1050000000fL

    .line 232
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 231
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    goto :goto_5

    :pswitch_55
    const-wide v1, 0x1050000000eL

    .line 228
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    goto :goto_5

    :pswitch_61
    const-wide v1, 0x1050000000dL

    .line 224
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 223
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    goto :goto_5

    :pswitch_79
    const-wide v1, 0x1090000000cL

    .line 219
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    goto :goto_5

    :pswitch_85
    const-wide v1, 0x1050000000bL

    .line 215
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    goto/16 :goto_5

    :pswitch_92
    const-wide v1, 0x10900000009L

    .line 211
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    goto/16 :goto_5

    .line 207
    :pswitch_a3
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    const-wide v2, 0x10b00000008L

    .line 208
    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    goto/16 :goto_5

    :pswitch_b4
    const-wide v1, 0x10500000007L

    .line 204
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    goto/16 :goto_5

    :pswitch_c1
    const-wide v1, 0x10500000006L

    .line 201
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    goto/16 :goto_5

    .line 197
    :pswitch_ce
    iget-wide v1, p0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide v3, 0x10300000005L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    goto/16 :goto_5

    :pswitch_de
    const-wide v1, 0x10500000004L

    .line 194
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 193
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    goto/16 :goto_5

    :pswitch_f7
    const-wide v1, 0x10900000003L

    .line 190
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-virtual {p0, v1}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    goto/16 :goto_5

    :pswitch_108
    const-wide v1, 0x10500000002L

    .line 186
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 185
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    goto/16 :goto_5

    :pswitch_121
    const-wide v1, 0x10900000001L

    .line 182
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-virtual {p0, v1}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    goto/16 :goto_5

    .line 244
    :pswitch_132
    iget p0, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 p1, 0x5

    if-eq p0, p1, :cond_15b

    const/16 p1, 0x8

    const-string p2, ""

    if-eq p0, p1, :cond_154

    const/16 p1, 0xc

    if-eq p0, p1, :cond_14d

    const/16 p1, 0x1e

    if-eq p0, p1, :cond_146

    goto :goto_166

    .line 261
    :cond_146
    iget-object p0, v0, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    if-nez p0, :cond_166

    .line 262
    iput-object p2, v0, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    goto :goto_166

    .line 256
    :cond_14d
    iget-object p0, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-nez p0, :cond_166

    .line 257
    iput-object p2, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    goto :goto_166

    .line 251
    :cond_154
    iget-object p0, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-nez p0, :cond_166

    .line 252
    iput-object p2, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    goto :goto_166

    .line 246
    :cond_15b
    iget-object p0, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-nez p0, :cond_166

    .line 247
    new-instance p0, Landroid/content/res/Configuration;

    invoke-direct {p0}, Landroid/content/res/Configuration;-><init>()V

    iput-object p0, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    :cond_166
    :goto_166
    return-object v0

    nop

    :pswitch_data_168
    .packed-switch -0x1
        :pswitch_132
        :pswitch_c
        :pswitch_121
        :pswitch_108
        :pswitch_f7
        :pswitch_de
        :pswitch_ce
        :pswitch_c1
        :pswitch_b4
        :pswitch_a3
        :pswitch_92
        :pswitch_c
        :pswitch_85
        :pswitch_79
        :pswitch_61
        :pswitch_55
        :pswitch_3d
        :pswitch_25
        :pswitch_d
    .end packed-switch
.end method

.method public buildEvent(Ljava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents$Event;
    .registers 4

    .line 163
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 164
    invoke-virtual {p0, p1}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz p2, :cond_13

    .line 166
    invoke-virtual {p0, p2}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    :cond_13
    return-object v0
.end method

.method public commitTime(J)V
    .registers 4

    .line 394
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    .line 395
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    .line 396
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    .line 397
    iget-object p0, p0, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    return-void
.end method

.method public deobfuscateData(Lcom/android/server/usage/PackagesTokenData;)Z
    .registers 3

    .line 594
    invoke-virtual {p0, p1}, Lcom/android/server/usage/IntervalStats;->deobfuscateUsageStats(Lcom/android/server/usage/PackagesTokenData;)Z

    move-result v0

    .line 595
    invoke-virtual {p0, p1}, Lcom/android/server/usage/IntervalStats;->deobfuscateEvents(Lcom/android/server/usage/PackagesTokenData;)Z

    move-result p0

    if-nez v0, :cond_f

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public final deobfuscateEvents(Lcom/android/server/usage/PackagesTokenData;)Z
    .registers 12

    .line 516
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 517
    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1}, Landroid/app/usage/EventList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_e
    const-string v4, "IntervalStats"

    if-ltz v1, :cond_fa

    .line 518
    iget-object v5, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v5, v1}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v5

    .line 519
    iget v6, v5, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    .line 520
    invoke-virtual {p1, v6}, Lcom/android/server/usage/PackagesTokenData;->getPackageString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-nez v7, :cond_31

    .line 522
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 523
    iget-object v3, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v3, v1}, Landroid/app/usage/EventList;->remove(I)Landroid/app/usage/UsageEvents$Event;

    :goto_2e
    move v3, v2

    goto/16 :goto_f6

    .line 528
    :cond_31
    iget v7, v5, Landroid/app/usage/UsageEvents$Event;->mClassToken:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3c

    .line 529
    invoke-virtual {p1, v6, v7}, Lcom/android/server/usage/PackagesTokenData;->getString(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 531
    :cond_3c
    iget v7, v5, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackageToken:I

    if-eq v7, v8, :cond_46

    .line 532
    invoke-virtual {p1, v6, v7}, Lcom/android/server/usage/PackagesTokenData;->getString(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 535
    :cond_46
    iget v7, v5, Landroid/app/usage/UsageEvents$Event;->mTaskRootClassToken:I

    if-eq v7, v8, :cond_50

    .line 536
    invoke-virtual {p1, v6, v7}, Lcom/android/server/usage/PackagesTokenData;->getString(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    .line 539
    :cond_50
    iget v7, v5, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v8, 0x5

    if-eq v7, v8, :cond_eb

    const/16 v8, 0x8

    const-string v9, " for package "

    if-eq v7, v8, :cond_be

    const/16 v8, 0xc

    if-eq v7, v8, :cond_91

    const/16 v8, 0x1e

    if-eq v7, v8, :cond_65

    goto/16 :goto_f6

    .line 569
    :cond_65
    iget v7, v5, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    invoke-virtual {p1, v6, v7}, Lcom/android/server/usage/PackagesTokenData;->getString(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    if-nez v7, :cond_f6

    .line 571
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to parse locus "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v3, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v3, v1}, Landroid/app/usage/EventList;->remove(I)Landroid/app/usage/UsageEvents$Event;

    goto :goto_2e

    .line 557
    :cond_91
    iget v7, v5, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    invoke-virtual {p1, v6, v7}, Lcom/android/server/usage/PackagesTokenData;->getString(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-nez v7, :cond_f6

    .line 560
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to parse notification channel "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v3, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v3, v1}, Landroid/app/usage/EventList;->remove(I)Landroid/app/usage/UsageEvents$Event;

    goto/16 :goto_2e

    .line 546
    :cond_be
    iget v7, v5, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    invoke-virtual {p1, v6, v7}, Lcom/android/server/usage/PackagesTokenData;->getString(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-nez v7, :cond_f6

    .line 549
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to parse shortcut "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v3, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v3, v1}, Landroid/app/usage/EventList;->remove(I)Landroid/app/usage/UsageEvents$Event;

    goto/16 :goto_2e

    .line 541
    :cond_eb
    iget-object v4, v5, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-nez v4, :cond_f6

    .line 542
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    iput-object v4, v5, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    :cond_f6
    :goto_f6
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_e

    :cond_fa
    if-eqz v3, :cond_118

    .line 581
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unable to parse event packages: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    invoke-virtual {v0}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 581
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_118
    return v3
.end method

.method public final deobfuscateUsageStats(Lcom/android/server/usage/PackagesTokenData;)Z
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 463
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 464
    iget-object v3, v0, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_11
    if-ge v5, v3, :cond_8d

    .line 466
    iget-object v7, v0, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 467
    iget-object v8, v0, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/UsageStats;

    .line 468
    invoke-virtual {v1, v7}, Lcom/android/server/usage/PackagesTokenData;->getPackageString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    if-nez v9, :cond_32

    .line 470
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    goto :goto_88

    .line 476
    :cond_32
    iget-object v9, v8, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_39
    if-ge v10, v9, :cond_81

    .line 478
    new-instance v11, Landroid/util/ArrayMap;

    invoke-direct {v11}, Landroid/util/ArrayMap;-><init>()V

    .line 479
    iget-object v12, v8, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 480
    invoke-virtual {v1, v7, v12}, Lcom/android/server/usage/PackagesTokenData;->getString(II)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_4d

    goto :goto_7c

    .line 484
    :cond_4d
    iget-object v13, v8, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    .line 485
    invoke-virtual {v13, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SparseIntArray;

    .line 486
    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_5a
    if-ge v15, v14, :cond_77

    .line 488
    invoke-virtual {v13, v15}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 489
    invoke-virtual {v1, v7, v4}, Lcom/android/server/usage/PackagesTokenData;->getString(II)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_67

    goto :goto_72

    .line 494
    :cond_67
    invoke-virtual {v13, v15}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_72
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    goto :goto_5a

    .line 496
    :cond_77
    iget-object v1, v8, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v1, v12, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7c
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    goto :goto_39

    .line 498
    :cond_81
    iget-object v1, v0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    iget-object v4, v8, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_88
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p1

    goto :goto_11

    :cond_8d
    if-eqz v6, :cond_ad

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to parse usage stats packages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {v2}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IntervalStats"

    .line 501
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ad
    return v6
.end method

.method public final getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 432
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_e

    .line 434
    iget-object p0, p0, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 437
    :cond_e
    iget-object p0, p0, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;
    .registers 5

    .line 148
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/ConfigurationStats;

    if-nez v0, :cond_1e

    .line 150
    new-instance v0, Landroid/app/usage/ConfigurationStats;

    invoke-direct {v0}, Landroid/app/usage/ConfigurationStats;-><init>()V

    .line 151
    iget-wide v1, p0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iput-wide v1, v0, Landroid/app/usage/ConfigurationStats;->mBeginTimeStamp:J

    .line 152
    iget-wide v1, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    iput-wide v1, v0, Landroid/app/usage/ConfigurationStats;->mEndTimeStamp:J

    .line 153
    iput-object p1, v0, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    .line 154
    iget-object p0, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    return-object v0
.end method

.method public getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;
    .registers 5

    .line 132
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStats;

    if-nez v0, :cond_22

    .line 134
    new-instance v0, Landroid/app/usage/UsageStats;

    invoke-direct {v0}, Landroid/app/usage/UsageStats;-><init>()V

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    .line 136
    iget-wide v1, p0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    .line 137
    iget-wide v1, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    .line 138
    iget-object p0, p0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    return-object v0
.end method

.method public incrementAppLaunchCount(Ljava/lang/String;)V
    .registers 2

    .line 389
    invoke-virtual {p0, p1}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object p0

    .line 390
    iget p1, p0, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    return-void
.end method

.method public final isStatefulEvent(I)Z
    .registers 3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_14

    const/4 v0, 0x2

    if-eq p1, v0, :cond_14

    const/4 v0, 0x3

    if-eq p1, v0, :cond_14

    const/4 v0, 0x4

    if-eq p1, v0, :cond_14

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_14

    packed-switch p1, :pswitch_data_16

    const/4 p0, 0x0

    :cond_14
    :pswitch_14
    return p0

    nop

    :pswitch_data_16
    .packed-switch 0x13
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method public final isUserVisibleEvent(I)Z
    .registers 2

    const/4 p0, 0x6

    if-eq p1, p0, :cond_9

    const/16 p0, 0xb

    if-eq p1, p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public obfuscateData(Lcom/android/server/usage/PackagesTokenData;)V
    .registers 2

    .line 705
    invoke-virtual {p0, p1}, Lcom/android/server/usage/IntervalStats;->obfuscateUsageStatsData(Lcom/android/server/usage/PackagesTokenData;)V

    .line 706
    invoke-virtual {p0, p1}, Lcom/android/server/usage/IntervalStats;->obfuscateEventsData(Lcom/android/server/usage/PackagesTokenData;)V

    return-void
.end method

.method public final obfuscateEventsData(Lcom/android/server/usage/PackagesTokenData;)V
    .registers 7

    .line 650
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0}, Landroid/app/usage/EventList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_a9

    .line 651
    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1, v0}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v1

    if-nez v1, :cond_14

    goto/16 :goto_a5

    .line 656
    :cond_14
    iget-object v2, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-wide v3, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/server/usage/PackagesTokenData;->getPackageTokenOrAdd(Ljava/lang/String;J)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_26

    .line 660
    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1, v0}, Landroid/app/usage/EventList;->remove(I)Landroid/app/usage/UsageEvents$Event;

    goto/16 :goto_a5

    .line 663
    :cond_26
    iput v2, v1, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    .line 664
    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 665
    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v4, v1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/server/usage/PackagesTokenData;->getTokenOrAdd(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/usage/UsageEvents$Event;->mClassToken:I

    .line 668
    :cond_3a
    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4c

    .line 669
    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v4, v1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/server/usage/PackagesTokenData;->getTokenOrAdd(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackageToken:I

    .line 672
    :cond_4c
    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5e

    .line 673
    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v4, v1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/server/usage/PackagesTokenData;->getTokenOrAdd(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClassToken:I

    .line 676
    :cond_5e
    iget v3, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_93

    const/16 v4, 0xc

    if-eq v3, v4, :cond_80

    const/16 v4, 0x1e

    if-eq v3, v4, :cond_6d

    goto :goto_a5

    .line 690
    :cond_6d
    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a5

    .line 691
    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v4, v1, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/server/usage/PackagesTokenData;->getTokenOrAdd(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    goto :goto_a5

    .line 684
    :cond_80
    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a5

    .line 685
    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v4, v1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/server/usage/PackagesTokenData;->getTokenOrAdd(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    goto :goto_a5

    .line 678
    :cond_93
    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a5

    .line 679
    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v4, v1, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/server/usage/PackagesTokenData;->getTokenOrAdd(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    :cond_a5
    :goto_a5
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_8

    :cond_a9
    return-void
.end method

.method public final obfuscateUsageStatsData(Lcom/android/server/usage/PackagesTokenData;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 604
    iget-object v2, v0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v2, :cond_82

    .line 606
    iget-object v5, v0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 607
    iget-object v6, v0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/UsageStats;

    if-nez v6, :cond_20

    goto :goto_7f

    .line 612
    :cond_20
    iget-wide v7, v6, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    invoke-virtual {v1, v5, v7, v8}, Lcom/android/server/usage/PackagesTokenData;->getPackageTokenOrAdd(Ljava/lang/String;J)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2a

    goto :goto_7f

    .line 618
    :cond_2a
    iput v7, v6, Landroid/app/usage/UsageStats;->mPackageToken:I

    .line 620
    iget-object v8, v6, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_33
    if-ge v9, v8, :cond_7a

    .line 622
    iget-object v10, v6, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 623
    iget-object v11, v6, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 624
    invoke-virtual {v11, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArrayMap;

    if-nez v11, :cond_48

    goto :goto_77

    .line 629
    :cond_48
    new-instance v12, Landroid/util/SparseIntArray;

    invoke-direct {v12}, Landroid/util/SparseIntArray;-><init>()V

    .line 630
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_52
    if-ge v14, v13, :cond_6e

    .line 632
    invoke-virtual {v11, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 633
    invoke-virtual {v1, v7, v5, v15}, Lcom/android/server/usage/PackagesTokenData;->getTokenOrAdd(ILjava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 635
    invoke-virtual {v11, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v12, v15, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_52

    .line 637
    :cond_6e
    invoke-virtual {v1, v7, v5, v10}, Lcom/android/server/usage/PackagesTokenData;->getTokenOrAdd(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 639
    iget-object v10, v6, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v10, v3, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_77
    add-int/lit8 v9, v9, 0x1

    goto :goto_33

    .line 641
    :cond_7a
    iget-object v3, v0, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v3, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_7f
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_82
    return-void
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;JII)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/16 v0, 0x1a

    if-eq p5, v0, :cond_15

    const/16 v0, 0x19

    if-ne p5, v0, :cond_9

    goto :goto_15

    .line 320
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    .line 321
    invoke-virtual/range {v1 .. v6}, Landroid/app/usage/UsageStats;->update(Ljava/lang/String;JII)V

    goto :goto_31

    .line 314
    :cond_15
    :goto_15
    iget-object p1, p0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_1c
    if-ge p2, p1, :cond_31

    .line 316
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/usage/UsageStats;

    const/4 v2, 0x0

    move-wide v3, p3

    move v5, p5

    move v6, p6

    .line 317
    invoke-virtual/range {v1 .. v6}, Landroid/app/usage/UsageStats;->update(Ljava/lang/String;JII)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1c

    .line 323
    :cond_31
    :goto_31
    iget-wide p1, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long p1, p3, p1

    if-lez p1, :cond_39

    .line 324
    iput-wide p3, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    :cond_39
    return-void
.end method

.method public updateChooserCounts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 354
    invoke-virtual {p0, p1}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object p0

    .line 355
    iget-object p1, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-nez p1, :cond_f

    .line 356
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 359
    :cond_f
    iget-object p1, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_22

    .line 361
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 362
    iget-object p0, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {p0, p3, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 364
    :cond_22
    iget-object p0, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Landroid/util/ArrayMap;

    :goto_2b
    const/4 p0, 0x0

    .line 366
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    .line 367
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateConfigurationStats(Landroid/content/res/Configuration;J)V
    .registers 9

    .line 371
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_1b

    .line 372
    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/ConfigurationStats;

    .line 373
    iget-wide v1, v0, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    iget-wide v3, v0, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    sub-long v3, p2, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    const-wide/16 v1, 0x1

    sub-long v1, p2, v1

    .line 374
    iput-wide v1, v0, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    :cond_1b
    if-eqz p1, :cond_2d

    .line 378
    invoke-virtual {p0, p1}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object p1

    .line 379
    iput-wide p2, p1, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 380
    iget v0, p1, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    .line 381
    iget-object p1, p1, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    iput-object p1, p0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 383
    :cond_2d
    iget-wide v0, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long p1, p2, v0

    if-lez p1, :cond_35

    .line 384
    iput-wide p2, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    :cond_35
    return-void
.end method

.method public updateKeyguardHidden(J)V
    .registers 4

    .line 416
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->update(J)V

    .line 417
    iget-object p0, p0, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    return-void
.end method

.method public updateKeyguardShown(J)V
    .registers 4

    .line 411
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->update(J)V

    .line 412
    iget-object p0, p0, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    return-void
.end method

.method public updateScreenInteractive(J)V
    .registers 4

    .line 401
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->update(J)V

    .line 402
    iget-object p0, p0, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    return-void
.end method

.method public updateScreenNonInteractive(J)V
    .registers 4

    .line 406
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->update(J)V

    .line 407
    iget-object p0, p0, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    return-void
.end method

.method public upgradeIfNeeded()V
    .registers 3

    .line 446
    iget v0, p0, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_6

    return-void

    .line 452
    :cond_6
    iput v1, p0, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    return-void
.end method
