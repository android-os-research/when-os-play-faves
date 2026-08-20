.class public final Lcom/android/server/sip/SipService;
.super Landroid/net/sip/ISipService$Stub;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sip/SipService$MyExecutor;,
        Lcom/android/server/sip/SipService$ConnectivityReceiver;,
        Lcom/android/server/sip/SipService$SipAutoReg;,
        Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;,
        Lcom/android/server/sip/SipService$SipSessionGroupExt;
    }
.end annotation


# static fields
.field static final blacklist DBG:Z = true

.field private static final blacklist DEFAULT_KEEPALIVE_INTERVAL:I = 0xa

.field private static final blacklist DEFAULT_MAX_KEEPALIVE_INTERVAL:I = 0x78

.field private static final blacklist EXPIRY_TIME:I = 0xe10

.field private static final blacklist MIN_EXPIRY_TIME:I = 0x3c

.field private static final blacklist SHORT_EXPIRY_TIME:I = 0xa

.field static final blacklist TAG:Ljava/lang/String; = "SipService"


# instance fields
.field private final blacklist mAppOps:Landroid/app/AppOpsManager;

.field private blacklist mConnectivityReceiver:Lcom/android/server/sip/SipService$ConnectivityReceiver;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mExecutor:Lcom/android/server/sip/SipService$MyExecutor;

.field private blacklist mKeepAliveInterval:I

.field private blacklist mLastGoodKeepAliveInterval:I

.field private blacklist mLocalIp:Ljava/lang/String;

.field private blacklist mMyWakeLock:Lcom/android/server/sip/SipWakeLock;

.field private blacklist mNetworkType:I

.field private blacklist mPendingSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/sip/ISipSession;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSipGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/sip/SipService$SipSessionGroupExt;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSipKeepAliveProcessCallback:Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;

.field private blacklist mSipOnWifiOnly:Z

.field private blacklist mTimer:Lcom/android/server/sip/SipWakeupTimer;

.field private blacklist mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/server/sip/SipService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipService$MyExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sip/SipService;->mExecutor:Lcom/android/server/sip/SipService$MyExecutor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeepAliveInterval(Lcom/android/server/sip/SipService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/sip/SipService;->mKeepAliveInterval:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocalIp(Lcom/android/server/sip/SipService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sip/SipService;->mLocalIp:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMyWakeLock(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkType(Lcom/android/server/sip/SipService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimer(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipWakeupTimer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmKeepAliveInterval(Lcom/android/server/sip/SipService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/sip/SipService;->mKeepAliveInterval:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastGoodKeepAliveInterval(Lcom/android/server/sip/SipService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/sip/SipService;->mLastGoodKeepAliveInterval:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddPendingSession(Lcom/android/server/sip/SipService;Landroid/net/sip/ISipSession;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->addPendingSession(Landroid/net/sip/ISipSession;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcallingSelf(Lcom/android/server/sip/SipService;Lcom/android/server/sip/SipService$SipSessionGroupExt;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipService;->callingSelf(Lcom/android/server/sip/SipService$SipSessionGroupExt;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetKeepAliveInterval(Lcom/android/server/sip/SipService;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/server/sip/SipService;->getKeepAliveInterval()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misBehindNAT(Lcom/android/server/sip/SipService;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->isBehindNAT(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/server/sip/SipService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/server/sip/SipService;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monConnectivityChanged(Lcom/android/server/sip/SipService;Landroid/net/NetworkInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->onConnectivityChanged(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monKeepAliveIntervalChanged(Lcom/android/server/sip/SipService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/sip/SipService;->onKeepAliveIntervalChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrestartPortMappingLifetimeMeasurement(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipService;->restartPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartPortMappingLifetimeMeasurement(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->startPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateLooper()Landroid/os/Looper;
    .registers 1

    invoke-static {}, Lcom/android/server/sip/SipService;->createLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 113
    invoke-direct {p0}, Landroid/net/sip/ISipService$Stub;-><init>()V

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    .line 84
    new-instance v0, Lcom/android/server/sip/SipService$MyExecutor;

    invoke-direct {v0, p0}, Lcom/android/server/sip/SipService$MyExecutor;-><init>(Lcom/android/server/sip/SipService;)V

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mExecutor:Lcom/android/server/sip/SipService$MyExecutor;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    .line 97
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/sip/SipService;->mLastGoodKeepAliveInterval:I

    .line 114
    const-string v0, "SipService: started!"

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V

    .line 115
    iput-object p1, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    .line 116
    new-instance v0, Lcom/android/server/sip/SipService$ConnectivityReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/sip/SipService$ConnectivityReceiver;-><init>(Lcom/android/server/sip/SipService;Lcom/android/server/sip/SipService$ConnectivityReceiver-IA;)V

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mConnectivityReceiver:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    .line 118
    nop

    .line 119
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 120
    const/4 v1, 0x1

    const-string v2, "SipService"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 121
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 122
    invoke-static {p1}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/sip/SipService;->mSipOnWifiOnly:Z

    .line 124
    new-instance v0, Lcom/android/server/sip/SipWakeLock;

    .line 125
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-direct {v0, v1}, Lcom/android/server/sip/SipWakeLock;-><init>(Landroid/os/PowerManager;)V

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;

    .line 127
    new-instance v0, Lcom/android/server/sip/SipWakeupTimer;

    iget-object v1, p0, Lcom/android/server/sip/SipService;->mExecutor:Lcom/android/server/sip/SipService$MyExecutor;

    invoke-direct {v0, p1, v1}, Lcom/android/server/sip/SipWakeupTimer;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipWakeupTimer;

    .line 128
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mAppOps:Landroid/app/AppOpsManager;

    .line 129
    return-void
.end method

.method private declared-synchronized blacklist addPendingSession(Landroid/net/sip/ISipSession;)V
    .registers 4
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    monitor-enter p0

    .line 407
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->cleanUpPendingSessions()V

    .line 408
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    invoke-interface {p1}, Landroid/net/sip/ISipSession;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#pending sess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_29} :catch_2c
    .catchall {:try_start_1 .. :try_end_29} :catchall_2a

    .line 413
    goto :goto_32

    .line 406
    .end local p0    # "this":Lcom/android/server/sip/SipService;
    .end local p1    # "session":Landroid/net/sip/ISipSession;
    :catchall_2a
    move-exception p1

    goto :goto_34

    .line 410
    .restart local p1    # "session":Landroid/net/sip/ISipSession;
    :catch_2c
    move-exception v0

    .line 412
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2d
    const-string v1, "addPendingSession()"

    invoke-direct {p0, v1, v0}, Lcom/android/server/sip/SipService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_2a

    .line 414
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_32
    monitor-exit p0

    return-void

    .line 406
    .end local p1    # "session":Landroid/net/sip/ISipSession;
    :goto_34
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized blacklist callingSelf(Lcom/android/server/sip/SipService$SipSessionGroupExt;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z
    .registers 7
    .param p1, "ringingGroup"    # Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .param p2, "ringingSession"    # Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    monitor-enter p0

    .line 429
    :try_start_1
    invoke-virtual {p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "callId":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 431
    .local v2, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-eq v2, p1, :cond_56

    invoke-virtual {v2, v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->containsSession(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call self: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 433
    invoke-virtual {p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 434
    invoke-virtual {v2}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 432
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_1 .. :try_end_53} :catchall_5a

    .line 435
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 437
    .end local v2    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .end local p0    # "this":Lcom/android/server/sip/SipService;
    :cond_56
    goto :goto_f

    .line 438
    :cond_57
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 428
    .end local v0    # "callId":Ljava/lang/String;
    .end local p1    # "ringingGroup":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .end local p2    # "ringingSession":Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :catchall_5a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private blacklist canUseSip(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 472
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.USE_SIP"

    invoke-virtual {v0, v1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const-string v3, "android:use_sip"

    const/4 v6, 0x0

    move-object v5, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method private blacklist cleanUpPendingSessions()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    .line 418
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    .line 419
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/Map$Entry;

    .line 418
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    .line 420
    .local v0, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/sip/ISipSession;>;"
    array-length v1, v0

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_33

    aget-object v3, v0, v2

    .line 421
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/sip/ISipSession;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/sip/ISipSession;

    invoke-interface {v4}, Landroid/net/sip/ISipSession;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_30

    .line 422
    iget-object v4, p0, Lcom/android/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/sip/ISipSession;>;"
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 425
    :cond_33
    return-void
.end method

.method private blacklist createGroup(Landroid/net/sip/SipProfile;)Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .registers 6
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 311
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 313
    .local v1, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-nez v1, :cond_1e

    .line 314
    new-instance v2, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3, v3}, Lcom/android/server/sip/SipService$SipSessionGroupExt;-><init>(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;)V

    move-object v1, v2

    .line 315
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->notifyProfileAdded(Landroid/net/sip/SipProfile;)V

    goto :goto_24

    .line 317
    :cond_1e
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService;->isCallerCreator(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 320
    :goto_24
    return-object v1

    .line 318
    :cond_25
    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "only creator can access the profile"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist createGroup(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;)Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .registers 8
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "incomingCallPendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "listener"    # Landroid/net/sip/ISipSessionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 326
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 328
    .local v1, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-eqz v1, :cond_23

    .line 329
    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService;->isCallerCreator(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 332
    invoke-virtual {v1, p2}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->setIncomingCallPendingIntent(Landroid/app/PendingIntent;)V

    .line 333
    invoke-virtual {v1, p3}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->setListener(Landroid/net/sip/ISipSessionListener;)V

    goto :goto_31

    .line 330
    :cond_1b
    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "only creator can access the profile"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 335
    :cond_23
    new-instance v2, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/sip/SipService$SipSessionGroupExt;-><init>(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;)V

    move-object v1, v2

    .line 337
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->notifyProfileAdded(Landroid/net/sip/SipProfile;)V

    .line 340
    :goto_31
    return-object v1
.end method

.method private static blacklist createLooper()Landroid/os/Looper;
    .registers 2

    .line 1242
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SipService.Executor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1243
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1244
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    return-object v1
.end method

.method private blacklist determineLocalIp()Ljava/lang/String;
    .registers 4

    .line 299
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    .line 300
    .local v0, "s":Ljava/net/DatagramSocket;
    const-string v1, "192.168.1.1"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 301
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_18} :catch_19

    return-object v1

    .line 302
    .end local v0    # "s":Ljava/net/DatagramSocket;
    :catch_19
    move-exception v0

    .line 303
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "determineLocalIp()"

    invoke-direct {p0, v1, v0}, Lcom/android/server/sip/SipService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist getKeepAliveInterval()I
    .registers 2

    .line 448
    iget v0, p0, Lcom/android/server/sip/SipService;->mKeepAliveInterval:I

    if-gez v0, :cond_7

    .line 449
    iget v0, p0, Lcom/android/server/sip/SipService;->mLastGoodKeepAliveInterval:I

    goto :goto_8

    .line 450
    :cond_7
    nop

    .line 448
    :goto_8
    return v0
.end method

.method private static blacklist isAllowedCharacter(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 1325
    const/16 v0, 0x40

    if-eq p0, v0, :cond_b

    const/16 v0, 0x2e

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private blacklist isBehindNAT(Ljava/lang/String;)Z
    .registers 7
    .param p1, "address"    # Ljava/lang/String;

    .line 457
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 458
    .local v1, "d":[B
    aget-byte v2, v1, v0

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-eq v2, v3, :cond_32

    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xac

    if-ne v2, v3, :cond_20

    aget-byte v2, v1, v4

    and-int/lit16 v2, v2, 0xf0

    const/16 v3, 0x10

    if-eq v2, v3, :cond_32

    :cond_20
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xc0

    if-ne v2, v3, :cond_31

    aget-byte v2, v1, v4
    :try_end_2a
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_2a} :catch_33

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xa8

    if-ne v2, v3, :cond_31

    goto :goto_32

    .line 467
    .end local v1    # "d":[B
    :cond_31
    goto :goto_4a

    .line 463
    .restart local v1    # "d":[B
    :cond_32
    :goto_32
    return v4

    .line 465
    .end local v1    # "d":[B
    :catch_33
    move-exception v1

    .line 466
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBehindAT()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/server/sip/SipService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 468
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :goto_4a
    return v0
.end method

.method private blacklist isCallerCreator(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z
    .registers 5
    .param p1, "group"    # Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 191
    invoke-virtual {p1}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v0

    .line 192
    .local v0, "profile":Landroid/net/sip/SipProfile;
    invoke-virtual {v0}, Landroid/net/sip/SipProfile;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-ne v1, v2, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method private blacklist isCallerCreatorOrRadio(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z
    .registers 3
    .param p1, "group"    # Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 196
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->isCallerRadio()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->isCallerCreator(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private blacklist isCallerRadio()Z
    .registers 3

    .line 200
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 1281
    const-string v0, "SipService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    return-void
.end method

.method private blacklist loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 1289
    const-string v0, "SipService"

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1290
    return-void
.end method

.method private blacklist notifyProfileAdded(Landroid/net/sip/SipProfile;)V
    .registers 5
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify: profile added: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V

    .line 345
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.SIP_ADD_PHONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 346
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android:localSipUri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.USE_SIP"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_39

    .line 349
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->registerReceivers()V

    .line 351
    :cond_39
    return-void
.end method

.method private blacklist notifyProfileRemoved(Landroid/net/sip/SipProfile;)V
    .registers 5
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify: profile removed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V

    .line 355
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.sip.action.SIP_REMOVE_PROFILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 356
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android:localSipUri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.USE_SIP"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_38

    .line 359
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->unregisterReceivers()V

    .line 361
    :cond_38
    return-void
.end method

.method public static blacklist obfuscateSipUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "sipUri"    # Ljava/lang/String;

    .line 1293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1294
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1295
    .local v1, "start":I
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1296
    const-string v2, "sip:"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1297
    const/4 v1, 0x4

    .line 1298
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1301
    :cond_16
    const/4 v2, 0x0

    .line 1302
    .local v2, "prevC":C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1303
    .local v3, "len":I
    move v4, v1

    .local v4, "i":I
    :goto_1c
    if-ge v4, v3, :cond_4d

    .line 1304
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1305
    .local v5, "c":C
    add-int/lit8 v6, v4, 0x1

    if-ge v6, v3, :cond_2d

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_2e

    :cond_2d
    const/4 v6, 0x0

    .line 1306
    .local v6, "nextC":C
    :goto_2e
    const/16 v7, 0x2a

    .line 1311
    .local v7, "charToAppend":C
    sub-int v8, v4, v1

    const/4 v9, 0x1

    if-lt v8, v9, :cond_45

    add-int/lit8 v8, v4, 0x1

    if-eq v8, v3, :cond_45

    .line 1313
    invoke-static {v5}, Lcom/android/server/sip/SipService;->isAllowedCharacter(C)Z

    move-result v8

    if-nez v8, :cond_45

    const/16 v8, 0x40

    if-eq v2, v8, :cond_45

    if-ne v6, v8, :cond_46

    .line 1316
    :cond_45
    move v7, v5

    .line 1318
    :cond_46
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1319
    move v2, v5

    .line 1303
    .end local v5    # "c":C
    .end local v6    # "nextC":C
    .end local v7    # "charToAppend":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 1321
    .end local v4    # "i":I
    :cond_4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private declared-synchronized blacklist onConnectivityChanged(Landroid/net/NetworkInfo;)V
    .registers 8
    .param p1, "info"    # Landroid/net/NetworkInfo;

    monitor-enter p0

    .line 1194
    if-eqz p1, :cond_11

    :try_start_3
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    iget v1, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    if-eq v0, v1, :cond_20

    .line 1195
    .end local p0    # "this":Lcom/android/server/sip/SipService;
    :cond_11
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 1196
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1197
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    move-object p1, v1

    .line 1202
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_20
    const/4 v0, -0x1

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    goto :goto_2f

    :cond_2e
    move v1, v0

    .line 1203
    .local v1, "networkType":I
    :goto_2f
    iget-boolean v2, p0, Lcom/android/server/sip/SipService;->mSipOnWifiOnly:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_37

    if-eq v1, v3, :cond_37

    .line 1204
    const/4 v1, -0x1

    .line 1208
    :cond_37
    iget v2, p0, Lcom/android/server/sip/SipService;->mNetworkType:I
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_ba

    if-ne v2, v1, :cond_3d

    .line 1210
    monitor-exit p0

    return-void

    .line 1213
    .restart local p0    # "this":Lcom/android/server/sip/SipService;
    :cond_3d
    :try_start_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConnectivityChanged: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_3d .. :try_end_5f} :catchall_ba

    .line 1218
    :try_start_5f
    iget v2, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    if-eq v2, v0, :cond_84

    .line 1219
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/sip/SipService;->mLocalIp:Ljava/lang/String;

    .line 1220
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->stopPortMappingMeasurement()V

    .line 1221
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_73
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_84

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 1222
    .local v4, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->onConnectivityChanged(Z)V

    .line 1223
    .end local v4    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    goto :goto_73

    .line 1225
    .end local p0    # "this":Lcom/android/server/sip/SipService;
    :cond_84
    iput v1, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    .line 1227
    if-eq v1, v0, :cond_ae

    .line 1228
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->determineLocalIp()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/sip/SipService;->mLocalIp:Ljava/lang/String;

    .line 1229
    iput v0, p0, Lcom/android/server/sip/SipService;->mKeepAliveInterval:I

    .line 1230
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/sip/SipService;->mLastGoodKeepAliveInterval:I

    .line 1231
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ae

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 1232
    .local v2, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    invoke-virtual {v2, v3}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->onConnectivityChanged(Z)V

    .line 1233
    .end local v2    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    goto :goto_9e

    .line 1235
    :cond_ae
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->updateWakeLocks()V
    :try_end_b1
    .catch Ljavax/sip/SipException; {:try_start_5f .. :try_end_b1} :catch_b2
    .catchall {:try_start_5f .. :try_end_b1} :catchall_ba

    .line 1238
    goto :goto_b8

    .line 1236
    :catch_b2
    move-exception v0

    .line 1237
    .local v0, "e":Ljavax/sip/SipException;
    :try_start_b3
    const-string v2, "onConnectivityChanged()"

    invoke-direct {p0, v2, v0}, Lcom/android/server/sip/SipService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b8
    .catchall {:try_start_b3 .. :try_end_b8} :catchall_ba

    .line 1239
    .end local v0    # "e":Ljavax/sip/SipException;
    :goto_b8
    monitor-exit p0

    return-void

    .line 1193
    .end local v1    # "networkType":I
    .end local p1    # "info":Landroid/net/NetworkInfo;
    :catchall_ba
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized blacklist onKeepAliveIntervalChanged()V
    .registers 3

    monitor-enter p0

    .line 442
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 443
    .local v1, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    invoke-virtual {v1}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->onKeepAliveIntervalChanged()V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1d

    .line 444
    .end local v1    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    goto :goto_b

    .line 445
    .end local p0    # "this":Lcom/android/server/sip/SipService;
    :cond_1b
    monitor-exit p0

    return-void

    .line 441
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private blacklist registerReceivers()V
    .registers 5

    .line 1155
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/sip/SipService;->mConnectivityReceiver:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1157
    const-string v0, "registerReceivers:"

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V

    .line 1158
    return-void
.end method

.method private blacklist restartPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;I)V
    .registers 4
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "maxInterval"    # I

    .line 400
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->stopPortMappingMeasurement()V

    .line 401
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/sip/SipService;->mKeepAliveInterval:I

    .line 402
    invoke-direct {p0, p1, p2}, Lcom/android/server/sip/SipService;->startPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;I)V

    .line 403
    return-void
.end method

.method private static blacklist slog(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 1285
    const-string v0, "SipService"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    return-void
.end method

.method public static blacklist start(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 104
    invoke-static {p0}, Landroid/net/sip/SipManager;->isApiSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 105
    const-string v0, "sip"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_25

    .line 106
    new-instance v1, Lcom/android/server/sip/SipService;

    invoke-direct {v1, p0}, Lcom/android/server/sip/SipService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.sip.action.SIP_SERVICE_UP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 108
    const-string v0, "start:"

    invoke-static {v0}, Lcom/android/server/sip/SipService;->slog(Ljava/lang/String;)V

    .line 111
    :cond_25
    return-void
.end method

.method private blacklist startPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;)V
    .registers 3
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;

    .line 372
    const/16 v0, 0x78

    invoke-direct {p0, p1, v0}, Lcom/android/server/sip/SipService;->startPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;I)V

    .line 374
    return-void
.end method

.method private blacklist startPortMappingLifetimeMeasurement(Landroid/net/sip/SipProfile;I)V
    .registers 6
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "maxInterval"    # I

    .line 378
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mSipKeepAliveProcessCallback:Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;

    if-nez v0, :cond_54

    iget v0, p0, Lcom/android/server/sip/SipService;->mKeepAliveInterval:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_54

    iget-object v0, p0, Lcom/android/server/sip/SipService;->mLocalIp:Ljava/lang/String;

    .line 380
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->isBehindNAT(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startPortMappingLifetimeMeasurement: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 382
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V

    .line 384
    iget v0, p0, Lcom/android/server/sip/SipService;->mLastGoodKeepAliveInterval:I

    .line 385
    .local v0, "minInterval":I
    if-lt v0, p2, :cond_4a

    .line 388
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/sip/SipService;->mLastGoodKeepAliveInterval:I

    move v0, v1

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  reset min interval to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V

    .line 392
    :cond_4a
    new-instance v1, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;-><init>(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;II)V

    iput-object v1, p0, Lcom/android/server/sip/SipService;->mSipKeepAliveProcessCallback:Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;

    .line 394
    invoke-virtual {v1}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->start()V

    .line 396
    .end local v0    # "minInterval":I
    :cond_54
    return-void
.end method

.method private blacklist stopPortMappingMeasurement()V
    .registers 2

    .line 364
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mSipKeepAliveProcessCallback:Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;

    if-eqz v0, :cond_a

    .line 365
    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;->stop()V

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipService;->mSipKeepAliveProcessCallback:Lcom/android/server/sip/SipService$SipKeepAliveProcessCallback;

    .line 368
    :cond_a
    return-void
.end method

.method private blacklist unregisterReceivers()V
    .registers 3

    .line 1161
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/sip/SipService;->mConnectivityReceiver:Lcom/android/server/sip/SipService$ConnectivityReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1162
    const-string v0, "unregisterReceivers:"

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V

    .line 1165
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 1166
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    .line 1167
    return-void
.end method

.method private blacklist updateWakeLocks()V
    .registers 4

    .line 1170
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 1171
    .local v1, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    invoke-virtual {v1}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->isOpenedToReceiveCalls()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1175
    iget v0, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2b

    const/4 v2, -0x1

    if-ne v0, v2, :cond_25

    goto :goto_2b

    .line 1178
    :cond_25
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    goto :goto_30

    .line 1176
    :cond_2b
    :goto_2b
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 1180
    :goto_30
    return-void

    .line 1182
    .end local v1    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :cond_31
    goto :goto_a

    .line 1183
    :cond_32
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 1184
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;

    invoke-virtual {v0}, Lcom/android/server/sip/SipWakeLock;->reset()V

    .line 1185
    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist close(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "localProfileUri"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 205
    :try_start_1
    const-string v0, "close"

    invoke-direct {p0, p2, v0}, Lcom/android/server/sip/SipService;->canUseSip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_3c

    if-nez v0, :cond_b

    .line 206
    monitor-exit p0

    return-void

    .line 208
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_3c

    .line 209
    .local v0, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-nez v0, :cond_17

    monitor-exit p0

    return-void

    .line 210
    :cond_17
    :try_start_17
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->isCallerCreatorOrRadio(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 211
    const-string v1, "only creator or radio can close this profile"

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_3c

    .line 212
    monitor-exit p0

    return-void

    .line 215
    .end local p0    # "this":Lcom/android/server/sip/SipService;
    :cond_24
    :try_start_24
    iget-object v1, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    move-object v0, v1

    .line 216
    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService;->notifyProfileRemoved(Landroid/net/sip/SipProfile;)V

    .line 217
    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->close()V

    .line 219
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->updateWakeLocks()V
    :try_end_3a
    .catchall {:try_start_24 .. :try_end_3a} :catchall_3c

    .line 220
    monitor-exit p0

    return-void

    .line 204
    .end local v0    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .end local p1    # "localProfileUri":Ljava/lang/String;
    .end local p2    # "opPackageName":Ljava/lang/String;
    :catchall_3c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist createSession(Landroid/net/sip/SipProfile;Landroid/net/sip/ISipSessionListener;Ljava/lang/String;)Landroid/net/sip/ISipSession;
    .registers 7
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "listener"    # Landroid/net/sip/ISipSessionListener;
    .param p3, "opPackageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 270
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSession: profile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V

    .line 271
    const-string v0, "createSession"

    invoke-direct {p0, p3, v0}, Lcom/android/server/sip/SipService;->canUseSip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_47

    const/4 v1, 0x0

    if-nez v0, :cond_22

    .line 272
    monitor-exit p0

    return-object v1

    .line 274
    :cond_22
    :try_start_22
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/net/sip/SipProfile;->setCallingUid(I)V

    .line 275
    iget v0, p0, Lcom/android/server/sip/SipService;->mNetworkType:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_35

    .line 276
    const-string v0, "createSession: mNetworkType==-1 ret=null"

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_22 .. :try_end_33} :catchall_47

    .line 277
    monitor-exit p0

    return-object v1

    .line 280
    .end local p0    # "this":Lcom/android/server/sip/SipService;
    :cond_35
    :try_start_35
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->createGroup(Landroid/net/sip/SipProfile;)Lcom/android/server/sip/SipService$SipSessionGroupExt;

    move-result-object v0

    .line 281
    .local v0, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    invoke-virtual {v0, p2}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->createSession(Landroid/net/sip/ISipSessionListener;)Landroid/net/sip/ISipSession;

    move-result-object v1
    :try_end_3d
    .catch Ljavax/sip/SipException; {:try_start_35 .. :try_end_3d} :catch_3f
    .catchall {:try_start_35 .. :try_end_3d} :catchall_47

    monitor-exit p0

    return-object v1

    .line 282
    .end local v0    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :catch_3f
    move-exception v0

    .line 283
    .local v0, "e":Ljavax/sip/SipException;
    :try_start_40
    const-string v2, "createSession;"

    invoke-direct {p0, v2, v0}, Lcom/android/server/sip/SipService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_47

    .line 284
    monitor-exit p0

    return-object v1

    .line 269
    .end local v0    # "e":Ljavax/sip/SipException;
    .end local p1    # "localProfile":Landroid/net/sip/SipProfile;
    .end local p2    # "listener":Landroid/net/sip/ISipSessionListener;
    .end local p3    # "opPackageName":Ljava/lang/String;
    :catchall_47
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getPendingSession(Ljava/lang/String;Ljava/lang/String;)Landroid/net/sip/ISipSession;
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 290
    :try_start_1
    const-string v0, "getPendingSession"

    invoke-direct {p0, p2, v0}, Lcom/android/server/sip/SipService;->canUseSip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1a

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 291
    monitor-exit p0

    return-object v1

    .line 293
    :cond_c
    if-nez p1, :cond_10

    monitor-exit p0

    return-object v1

    .line 294
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mPendingSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/sip/ISipSession;
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-object v0

    .line 289
    .end local p0    # "this":Lcom/android/server/sip/SipService;
    .end local p1    # "callId":Ljava/lang/String;
    .end local p2    # "opPackageName":Ljava/lang/String;
    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getProfiles(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/sip/SipProfile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 133
    :try_start_1
    const-string v0, "getProfiles"

    invoke-direct {p0, p1, v0}, Lcom/android/server/sip/SipService;->canUseSip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 137
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->isCallerRadio()Z

    move-result v0

    .line 138
    .local v0, "isCallerRadio":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v1, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/sip/SipProfile;>;"
    iget-object v2, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sip/SipService$SipSessionGroupExt;

    .line 140
    .local v3, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-nez v0, :cond_30

    invoke-direct {p0, v3}, Lcom/android/server/sip/SipService;->isCallerCreator(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 141
    .end local p0    # "this":Lcom/android/server/sip/SipService;
    :cond_30
    invoke-virtual {v3}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_4c

    .line 143
    .end local v3    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :cond_37
    goto :goto_1c

    .line 144
    :cond_38
    monitor-exit p0

    return-object v1

    .line 134
    .end local v0    # "isCallerRadio":Z
    .end local v1    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/sip/SipProfile;>;"
    :cond_3a
    :try_start_3a
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Package %s cannot use Sip service"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4c
    .catchall {:try_start_3a .. :try_end_4c} :catchall_4c

    .line 132
    .end local p1    # "opPackageName":Ljava/lang/String;
    :catchall_4c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist isOpened(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "localProfileUri"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 224
    :try_start_1
    const-string v0, "isOpened"

    invoke-direct {p0, p2, v0}, Lcom/android/server/sip/SipService;->canUseSip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_28

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 225
    monitor-exit p0

    return v1

    .line 227
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_28

    .line 228
    .local v0, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-nez v0, :cond_18

    monitor-exit p0

    return v1

    .line 229
    :cond_18
    :try_start_18
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->isCallerCreatorOrRadio(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v2
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_28

    if-eqz v2, :cond_21

    .line 230
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 232
    :cond_21
    :try_start_21
    const-string v2, "only creator or radio can query on the profile"

    invoke-direct {p0, v2}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_28

    .line 233
    monitor-exit p0

    return v1

    .line 223
    .end local v0    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .end local p0    # "this":Lcom/android/server/sip/SipService;
    .end local p1    # "localProfileUri":Ljava/lang/String;
    .end local p2    # "opPackageName":Ljava/lang/String;
    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist isRegistered(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "localProfileUri"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 239
    :try_start_1
    const-string v0, "isRegistered"

    invoke-direct {p0, p2, v0}, Lcom/android/server/sip/SipService;->canUseSip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_2b

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 240
    monitor-exit p0

    return v1

    .line 242
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_2b

    .line 243
    .local v0, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-nez v0, :cond_18

    monitor-exit p0

    return v1

    .line 244
    :cond_18
    :try_start_18
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->isCallerCreatorOrRadio(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 245
    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->isRegistered()Z

    move-result v1
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_2b

    monitor-exit p0

    return v1

    .line 247
    .end local p0    # "this":Lcom/android/server/sip/SipService;
    :cond_24
    :try_start_24
    const-string v2, "only creator or radio can query on the profile"

    invoke-direct {p0, v2}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_2b

    .line 248
    monitor-exit p0

    return v1

    .line 238
    .end local v0    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .end local p1    # "localProfileUri":Ljava/lang/String;
    .end local p2    # "opPackageName":Ljava/lang/String;
    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist open(Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .registers 5
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "opPackageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 149
    :try_start_1
    const-string v0, "open"

    invoke-direct {p0, p2, v0}, Lcom/android/server/sip/SipService;->canUseSip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1e

    if-nez v0, :cond_b

    .line 150
    monitor-exit p0

    return-void

    .line 152
    :cond_b
    :try_start_b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/net/sip/SipProfile;->setCallingUid(I)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_1e

    .line 154
    :try_start_12
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService;->createGroup(Landroid/net/sip/SipProfile;)Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :try_end_15
    .catch Ljavax/sip/SipException; {:try_start_12 .. :try_end_15} :catch_16
    .catchall {:try_start_12 .. :try_end_15} :catchall_1e

    .line 158
    goto :goto_1c

    .line 155
    .end local p0    # "this":Lcom/android/server/sip/SipService;
    :catch_16
    move-exception v0

    .line 156
    .local v0, "e":Ljavax/sip/SipException;
    :try_start_17
    const-string v1, "openToMakeCalls()"

    invoke-direct {p0, v1, v0}, Lcom/android/server/sip/SipService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_1e

    .line 159
    .end local v0    # "e":Ljavax/sip/SipException;
    :goto_1c
    monitor-exit p0

    return-void

    .line 148
    .end local p1    # "localProfile":Landroid/net/sip/SipProfile;
    .end local p2    # "opPackageName":Ljava/lang/String;
    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist open3(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;Ljava/lang/String;)V
    .registers 7
    .param p1, "localProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "incomingCallPendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "listener"    # Landroid/net/sip/ISipSessionListener;
    .param p4, "opPackageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 166
    :try_start_1
    const-string v0, "open3"

    invoke-direct {p0, p4, v0}, Lcom/android/server/sip/SipService;->canUseSip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_66

    if-nez v0, :cond_b

    .line 167
    monitor-exit p0

    return-void

    .line 169
    :cond_b
    :try_start_b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/net/sip/SipProfile;->setCallingUid(I)V

    .line 170
    if-nez p2, :cond_1b

    .line 171
    const-string v0, "open3: incomingCallPendingIntent cannot be null; the profile is not opened"

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_66

    .line 173
    monitor-exit p0

    return-void

    .line 175
    .end local p0    # "this":Lcom/android/server/sip/SipService;
    :cond_1b
    :try_start_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open3: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sip/SipService;->obfuscateSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_1b .. :try_end_4d} :catchall_66

    .line 178
    :try_start_4d
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/sip/SipService;->createGroup(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;)Lcom/android/server/sip/SipService$SipSessionGroupExt;

    move-result-object v0

    .line 180
    .local v0, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getAutoRegistration()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 181
    invoke-virtual {v0}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->openToReceiveCalls()V

    .line 182
    invoke-direct {p0}, Lcom/android/server/sip/SipService;->updateWakeLocks()V
    :try_end_5d
    .catch Ljavax/sip/SipException; {:try_start_4d .. :try_end_5d} :catch_5e
    .catchall {:try_start_4d .. :try_end_5d} :catchall_66

    .line 187
    .end local v0    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :cond_5d
    goto :goto_64

    .line 184
    :catch_5e
    move-exception v0

    .line 185
    .local v0, "e":Ljavax/sip/SipException;
    :try_start_5f
    const-string v1, "open3:"

    invoke-direct {p0, v1, v0}, Lcom/android/server/sip/SipService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_64
    .catchall {:try_start_5f .. :try_end_64} :catchall_66

    .line 188
    .end local v0    # "e":Ljavax/sip/SipException;
    :goto_64
    monitor-exit p0

    return-void

    .line 165
    .end local p1    # "localProfile":Landroid/net/sip/SipProfile;
    .end local p2    # "incomingCallPendingIntent":Landroid/app/PendingIntent;
    .end local p3    # "listener":Landroid/net/sip/ISipSessionListener;
    .end local p4    # "opPackageName":Ljava/lang/String;
    :catchall_66
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist setRegistrationListener(Ljava/lang/String;Landroid/net/sip/ISipSessionListener;Ljava/lang/String;)V
    .registers 6
    .param p1, "localProfileUri"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/net/sip/ISipSessionListener;
    .param p3, "opPackageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 255
    :try_start_1
    const-string v0, "setRegistrationListener"

    invoke-direct {p0, p3, v0}, Lcom/android/server/sip/SipService;->canUseSip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_28

    if-nez v0, :cond_b

    .line 256
    monitor-exit p0

    return-void

    .line 258
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/server/sip/SipService;->mSipGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$SipSessionGroupExt;
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_28

    .line 259
    .local v0, "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    if-nez v0, :cond_17

    monitor-exit p0

    return-void

    .line 260
    :cond_17
    :try_start_17
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService;->isCallerCreator(Lcom/android/server/sip/SipService$SipSessionGroupExt;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 261
    invoke-virtual {v0, p2}, Lcom/android/server/sip/SipService$SipSessionGroupExt;->setListener(Landroid/net/sip/ISipSessionListener;)V

    goto :goto_26

    .line 263
    .end local p0    # "this":Lcom/android/server/sip/SipService;
    :cond_21
    const-string v1, "only creator can set listener on the profile"

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService;->log(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_28

    .line 265
    :goto_26
    monitor-exit p0

    return-void

    .line 254
    .end local v0    # "group":Lcom/android/server/sip/SipService$SipSessionGroupExt;
    .end local p1    # "localProfileUri":Ljava/lang/String;
    .end local p2    # "listener":Landroid/net/sip/ISipSessionListener;
    .end local p3    # "opPackageName":Ljava/lang/String;
    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method
