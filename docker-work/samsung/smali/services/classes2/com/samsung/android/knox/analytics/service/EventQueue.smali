.class public final Lcom/samsung/android/knox/analytics/service/EventQueue;
.super Ljava/lang/Object;
.source "EventQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;
    }
.end annotation


# static fields
.field public static final API_USAGE_FEATURE_NAME:Ljava/lang/String; = "API_USAGE"

.field public static final API_USAGE_GET_KEY:Ljava/lang/String; = "isGetterApi"

.field public static final EVENT_QUEUE_ANALYTICS_DATA_KEY:Ljava/lang/String; = "KnoxAnalyticsData"

.field public static final EVENT_QUEUE_MSG_CLEANED_LOG_API:I = 0x3

.field public static final EVENT_QUEUE_MSG_KA_DEACTIVATION:I = 0x2

.field public static final EVENT_QUEUE_MSG_LOG_API:I = 0x1

.field public static final HT_NAME:Ljava/lang/String; = "EventQueue"

.field public static final LOG_WAIT_TIME:I = 0x493e0

.field public static final MAX_CACHED_EVENTS:I = 0x64

.field public static final PACKAGE_NAME_FLAG_PROPERTY_NAME:Ljava/lang/String; = "ReservedKey_Pid_PackageNameFlag"

.field public static final PACKAGE_NAME_KEY:Ljava/lang/String; = "pN"

.field public static final TAG:Ljava/lang/String;

.field public static final USER_TYPE_FLAG_PROPERTY_NAME:Ljava/lang/String; = "ReservedKey_UserId_UserTypeFlag"

.field public static final USER_TYPE_KEY:Ljava/lang/String; = "uT"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDeactivationLock:Ljava/lang/Object;

.field public mEventsCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;",
            ">;"
        }
    .end annotation
.end field

.field public mFeatureBlacklistObserver:Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;

.field public mFeatureWhitelistObserver:Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;

.field public mHandler:Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mIsStarted:Z

.field public mMessageDelayHandler:Landroid/os/Handler;

.field public mShutdownReceiver:Landroid/content/BroadcastReceiver;

.field public mVersioningCompleted:Z

.field public final mVersioningCompletedLock:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic -$$Nest$maddEvent(Lcom/samsung/android/knox/analytics/service/EventQueue;Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/analytics/service/EventQueue;->addEvent(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menqueueEvent(Lcom/samsung/android/knox/analytics/service/EventQueue;Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->enqueueEvent(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msaveCachedLogs(Lcom/samsung/android/knox/analytics/service/EventQueue;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->saveCachedLogs()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstop(Lcom/samsung/android/knox/analytics/service/EventQueue;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->stop()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwaitVersioningCompleted(Lcom/samsung/android/knox/analytics/service/EventQueue;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->waitVersioningCompleted()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mDeactivationLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mIsStarted:Z

    .line 44
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mVersioningCompletedLock:Ljava/lang/Object;

    .line 45
    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mVersioningCompleted:Z

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mEventsCache:Ljava/util/List;

    .line 51
    new-instance v0, Lcom/samsung/android/knox/analytics/service/EventQueue$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/analytics/service/EventQueue$1;-><init>(Lcom/samsung/android/knox/analytics/service/EventQueue;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string v1, "constructor()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mContext:Landroid/content/Context;

    .line 104
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final addBulkEvents()V
    .registers 7

    .line 233
    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string v1, "addBulkEvents()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getLastEventId(Landroid/content/Context;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 236
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 237
    iget-object v4, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mEventsCache:Ljava/util/List;

    .line 238
    invoke-static {v1, v2, v4}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsDataConverter;->formatBulkEvents(JLjava/util/List;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    const-string v5, "eventsList"

    .line 237
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 239
    iget-object v4, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v4, v1, v2, v3, v5}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->addBulkEvents(Landroid/content/Context;JLandroid/os/Bundle;I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_35

    const-string p0, "addBulkEvents(): error adding events, aborting."

    .line 243
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 246
    :cond_35
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mEventsCache:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final addEvent(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;I)V
    .registers 4

    const/4 v0, 0x0

    .line 203
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->addEvent(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;IZ)V

    return-void
.end method

.method public final addEvent(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;IZ)V
    .registers 8

    if-nez p3, :cond_1c

    .line 208
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->checkEventFeatureWhitelisted(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)Z

    move-result p3

    if-nez p3, :cond_16

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->checkEventFeatureBlacklisted(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)Z

    move-result p3

    if-eqz p3, :cond_16

    .line 209
    sget-object p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string p1, "addEvent(): feature blacklisted, discarding event."

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 213
    :cond_16
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->checkFillUserType(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 214
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->checkFillPackageName(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 217
    :cond_1c
    iget-object p3, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getLastEventId(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->eventId:J

    .line 220
    invoke-static {p1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsDataConverter;->toJSONString(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)Ljava/lang/String;

    move-result-object p3

    .line 222
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mContext:Landroid/content/Context;

    iget-wide v0, p1, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->eventId:J

    invoke-static {p0, v0, v1, p3, p2}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->addEvent(Landroid/content/Context;JLjava/lang/String;I)J

    move-result-wide p0

    const-wide/16 p2, -0x1

    cmp-long p0, p0, p2

    if-nez p0, :cond_40

    .line 227
    sget-object p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string p1, "addEvent(): error adding event, aborting."

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    return-void
.end method

.method public final cancelMessageHandler()V
    .registers 2

    .line 189
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mMessageDelayHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final checkEventFeatureBlacklisted(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)Z
    .registers 8

    .line 250
    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string v1, "checkEventFeatureBlacklisted()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mFeatureBlacklistObserver:Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;

    const/4 v1, 0x0

    if-nez p0, :cond_12

    const-string p0, "Features Blacklist Observer is null, can\'t check!"

    .line 252
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 255
    :cond_12
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->getFeatureBlacklist()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1e

    const-string p0, "Features Blacklist is null, can\'t check!"

    .line 257
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 262
    :cond_1e
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "isGetterApi"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_40

    .line 263
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_37

    move v0, v3

    goto :goto_38

    :cond_37
    move v0, v1

    .line 266
    :goto_38
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_41

    :cond_40
    move v0, v1

    .line 269
    :goto_41
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_45
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;

    const-string v4, "*"

    .line 271
    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;->hasFeatureName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 272
    invoke-virtual {v2}, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;->getDisableApi()Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;->ALL:Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;

    if-ne v4, v5, :cond_62

    return v3

    .line 275
    :cond_62
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getFeature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;->hasFeatureName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 277
    invoke-virtual {v2}, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;->getDisableApi()Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;

    move-result-object p0

    sget-object v4, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;->ALL:Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;

    if-ne p0, v4, :cond_75

    return v3

    .line 281
    :cond_75
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getFeature()Ljava/lang/String;

    move-result-object p0

    const-string p1, "API_USAGE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8c

    .line 282
    invoke-virtual {v2}, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;->getDisableApi()Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;->GET:Lcom/samsung/android/knox/analytics/util/BlacklistedFeature$DisableApi;

    if-ne p0, p1, :cond_8c

    if-eqz v0, :cond_8c

    return v3

    :cond_8c
    return v1
.end method

.method public final checkEventFeatureWhitelisted(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)Z
    .registers 5

    .line 293
    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string v1, "checkEventFeatureWhitelisted()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mFeatureWhitelistObserver:Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;

    const/4 v1, 0x0

    if-nez p0, :cond_12

    const-string p0, "Features Whitelist Observer is null, can\'t check!"

    .line 295
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 298
    :cond_12
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->getFeatureWhitelist()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1e

    const-string p0, "Features Whitelist is null, can\'t check!"

    .line 300
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 305
    :cond_1e
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;

    .line 306
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getFeature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;->hasFeatureName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 308
    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature;->getEnableApi()Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;->ALL:Lcom/samsung/android/knox/analytics/util/WhitelistedFeature$EnableApi;

    if-ne p0, p1, :cond_42

    const/4 p0, 0x1

    return p0

    :cond_42
    return v1
.end method

.method public final checkFillPackageName(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    .registers 7

    .line 338
    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string v1, "checkFillPackageName()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ReservedKey_Pid_PackageNameFlag"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    return-void

    .line 342
    :cond_14
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 343
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    if-ne v1, v3, :cond_2c

    const-string p0, "checkFillPackageName() - invalid pid."

    .line 345
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 348
    :cond_2c
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->getAppNameByPID(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3f

    .line 349
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_3f

    :cond_39
    const-string/jumbo v0, "pN"

    .line 352
    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method public final checkFillUserType(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    .registers 7

    .line 318
    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string v1, "checkFillUserType()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ReservedKey_UserId_UserTypeFlag"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    return-void

    .line 322
    :cond_14
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 323
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    if-ne v1, v3, :cond_3b

    .line 325
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "checkFillUserType() - invalid userId "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 328
    :cond_3b
    new-instance v2, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;-><init>(Landroid/content/Context;)V

    .line 329
    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getUserType(I)I

    move-result p0

    if-ne p0, v3, :cond_4e

    const-string p0, "checkFillUserType() - Couldn\'t get userType"

    .line 331
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4e
    const-string/jumbo v0, "uT"

    .line 334
    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    return-void
.end method

.method public final enqueueEvent(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    .registers 3

    .line 157
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->checkEventFeatureWhitelisted(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->checkEventFeatureBlacklisted(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 158
    sget-object p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string p1, "enqueueEvent(): feature blacklisted, discarding event."

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 162
    :cond_14
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->checkFillUserType(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 163
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->checkFillPackageName(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 165
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mEventsCache:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object p1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mEventsCache:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_2d

    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->saveCachedLogs()V

    goto :goto_30

    .line 169
    :cond_2d
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->restartMessageHandler()V

    :goto_30
    return-void
.end method

.method public final getAppNameByPID(I)Ljava/lang/String;
    .registers 5

    .line 356
    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppNameByPID("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    .line 358
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 359
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_32

    const-string p0, "getAppNameByPID(): nill processInfoList"

    .line 361
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 364
    :cond_32
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_36
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v0, :cond_36

    .line 365
    iget v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, p1, :cond_36

    .line 366
    iget-object p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p0

    .line 369
    :cond_4b
    sget-object p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string p1, "getAppNameByPID(): not found"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public isStarted()Z
    .registers 1

    .line 374
    iget-boolean p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mIsStarted:Z

    return p0
.end method

.method public notifyVersioningCompleted()V
    .registers 3

    .line 393
    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string v1, "notifyVersioningCompleted()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mVersioningCompletedLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 395
    :try_start_b
    iput-boolean v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mVersioningCompleted:Z

    .line 396
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mVersioningCompletedLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 397
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_14

    throw p0
.end method

.method public postMessage(ILcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    .registers 6

    .line 145
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mDeactivationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mHandler:Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;

    if-eqz v1, :cond_1d

    .line 147
    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 148
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "KnoxAnalyticsData"

    .line 149
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 150
    invoke-virtual {p1, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 151
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mHandler:Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 153
    :cond_1d
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public final restartMessageHandler()V
    .registers 5

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->cancelMessageHandler()V

    .line 194
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mMessageDelayHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/knox/analytics/service/EventQueue$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/analytics/service/EventQueue$2;-><init>(Lcom/samsung/android/knox/analytics/service/EventQueue;)V

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final declared-synchronized saveCachedLogs()V
    .registers 4

    monitor-enter p0

    .line 174
    :try_start_1
    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveCachedLogs(): Number of events: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mEventsCache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mEventsCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_4b

    if-nez v0, :cond_28

    .line 176
    monitor-exit p0

    return-void

    .line 179
    :cond_28
    :try_start_28
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->cancelMessageHandler()V

    .line 180
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mEventsCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_38

    .line 181
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->addBulkEvents()V

    goto :goto_49

    .line 183
    :cond_38
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mEventsCache:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->addEvent(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;IZ)V

    .line 184
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mEventsCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_49
    .catchall {:try_start_28 .. :try_end_49} :catchall_4b

    .line 186
    :goto_49
    monitor-exit p0

    return-void

    :catchall_4b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public start()V
    .registers 4

    .line 108
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mDeactivationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_3
    sget-object v1, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "start()"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_1b

    .line 111
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "EventQueue"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mHandlerThread:Landroid/os/HandlerThread;

    .line 112
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 114
    :cond_1b
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mHandler:Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;

    if-nez v1, :cond_2c

    .line 115
    new-instance v1, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;-><init>(Lcom/samsung/android/knox/analytics/service/EventQueue;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mHandler:Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;

    .line 117
    :cond_2c
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mMessageDelayHandler:Landroid/os/Handler;

    if-nez v1, :cond_3d

    .line 118
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mMessageDelayHandler:Landroid/os/Handler;

    .line 120
    :cond_3d
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mFeatureBlacklistObserver:Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;

    if-nez v1, :cond_4d

    .line 121
    new-instance v1, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mFeatureBlacklistObserver:Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;

    .line 122
    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->start()V

    .line 124
    :cond_4d
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mFeatureWhitelistObserver:Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;

    if-nez v1, :cond_5d

    .line 125
    new-instance v1, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mFeatureWhitelistObserver:Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;

    .line 126
    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/service/FeatureWhitelistObserver;->start()V

    :cond_5d
    const/4 v1, 0x1

    .line 128
    iput-boolean v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mIsStarted:Z

    .line 129
    monitor-exit v0

    return-void

    :catchall_62
    move-exception p0

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_3 .. :try_end_64} :catchall_62

    throw p0
.end method

.method public final stop()V
    .registers 4

    .line 133
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mDeactivationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_3
    sget-object v1, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stop()"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 135
    iput-boolean v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mIsStarted:Z

    .line 136
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mHandler:Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;

    if-eqz v1, :cond_16

    const/4 v2, 0x1

    .line 137
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 140
    :cond_16
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->saveCachedLogs()V

    .line 141
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public final waitVersioningCompleted()V
    .registers 6

    .line 378
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mVersioningCompleted:Z

    if-nez v0, :cond_2a

    .line 379
    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "waitVersioningCompleted(): waiting"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :try_start_c
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mVersioningCompletedLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_21

    .line 382
    :try_start_f
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->mVersioningCompletedLock:Ljava/lang/Object;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 383
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_1e

    :try_start_17
    const-string/jumbo v1, "waitVersioningCompleted(): after wait"

    .line 384
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1d} :catch_21

    goto :goto_0

    :catchall_1e
    move-exception v0

    .line 383
    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    :try_start_20
    throw v0
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_21} :catch_21

    .line 386
    :catch_21
    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "waitVersioningCompleted(): Interrupted exception"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 389
    :cond_2a
    sget-object p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "waitVersioningCompleted(): done"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
