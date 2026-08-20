.class public final Lcom/android/server/usage/UsageStatsXmlV1;
.super Ljava/lang/Object;
.source "UsageStatsXmlV1.java"


# static fields
.field public static final ACTIVE_ATTR:Ljava/lang/String; = "active"

.field public static final APP_LAUNCH_COUNT_ATTR:Ljava/lang/String; = "appLaunchCount"

.field public static final CATEGORY_TAG:Ljava/lang/String; = "category"

.field public static final CHOOSER_COUNT_TAG:Ljava/lang/String; = "chosen_action"

.field public static final CLASS_ATTR:Ljava/lang/String; = "class"

.field public static final CONFIGURATIONS_TAG:Ljava/lang/String; = "configurations"

.field public static final CONFIG_TAG:Ljava/lang/String; = "config"

.field public static final COUNT:Ljava/lang/String; = "count"

.field public static final COUNT_ATTR:Ljava/lang/String; = "count"

.field public static final END_TIME_ATTR:Ljava/lang/String; = "endTime"

.field public static final EVENT_LOG_TAG:Ljava/lang/String; = "event-log"

.field public static final EVENT_TAG:Ljava/lang/String; = "event"

.field public static final FLAGS_ATTR:Ljava/lang/String; = "flags"

.field public static final INSTANCE_ID_ATTR:Ljava/lang/String; = "instanceId"

.field public static final INTERACTIVE_TAG:Ljava/lang/String; = "interactive"

.field public static final KEYGUARD_HIDDEN_TAG:Ljava/lang/String; = "keyguard-hidden"

.field public static final KEYGUARD_SHOWN_TAG:Ljava/lang/String; = "keyguard-shown"

.field public static final LAST_EVENT_ATTR:Ljava/lang/String; = "lastEvent"

.field public static final LAST_TIME_ACTIVE_ATTR:Ljava/lang/String; = "lastTimeActive"

.field public static final LAST_TIME_SERVICE_USED_ATTR:Ljava/lang/String; = "lastTimeServiceUsed"

.field public static final LAST_TIME_VISIBLE_ATTR:Ljava/lang/String; = "lastTimeVisible"

.field public static final MAJOR_VERSION_ATTR:Ljava/lang/String; = "majorVersion"

.field public static final MINOR_VERSION_ATTR:Ljava/lang/String; = "minorVersion"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NON_INTERACTIVE_TAG:Ljava/lang/String; = "non-interactive"

.field public static final NOTIFICATION_CHANNEL_ATTR:Ljava/lang/String; = "notificationChannel"

.field public static final PACKAGES_TAG:Ljava/lang/String; = "packages"

.field public static final PACKAGE_ATTR:Ljava/lang/String; = "package"

.field public static final PACKAGE_TAG:Ljava/lang/String; = "package"

.field public static final SHORTCUT_ID_ATTR:Ljava/lang/String; = "shortcutId"

.field public static final STANDBY_BUCKET_ATTR:Ljava/lang/String; = "standbyBucket"

.field public static final TAG:Ljava/lang/String; = "UsageStatsXmlV1"

.field public static final TIME_ATTR:Ljava/lang/String; = "time"

.field public static final TOTAL_TIME_ACTIVE_ATTR:Ljava/lang/String; = "timeActive"

.field public static final TOTAL_TIME_SERVICE_USED_ATTR:Ljava/lang/String; = "timeServiceUsed"

.field public static final TOTAL_TIME_VISIBLE_ATTR:Ljava/lang/String; = "timeVisible"

.field public static final TYPE_ATTR:Ljava/lang/String; = "type"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadChooserCounts(Lorg/xmlpull/v1/XmlPullParser;Landroid/app/usage/UsageStats;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    .line 158
    :cond_3
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-nez v0, :cond_e

    .line 159
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 161
    :cond_e
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 162
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 163
    iget-object v1, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_20
    :goto_20
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5f

    .line 168
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_37

    const-string v2, "chosen_action"

    .line 169
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    goto :goto_5f

    :cond_37
    const/4 v2, 0x2

    if-eq v0, v2, :cond_3b

    goto :goto_20

    :cond_3b
    const-string v0, "category"

    .line 175
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "name"

    .line 176
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "count"

    .line 177
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    .line 178
    iget-object v2, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    :cond_5f
    :goto_5f
    return-void
.end method

.method public static loadConfigStats(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 186
    invoke-static {p0, v0}, Landroid/content/res/Configuration;->readXmlAttrs(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Configuration;)V

    .line 188
    invoke-virtual {p1, v0}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v0

    .line 191
    iget-wide v1, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-string v3, "lastTimeActive"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    const-string/jumbo v1, "timeActive"

    .line 194
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    const-string v1, "count"

    .line 195
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    const-string v1, "active"

    .line 196
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_34

    .line 197
    iget-object p0, v0, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    iput-object p0, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    :cond_34
    return-void
.end method

.method public static loadCountAndTime(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats$EventTracker;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string v0, "count"

    const/4 v1, 0x0

    .line 147
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    const-string/jumbo v0, "time"

    const-wide/16 v1, 0x0

    .line 148
    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    .line 149
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public static loadEvent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "package"

    .line 203
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8b

    const-string v1, "class"

    .line 207
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-virtual {p1, v0, v1}, Lcom/android/server/usage/IntervalStats;->buildEvent(Ljava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents$Event;

    move-result-object v0

    const-string v1, "flags"

    const/4 v2, 0x0

    .line 211
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    .line 214
    iget-wide v3, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-string/jumbo v1, "time"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    const-string/jumbo v1, "type"

    .line 216
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    :try_start_31
    const-string v1, "instanceId"

    .line 219
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_39} :catch_3a

    goto :goto_41

    :catch_3a
    const-string v1, "UsageStatsXmlV1"

    const-string v3, "Failed to parse mInstanceId"

    .line 221
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_41
    iget v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v3, 0x5

    if-eq v1, v3, :cond_7d

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eq v1, v3, :cond_6d

    const/16 v3, 0xb

    if-eq v1, v3, :cond_63

    const/16 v2, 0xc

    if-eq v1, v2, :cond_54

    goto :goto_87

    :cond_54
    const-string v1, "notificationChannel"

    .line 238
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_60

    .line 239
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :cond_60
    iput-object v4, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    goto :goto_87

    :cond_63
    const-string/jumbo v1, "standbyBucket"

    .line 234
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    goto :goto_87

    :cond_6d
    const-string/jumbo v1, "shortcutId"

    .line 230
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7a

    .line 231
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :cond_7a
    iput-object v4, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    goto :goto_87

    .line 226
    :cond_7d
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 227
    invoke-static {p0, v1}, Landroid/content/res/Configuration;->readXmlAttrs(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Configuration;)V

    .line 242
    :goto_87
    invoke-virtual {p1, v0}, Lcom/android/server/usage/IntervalStats;->addEvent(Landroid/app/usage/UsageEvents$Event;)V

    return-void

    .line 205
    :cond_8b
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "no package attribute present"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loadUsageStats(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UsageStatsXmlV1"

    const/4 v1, 0x0

    const-string/jumbo v2, "package"

    .line 86
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a1

    .line 90
    invoke-virtual {p1, v1}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v1

    .line 93
    iget-wide v3, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-string v5, "lastTimeActive"

    invoke-static {p0, v5}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, v1, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 97
    :try_start_1b
    iget-wide v3, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-string v5, "lastTimeVisible"

    invoke-static {p0, v5}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, v1, Landroid/app/usage/UsageStats;->mLastTimeVisible:J
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_26} :catch_27

    goto :goto_2c

    :catch_27
    const-string v3, "Failed to parse mLastTimeVisible"

    .line 100
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_2c
    :try_start_2c
    iget-wide v3, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-string p1, "lastTimeServiceUsed"

    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, v1, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_37} :catch_38

    goto :goto_3d

    :catch_38
    const-string p1, "Failed to parse mLastTimeForegroundServiceUsed"

    .line 107
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3d
    const-string/jumbo p1, "timeActive"

    .line 110
    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v1, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    :try_start_46
    const-string/jumbo p1, "timeVisible"

    .line 113
    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v1, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4f} :catch_50

    goto :goto_55

    :catch_50
    const-string p1, "Failed to parse mTotalTimeVisible"

    .line 115
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_55
    :try_start_55
    const-string/jumbo p1, "timeServiceUsed"

    .line 119
    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v1, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5e} :catch_5f

    goto :goto_64

    :catch_5f
    const-string p1, "Failed to parse mTotalTimeForegroundServiceUsed"

    .line 122
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_64
    const-string p1, "lastEvent"

    .line 125
    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result p1

    iput p1, v1, Landroid/app/usage/UsageStats;->mLastEvent:I

    const/4 p1, 0x0

    const-string v0, "appLaunchCount"

    .line 126
    invoke-static {p0, v0, p1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result p1

    iput p1, v1, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    .line 129
    :cond_75
    :goto_75
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_a0

    .line 130
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    if-ne p1, v3, :cond_8a

    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    goto :goto_a0

    :cond_8a
    const/4 v3, 0x2

    if-eq p1, v3, :cond_8e

    goto :goto_75

    :cond_8e
    const-string p1, "chosen_action"

    .line 137
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_75

    const-string p1, "name"

    .line 138
    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-static {p0, v1, p1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadChooserCounts(Lorg/xmlpull/v1/XmlPullParser;Landroid/app/usage/UsageStats;Ljava/lang/String;)V

    goto :goto_75

    :cond_a0
    :goto_a0
    return-void

    .line 88
    :cond_a1
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "no package attribute present"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UsageStatsXmlV1"

    .line 254
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 255
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    const/4 v1, 0x0

    .line 256
    iput-object v1, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 257
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1}, Landroid/app/usage/EventList;->clear()V

    .line 259
    iget-wide v1, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-string v3, "endTime"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    :try_start_1f
    const-string v1, "majorVersion"

    .line 261
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_27} :catch_28

    goto :goto_2d

    :catch_28
    const-string v1, "Failed to parse majorVersion"

    .line 263
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d
    :try_start_2d
    const-string v1, "minorVersion"

    .line 267
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/android/server/usage/IntervalStats;->minorVersion:I
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_35} :catch_36

    goto :goto_3b

    :catch_36
    const-string v1, "Failed to parse minorVersion"

    .line 269
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_3b
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 274
    :goto_3f
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_dc

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4f

    .line 275
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_dc

    :cond_4f
    const/4 v4, 0x2

    if-eq v1, v4, :cond_53

    goto :goto_3f

    .line 280
    :cond_53
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 281
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_de

    :goto_62
    move v2, v5

    goto :goto_af

    :sswitch_64
    const-string v2, "interactive"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    goto :goto_62

    :cond_6d
    const/4 v2, 0x6

    goto :goto_af

    :sswitch_6f
    const-string v2, "keyguard-shown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    goto :goto_62

    :cond_78
    const/4 v2, 0x5

    goto :goto_af

    :sswitch_7a
    const-string v2, "event"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_83

    goto :goto_62

    :cond_83
    const/4 v2, 0x4

    goto :goto_af

    :sswitch_85
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8f

    goto :goto_62

    :cond_8f
    move v2, v3

    goto :goto_af

    :sswitch_91
    const-string v2, "non-interactive"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9a

    goto :goto_62

    :cond_9a
    move v2, v4

    goto :goto_af

    :sswitch_9c
    const-string v3, "keyguard-hidden"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_af

    goto :goto_62

    :sswitch_a5
    const-string v2, "config"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ae

    goto :goto_62

    :cond_ae
    const/4 v2, 0x0

    :cond_af
    :goto_af
    packed-switch v2, :pswitch_data_fc

    goto :goto_3f

    .line 283
    :pswitch_b3
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {p0, v1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadCountAndTime(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats$EventTracker;)V

    goto :goto_3f

    .line 291
    :pswitch_b9
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {p0, v1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadCountAndTime(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats$EventTracker;)V

    goto :goto_3f

    .line 307
    :pswitch_bf
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadEvent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V

    goto/16 :goto_3f

    .line 299
    :pswitch_c4
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadUsageStats(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V

    goto/16 :goto_3f

    .line 287
    :pswitch_c9
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {p0, v1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadCountAndTime(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats$EventTracker;)V

    goto/16 :goto_3f

    .line 295
    :pswitch_d0
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-static {p0, v1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadCountAndTime(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats$EventTracker;)V

    goto/16 :goto_3f

    .line 303
    :pswitch_d7
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadConfigStats(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V

    goto/16 :goto_3f

    :cond_dc
    return-void

    nop

    :sswitch_data_de
    .sparse-switch
        -0x50c07cbe -> :sswitch_a5
        -0x45b2e24f -> :sswitch_9c
        -0x301c401e -> :sswitch_91
        -0x301acbba -> :sswitch_85
        0x5c6729a -> :sswitch_7a
        0x1f63682a -> :sswitch_6f
        0x6deacee2 -> :sswitch_64
    .end sparse-switch

    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_d7
        :pswitch_d0
        :pswitch_c9
        :pswitch_c4
        :pswitch_bf
        :pswitch_b9
        :pswitch_b3
    .end packed-switch
.end method
