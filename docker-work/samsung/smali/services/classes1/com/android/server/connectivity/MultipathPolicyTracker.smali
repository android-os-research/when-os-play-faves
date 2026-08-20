.class public Lcom/android/server/connectivity/MultipathPolicyTracker;
.super Ljava/lang/Object;
.source "MultipathPolicyTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver;,
        Lcom/android/server/connectivity/MultipathPolicyTracker$SettingsObserver;,
        Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;,
        Lcom/android/server/connectivity/MultipathPolicyTracker$Dependencies;
    }
.end annotation


# static fields
.field public static final DBG:Z = false

.field public static final MIN_THRESHOLD_BYTES:J = 0x200000L

.field public static final OPQUOTA_USER_SETTING_DIVIDER:I = 0x14

.field public static TAG:Ljava/lang/String; = "MultipathPolicyTracker"


# instance fields
.field public mCM:Landroid/net/ConnectivityManager;

.field public final mClock:Ljava/time/Clock;

.field public final mConfigChangeReceiver:Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver;

.field public final mContext:Landroid/content/Context;

.field public final mDeps:Lcom/android/server/connectivity/MultipathPolicyTracker$Dependencies;

.field public final mHandler:Landroid/os/Handler;

.field public mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field public final mMultipathTrackers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/net/Network;",
            "Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;",
            ">;"
        }
    .end annotation
.end field

.field public mNPM:Landroid/net/NetworkPolicyManager;

.field public mPolicyListener:Landroid/net/NetworkPolicyManager$Listener;

.field public final mResolver:Landroid/content/ContentResolver;

.field public final mSettingsObserver:Landroid/database/ContentObserver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mStatsManager:Landroid/app/usage/NetworkStatsManager;

.field public final mUserAllContext:Landroid/content/Context;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmClock(Lcom/android/server/connectivity/MultipathPolicyTracker;)Ljava/time/Clock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mClock:Ljava/time/Clock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/connectivity/MultipathPolicyTracker;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/connectivity/MultipathPolicyTracker;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMultipathTrackers(Lcom/android/server/connectivity/MultipathPolicyTracker;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMultipathTrackers:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNPM(Lcom/android/server/connectivity/MultipathPolicyTracker;)Landroid/net/NetworkPolicyManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mNPM:Landroid/net/NetworkPolicyManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetDefaultDailyMultipathQuotaBytes(Lcom/android/server/connectivity/MultipathPolicyTracker;)J
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->getDefaultDailyMultipathQuotaBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$mupdateAllMultipathBudgets(Lcom/android/server/connectivity/MultipathPolicyTracker;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->updateAllMultipathBudgets()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/connectivity/MultipathPolicyTracker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smgetActiveLimit(Landroid/net/NetworkPolicy;J)J
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/connectivity/MultipathPolicyTracker;->getActiveLimit(Landroid/net/NetworkPolicy;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$smgetActiveWarning(Landroid/net/NetworkPolicy;J)J
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/connectivity/MultipathPolicyTracker;->getActiveWarning(Landroid/net/NetworkPolicy;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    .line 132
    new-instance v0, Lcom/android/server/connectivity/MultipathPolicyTracker$Dependencies;

    invoke-direct {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker$Dependencies;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/connectivity/MultipathPolicyTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/MultipathPolicyTracker$Dependencies;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/MultipathPolicyTracker$Dependencies;)V
    .registers 6

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMultipathTrackers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 136
    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    .line 137
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mUserAllContext:Landroid/content/Context;

    .line 138
    iput-object p2, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mHandler:Landroid/os/Handler;

    .line 139
    invoke-virtual {p3}, Lcom/android/server/connectivity/MultipathPolicyTracker$Dependencies;->getClock()Ljava/time/Clock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mClock:Ljava/time/Clock;

    .line 140
    iput-object p3, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mDeps:Lcom/android/server/connectivity/MultipathPolicyTracker$Dependencies;

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mResolver:Landroid/content/ContentResolver;

    .line 142
    new-instance p1, Lcom/android/server/connectivity/MultipathPolicyTracker$SettingsObserver;

    invoke-direct {p1, p0, p2}, Lcom/android/server/connectivity/MultipathPolicyTracker$SettingsObserver;-><init>(Lcom/android/server/connectivity/MultipathPolicyTracker;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 143
    new-instance p1, Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver;-><init>(Lcom/android/server/connectivity/MultipathPolicyTracker;Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver-IA;)V

    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mConfigChangeReceiver:Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver;

    return-void
.end method

.method public static getActiveLimit(Landroid/net/NetworkPolicy;J)J
    .registers 5

    .line 442
    iget-wide v0, p0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long p1, v0, p1

    if-gez p1, :cond_9

    .line 443
    iget-wide p0, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_b

    :cond_9
    const-wide/16 p0, -0x1

    :goto_b
    return-wide p0
.end method

.method public static getActiveWarning(Landroid/net/NetworkPolicy;J)J
    .registers 5

    .line 436
    iget-wide v0, p0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    cmp-long p1, v0, p1

    if-gez p1, :cond_9

    .line 437
    iget-wide p0, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    goto :goto_b

    :cond_9
    const-wide/16 p0, -0x1

    :goto_b
    return-wide p0
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 8

    const-string v0, "MultipathPolicyTracker:"

    .line 570
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 572
    iget-object p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMultipathTrackers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 573
    iget-object v3, v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->network:Landroid/net/Network;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 574
    invoke-virtual {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->getQuota()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->getMultipathBudget()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Landroid/net/ConnectivityManager;

    .line 576
    invoke-virtual {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->getMultipathPreference()I

    move-result v0

    int-to-long v4, v0

    const-string v0, "MULTIPATH_PREFERENCE_"

    .line 575
    invoke-static {v3, v0, v4, v5}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "Network %s: quota %d, budget %d. Preference: %s"

    .line 573
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12

    .line 578
    :cond_56
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public final getDefaultDailyMultipathQuotaBytes()J
    .registers 3

    .line 453
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "network_default_daily_multipath_quota_bytes"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 457
    :try_start_f
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_13} :catch_14

    return-wide v0

    .line 463
    :catch_14
    :cond_14
    iget-object p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e00d9

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public getMultipathPreference(Landroid/net/Network;)Ljava/lang/Integer;
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 181
    :cond_4
    iget-object p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMultipathTrackers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;

    if-eqz p0, :cond_17

    .line 183
    invoke-virtual {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->getMultipathPreference()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_17
    return-object v0
.end method

.method public final maybeUnregisterTrackMobileCallback()V
    .registers 3

    .line 518
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_9

    .line 519
    iget-object v1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_9
    const/4 v0, 0x0

    .line 521
    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method public final registerNetworkPolicyListener()V
    .registers 2

    .line 525
    new-instance v0, Lcom/android/server/connectivity/MultipathPolicyTracker$2;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$2;-><init>(Lcom/android/server/connectivity/MultipathPolicyTracker;)V

    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mPolicyListener:Landroid/net/NetworkPolicyManager$Listener;

    .line 532
    iget-object p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mNPM:Landroid/net/NetworkPolicyManager;

    invoke-virtual {p0, v0}, Landroid/net/NetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V

    return-void
.end method

.method public final registerTrackMobileCallback()V
    .registers 4

    .line 472
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    .line 473
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 474
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 475
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 476
    new-instance v1, Lcom/android/server/connectivity/MultipathPolicyTracker$1;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$1;-><init>(Lcom/android/server/connectivity/MultipathPolicyTracker;)V

    iput-object v1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 505
    iget-object v2, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mCM:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v1, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public shutdown()V
    .registers 3

    .line 166
    invoke-virtual {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->maybeUnregisterTrackMobileCallback()V

    .line 167
    invoke-virtual {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->unregisterNetworkPolicyListener()V

    .line 168
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMultipathTrackers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;

    .line 169
    invoke-virtual {v1}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->shutdown()V

    goto :goto_10

    .line 171
    :cond_20
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMultipathTrackers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 172
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 173
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mUserAllContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mConfigChangeReceiver:Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public start()V
    .registers 5

    .line 149
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mCM:Landroid/net/ConnectivityManager;

    .line 150
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager;

    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mNPM:Landroid/net/NetworkPolicyManager;

    .line 151
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/NetworkStatsManager;

    iput-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 153
    invoke-virtual {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->registerTrackMobileCallback()V

    .line 154
    invoke-virtual {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->registerNetworkPolicyListener()V

    const-string/jumbo v0, "network_default_daily_multipath_quota_bytes"

    .line 156
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 159
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    .line 160
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mUserAllContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mConfigChangeReceiver:Lcom/android/server/connectivity/MultipathPolicyTracker$ConfigChangeReceiver;

    iget-object p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final unregisterNetworkPolicyListener()V
    .registers 2

    .line 536
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mNPM:Landroid/net/NetworkPolicyManager;

    iget-object p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mPolicyListener:Landroid/net/NetworkPolicyManager$Listener;

    invoke-virtual {v0, p0}, Landroid/net/NetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    return-void
.end method

.method public final updateAllMultipathBudgets()V
    .registers 2

    .line 512
    iget-object p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker;->mMultipathTrackers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;

    .line 513
    invoke-virtual {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->updateMultipathBudget()V

    goto :goto_a

    :cond_1a
    return-void
.end method
