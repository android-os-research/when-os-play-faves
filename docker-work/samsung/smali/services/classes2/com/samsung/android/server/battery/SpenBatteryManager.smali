.class public Lcom/samsung/android/server/battery/SpenBatteryManager;
.super Ljava/lang/Object;
.source "SpenBatteryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/battery/SpenBatteryManager$SpenHandler;
    }
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final BATTERY_LEVEL:Ljava/lang/String; = "batteryLevel"

.field public static final CHARGING_STATE:Ljava/lang/String; = "chargingState"

.field public static final CMD:Ljava/lang/String; = "cmd"

.field public static final CONNECTED:Ljava/lang/String; = "connected"

.field public static final CONNECTION_STATE:Ljava/lang/String; = "connectionState"

.field public static final DEFAULT_SEPN_TYPE:I = 0x1

.field public static final DEVICE_TYPE:Ljava/lang/String; = "deviceType"

.field public static final DISCONNECTED:Ljava/lang/String; = "disconnected"

.field public static final EMPTY_UID:Ljava/lang/String; = ""

.field public static final GET_BLE_SPEN_DEVICE_INFO:Ljava/lang/String; = "getBleSpenDeviceInfo"

.field public static final GET_BLE_SPEN_DEVICE_UID_LIST:Ljava/lang/String; = "getBleSpenDeviceUidList"

.field public static final GET_BLE_SPEN_NICK_NAME:Ljava/lang/String; = "getBleSpenNickName"

.field public static final MAX_RETRIES:I = 0x3

.field public static final MODEL_NAME:Ljava/lang/String; = "modelName"

.field public static final NICKNAME:Ljava/lang/String; = "nickName"

.field public static final PAIRED:Ljava/lang/String; = "paired"

.field public static final REMOVE_BLE_SPEN_BATTERY_LEVEL_CHANGE_CALLBACK:Ljava/lang/String; = "removeBleSpenBatteryLevelChangeCallback"

.field public static final REMOVE_BLE_SPEN_STATE_CHANGE_CALLBACK:Ljava/lang/String; = "removeBleSpenStateChangeCallback"

.field public static final REQUEST_ID:Ljava/lang/String; = "requestId"

.field public static final REQ_ID_GET_BLE_SEPN_NICK_NAME:I = 0x64

.field public static final REQ_ID_GET_BLE_SPEN_DEVICE_INFO:I = 0x3

.field public static final REQ_ID_GET_BLE_SPEN_DEVICE_UID_LIST:I = 0x0

.field public static final REQ_ID_REMOVE_BLE_SPEN_BATTERY_LEVEL_CHANGE_CALLBACK:I = 0x5

.field public static final REQ_ID_REMOVE_BLE_SPEN_STATE_CHANGE_CALLBACK:I = 0x4

.field public static final REQ_ID_SET_BLE_SPEN_BATTERY_LEVEL_CHANGE_CALLBACK:I = 0x2

.field public static final REQ_ID_SET_BLE_SPEN_STATE_CHANGE_CALLBACK:I = 0x1

.field public static final REQ_ID_SET_PAIRED_SPEN_NOTIFY_CALLBACK:I = 0x6

.field public static final RESULT_VALUE:Ljava/lang/String; = "resultValue"

.field public static final SET_BLE_SPEN_BATTERY_LEVEL_CHANGE_CALLBACK:Ljava/lang/String; = "setBleSpenBatteryLevelChangeCallback"

.field public static final SET_BLE_SPEN_STATE_CHANGE_CALLBACK:Ljava/lang/String; = "setBleSpenStateChangeCallback"

.field public static final SET_PAIRED_SPEN_NOTIFY_CALLBACK:Ljava/lang/String; = "setPairedSpenNotifyCallback"

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final TAG:Ljava/lang/String; = "SpenBatteryManager"

.field public static final UID:Ljava/lang/String; = "uid"

.field public static final UNPAIRED:Ljava/lang/String; = "unpaired"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDeviceBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

.field public mHandler:Landroid/os/Handler;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mIsSpenServiceBound:Z

.field public mMessenger:Landroid/os/Messenger;

.field public mMessengerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field public mService:Landroid/os/IBinder;

.field public mServiceConnectHandler:Landroid/os/Handler;

.field public mServiceConnection:Landroid/content/ServiceConnection;

.field public mServiceConnectionRetry:I

.field public mUIdToAddress:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1IGHCFmvSf9Cnr4WofDvbH_6wwc()V
    .registers 0

    invoke-static {}, Lcom/samsung/android/server/battery/SpenBatteryManager;->lambda$systemServicesReady$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$4v6Q-ebmDKgs3sZm4sTg8q-j4IQ(Lcom/samsung/android/server/battery/SpenBatteryManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/battery/SpenBatteryManager;->lambda$bindSpenService$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$qiC1ONTAKPv4EHi_mwO486EDU8g(Lcom/samsung/android/server/battery/SpenBatteryManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/battery/SpenBatteryManager;->lambda$retryReconnection$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/battery/SpenBatteryManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceBatteryInfoServiceInternal(Lcom/samsung/android/server/battery/SpenBatteryManager;)Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mDeviceBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsSpenServiceBound(Lcom/samsung/android/server/battery/SpenBatteryManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mIsSpenServiceBound:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMessenger(Lcom/samsung/android/server/battery/SpenBatteryManager;)Landroid/os/Messenger;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mMessenger:Landroid/os/Messenger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServiceConnectHandler(Lcom/samsung/android/server/battery/SpenBatteryManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mServiceConnectHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUIdToAddress(Lcom/samsung/android/server/battery/SpenBatteryManager;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mUIdToAddress:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsSpenServiceBound(Lcom/samsung/android/server/battery/SpenBatteryManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mIsSpenServiceBound:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMessenger(Lcom/samsung/android/server/battery/SpenBatteryManager;Landroid/os/Messenger;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mMessenger:Landroid/os/Messenger;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmService(Lcom/samsung/android/server/battery/SpenBatteryManager;Landroid/os/IBinder;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mService:Landroid/os/IBinder;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmServiceConnectionRetry(Lcom/samsung/android/server/battery/SpenBatteryManager;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mServiceConnectionRetry:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbindSpenService(Lcom/samsung/android/server/battery/SpenBatteryManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/server/battery/SpenBatteryManager;->bindSpenService()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleBatteryChanged(Lcom/samsung/android/server/battery/SpenBatteryManager;Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/SpenBatteryManager;->handleBatteryChanged(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleConnectionChanged(Lcom/samsung/android/server/battery/SpenBatteryManager;Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/SpenBatteryManager;->handleConnectionChanged(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleNicknameChanged(Lcom/samsung/android/server/battery/SpenBatteryManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/server/battery/SpenBatteryManager;->handleNicknameChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandlePairedSpenNotify(Lcom/samsung/android/server/battery/SpenBatteryManager;Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/SpenBatteryManager;->handlePairedSpenNotify(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSpenInfo(Lcom/samsung/android/server/battery/SpenBatteryManager;Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/SpenBatteryManager;->handleSpenInfo(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveSpenBatteryInfos(Lcom/samsung/android/server/battery/SpenBatteryManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/server/battery/SpenBatteryManager;->removeSpenBatteryInfos()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mretryReconnection(Lcom/samsung/android/server/battery/SpenBatteryManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/server/battery/SpenBatteryManager;->retryReconnection()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetCallBacksForAllSPen(Lcom/samsung/android/server/battery/SpenBatteryManager;Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/SpenBatteryManager;->setCallBacksForAllSPen(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;)V
    .registers 5

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mUIdToAddress:Ljava/util/HashMap;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mMessengerMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mIsSpenServiceBound:Z

    const/4 v1, 0x0

    .line 98
    iput-object v1, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mHandler:Landroid/os/Handler;

    .line 99
    iput-object v1, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mServiceConnectHandler:Landroid/os/Handler;

    .line 100
    iput v0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mServiceConnectionRetry:I

    .line 101
    new-instance v0, Lcom/samsung/android/server/battery/SpenBatteryManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/battery/SpenBatteryManager$1;-><init>(Lcom/samsung/android/server/battery/SpenBatteryManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 180
    iput-object p1, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mContext:Landroid/content/Context;

    .line 181
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mHandler:Landroid/os/Handler;

    .line 182
    iput-object p2, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mHandlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method private synthetic lambda$bindSpenService$2()V
    .registers 8

    const-string v0, "SpenBatteryManager"

    const-string v1, "bindSpenService invoked"

    .line 536
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-boolean v1, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mIsSpenServiceBound:Z

    if-eqz v1, :cond_12

    const-string/jumbo p0, "service already connected"

    .line 539
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    const-string v1, "com.samsung.android.service.aircommand"

    const-string v2, "com.samsung.android.service.aircommand.remotespen.external.RemoteSpenBindingService"

    const-string v3, "com.samsung.android.service.aircommand.remotespenservice.version"

    const/4 v4, 0x1

    .line 548
    :try_start_19
    iget-object v5, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 549
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_5d

    .line 550
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 551
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "remoteSpenServiceVersion : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v3, v4, :cond_5d

    const-string v2, "com.samsung.android.service.aircommand.remotespen.external.RemoteSpenInternalBindingService"
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_46} :catch_47

    goto :goto_5d

    :catch_47
    move-exception v3

    .line 557
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "remoteSpenServiceVersionName exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_5d
    :goto_5d
    :try_start_5d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "svcName : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 563
    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 565
    iget-object v1, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mServiceConnection:Landroid/content/ServiceConnection;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mIsSpenServiceBound:Z

    .line 567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "service connected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mIsSpenServiceBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_9d} :catch_9e

    goto :goto_b6

    :catch_9e
    move-exception v1

    .line 569
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindSpenService : e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 570
    iput-boolean v0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mIsSpenServiceBound:Z

    :goto_b6
    return-void
.end method

.method private synthetic lambda$retryReconnection$0()V
    .registers 4

    .line 162
    iget-boolean v0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mIsSpenServiceBound:Z

    const-string v1, "SpenBatteryManager"

    if-nez v0, :cond_2f

    iget v0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mServiceConnectionRetry:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_c

    goto :goto_2f

    .line 167
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mServiceConnectionRetry Count : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mServiceConnectionRetry:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/SpenBatteryManager;->bindSpenService()V

    .line 169
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/SpenBatteryManager;->retryReconnection()V

    .line 170
    iget v0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mServiceConnectionRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mServiceConnectionRetry:I

    return-void

    :cond_2f
    :goto_2f
    const-string p0, "delete serviceConnectionRetary"

    .line 163
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic lambda$systemServicesReady$1()V
    .registers 2

    const-string v0, "SpenBatteryManager"

    const-string v1, "mServiceConnectHandler created"

    .line 296
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final bindSpenService()V
    .registers 3

    .line 534
    iget-object v0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mServiceConnectHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/server/battery/SpenBatteryManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/battery/SpenBatteryManager$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/battery/SpenBatteryManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final createBatteryInfo(Landroid/os/Bundle;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;
    .registers 6

    .line 469
    new-instance p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    invoke-direct {p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;-><init>()V

    const-string v0, "nickName"

    .line 470
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceType"

    .line 471
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 472
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nick : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / deviceType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SpenBatteryManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "address"

    .line 473
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setAddress(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setDeviceName(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne v1, v0, :cond_43

    const/4 v1, 0x5

    .line 476
    invoke-virtual {p0, v1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setDeviceType(I)V

    goto :goto_48

    :cond_43
    const/16 v1, 0xc

    .line 478
    invoke-virtual {p0, v1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setDeviceType(I)V

    :goto_48
    const-string v1, "batteryLevel"

    .line 480
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryLevel(I)V

    .line 481
    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryStatus(I)V

    return-object p0
.end method

.method public final getBatteryStatus(Ljava/lang/String;I)I
    .registers 3

    const-string p0, "CHARGING"

    .line 416
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x2

    return p0

    :cond_a
    const-string p0, "DISCHARGING"

    .line 418
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x3

    return p0

    :cond_14
    const/4 p0, 0x1

    return p0
.end method

.method public final getRetryDelayMs(I)I
    .registers 2

    mul-int/lit16 p1, p1, 0x3e8

    add-int/lit8 p1, p1, 0x64

    return p1
.end method

.method public final handleBatteryChanged(Landroid/os/Bundle;)V
    .registers 7

    const-string/jumbo v0, "resultValue"

    .line 262
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_8c

    const-string v0, "batteryLevel"

    .line 265
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "state"

    .line 266
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "uid"

    .line 267
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " battery Changed, batteryLevel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SpenBatteryManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " battery Changed, state : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/battery/SpenBatteryManager;->getBatteryStatus(Ljava/lang/String;I)I

    move-result v1

    .line 273
    iget-object v2, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mUIdToAddress:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    return-void

    .line 277
    :cond_5a
    iget-object v2, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mUIdToAddress:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 279
    iget-object v2, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mDeviceBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    invoke-interface {v2, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->getDeviceBatteryInfo(Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    move-result-object p1

    if-eqz p1, :cond_8c

    .line 282
    invoke-virtual {p1, v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryLevel(I)V

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBatteryStatus : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {p1, v1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryStatus(I)V

    .line 285
    iget-object p0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mDeviceBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    const-string v0, "com.samsung.battery.ACTION_BATTERY_INFO_CHANGED"

    invoke-interface {p0, v0, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->sendBroadcast(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V

    :cond_8c
    return-void
.end method

.method public final handleConnectionChanged(Landroid/os/Bundle;)V
    .registers 7

    const-string/jumbo v0, "resultValue"

    .line 232
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "SpenBatteryManager"

    if-eqz p1, :cond_9d

    const-string/jumbo v1, "state"

    .line 234
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "uid"

    .line 235
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", connection state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v2, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mMessengerMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    const-string v3, "connected"

    .line 240
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    const-string v0, "getBleSpenDeviceInfo"

    .line 241
    invoke-virtual {p0, v0, p1, v2}, Lcom/samsung/android/server/battery/SpenBatteryManager;->requestCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;)V

    goto :goto_a2

    :cond_4c
    const-string v3, "disconnected"

    .line 242
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v4, "removeBleSpenBatteryLevelChangeCallback"

    if-eqz v3, :cond_8a

    .line 243
    iget-object v1, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mUIdToAddress:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    return-void

    .line 246
    :cond_60
    iget-object v1, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mUIdToAddress:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 247
    iget-object v3, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mDeviceBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    invoke-interface {v3, v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->removeBatteryInfo(Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mUIdToAddress:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    invoke-virtual {p0, v4, p1, v2}, Lcom/samsung/android/server/battery/SpenBatteryManager;->requestCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;)V

    .line 250
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove BatteryInfo : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a2

    :cond_8a
    const-string/jumbo v0, "unpaired"

    .line 251
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    const-string/jumbo v0, "removeBleSpenStateChangeCallback"

    .line 252
    invoke-virtual {p0, v0, p1, v2}, Lcom/samsung/android/server/battery/SpenBatteryManager;->requestCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;)V

    .line 253
    invoke-virtual {p0, v4, p1, v2}, Lcom/samsung/android/server/battery/SpenBatteryManager;->requestCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;)V

    goto :goto_a2

    :cond_9d
    const-string p0, "handleConnectionChanged has no bundle"

    .line 256
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a2
    :goto_a2
    return-void
.end method

.method public final handleNicknameChanged()V
    .registers 10

    .line 371
    iget-object v0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mUIdToAddress:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/16 v1, 0x64

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 372
    new-instance v3, Landroid/os/Messenger;

    iget-object v4, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mService:Landroid/os/IBinder;

    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 374
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "cmd"

    const-string v6, "getBleSpenNickName"

    .line 375
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "uid"

    .line 376
    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v1, 0x1

    const-string/jumbo v6, "requestId"

    .line 377
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleNicknameChanged: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "SpenBatteryManager"

    invoke-static {v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 382
    invoke-virtual {v1, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 383
    new-instance v4, Landroid/os/Messenger;

    new-instance v7, Lcom/samsung/android/server/battery/SpenBatteryManager$4;

    iget-object v8, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, p0, v8, v2}, Lcom/samsung/android/server/battery/SpenBatteryManager$4;-><init>(Lcom/samsung/android/server/battery/SpenBatteryManager;Landroid/os/Looper;Ljava/lang/String;)V

    invoke-direct {v4, v7}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v4, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 408
    :try_start_68
    invoke-virtual {v3, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_81

    :catch_6c
    move-exception v1

    .line 410
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception occurred : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_81
    move v1, v5

    goto :goto_c

    :cond_83
    return-void
.end method

.method public final handlePairedSpenNotify(Landroid/os/Bundle;)V
    .registers 6

    const-string/jumbo v0, "resultValue"

    .line 186
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_b2

    const-string/jumbo v0, "state"

    .line 188
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "uid"

    .line 189
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pairedState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SpenBatteryManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "paired"

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 193
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/samsung/android/server/battery/SpenBatteryManager$SpenHandler;

    iget-object v2, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/battery/SpenBatteryManager$SpenHandler;-><init>(Lcom/samsung/android/server/battery/SpenBatteryManager;Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 194
    iget-object v1, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mMessengerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "setBleSpenStateChangeCallback"

    .line 195
    invoke-virtual {p0, v1, p1, v0}, Lcom/samsung/android/server/battery/SpenBatteryManager;->requestCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;)V

    goto :goto_b2

    :cond_5b
    const-string/jumbo v1, "unpaired"

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 198
    iget-object v0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mUIdToAddress:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    const-string p0, "not contains"

    .line 199
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 202
    :cond_72
    iget-object v0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mUIdToAddress:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove address : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v1, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mDeviceBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    invoke-interface {v1, v0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->removeBatteryInfo(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mUIdToAddress:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mMessengerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    const-string/jumbo v1, "removeBleSpenStateChangeCallback"

    .line 207
    invoke-virtual {p0, v1, p1, v0}, Lcom/samsung/android/server/battery/SpenBatteryManager;->requestCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;)V

    const-string/jumbo v1, "removeBleSpenBatteryLevelChangeCallback"

    .line 208
    invoke-virtual {p0, v1, p1, v0}, Lcom/samsung/android/server/battery/SpenBatteryManager;->requestCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;)V

    .line 209
    iget-object p0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mMessengerMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b2
    :goto_b2
    return-void
.end method

.method public final handleSpenInfo(Landroid/os/Bundle;)V
    .registers 12

    const-string/jumbo v0, "resultValue"

    .line 425
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_143

    const-string v0, "batteryLevel"

    .line 428
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "address"

    .line 429
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "connectionState"

    .line 430
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "modelName"

    .line 431
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "uid"

    .line 432
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "chargingState"

    .line 433
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "deviceType"

    .line 434
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 436
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleSpenInfo uid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SpenBatteryManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleSpenInfo resultBatteryLevel : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleSpenInfo sPenAddress : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoUtil;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleSpenInfo connectionState : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleSpenInfo modelName : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleSpenInfo chargingState : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleSpenInfo deviceType : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/server/battery/SpenBatteryManager;->getBatteryStatus(Ljava/lang/String;I)I

    move-result v5

    .line 446
    iget-object v6, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mMessengerMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Messenger;

    const-string v7, "connected"

    .line 447
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11d

    if-ltz v0, :cond_143

    .line 449
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/SpenBatteryManager;->createBatteryInfo(Landroid/os/Bundle;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    move-result-object p1

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBatteryStatus : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-virtual {p1, v5}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryStatus(I)V

    .line 452
    iget-object v0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mDeviceBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->addBatteryInfo(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V

    .line 453
    iget-object p1, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mUIdToAddress:Ljava/util/HashMap;

    invoke-virtual {p1, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "setBleSpenBatteryLevelChangeCallback"

    .line 454
    invoke-virtual {p0, p1, v4, v6}, Lcom/samsung/android/server/battery/SpenBatteryManager;->requestCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;)V

    .line 455
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Add BatteryInfo modelName : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_143

    :cond_11d
    if-gez v0, :cond_143

    .line 459
    iget-object p1, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mDeviceBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    invoke-interface {p1, v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->removeBatteryInfo(Ljava/lang/String;)V

    .line 460
    iget-object p1, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mUIdToAddress:Ljava/util/HashMap;

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "removeBleSpenBatteryLevelChangeCallback"

    .line 461
    invoke-virtual {p0, p1, v4, v6}, Lcom/samsung/android/server/battery/SpenBatteryManager;->requestCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;)V

    .line 462
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Remove BatteryInfo modelName : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_143
    :goto_143
    return-void
.end method

.method public onUserUnlocked()V
    .registers 7

    .line 301
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/SpenBatteryManager;->bindSpenService()V

    .line 303
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    .line 304
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 305
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_UNLOCKED"

    .line 306
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/server/battery/SpenBatteryManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/battery/SpenBatteryManager$2;-><init>(Lcom/samsung/android/server/battery/SpenBatteryManager;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 342
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 343
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 345
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.service.aircommand"

    const/4 v2, 0x0

    .line 346
    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 348
    iget-object v1, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/server/battery/SpenBatteryManager$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/battery/SpenBatteryManager$3;-><init>(Lcom/samsung/android/server/battery/SpenBatteryManager;)V

    iget-object p0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mServiceConnectHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final removeSpenBatteryInfos()V
    .registers 5

    .line 146
    iget-object v0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mUIdToAddress:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 148
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 149
    iget-object v2, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mUIdToAddress:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 150
    iget-object v3, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mDeviceBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    invoke-interface {v3, v2}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->removeBatteryInfo(Ljava/lang/String;)V

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove BatteryInfo uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SpenBatteryManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 154
    :cond_3a
    iget-object v0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mUIdToAddress:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 155
    iget-object p0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mMessengerMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public requestCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;)V
    .registers 14

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " request Command : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBatteryManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "cmd"

    .line 490
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "uid"

    .line 491
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    sparse-switch p2, :sswitch_data_ee

    goto :goto_8d

    :sswitch_3c
    const-string/jumbo p2, "setBleSpenBatteryLevelChangeCallback"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_46

    goto :goto_8d

    :cond_46
    move v9, v2

    goto :goto_8d

    :sswitch_48
    const-string/jumbo p2, "removeBleSpenStateChangeCallback"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_52

    goto :goto_8d

    :cond_52
    move v9, v3

    goto :goto_8d

    :sswitch_54
    const-string/jumbo p2, "setBleSpenStateChangeCallback"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5e

    goto :goto_8d

    :cond_5e
    move v9, v4

    goto :goto_8d

    :sswitch_60
    const-string/jumbo p2, "removeBleSpenBatteryLevelChangeCallback"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6a

    goto :goto_8d

    :cond_6a
    move v9, v5

    goto :goto_8d

    :sswitch_6c
    const-string p2, "getBleSpenDeviceInfo"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_75

    goto :goto_8d

    :cond_75
    move v9, v6

    goto :goto_8d

    :sswitch_77
    const-string p2, "getBleSpenDeviceUidList"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_80

    goto :goto_8d

    :cond_80
    move v9, v7

    goto :goto_8d

    :sswitch_82
    const-string/jumbo p2, "setPairedSpenNotifyCallback"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8c

    goto :goto_8d

    :cond_8c
    move v9, v8

    :goto_8d
    const-string/jumbo p2, "requestId"

    packed-switch v9, :pswitch_data_10c

    .line 517
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "command : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c3

    .line 499
    :pswitch_a8
    invoke-virtual {v0, p2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_c3

    .line 508
    :pswitch_ac
    invoke-virtual {v0, p2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_c3

    .line 502
    :pswitch_b0
    invoke-virtual {v0, p2, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_c3

    .line 511
    :pswitch_b4
    invoke-virtual {v0, p2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_c3

    .line 505
    :pswitch_b8
    invoke-virtual {v0, p2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_c3

    .line 496
    :pswitch_bc
    invoke-virtual {v0, p2, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_c3

    .line 514
    :pswitch_c0
    invoke-virtual {v0, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 520
    :goto_c3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 521
    iput-object p3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 522
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 525
    :try_start_cc
    new-instance p2, Landroid/os/Messenger;

    iget-object p0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mService:Landroid/os/IBinder;

    invoke-direct {p2, p0}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 526
    invoke-virtual {p2, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_d6
    .catch Landroid/os/RemoteException; {:try_start_cc .. :try_end_d6} :catch_d7

    goto :goto_ed

    :catch_d7
    move-exception p0

    .line 528
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "requestCommand : e="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_ed
    return-void

    :sswitch_data_ee
    .sparse-switch
        -0x71fb4091 -> :sswitch_82
        -0x2a0fe7f3 -> :sswitch_77
        0xe49060f -> :sswitch_6c
        0x2bcdfde9 -> :sswitch_60
        0x40f22b87 -> :sswitch_54
        0x6caca129 -> :sswitch_48
        0x76c7adcb -> :sswitch_3c
    .end sparse-switch

    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bc
        :pswitch_b8
        :pswitch_b4
        :pswitch_b0
        :pswitch_ac
        :pswitch_a8
    .end packed-switch
.end method

.method public final retryReconnection()V
    .registers 5

    .line 160
    iget-object v0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mServiceConnectHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/server/battery/SpenBatteryManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/battery/SpenBatteryManager$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/battery/SpenBatteryManager;)V

    iget v2, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mServiceConnectionRetry:I

    .line 171
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/battery/SpenBatteryManager;->getRetryDelayMs(I)I

    move-result p0

    int-to-long v2, p0

    .line 160
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final setCallBacksForAllSPen(Landroid/os/Bundle;)V
    .registers 6

    const-string/jumbo v0, "resultValue"

    .line 215
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_50

    .line 218
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SpenBatteryManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-boolean v1, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mIsSpenServiceBound:Z

    if-eqz v1, :cond_d

    .line 222
    new-instance v1, Landroid/os/Messenger;

    new-instance v2, Lcom/samsung/android/server/battery/SpenBatteryManager$SpenHandler;

    iget-object v3, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/server/battery/SpenBatteryManager$SpenHandler;-><init>(Lcom/samsung/android/server/battery/SpenBatteryManager;Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 223
    iget-object v2, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mMessengerMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "setBleSpenStateChangeCallback"

    .line 224
    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/server/battery/SpenBatteryManager;->requestCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;)V

    goto :goto_d

    :cond_50
    return-void
.end method

.method public systemServicesReady()V
    .registers 3

    .line 291
    const-class v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    .line 292
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    iput-object v0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mDeviceBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    .line 294
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager;->mServiceConnectHandler:Landroid/os/Handler;

    .line 295
    new-instance p0, Lcom/samsung/android/server/battery/SpenBatteryManager$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/samsung/android/server/battery/SpenBatteryManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
