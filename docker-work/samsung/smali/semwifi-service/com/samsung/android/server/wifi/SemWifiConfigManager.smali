.class public Lcom/samsung/android/server/wifi/SemWifiConfigManager;
.super Ljava/lang/Object;
.source "SemWifiConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;,
        Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;,
        Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkAddedListener;
    }
.end annotation


# static fields
.field static final BUFFERED_WRITE_ALARM_INTERVAL_MS:J = 0x7d0L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final BUFFERED_WRITE_ALARM_TAG:Ljava/lang/String; = "SemWifiConfigAlarm"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final CHANGE_REASON_ADDED:I = 0x1

.field private static final CHANGE_REASON_NETWORK_RESET:I = 0x4

.field private static final CHANGE_REASON_REMOVED:I = 0x2

.field private static final CHANGE_REASON_UPDATED:I = 0x3

.field static final MIN_DISABLE_TIME_MS:J = 0x927c0L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SYNC_CONFIG_DELAY_MS:J = 0x1f4L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SYNC_REMOVED_CONFIG_DELAY_MS:J = 0x3e8L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SemWifiConfigManager"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mClock:Lcom/samsung/android/server/wifi/util/SemClock;

.field private final mCloseDatabaseAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mCloseDbPending:Z

.field private final mConfigs:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/wifi/SemWifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mDbHelper:Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;

.field private final mDelaySyncHandler:Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;

.field mErrorCount:[I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHiddenSsids:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLegacyLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFirstSync:Z

.field private final mLegacyConfigs:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLegacyLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLegacyLock:Ljava/lang/Object;

.field private final mLocalLog:Landroid/util/LocalLog;

.field private final mLock:Ljava/lang/Object;

.field private final mNetworkAddedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkAddedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkRemovedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecoverySettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;


# direct methods
.method public static synthetic $r8$lambda$0N9nWUUDPBdidebph-Amvrts9P0(Lcom/samsung/android/server/wifi/SemWifiConfigManager;Lcom/samsung/android/wifi/SemWifiConfiguration;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->lambda$saveToStorage$5(Lcom/samsung/android/wifi/SemWifiConfiguration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6wpMhXEsdA4UAjqj_NsZHfmOTn8(Lcom/samsung/android/server/wifi/SemWifiConfigManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->lambda$removeFromStorage$6(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BQoi7O4m1nHnHam41Wf_JbfbdVQ(Lcom/samsung/android/server/wifi/SemWifiConfigManager;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->lambda$loadFromDb$1(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$EfrFXEE5DhMj8nKbD-qUU-wCmKc(Lcom/samsung/android/server/wifi/SemWifiConfigManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->lambda$removeAllNetworkInternal$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$VHuWwB-4qb0MGGM542XMmxonW0k(Lcom/samsung/android/server/wifi/SemWifiConfigManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->lambda$loadFromDb$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_AmG0hX7rrg9C1p9NFaqv3amOM0(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkAddedListener;Landroid/net/wifi/WifiConfiguration;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->lambda$notifyToClient$4(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkAddedListener;Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jDgXgfZMW0SbGYiS7eouSGy1Mag(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;Landroid/net/wifi/WifiConfiguration;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->lambda$notifyToClient$3(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q4fnJz6qivAtlrIEq4KM_EKlN6w(Lcom/samsung/android/server/wifi/SemWifiConfigManager;Landroid/net/wifi/WifiConfiguration;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->lambda$clearDisableReason$0(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcloseDatabase(Lcom/samsung/android/server/wifi/SemWifiConfigManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->closeDatabase()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msyncManagedWifiNetworks(Lcom/samsung/android/server/wifi/SemWifiConfigManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->syncManagedWifiNetworks()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/util/SemClock;)V
    .registers 6

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLegacyLock:Ljava/lang/Object;

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLock:Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 108
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mErrorCount:[I

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mCloseDbPending:Z

    .line 119
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiConfigManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$1;-><init>(Lcom/samsung/android/server/wifi/SemWifiConfigManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mCloseDatabaseAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v0, 0x1

    .line 565
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mIsFirstSync:Z

    .line 129
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 130
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    const-string p3, "alarm"

    .line 131
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/AlarmManager;

    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 132
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mHandler:Landroid/os/Handler;

    .line 133
    new-instance p3, Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    const/4 p4, 0x0

    invoke-direct {p3, p0, p2, p4}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;-><init>(Lcom/samsung/android/server/wifi/SemWifiConfigManager;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler-IA;)V

    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mDelaySyncHandler:Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;

    .line 134
    new-instance p2, Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;

    invoke-direct {p2, p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mDbHelper:Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;

    .line 136
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLegacyConfigs:Ljava/util/Map;

    .line 137
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mConfigs:Ljava/util/Map;

    .line 138
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mRecoverySettings:Ljava/util/Map;

    .line 139
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mNetworkRemovedListeners:Ljava/util/Set;

    .line 140
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mNetworkAddedListeners:Ljava/util/Set;

    .line 141
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mHiddenSsids:Ljava/util/Set;

    .line 143
    new-instance p1, Landroid/util/LocalLog;

    const/16 p2, 0x80

    invoke-direct {p1, p2}, Landroid/util/LocalLog;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    return-void
.end method

.method private checkAndEnableNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .registers 4

    .line 540
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkPermanentlyDisabled()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 541
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4a

    .line 543
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4a

    .line 544
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetwork(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 546
    iget v0, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    packed-switch v0, :pswitch_data_4c

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable network "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiConfigManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->enableNetwork(IZ)Z

    nop

    :cond_4a
    :pswitch_4a
    return-void

    nop

    :pswitch_data_4c
    .packed-switch 0x5
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
    .end packed-switch
.end method

.method private closeDatabase()V
    .registers 5

    .line 732
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->stopClosingDbAlarm()V

    .line 733
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    .line 736
    :try_start_9
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mDbHelper:Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;->close()V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception v2

    .line 738
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 741
    :goto_13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 742
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Closing to database completed in "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemWifiConfigManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private convertSecurityTypeToWifiConfiguration(I)I
    .registers 2

    packed-switch p1, :pswitch_data_20

    :pswitch_3
    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/16 p0, 0xc

    return p0

    :pswitch_8
    const/16 p0, 0xb

    return p0

    :pswitch_b
    const/16 p0, 0x9

    return p0

    :pswitch_e
    const/16 p0, 0x8

    return p0

    :pswitch_11
    const/4 p0, 0x7

    return p0

    :pswitch_13
    const/4 p0, 0x6

    return p0

    :pswitch_15
    const/4 p0, 0x5

    return p0

    :pswitch_17
    const/4 p0, 0x4

    return p0

    :pswitch_19
    const/4 p0, 0x3

    return p0

    :pswitch_1b
    const/4 p0, 0x2

    return p0

    :pswitch_1d
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1b
        :pswitch_19
        :pswitch_17
        :pswitch_15
        :pswitch_13
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_3
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private isStorageFieldChanged(Lcom/samsung/android/wifi/SemWifiConfiguration;Lcom/samsung/android/wifi/SemWifiConfiguration;)Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/wifi/SemWifiConfiguration;",
            "Lcom/samsung/android/wifi/SemWifiConfiguration;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 246
    iget-boolean p0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    iget-boolean v0, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    if-ne p0, v0, :cond_21

    iget-boolean p0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    iget-boolean v0, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    if-ne p0, v0, :cond_21

    iget p0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    iget v0, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    if-ne p0, v0, :cond_21

    iget-boolean p0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    iget-boolean v0, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    if-ne p0, v0, :cond_21

    iget p0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    iget v0, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    if-eq p0, v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p0, 0x1

    :goto_22
    const-string v0, "{"

    .line 252
    iget-boolean v1, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    iget-boolean v2, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    const-string v3, " "

    if-eq v1, v2, :cond_45

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "isCaptivePortal : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    :cond_45
    iget-boolean v1, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    iget-boolean v2, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    if-eq v1, v2, :cond_64

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "isLockDown : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    :cond_64
    iget v1, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    iget v2, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    if-eq v1, v2, :cond_83

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "networkScore : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    :cond_83
    iget-boolean v1, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    iget-boolean v2, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    if-eq v1, v2, :cond_a2

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "isNoInternetAccessExpected : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    :cond_a2
    iget-wide v1, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    iget-wide v4, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_c3

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "disableTimeByWcm : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    :cond_c3
    iget-wide v1, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    iget-wide v4, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_e4

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "disableTimeByEle : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    :cond_e4
    iget v1, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->altNetworkTargetRssi:I

    iget v2, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->altNetworkTargetRssi:I

    if-eq v1, v2, :cond_103

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "altNetworkTargetRssi : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->altNetworkTargetRssi:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    :cond_103
    iget p1, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    iget v1, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    if-eq p1, v1, :cond_126

    .line 274
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "networkDisableReason : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReasonStrings:[Ljava/lang/String;

    iget p2, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    :cond_126
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 278
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$clearDisableReason$0(Landroid/net/wifi/WifiConfiguration;)V
    .registers 2

    .line 184
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->clearDisableReason(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$loadFromDb$1(II)V
    .registers 3

    const/4 p2, 0x3

    if-ne p1, p2, :cond_b

    .line 500
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mDelaySyncHandler:Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;

    const-wide/16 p1, 0x0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;->-$$Nest$msyncWifiConfigs(Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;J)V

    goto :goto_11

    :cond_b
    const/4 p2, 0x1

    if-ne p1, p2, :cond_11

    .line 502
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->checkAndSyncWithDatabase()V

    :cond_11
    :goto_11
    return-void
.end method

.method private synthetic lambda$loadFromDb$2(I)V
    .registers 4

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configured networks changed, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiConfigManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_20

    .line 510
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mDelaySyncHandler:Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;->-$$Nest$msyncWifiConfigs(Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;J)V

    goto :goto_32

    :cond_20
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2b

    .line 512
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mDelaySyncHandler:Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;

    const-wide/16 v0, 0x3e8

    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;->-$$Nest$msyncWifiConfigs(Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;J)V

    goto :goto_32

    .line 514
    :cond_2b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mDelaySyncHandler:Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;

    const-wide/16 v0, 0x1f4

    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;->-$$Nest$msyncWifiConfigs(Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;J)V

    :goto_32
    return-void
.end method

.method private static synthetic lambda$notifyToClient$3(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;Landroid/net/wifi/WifiConfiguration;)V
    .registers 2

    .line 646
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;->onNetworkRemoved(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method private static synthetic lambda$notifyToClient$4(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkAddedListener;Landroid/net/wifi/WifiConfiguration;)V
    .registers 2

    .line 651
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkAddedListener;->onNetworkAdded(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method private synthetic lambda$removeAllNetworkInternal$7()V
    .registers 2

    .line 698
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mDbHelper:Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;->deleteAll()V

    .line 699
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->startClosingDbAlarm()V

    return-void
.end method

.method private synthetic lambda$removeFromStorage$6(Ljava/lang/String;)V
    .registers 4

    .line 689
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mDbHelper:Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;->delete(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 690
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mErrorCount:[I

    const/4 v0, 0x1

    aget v1, p1, v0

    add-int/2addr v1, v0

    aput v1, p1, v0

    .line 692
    :cond_10
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->startClosingDbAlarm()V

    return-void
.end method

.method private synthetic lambda$saveToStorage$5(Lcom/samsung/android/wifi/SemWifiConfiguration;)V
    .registers 4

    .line 680
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mDbHelper:Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;->addOrUpdate(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 681
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mErrorCount:[I

    const/4 v0, 0x0

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    .line 683
    :cond_11
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->startClosingDbAlarm()V

    return-void
.end method

.method private localLog(Ljava/lang/String;)V
    .registers 2

    .line 746
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    if-eqz p0, :cond_7

    .line 747
    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private mergeWithInternalWifiConfiguration(Lcom/samsung/android/wifi/SemWifiConfiguration;Lcom/samsung/android/wifi/SemWifiConfiguration;)V
    .registers 5

    .line 285
    iget p0, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    iput p0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    .line 286
    iget-boolean p0, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    iput-boolean p0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    .line 287
    iget-boolean p0, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    iput-boolean p0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    .line 288
    iget-boolean p0, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    iput-boolean p0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    .line 289
    iget-wide v0, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    iput-wide v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    .line 290
    iget-wide v0, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    iput-wide v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    .line 291
    iget p0, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->altNetworkTargetRssi:I

    iput p0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->altNetworkTargetRssi:I

    .line 292
    iget p0, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    iput p0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    return-void
.end method

.method private notifyToClient(ILandroid/net/wifi/WifiConfiguration;)V
    .registers 6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_47

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2a

    const/4 p2, 0x4

    if-eq p1, p2, :cond_a

    goto :goto_64

    .line 640
    :cond_a
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mNetworkRemovedListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_64

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;

    .line 641
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mHandler:Landroid/os/Handler;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_10

    .line 645
    :cond_2a
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mNetworkRemovedListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_30
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;

    .line 646
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0, p2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;Landroid/net/wifi/WifiConfiguration;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_30

    .line 650
    :cond_47
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mNetworkAddedListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkAddedListener;

    .line 651
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0, p2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkAddedListener;Landroid/net/wifi/WifiConfiguration;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4d

    :cond_64
    :goto_64
    return-void
.end method

.method private removeAllNetworkInternal()V
    .registers 3

    .line 697
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/server/wifi/SemWifiConfigManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private removeFromStorage(Ljava/lang/String;)V
    .registers 4

    .line 688
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemWifiConfigManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private saveToStorage(Lcom/samsung/android/wifi/SemWifiConfiguration;)V
    .registers 4

    .line 679
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemWifiConfigManager;Lcom/samsung/android/wifi/SemWifiConfiguration;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startClosingDbAlarm()V
    .registers 10

    .line 707
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mCloseDbPending:Z

    if-eqz v0, :cond_e

    const-string v0, "SemWifiConfigManager"

    const-string v1, "reset alarm"

    .line 708
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->stopClosingDbAlarm()V

    .line 711
    :cond_e
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 712
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x7d0

    add-long/2addr v4, v0

    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mCloseDatabaseAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mHandler:Landroid/os/Handler;

    const-string v6, "SemWifiConfigAlarm"

    .line 711
    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    const/4 v0, 0x1

    .line 714
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mCloseDbPending:Z

    return-void
.end method

.method private stopClosingDbAlarm()V
    .registers 3

    .line 721
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mCloseDbPending:Z

    if-eqz v0, :cond_e

    .line 722
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mCloseDatabaseAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    const/4 v0, 0x0

    .line 723
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mCloseDbPending:Z

    :cond_e
    return-void
.end method

.method private syncManagedWifiNetworks()V
    .registers 12

    .line 567
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    .line 568
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 569
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 574
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3b

    const-wide/16 v0, 0x7d0

    cmp-long v0, v3, v0

    if-lez v0, :cond_3b

    const-string p0, "SemWifiConfigManager"

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skip syncManagedNetworks. timeout for getting saved network. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 580
    :cond_3b
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 581
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 582
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 583
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLegacyLock:Ljava/lang/Object;

    monitor-enter v6

    .line 584
    :try_start_4d
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLegacyConfigs:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_57
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_81

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 585
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_57

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 586
    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6d

    .line 589
    :cond_81
    monitor-exit v6
    :try_end_82
    .catchall {:try_start_4d .. :try_end_82} :catchall_1c0

    .line 590
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 591
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8b
    :goto_8b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    .line 592
    iget v9, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b1

    .line 593
    iget v9, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    :cond_b1
    iget v9, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 596
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 598
    iget-boolean v9, v8, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v9, :cond_d0

    .line 599
    iget-object v9, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 601
    :cond_d0
    iget-boolean v9, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mIsFirstSync:Z

    if-eqz v9, :cond_d8

    .line 602
    invoke-direct {p0, v8}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->checkAndEnableNetwork(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_8b

    .line 603
    :cond_d8
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8b

    const/4 v9, 0x1

    .line 604
    invoke-direct {p0, v9, v8}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->notifyToClient(ILandroid/net/wifi/WifiConfiguration;)V

    goto :goto_8b

    :cond_e7
    const/4 v7, 0x0

    .line 607
    iput-boolean v7, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mIsFirstSync:Z

    .line 609
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f2
    :goto_f2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_113

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 610
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f2

    const/4 v8, 0x2

    .line 611
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v8, v7}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->notifyToClient(ILandroid/net/wifi/WifiConfiguration;)V

    goto :goto_f2

    .line 614
    :cond_113
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLegacyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 615
    :try_start_116
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLegacyConfigs:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 616
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLegacyConfigs:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 617
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mHiddenSsids:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 618
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mHiddenSsids:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 619
    monitor-exit v0
    :try_end_12b
    .catchall {:try_start_116 .. :try_end_12b} :catchall_1bd

    .line 620
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 621
    :try_start_12e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mConfigs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 622
    :cond_138
    :goto_138
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_177

    .line 623
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 624
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_138

    const-string v8, "SemWifiConfigManager"

    .line 625
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " - removed "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->removeFromStorage(Ljava/lang/String;)V

    .line 627
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_138

    :cond_177
    const-string v0, "SemWifiConfigManager"

    .line 630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "syncManagedNetworks n="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " m="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mConfigs:Ljava/util/Map;

    .line 631
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " h="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " t="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 630
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    monitor-exit v6

    return-void

    :catchall_1ba
    move-exception p0

    monitor-exit v6
    :try_end_1bc
    .catchall {:try_start_12e .. :try_end_1bc} :catchall_1ba

    throw p0

    :catchall_1bd
    move-exception p0

    .line 619
    :try_start_1be
    monitor-exit v0
    :try_end_1bf
    .catchall {:try_start_1be .. :try_end_1bf} :catchall_1bd

    throw p0

    :catchall_1c0
    move-exception p0

    .line 589
    :try_start_1c1
    monitor-exit v6
    :try_end_1c2
    .catchall {:try_start_1c1 .. :try_end_1c2} :catchall_1c0

    throw p0
.end method


# virtual methods
.method public addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;I)Lcom/samsung/android/wifi/SemWifiConfiguration;
    .registers 9

    .line 213
    iget-object v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const-string p0, "SemWifiConfigManager"

    const-string p1, "addOrUpdateNetwork failed, configKey is empty"

    .line 214
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 218
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 219
    :try_start_14
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mConfigs:Ljava/util/Map;

    iget-object v3, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    new-instance v4, Lcom/samsung/android/wifi/SemWifiConfiguration;

    iget-object v5, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/samsung/android/wifi/SemWifiConfiguration;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 221
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_bb

    .line 222
    iget-boolean v0, v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    if-nez v0, :cond_2e

    iget-boolean v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    if-eqz v0, :cond_58

    :cond_2e
    const/16 v0, 0x3e8

    if-eq p2, v0, :cond_58

    const-string p0, "SemWifiConfigManager"

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is locked down. not allow to update "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " network by uid "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 229
    :cond_58
    invoke-direct {p0, v2, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->isStorageFieldChanged(Lcom/samsung/android/wifi/SemWifiConfiguration;Lcom/samsung/android/wifi/SemWifiConfiguration;)Landroid/util/Pair;

    move-result-object p2

    .line 230
    invoke-direct {p0, v2, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mergeWithInternalWifiConfiguration(Lcom/samsung/android/wifi/SemWifiConfiguration;Lcom/samsung/android/wifi/SemWifiConfiguration;)V

    .line 231
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 232
    :try_start_62
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mConfigs:Ljava/util/Map;

    iget-object v3, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_62 .. :try_end_6a} :catchall_b8

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addOrUpdateNetwork "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_86

    const-string v1, " (changed)"

    goto :goto_88

    :cond_86
    const-string v1, " (unchanged)"

    :goto_88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiConfigManager"

    .line 236
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b7

    .line 238
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->saveToStorage(Lcom/samsung/android/wifi/SemWifiConfiguration;)V

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->localLog(Ljava/lang/String;)V

    :cond_b7
    return-object p1

    :catchall_b8
    move-exception p0

    .line 233
    :try_start_b9
    monitor-exit v1
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b8

    throw p0

    :catchall_bb
    move-exception p0

    .line 221
    :try_start_bc
    monitor-exit v0
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    throw p0
.end method

.method addOrUpdateRecoveryTime(Ljava/lang/String;)V
    .registers 7

    .line 170
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 171
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_40

    .line 172
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->disableNetwork(I)Z

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " network and add to recovery list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiConfigManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mRecoverySettings:Ljava/util/Map;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x927c0

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_40
    return-void
.end method

.method checkAndRecoveryNetwork()V
    .registers 8

    .line 152
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    .line 153
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mRecoverySettings:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 154
    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 155
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 156
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-lez v4, :cond_10

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recovery network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 158
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SemWifiConfigManager"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    if-eqz v3, :cond_77

    .line 161
    iget v4, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_77

    .line 162
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->enableNetwork(IZ)Z

    .line 164
    :cond_77
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_10

    :cond_7b
    return-void
.end method

.method checkAndSyncWithDatabase()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 662
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mErrorCount:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-lez v0, :cond_47

    const-string v0, "SemWifiConfigManager"

    .line 663
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncWithDatabase addOrUpdate error count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mErrorCount:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mErrorCount:[I

    aput v1, v0, v1

    .line 665
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 666
    :try_start_28
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mConfigs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 667
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->saveToStorage(Lcom/samsung/android/wifi/SemWifiConfiguration;)V

    goto :goto_32

    .line 669
    :cond_42
    monitor-exit v0

    goto :goto_47

    :catchall_44
    move-exception p0

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_28 .. :try_end_46} :catchall_44

    throw p0

    .line 671
    :cond_47
    :goto_47
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mErrorCount:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    if-lez v0, :cond_73

    const-string v0, "SemWifiConfigManager"

    .line 672
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncWithDatabase remove error count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mErrorCount:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mErrorCount:[I

    aput v1, v0, v2

    .line 674
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mDelaySyncHandler:Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;

    const-wide/16 v0, 0x1f4

    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;->-$$Nest$msyncWifiConfigs(Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;J)V

    :cond_73
    return-void
.end method

.method public clearAllNetworks()V
    .registers 3

    const-string v0, "SemWifiConfigManager"

    const-string v1, "clearAllNetworks"

    .line 441
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 442
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->notifyToClient(ILandroid/net/wifi/WifiConfiguration;)V

    .line 443
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 444
    :try_start_f
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mConfigs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 445
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_25

    .line 446
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLegacyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 447
    :try_start_18
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLegacyConfigs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 448
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_22

    .line 449
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->removeAllNetworkInternal()V

    return-void

    :catchall_22
    move-exception p0

    .line 448
    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p0

    :catchall_25
    move-exception p0

    .line 445
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p0
.end method

.method clearDisableReason(I)V
    .registers 3

    .line 183
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetworks(I)Ljava/util/List;

    move-result-object p1

    .line 184
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/server/wifi/SemWifiConfigManager;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method clearDisableReason(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 179
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->setDisableReason(Ljava/lang/String;I)V

    return-void
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .registers 3

    const-string v0, "SemWifiConfigManager:"

    .line 751
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "SemWifiConfigManager - Log Begin ----"

    .line 752
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 753
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    const-string v0, "SemWifiConfigManager - Log End ----"

    .line 754
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 755
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetworks()Ljava/util/List;

    move-result-object p0

    .line 756
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 757
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, ""

    .line 758
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1c

    :cond_31
    return-void
.end method

.method public getManagedNetwork(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;
    .registers 4

    .line 333
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 334
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mConfigs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 335
    new-instance v1, Lcom/samsung/android/wifi/SemWifiConfiguration;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mConfigs:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/SemWifiConfiguration;

    invoke-direct {v1, p0}, Lcom/samsung/android/wifi/SemWifiConfiguration;-><init>(Lcom/samsung/android/wifi/SemWifiConfiguration;)V

    monitor-exit v0

    return-object v1

    .line 337
    :cond_1a
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public getManagedNetworks()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 324
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mConfigs:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 325
    new-instance v3, Lcom/samsung/android/wifi/SemWifiConfiguration;

    invoke-direct {v3, v2}, Lcom/samsung/android/wifi/SemWifiConfiguration;-><init>(Lcom/samsung/android/wifi/SemWifiConfiguration;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 327
    :cond_27
    monitor-exit v0

    return-object v1

    :catchall_29
    move-exception p0

    .line 328
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public getSavedNetwork(I)Landroid/net/wifi/WifiConfiguration;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 366
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetworks(I)Ljava/util/List;

    move-result-object p0

    .line 367
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_12

    const/4 p1, 0x0

    .line 368
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiConfiguration;

    return-object p0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 378
    :cond_4
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    return-object v0

    .line 382
    :cond_c
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetworks(I)Ljava/util/List;

    move-result-object v1

    .line 383
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_17

    return-object v0

    .line 385
    :cond_17
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_26

    const/4 p0, 0x0

    .line 386
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiConfiguration;

    return-object p0

    .line 389
    :cond_26
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getCurrentSecurityType()I

    move-result p1

    .line 388
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->convertSecurityTypeToWifiConfiguration(I)I

    move-result p0

    .line 390
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 391
    invoke-virtual {v1, p0}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    move-result v2

    if-eqz v2, :cond_32

    return-object v1

    :cond_45
    return-object v0
.end method

.method public getSavedNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .registers 6

    .line 343
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLegacyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 344
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLegacyConfigs:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 345
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 346
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 347
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getSsidAndSecurityTypeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 348
    :cond_3d
    monitor-exit v0

    return-object v2

    .line 352
    :cond_3f
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_42
    move-exception p0

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public getSavedNetworks()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 432
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLegacyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 433
    :try_start_8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLegacyConfigs:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 434
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_12

    .line 436
    :cond_22
    monitor-exit v1

    return-object v0

    :catchall_24
    move-exception p0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public getSavedNetworks(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLegacyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLegacyConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    monitor-exit v0

    return-object p0

    :catchall_15
    move-exception p0

    .line 360
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public isHiddenSsid(Ljava/lang/String;)Z
    .registers 3

    .line 527
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLegacyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 528
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mHiddenSsids:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 529
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public loadFromDb()V
    .registers 5

    .line 485
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLegacyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 486
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLegacyConfigs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 487
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_65

    .line 488
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 489
    :try_start_c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mConfigs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 490
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mConfigs:Ljava/util/Map;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mDbHelper:Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;->getConfigs()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v0, "SemWifiConfigManager"

    .line 491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadFromDb config size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mConfigs:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_c .. :try_end_39} :catchall_62

    .line 494
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 495
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataMiscDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "wifi/crash.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->testForRescueParty(Ljava/io/File;)V

    .line 498
    :cond_4d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/server/wifi/SemWifiConfigManager;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V

    .line 506
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/server/wifi/SemWifiConfigManager;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;)V

    return-void

    :catchall_62
    move-exception p0

    .line 492
    :try_start_63
    monitor-exit v1
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw p0

    :catchall_65
    move-exception p0

    .line 487
    :try_start_66
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw p0
.end method

.method public loadSavedNetworks()V
    .registers 3

    const-string v0, "loadSavedNetworks"

    .line 521
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->localLog(Ljava/lang/String;)V

    const-string v1, "SemWifiConfigManager"

    .line 522
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mDelaySyncHandler:Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;

    const-wide/16 v0, 0x1f4

    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;->-$$Nest$msyncWifiConfigs(Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;J)V

    return-void
.end method

.method public registerNetworkAddedListener(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkAddedListener;)V
    .registers 3

    .line 461
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 462
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mNetworkAddedListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    const-string p0, "SemWifiConfigManager"

    const-string p1, "registerNetworkAddedListener: duplicate registration ignored"

    .line 463
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public registerNetworkRemovedListener(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;)V
    .registers 3

    .line 453
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 454
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mNetworkRemovedListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    const-string p0, "SemWifiConfigManager"

    const-string p1, "registerNetworkRemovedListener: duplicate registration ignored"

    .line 455
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method removeNetwork(Ljava/lang/String;I)Lcom/samsung/android/wifi/SemWifiConfiguration;
    .registers 6

    .line 298
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mConfigs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemWifiConfiguration;

    if-eqz v1, :cond_33

    .line 302
    iget-boolean v2, v1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    if-eqz v2, :cond_2e

    const/16 v2, 0x3e8

    if-eq p2, v2, :cond_2e

    const-string p0, "SemWifiConfigManager"

    .line 303
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not allow to remove network "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 304
    monitor-exit v0

    return-object p0

    .line 306
    :cond_2e
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mConfigs:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :cond_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_53

    if-eqz v1, :cond_52

    .line 311
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeNetwork "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 312
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->localLog(Ljava/lang/String;)V

    const-string v0, "SemWifiConfigManager"

    .line 313
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->removeFromStorage(Ljava/lang/String;)V

    :cond_52
    return-object v1

    :catchall_53
    move-exception p0

    .line 308
    :try_start_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw p0
.end method

.method setDisableReason(Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x1

    if-eq p2, v0, :cond_6

    const/4 v0, 0x5

    if-ne p2, v0, :cond_9

    .line 190
    :cond_6
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->addOrUpdateRecoveryTime(Ljava/lang/String;)V

    .line 192
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_c
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mConfigs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemWifiConfiguration;

    if-eqz v1, :cond_1a

    .line 195
    iput p2, v1, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    .line 196
    monitor-exit v0

    return-void

    .line 198
    :cond_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_34

    .line 199
    new-instance v0, Lcom/samsung/android/wifi/SemWifiConfiguration;

    invoke-direct {v0, p1}, Lcom/samsung/android/wifi/SemWifiConfiguration;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_25

    .line 201
    iput p2, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    goto :goto_2e

    :cond_25
    const-wide/16 p1, 0x0

    .line 204
    iput-wide p1, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    .line 205
    iput-wide p1, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    const/4 p1, 0x0

    .line 206
    iput p1, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->altNetworkTargetRssi:I

    :goto_2e
    const/16 p1, 0x3e8

    .line 208
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;I)Lcom/samsung/android/wifi/SemWifiConfiguration;

    return-void

    :catchall_34
    move-exception p0

    .line 198
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p0
.end method

.method setTestDbHelper(Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 148
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mDbHelper:Lcom/samsung/android/server/wifi/db/DatabaseHelperForConfig;

    return-void
.end method

.method testForRescueParty(Ljava/io/File;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 534
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 535
    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Rescue Party Feature Test"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterNetworkAddedListener(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkAddedListener;)V
    .registers 3

    .line 477
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 478
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mNetworkAddedListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    const-string p0, "SemWifiConfigManager"

    const-string p1, "unregisterNetworkAddedListener: never registered listener"

    .line 479
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public unregisterNetworkRemovedListener(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;)V
    .registers 3

    .line 469
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 470
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->mNetworkRemovedListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    const-string p0, "SemWifiConfigManager"

    const-string p1, "unregisterNetworkRemovedListener: never registered listener"

    .line 471
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method
