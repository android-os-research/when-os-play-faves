.class public Lcom/samsung/android/server/battery/WatchBatteryManager;
.super Ljava/lang/Object;
.source "WatchBatteryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;
    }
.end annotation


# static fields
.field public static final ACTION_CAPABILITY_SUPPORT_BATTERY_INFO_SYNC:Ljava/lang/String; = "com.samsung.android.wearable.action.CAPABILITY_SUPPORT_BATTERY_INFO_SYNC"

.field public static final ACTION_KEYGUARD_STATE_UPDATE:Ljava/lang/String; = "com.samsung.keyguard.KEYGUARD_STATE_UPDATE"

.field public static final ACTION_WEARABLE_DEVICE_CONNECTED:Ljava/lang/String; = "com.samsung.android.wearable.action.WEARABLE_DEVICE_CONNECTED"

.field public static final ACTION_WEARABLE_DEVICE_DISCONNECTED:Ljava/lang/String; = "com.samsung.android.wearable.action.WEARABLE_DEVICE_DISCONNECTED"

.field public static final AUTHORITY_PREFIX:Ljava/lang/String; = "content://"

.field public static final EXTRA_RESULT_FAIL_DEVICE_NOT_CONNECTED:I = 0x3

.field public static final EXTRA_RESULT_FAIL_NOT_SUPPORTED:I = 0x4

.field public static final EXTRA_RESULT_FAIL_UNAVAILABLE_METHOD:I = 0x2

.field public static final EXTRA_RESULT_SUCCESS:I = 0x1

.field public static final EXTRA_SYNC_START:I = 0x1

.field public static final EXTRA_SYNC_STOP:I = 0x0

.field public static final KEY_BATTERY_LEVEL:Ljava/lang/String; = "Level"

.field public static final KEY_BATTERY_STATUS:Ljava/lang/String; = "Status"

.field public static final KEY_BT_ADDRESS:Ljava/lang/String; = "_btAddress"

.field public static final KEY_RESULT:Ljava/lang/String; = "result"

.field public static final KEY_STORED_TIME:Ljava/lang/String; = "Time"

.field public static final KEY_SYNC_BATTERY_DATA:Ljava/lang/String; = "sync_battery_data"

.field public static final MAX_RETRIES:I = 0x2

.field public static final METHOD_CHECK_SYNC_BATTERY_DATA_SUPPORTED_VERSION:Ljava/lang/String; = "check_sync_battery_data_supported_version"

.field public static final METHOD_REFRESH:Ljava/lang/String; = "refresh_info"

.field public static final METHOD_SYNC_REQUEST:Ljava/lang/String; = "sync_request"

.field public static final MILLIS_IN_SECOND:I = 0x3e8

.field public static final RETRY_INTERVAL:I = 0x7530

.field public static final SECONDS_IN_MINUTE:I = 0x3c

.field public static final STATE_SYNC_START:I = 0x1

.field public static final STATE_SYNC_STOP:I = 0x0

.field public static final TAG:Ljava/lang/String; = "WatchBatteryManager"

.field public static final WATCH_BATTERY_MANAGER_ALARM_TAG:Ljava/lang/String; = "WatchBatteryManagerAlarm"


# instance fields
.field public AUTHORITY_URI_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public BATTERY_INFO_PROVIDER_PERMISSION:Ljava/lang/String;

.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

.field public mCanSyncBatteryInfo:Z

.field public mCheckSupportedVersionRetry:I

.field public mConnected:Z

.field public mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field public mProviderRegistered:Z

.field public mRegistered:Z

.field public mScreenOn:Z

.field public mSyncState:I

.field public mSyncStopOffset:I

.field public mWatchBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

.field public mWatchBatteryObserver:Landroid/database/ContentObserver;


# direct methods
.method public static synthetic $r8$lambda$IljP7kgrvwr6Wn0SDXtK3pg5gV4(Lcom/samsung/android/server/battery/WatchBatteryManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->lambda$retryCheckSupportedVersion$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetAUTHORITY_URI_LIST(Lcom/samsung/android/server/battery/WatchBatteryManager;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->AUTHORITY_URI_LIST:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAlarmManager(Lcom/samsung/android/server/battery/WatchBatteryManager;)Landroid/app/AlarmManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBatteryInfoServiceInternal(Lcom/samsung/android/server/battery/WatchBatteryManager;)Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnected(Lcom/samsung/android/server/battery/WatchBatteryManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mConnected:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/battery/WatchBatteryManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/server/battery/WatchBatteryManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRegistered(Lcom/samsung/android/server/battery/WatchBatteryManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mRegistered:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSyncState(Lcom/samsung/android/server/battery/WatchBatteryManager;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSyncStopOffset(Lcom/samsung/android/server/battery/WatchBatteryManager;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncStopOffset:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmCanSyncBatteryInfo(Lcom/samsung/android/server/battery/WatchBatteryManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mCanSyncBatteryInfo:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCheckSupportedVersionRetry(Lcom/samsung/android/server/battery/WatchBatteryManager;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mCheckSupportedVersionRetry:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmConnected(Lcom/samsung/android/server/battery/WatchBatteryManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mConnected:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScreenOn(Lcom/samsung/android/server/battery/WatchBatteryManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mScreenOn:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSyncState(Lcom/samsung/android/server/battery/WatchBatteryManager;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckSupportedVersion(Lcom/samsung/android/server/battery/WatchBatteryManager;)I
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->checkSupportedVersion()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcheckSyncStart(Lcom/samsung/android/server/battery/WatchBatteryManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->checkSyncStart()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcleanupWatchBatteryInfo(Lcom/samsung/android/server/battery/WatchBatteryManager;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/WatchBatteryManager;->cleanupWatchBatteryInfo(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateWatchBatteryInfo(Lcom/samsung/android/server/battery/WatchBatteryManager;Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/WatchBatteryManager;->createWatchBatteryInfo(Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mmakeWatchAuthorities(Lcom/samsung/android/server/battery/WatchBatteryManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->makeWatchAuthorities()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mprepareWatchBatteryInfoSync(Lcom/samsung/android/server/battery/WatchBatteryManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->prepareWatchBatteryInfoSync()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrequestBatteryDataSync(Lcom/samsung/android/server/battery/WatchBatteryManager;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/WatchBatteryManager;->requestBatteryDataSync(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mretryCheckSupportedVersion(Lcom/samsung/android/server/battery/WatchBatteryManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->retryCheckSupportedVersion()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 6

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.samsung.android.companionservice.BATTERY_INFO_PROVIDER"

    .line 91
    iput-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->BATTERY_INFO_PROVIDER_PERMISSION:Ljava/lang/String;

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mWatchBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    const/4 v1, 0x0

    .line 98
    iput-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mRegistered:Z

    .line 99
    iput-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mScreenOn:Z

    const/16 v2, 0x3c

    .line 101
    iput v2, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncStopOffset:I

    .line 102
    iput v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    .line 103
    iput-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mConnected:Z

    .line 104
    iput-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mCanSyncBatteryInfo:Z

    .line 105
    iput-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mProviderRegistered:Z

    .line 106
    iput v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mCheckSupportedVersionRetry:I

    .line 108
    iput-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mWatchBatteryObserver:Landroid/database/ContentObserver;

    .line 111
    iput-object p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mContext:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mHandler:Landroid/os/Handler;

    .line 114
    new-instance p1, Lcom/samsung/android/server/battery/WatchBatteryManager$1;

    iget-object p2, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/battery/WatchBatteryManager$1;-><init>(Lcom/samsung/android/server/battery/WatchBatteryManager;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mWatchBatteryObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private synthetic lambda$retryCheckSupportedVersion$0()V
    .registers 5

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "retryCheckSupportedVersion : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mCheckSupportedVersionRetry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchBatteryManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-boolean v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mConnected:Z

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mCanSyncBatteryInfo:Z

    const/4 v2, 0x1

    if-eq v0, v2, :cond_43

    iget v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mCheckSupportedVersionRetry:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_28

    goto :goto_43

    .line 247
    :cond_28
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->checkSupportedVersion()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3d

    const-string v0, "NOT_SUPPORTED"

    .line 249
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mCheckSupportedVersionRetry:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mCheckSupportedVersionRetry:I

    .line 251
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->retryCheckSupportedVersion()V

    return-void

    :cond_3d
    if-ne v0, v2, :cond_42

    .line 254
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->prepareWatchBatteryInfoSync()V

    :cond_42
    return-void

    :cond_43
    :goto_43
    const/4 v0, 0x0

    .line 243
    iput v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mCheckSupportedVersionRetry:I

    return-void
.end method


# virtual methods
.method public final checkSupportedVersion()I
    .registers 8

    const-string v0, "WatchBatteryManager"

    const/4 v1, 0x4

    .line 407
    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->AUTHORITY_URI_LIST:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 408
    iget-object v4, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "check_sync_battery_data_supported_version"

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "result"

    .line 410
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 411
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkSupportedVersion("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") : "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_49} :catch_4a

    goto :goto_9

    :catch_4a
    move-exception p0

    .line 414
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSupportedVersion - IllegalStateException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    return v1
.end method

.method public final checkSyncStart()V
    .registers 3

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkSyncStart() / mRegistered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / mScreenOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / mCanSyncBatteryInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mCanSyncBatteryInfo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / mSyncState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchBatteryManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-boolean v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mRegistered:Z

    if-eqz v0, :cond_4c

    iget-boolean v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mScreenOn:Z

    if-eqz v0, :cond_4c

    iget-boolean v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mCanSyncBatteryInfo:Z

    if-eqz v0, :cond_4c

    iget v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    if-nez v0, :cond_4c

    const/4 v0, 0x1

    .line 279
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->requestBatteryDataSync(I)V

    .line 280
    iput v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    :cond_4c
    return-void
.end method

.method public final checkSyncStop()V
    .registers 3

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkSyncStop() / mRegistered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / mScreenOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / mCanSyncBatteryInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mCanSyncBatteryInfo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / mSyncState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchBatteryManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_41

    const/4 v0, 0x0

    .line 289
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->requestBatteryDataSync(I)V

    .line 290
    iput v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    :cond_41
    return-void
.end method

.method public final cleanupWatchBatteryInfo(Ljava/lang/String;)V
    .registers 3

    .line 266
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->unRegisterBatteryInfoObserver()V

    .line 267
    iget-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    invoke-interface {v0, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->containsBatteryInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 268
    iget-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    invoke-interface {v0, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->removeBatteryInfo(Ljava/lang/String;)V

    :cond_10
    const/4 p1, 0x0

    .line 270
    iput-object p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mWatchBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    const/4 p1, 0x0

    .line 271
    iput-boolean p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mCanSyncBatteryInfo:Z

    .line 272
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->checkSyncStop()V

    return-void
.end method

.method public final createWatchBatteryInfo(Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;
    .registers 3

    .line 307
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-nez p0, :cond_f

    const-string p0, "WatchBatteryManager"

    const-string p1, "bluetoothAdapter is null"

    .line 309
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 312
    :cond_f
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    .line 314
    new-instance p1, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    invoke-direct {p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;-><init>()V

    .line 315
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setAddress(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setDeviceName(Ljava/lang/String;)V

    const/4 p0, 0x4

    .line 317
    invoke-virtual {p1, p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setDeviceType(I)V

    const/4 p0, -0x1

    .line 318
    invoke-virtual {p1, p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryLevel(I)V

    const/4 p0, 0x1

    .line 319
    invoke-virtual {p1, p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryStatus(I)V

    return-object p1
.end method

.method public final getBatteryInfoData()V
    .registers 9

    const-string v0, "getBatteryInfoData : "

    const-string v1, "WatchBatteryManager"

    .line 362
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 364
    :try_start_9
    iget-object v3, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->AUTHORITY_URI_LIST:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_84

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 365
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v5, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "refresh_info"

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v7, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v4, "result"

    .line 368
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 369
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_58} :catch_6f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_58} :catch_59

    goto :goto_f

    :catch_59
    move-exception p0

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occurred : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84

    :catch_6f
    move-exception p0

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalArgumentException : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_84
    :goto_84
    return-void
.end method

.method public final makeWatchAuthorities()V
    .registers 8

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->AUTHORITY_URI_LIST:Ljava/util/ArrayList;

    .line 327
    iget-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->BATTERY_INFO_PROVIDER_PERMISSION:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 329
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "WatchBatteryManager"

    if-eqz v2, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 330
    iget-object v4, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->AUTHORITY_URI_LIST:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "authority : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 333
    :cond_62
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resolve info size : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyPackageRegistered(Z)V
    .registers 4

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRegistered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "/ mSyncState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/ mScreenOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchBatteryManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_33

    const/4 p1, 0x1

    .line 298
    iput-boolean p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mRegistered:Z

    .line 299
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->checkSyncStart()V

    goto :goto_39

    :cond_33
    const/4 p1, 0x0

    .line 301
    iput-boolean p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mRegistered:Z

    .line 302
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->checkSyncStop()V

    :goto_39
    return-void
.end method

.method public final prepareWatchBatteryInfoSync()V
    .registers 2

    const/4 v0, 0x1

    .line 260
    iput-boolean v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mCanSyncBatteryInfo:Z

    .line 261
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->registerBatteryInfoObserver()V

    .line 262
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->checkSyncStart()V

    return-void
.end method

.method public final registerBatteryInfoObserver()V
    .registers 7

    const-string v0, "WatchBatteryManager"

    .line 337
    iget-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mProviderRegistered:Z

    if-nez v1, :cond_57

    .line 339
    :try_start_6
    iget-object v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->AUTHORITY_URI_LIST:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerBatteryInfoObserver : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v3, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mWatchBatteryObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_c

    :cond_3e
    const/4 v1, 0x1

    .line 343
    iput-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mProviderRegistered:Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_41} :catch_42

    goto :goto_57

    :catch_42
    move-exception p0

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occurred : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    :goto_57
    return-void
.end method

.method public final requestBatteryDataSync(I)V
    .registers 4

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestBatteryDataSync syncData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchBatteryManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/server/battery/WatchBatteryManager$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/battery/WatchBatteryManager$3;-><init>(Lcom/samsung/android/server/battery/WatchBatteryManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final retryCheckSupportedVersion()V
    .registers 5

    .line 238
    iget-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/server/battery/WatchBatteryManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/battery/WatchBatteryManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/battery/WatchBatteryManager;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public systemServicesReady()V
    .registers 6

    .line 163
    const-class v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    .line 164
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    iput-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    .line 165
    iget-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 166
    new-instance v0, Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;-><init>(Lcom/samsung/android/server/battery/WatchBatteryManager;Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener-IA;)V

    .line 168
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.samsung.android.wearable.action.WEARABLE_DEVICE_CONNECTED"

    .line 169
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.samsung.android.wearable.action.WEARABLE_DEVICE_DISCONNECTED"

    .line 170
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.samsung.keyguard.KEYGUARD_STATE_UPDATE"

    .line 171
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.samsung.android.wearable.action.CAPABILITY_SUPPORT_BATTERY_INFO_SYNC"

    .line 172
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    iget-object v3, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/samsung/android/server/battery/WatchBatteryManager$2;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/server/battery/WatchBatteryManager$2;-><init>(Lcom/samsung/android/server/battery/WatchBatteryManager;Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;)V

    iget-object p0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final unRegisterBatteryInfoObserver()V
    .registers 3

    .line 351
    iget-boolean v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mProviderRegistered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2b

    .line 353
    :try_start_5
    iget-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mWatchBatteryObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 354
    iput-boolean v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mProviderRegistered:Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_13} :catch_14

    goto :goto_2b

    :catch_14
    move-exception p0

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception occurred : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WatchBatteryManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    :goto_2b
    return-void
.end method
