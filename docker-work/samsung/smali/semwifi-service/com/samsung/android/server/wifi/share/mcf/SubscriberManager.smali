.class Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;
.super Ljava/lang/Object;
.source "SubscriberManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;
    }
.end annotation


# static fields
.field private static final DEVICE_NAME_ME:Ljava/lang/String; = "-ME---"

.field private static final MAX_KEEP_GATT_CONNECTION_SIZE:I = 0x3

.field private static final MIN_ADVERTISE_DELAY_TIME_MS:I = 0xbb8

.field private static final MODE_PASSWORD:I = 0x1

.field private static final MODE_QOS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WifiProfileShare.McfSub"

.field private static final mFlagShowDataLog:Z = true


# instance fields
.field private mCallback:Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;

.field private mCountPostAdvertise:I

.field private final mHistoryLock:Ljava/lang/Object;

.field private mIsNetworkEnabled:Z

.field private mIsPasswordAdvertiseTriggered:Z

.field private mIsPasswordLowLatency:Z

.field private mIsPostAdvertiseStarted:Z

.field private mIsQosLowLatency:Z

.field private mIsScanTriggered:Z

.field private final mKeepGattDeviceList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mMcfSubscriber:Lcom/samsung/android/mcf/McfSubscriber;

.field private mMode:I

.field private final mPassMcfAdvertiseCallback:Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

.field private final mPasswordConfirmHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPasswordData:Lcom/samsung/android/server/wifi/share/mcf/McfData;

.field private final mPasswordDiscoverCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

.field private final mQoSMcfAdvertiseCallback:Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

.field private final mQoSMcfDeviceDiscoverCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

.field private mReceivedPasswordMcfDevice:Lcom/samsung/android/mcf/McfDevice;

.field private final mSubscribeCallback:Lcom/samsung/android/mcf/SubscribeCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mCallback:Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsNetworkEnabled(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsNetworkEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPasswordAdvertiseTriggered(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsPasswordAdvertiseTriggered:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPostAdvertiseStarted(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsPostAdvertiseStarted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmKeepGattDeviceList(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mKeepGattDeviceList:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMcfSubscriber(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Lcom/samsung/android/mcf/McfSubscriber;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMcfSubscriber:Lcom/samsung/android/mcf/McfSubscriber;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPasswordData(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Lcom/samsung/android/server/wifi/share/mcf/McfData;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mPasswordData:Lcom/samsung/android/server/wifi/share/mcf/McfData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsNetworkEnabled(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsNetworkEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReceivedPasswordMcfDevice(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;Lcom/samsung/android/mcf/McfDevice;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mReceivedPasswordMcfDevice:Lcom/samsung/android/mcf/McfDevice;

    return-void
.end method

.method static bridge synthetic -$$Nest$maddConfirmHistory(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->addConfirmHistory(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcallbackToClientForPassword(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;Lcom/samsung/android/mcf/McfDevice;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->callbackToClientForPassword(Lcom/samsung/android/mcf/McfDevice;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcallbackToClientForQos(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;Lcom/samsung/android/mcf/McfDevice;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->callbackToClientForQos(Lcom/samsung/android/mcf/McfDevice;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misAlreadyConfirmed(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;Ljava/lang/String;Lorg/json/JSONObject;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isAlreadyConfirmed(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mremoveKeepDevice(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;Lcom/samsung/android/mcf/McfDevice;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->removeKeepDevice(Lcom/samsung/android/mcf/McfDevice;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartAdvertise(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;Lcom/samsung/android/server/wifi/share/mcf/McfData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->startAdvertise(Lcom/samsung/android/server/wifi/share/mcf/McfData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopAdvertise(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->stopAdvertise()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopScan(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->stopScan()V

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMode:I

    .line 66
    iput v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mCountPostAdvertise:I

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mKeepGattDeviceList:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mPasswordConfirmHistory:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mLock:Ljava/lang/Object;

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mHistoryLock:Ljava/lang/Object;

    .line 374
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$2;-><init>(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mSubscribeCallback:Lcom/samsung/android/mcf/SubscribeCallback;

    .line 391
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$3;-><init>(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mQoSMcfAdvertiseCallback:Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    .line 401
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$4;-><init>(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mPassMcfAdvertiseCallback:Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    .line 441
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$5;-><init>(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mQoSMcfDeviceDiscoverCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    .line 517
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;-><init>(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mPasswordDiscoverCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    const-string p0, "WifiProfileShare.McfSub"

    const-string v0, "-ME--- SemSubscriberManager !"

    .line 76
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private addConfirmHistory(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 7

    const-string v0, "startAt"

    .line 484
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    :try_start_8
    const-string v0, "startAt"

    .line 486
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_47

    .line 488
    iget-object p2, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mHistoryLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_17} :catch_40

    .line 489
    :try_start_17
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mPasswordConfirmHistory:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mPasswordConfirmHistory:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x14

    if-le p1, v0, :cond_3b

    .line 491
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mPasswordConfirmHistory:Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 493
    :cond_3b
    monitor-exit p2

    goto :goto_47

    :catchall_3d
    move-exception p0

    monitor-exit p2
    :try_end_3f
    .catchall {:try_start_17 .. :try_end_3f} :catchall_3d

    :try_start_3f
    throw p0
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_3f .. :try_end_40} :catch_40

    :catch_40
    const-string p0, "WifiProfileShare.McfSub"

    const-string p1, "-ME--- can not get json:startAt"

    .line 496
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    :goto_47
    return-void
.end method

.method private callbackToClientForPassword(Lcom/samsung/android/mcf/McfDevice;)V
    .registers 5

    .line 425
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " callbackToClient, password data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiProfileShare.McfSub"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getContentsJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfDataFactory;->createPasswordData(Lorg/json/JSONObject;)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    move-result-object p1

    if-eqz p1, :cond_2c

    .line 429
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mCallback:Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;

    if-eqz p0, :cond_2c

    .line 430
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;->onPasswordDelivered(Lcom/samsung/android/server/wifi/share/mcf/McfData;)V

    goto :goto_40

    .line 432
    :cond_2c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " delivered password data is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_40
    return-void
.end method

.method private callbackToClientForQos(Lcom/samsung/android/mcf/McfDevice;)V
    .registers 5

    .line 413
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " callbackToClient, qos data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiProfileShare.McfSub"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getContentsByte()[B

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfDataFactory;->createQoSData([B)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    move-result-object p1

    if-eqz p1, :cond_2c

    .line 417
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mCallback:Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;

    if-eqz p0, :cond_2c

    .line 418
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;->onQoSDataDelivered(Lcom/samsung/android/server/wifi/share/mcf/McfData;)V

    goto :goto_40

    .line 420
    :cond_2c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " delivered qos data is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_40
    return-void
.end method

.method private cancelAllPasswordSessions()V
    .registers 3

    .line 135
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mKeepGattDeviceList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, ""

    .line 137
    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/mcf/McfDataFactory;->createPasswordCancelData(Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->startAdvertise(Lcom/samsung/android/server/wifi/share/mcf/McfData;)V

    goto :goto_18

    .line 139
    :cond_15
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->closePasswordSessionToKeepDevices()V

    .line 141
    :goto_18
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->waitForBroadcastingCancelData()V

    .line 142
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mKeepGattDeviceList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 143
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->stopAdvertise()V

    goto :goto_2a

    .line 145
    :cond_27
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->clearKeepDeviceList()V

    .line 147
    :goto_2a
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method private clearKeepDeviceList()V
    .registers 8

    const-string v0, "WifiProfileShare.McfSub"

    const-string v1, "-ME--- clearKeepDeviceList"

    .line 260
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_a
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mKeepGattDeviceList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;

    .line 263
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->getMcfDevice()Lcom/samsung/android/mcf/McfDevice;

    move-result-object v3

    const-string v4, "WifiProfileShare.McfSub"

    .line 264
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " clear keep"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v4, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMcfSubscriber:Lcom/samsung/android/mcf/McfSubscriber;

    if-eqz v4, :cond_14

    const/4 v5, 0x0

    .line 267
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->getKeepDeviceCallback()Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;

    move-result-object v6

    .line 266
    invoke-interface {v4, v3, v5, v6}, Lcom/samsung/android/mcf/McfSubscriber;->keepDiscoveredDevice(Lcom/samsung/android/mcf/McfDevice;ZLcom/samsung/android/mcf/discovery/KeepDeviceCallback;)Z

    .line 268
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->getAdvertiseStarted()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 269
    iget-object v3, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMcfSubscriber:Lcom/samsung/android/mcf/McfSubscriber;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->getMcfAdvertiseCallback()Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/samsung/android/mcf/McfSubscriber;->stopAdvertise(Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I

    goto :goto_14

    .line 273
    :cond_5a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mKeepGattDeviceList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 274
    monitor-exit v0

    return-void

    :catchall_61
    move-exception p0

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_a .. :try_end_63} :catchall_61

    throw p0
.end method

.method private closePasswordSessionToKeepDevices()V
    .registers 6

    .line 248
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mKeepGattDeviceList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;

    .line 250
    iget-object v3, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mReceivedPasswordMcfDevice:Lcom/samsung/android/mcf/McfDevice;

    if-eqz v3, :cond_50

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->getMcfDevice()Lcom/samsung/android/mcf/McfDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/mcf/McfDevice;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mReceivedPasswordMcfDevice:Lcom/samsung/android/mcf/McfDevice;

    invoke-virtual {v4}, Lcom/samsung/android/mcf/McfDevice;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    const-string v3, "WifiProfileShare.McfSub"

    .line 251
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->getMcfDevice()Lcom/samsung/android/mcf/McfDevice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/mcf/McfDevice;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pass me password data ! skip close start advertise"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 254
    :cond_50
    iget-object v3, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mPasswordData:Lcom/samsung/android/server/wifi/share/mcf/McfData;

    sget-object v4, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->CLOSE:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->startAdvertiseTo(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;Lcom/samsung/android/server/wifi/share/mcf/McfData;Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;)V

    goto :goto_d

    .line 256
    :cond_58
    monitor-exit v0

    return-void

    :catchall_5a
    move-exception p0

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5a

    throw p0
.end method

.method private getAdvertiseCallback()Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;
    .registers 2

    .line 387
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isQoSMode()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mQoSMcfAdvertiseCallback:Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    return-object p0

    .line 388
    :cond_9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mPassMcfAdvertiseCallback:Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    return-object p0
.end method

.method private getDeviceDiscoverCallback()Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;
    .registers 2

    .line 437
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isQoSMode()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mQoSMcfDeviceDiscoverCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    return-object p0

    .line 438
    :cond_9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mPasswordDiscoverCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    return-object p0
.end method

.method private getModeString()Ljava/lang/String;
    .registers 1

    .line 187
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isQoSMode()Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "QoS Mode"

    return-object p0

    :cond_9
    const-string p0, "Password Mode"

    return-object p0
.end method

.method private isAlreadyConfirmed(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .registers 6

    const-string v0, "startAt"

    .line 502
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    :try_start_8
    const-string v0, "startAt"

    .line 504
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 505
    iget-object p2, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mHistoryLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_11} :catch_30

    .line 506
    :try_start_11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mPasswordConfirmHistory:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    const/4 p0, 0x1

    .line 507
    monitor-exit p2

    return p0

    .line 509
    :cond_2b
    monitor-exit p2

    goto :goto_46

    :catchall_2d
    move-exception p0

    monitor-exit p2
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw p0
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_30} :catch_30

    :catch_30
    const-string p0, "WifiProfileShare.McfSub"

    .line 511
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " json:startAt parsing error"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    :goto_46
    const/4 p0, 0x0

    return p0
.end method

.method private isNetworkEnable()Z
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMcfSubscriber:Lcom/samsung/android/mcf/McfSubscriber;

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    .line 164
    invoke-interface {v0, v1}, Lcom/samsung/android/mcf/McfSubscriber;->isNetworkEnabled(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsNetworkEnabled:Z

    .line 166
    :cond_b
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsNetworkEnabled:Z

    return p0
.end method

.method private isOpened()Z
    .registers 1

    .line 159
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMcfSubscriber:Lcom/samsung/android/mcf/McfSubscriber;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private isPasswordMode()Z
    .registers 2

    .line 179
    iget p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private isQoSMode()Z
    .registers 1

    .line 183
    iget p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMode:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private removeKeepDevice(Lcom/samsung/android/mcf/McfDevice;)V
    .registers 8

    .line 464
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isOpened()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "WifiProfileShare.McfSub"

    const-string p1, "-ME--- removeKeepDevice failed, subscriber is not opened"

    .line 465
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 468
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 469
    :try_start_11
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mKeepGattDeviceList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 470
    :cond_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 471
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;

    .line 472
    invoke-static {v2}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->-$$Nest$fgetmcfDevice(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;)Lcom/samsung/android/mcf/McfDevice;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/mcf/McfDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string v3, "WifiProfileShare.McfSub"

    .line 473
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " removed from keep list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 475
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMcfSubscriber:Lcom/samsung/android/mcf/McfSubscriber;

    const/4 v1, 0x0

    .line 476
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->getKeepDeviceCallback()Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;

    move-result-object v2

    .line 475
    invoke-interface {p0, p1, v1, v2}, Lcom/samsung/android/mcf/McfSubscriber;->keepDiscoveredDevice(Lcom/samsung/android/mcf/McfDevice;ZLcom/samsung/android/mcf/discovery/KeepDeviceCallback;)Z

    .line 480
    :cond_58
    monitor-exit v0

    return-void

    :catchall_5a
    move-exception p0

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_11 .. :try_end_5c} :catchall_5a

    throw p0
.end method

.method private setMode(ILcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;)V
    .registers 3

    .line 174
    iput p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMode:I

    .line 175
    iput-object p2, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mCallback:Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;

    return-void
.end method

.method private startAdvertise(Lcom/samsung/android/server/wifi/share/mcf/McfData;)V
    .registers 7

    .line 325
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isOpened()Z

    move-result v0

    const-string v1, "WifiProfileShare.McfSub"

    if-nez v0, :cond_e

    const-string p0, "-ME--- startAdvertise failed, subscriber is not opened"

    .line 326
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 329
    :cond_e
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsPasswordAdvertiseTriggered:Z

    if-eqz v0, :cond_15

    .line 330
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->stopAdvertise()V

    .line 332
    :cond_15
    new-instance v0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    invoke-direct {v0}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;-><init>()V

    const/4 v2, 0x4

    .line 333
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isPasswordMode()Z

    move-result v3

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isQoSMode()Z

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->setAdvertiseData(IZZ)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    move-result-object v0

    if-eqz p1, :cond_30

    .line 335
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getByteArrayForSharing()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->setByteContent([B)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    .line 337
    :cond_30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-ME--- startAdvertise mode:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->getModeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " all"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMcfSubscriber:Lcom/samsung/android/mcf/McfSubscriber;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->build()Lcom/samsung/android/mcf/discovery/McfAdvertiseData;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->getAdvertiseCallback()Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/mcf/McfSubscriber;->startAdvertise(Lcom/samsung/android/mcf/discovery/McfAdvertiseData;Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I

    const/4 p1, 0x1

    .line 339
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsPasswordAdvertiseTriggered:Z

    return-void
.end method

.method private startAdvertiseTo(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;Lcom/samsung/android/server/wifi/share/mcf/McfData;Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;)V
    .registers 11

    .line 343
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isOpened()Z

    move-result v0

    const-string v1, "WifiProfileShare.McfSub"

    if-nez v0, :cond_e

    const-string p0, "-ME--- startAdvertiseTo failed, subscriber is not opened"

    .line 344
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 347
    :cond_e
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->getAdvertiseStarted()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 348
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMcfSubscriber:Lcom/samsung/android/mcf/McfSubscriber;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->getMcfAdvertiseCallback()Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/samsung/android/mcf/McfSubscriber;->stopAdvertise(Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I

    .line 350
    :cond_1d
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->getMcfDevice()Lcom/samsung/android/mcf/McfDevice;

    move-result-object v0

    .line 351
    new-instance v2, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$1;-><init>(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)V

    .line 352
    invoke-virtual {p1, v2}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->setAdvertiseCallback(Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)V

    .line 354
    new-instance v3, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    invoke-direct {v3}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;-><init>()V

    const/4 v4, 0x4

    .line 355
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isPasswordMode()Z

    move-result v5

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isQoSMode()Z

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->setAdvertiseData(IZZ)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    move-result-object v3

    .line 356
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getByteArrayForSharing()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->setByteContent([B)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    move-result-object v3

    .line 357
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getPasswordJsonData(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->setJsonContent(Lorg/json/JSONObject;)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    move-result-object v3

    .line 358
    invoke-virtual {v3, v0}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->setTargetDevice(Lcom/samsung/android/mcf/McfDevice;)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    move-result-object v3

    .line 359
    invoke-virtual {v3}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->build()Lcom/samsung/android/mcf/discovery/McfAdvertiseData;

    move-result-object v3

    .line 360
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " sending message state:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " data:"

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMcfSubscriber:Lcom/samsung/android/mcf/McfSubscriber;

    invoke-interface {p0, v3, v2}, Lcom/samsung/android/mcf/McfSubscriber;->startAdvertise(Lcom/samsung/android/mcf/discovery/McfAdvertiseData;Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I

    const/4 p0, 0x1

    .line 363
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->setAdvertiseStarted(Z)V

    return-void
.end method

.method private startScan()V
    .registers 6

    .line 291
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isOpened()Z

    move-result v0

    const-string v1, "WifiProfileShare.McfSub"

    if-nez v0, :cond_e

    const-string p0, "-ME--- startScan failed, subscriber is not opened"

    .line 292
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 295
    :cond_e
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsScanTriggered:Z

    if-eqz v0, :cond_1a

    const-string v0, "-ME--- startScan already triggered."

    .line 296
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->stopScan()V

    .line 299
    :cond_1a
    new-instance v0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;

    invoke-direct {v0}, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;-><init>()V

    const/4 v2, 0x4

    .line 300
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isPasswordMode()Z

    move-result v3

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isQoSMode()Z

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->setScanData(IZZ)Lcom/samsung/android/mcf/discovery/McfScanData$Builder;

    move-result-object v0

    .line 301
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isQoSMode()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_37

    .line 302
    invoke-virtual {v0, v3}, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->setContentsFilter(I)Lcom/samsung/android/mcf/discovery/McfScanData$Builder;

    goto :goto_3b

    :cond_37
    const/4 v2, 0x0

    .line 304
    invoke-virtual {v0, v2}, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->setTimeout(I)Lcom/samsung/android/mcf/discovery/McfScanData$Builder;

    .line 306
    :goto_3b
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isQoSMode()Z

    move-result v2

    if-eqz v2, :cond_45

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsQosLowLatency:Z

    if-nez v2, :cond_4f

    :cond_45
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isPasswordMode()Z

    move-result v2

    if-eqz v2, :cond_53

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsPasswordLowLatency:Z

    if-eqz v2, :cond_53

    :cond_4f
    const/4 v2, 0x3

    .line 307
    invoke-virtual {v0, v2}, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->setScanMode(I)Lcom/samsung/android/mcf/discovery/McfScanData$Builder;

    .line 309
    :cond_53
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsScanTriggered:Z

    .line 310
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMcfSubscriber:Lcom/samsung/android/mcf/McfSubscriber;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->build()Lcom/samsung/android/mcf/discovery/McfScanData;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->getDeviceDiscoverCallback()Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/mcf/McfSubscriber;->startScan(Lcom/samsung/android/mcf/discovery/McfScanData;Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-ME--- start Scan mode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->getModeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    iget v2, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMode:I

    if-nez v2, :cond_8b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " extend, lowLatency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsQosLowLatency:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_9e

    .line 313
    :cond_8b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " general, lowLatency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsPasswordLowLatency:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_9e
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 311
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private stopAdvertise()V
    .registers 3

    const/4 v0, 0x0

    .line 367
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsPasswordAdvertiseTriggered:Z

    .line 368
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-ME--- stopAdvertise for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->getModeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiProfileShare.McfSub"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMcfSubscriber:Lcom/samsung/android/mcf/McfSubscriber;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->getAdvertiseCallback()Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/samsung/android/mcf/McfSubscriber;->stopAdvertise(Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I

    :cond_2c
    return-void
.end method

.method private stopScan()V
    .registers 3

    const/4 v0, 0x0

    .line 317
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsScanTriggered:Z

    .line 318
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMcfSubscriber:Lcom/samsung/android/mcf/McfSubscriber;

    if-eqz v0, :cond_17

    const-string v0, "WifiProfileShare.McfSub"

    const-string v1, "-ME--- stopScan"

    .line 319
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMcfSubscriber:Lcom/samsung/android/mcf/McfSubscriber;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->getDeviceDiscoverCallback()Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/samsung/android/mcf/McfSubscriber;->stopScan(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I

    :cond_17
    return-void
.end method

.method private waitForBroadcastingCancelData()V
    .registers 3

    const-wide/16 v0, 0xbb8

    .line 152
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_d

    :catch_6
    const-string p0, "WifiProfileShare.McfSub"

    const-string v0, "-ME--- interrupt"

    .line 154
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    return-void
.end method


# virtual methods
.method closeSubscriber(Lcom/samsung/android/mcf/McfAdapter;)V
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMcfSubscriber:Lcom/samsung/android/mcf/McfSubscriber;

    if-nez v0, :cond_c

    const-string p0, "WifiProfileShare.McfSub"

    const-string p1, "-ME--- closeSubscriber, already closed"

    .line 98
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 101
    :cond_c
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsNetworkEnabled:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsNetworkEnabled:Z

    :cond_13
    if-eqz p1, :cond_1e

    const/4 v0, 0x4

    .line 106
    :try_start_16
    invoke-virtual {p1, v0}, Lcom/samsung/android/mcf/McfAdapter;->closeSubscriber(I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception p1

    .line 108
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1e
    :goto_1e
    const/4 p1, 0x0

    .line 111
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMcfSubscriber:Lcom/samsung/android/mcf/McfSubscriber;

    return-void
.end method

.method isBleActivated()Z
    .registers 2

    .line 170
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isNetworkEnable()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method isLowLatencyForPasswordScan()Z
    .registers 1

    .line 283
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsPasswordLowLatency:Z

    return p0
.end method

.method isLowLatencyForQoSScan()Z
    .registers 1

    .line 287
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsQosLowLatency:Z

    return p0
.end method

.method openSubscriber(Lcom/samsung/android/mcf/McfAdapter;)V
    .registers 5

    const-string v0, "WifiProfileShare.McfSub"

    if-nez p1, :cond_a

    const-string p0, "-ME--- openSubscriber, adapter is null"

    .line 81
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    const/4 v1, 0x4

    .line 85
    :try_start_b
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mSubscribeCallback:Lcom/samsung/android/mcf/SubscribeCallback;

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/mcf/McfAdapter;->getSubscriber(ILcom/samsung/android/mcf/SubscribeCallback;)Lcom/samsung/android/mcf/McfSubscriber;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMcfSubscriber:Lcom/samsung/android/mcf/McfSubscriber;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception p1

    .line 88
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 90
    :goto_18
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMcfSubscriber:Lcom/samsung/android/mcf/McfSubscriber;

    if-nez p0, :cond_21

    const-string p0, "-ME--- openSubscriber failed"

    .line 91
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    const-string p0, "-ME--- openSubscriber"

    .line 93
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method postStartScanForPassword(Z)V
    .registers 6

    const-string v0, "WifiProfileShare.McfSub"

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-ME--- postStartScanForPassword init:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " cnt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mCountPostAdvertise:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 208
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsPostAdvertiseStarted:Z

    if-eqz p1, :cond_34

    .line 210
    iget p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mCountPostAdvertise:I

    if-lez p1, :cond_34

    .line 211
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->clearKeepDeviceList()V

    .line 212
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mPasswordData:Lcom/samsung/android/server/wifi/share/mcf/McfData;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mCallback:Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->preStartScanForPassword(Lcom/samsung/android/server/wifi/share/mcf/McfData;Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;)V

    return-void

    .line 216
    :cond_34
    iget p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mCountPostAdvertise:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mCountPostAdvertise:I

    .line 218
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 219
    :try_start_3c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mKeepGattDeviceList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7e

    const-string v0, "WifiProfileShare.McfSub"

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-ME--- postStartScanForPassword keep gatt device:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mKeepGattDeviceList:Ljava/util/Map;

    .line 221
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mKeepGattDeviceList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_85

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;

    .line 223
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mPasswordData:Lcom/samsung/android/server/wifi/share/mcf/McfData;

    sget-object v3, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->REQUEST:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->startAdvertiseTo(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;Lcom/samsung/android/server/wifi/share/mcf/McfData;Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;)V

    goto :goto_6a

    :cond_7e
    const-string v0, "WifiProfileShare.McfSub"

    const-string v1, "-ME--- There are no keep device in list, wait to response"

    .line 226
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_85
    monitor-exit p1
    :try_end_86
    .catchall {:try_start_3c .. :try_end_86} :catchall_8a

    const/4 p1, 0x0

    .line 229
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mReceivedPasswordMcfDevice:Lcom/samsung/android/mcf/McfDevice;

    return-void

    :catchall_8a
    move-exception p0

    .line 228
    :try_start_8b
    monitor-exit p1
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw p0
.end method

.method preStartScanForPassword(Lcom/samsung/android/server/wifi/share/mcf/McfData;Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;)V
    .registers 4

    .line 198
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mPasswordData:Lcom/samsung/android/server/wifi/share/mcf/McfData;

    const/4 v0, 0x1

    .line 199
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->setMode(ILcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;)V

    .line 200
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->startScan()V

    .line 201
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->startAdvertise(Lcom/samsung/android/server/wifi/share/mcf/McfData;)V

    .line 202
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "-ME--- preStartScanForPassword data:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiProfileShare.McfSub"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method setScanMode(ZZ)V
    .registers 3

    .line 278
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsQosLowLatency:Z

    .line 279
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsPasswordLowLatency:Z

    return-void
.end method

.method startScanForQoS(Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;)V
    .registers 3

    const/4 v0, 0x0

    .line 192
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->setMode(ILcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;)V

    .line 193
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->startScan()V

    const/4 p1, 0x0

    .line 194
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->startAdvertise(Lcom/samsung/android/server/wifi/share/mcf/McfData;)V

    return-void
.end method

.method stopAll()V
    .registers 4

    const-string v0, "WifiProfileShare.McfSub"

    const-string v1, "-ME--- closeSubscriber start"

    .line 115
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsPasswordAdvertiseTriggered:Z

    if-eqz v1, :cond_e

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->stopAdvertise()V

    .line 119
    :cond_e
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsScanTriggered:Z

    if-eqz v1, :cond_15

    .line 120
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->stopScan()V

    .line 122
    :cond_15
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsPostAdvertiseStarted:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 123
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsPostAdvertiseStarted:Z

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->stopPostAdvertise()V

    .line 126
    :cond_1f
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->isPasswordMode()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 127
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->cancelAllPasswordSessions()V

    .line 129
    :cond_28
    iput v2, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mCountPostAdvertise:I

    const/4 v1, 0x0

    .line 130
    iput-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mReceivedPasswordMcfDevice:Lcom/samsung/android/mcf/McfDevice;

    const-string p0, "-ME--- closeSubscriber done"

    .line 131
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method stopPostAdvertise()V
    .registers 8

    const-string v0, "WifiProfileShare.McfSub"

    const-string v1, "-ME--- stopPostAdvertise"

    .line 233
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 234
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mIsPostAdvertiseStarted:Z

    .line 235
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 236
    :try_start_d
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mKeepGattDeviceList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;

    .line 237
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->getAdvertiseStarted()Z

    move-result v4

    if-eqz v4, :cond_17

    const-string v4, "WifiProfileShare.McfSub"

    .line 238
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->getMcfDevice()Lcom/samsung/android/mcf/McfDevice;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " stop advertise"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v4, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->mMcfSubscriber:Lcom/samsung/android/mcf/McfSubscriber;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->getMcfAdvertiseCallback()Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/samsung/android/mcf/McfSubscriber;->stopAdvertise(Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I

    .line 241
    invoke-virtual {v3, v0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;->setAdvertiseStarted(Z)V

    goto :goto_17

    .line 244
    :cond_54
    monitor-exit v1

    return-void

    :catchall_56
    move-exception p0

    monitor-exit v1
    :try_end_58
    .catchall {:try_start_d .. :try_end_58} :catchall_56

    throw p0
.end method
