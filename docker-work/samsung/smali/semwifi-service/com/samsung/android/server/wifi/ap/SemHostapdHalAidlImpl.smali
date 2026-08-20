.class public Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;
.super Ljava/lang/Object;
.source "SemHostapdHalAidlImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$SemHostapdCallback;,
        Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;,
        Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$ServiceCallback;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x40

.field private static final HAL_INSTANCE_NAME:Ljava/lang/String;

.field private static final HOSTAPD_ACCEPT:Ljava/lang/String; = "/data/misc/wifi_hostapd/hostapd.accept"

.field private static final HOSTAPD_DENY:Ljava/lang/String; = "/data/misc/wifi_hostapd/hostapd.deny"

.field private static final TAG:Ljava/lang/String; = "SemHostapdHalAidlImpl"

.field public static final WAIT_FOR_DEATH_TIMEOUT_MS:J = 0x32L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private MHSDBG:Z

.field private isRegisteredVar:Z

.field private final mContext:Landroid/content/Context;

.field private mEventHandler:Landroid/os/Handler;

.field private mIHostapd:Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd;

.field private mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapd;

.field private final mISehHostapdCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapdCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mMHSDumpLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceCallback:Landroid/os/IServiceCallback;

.field private mServiceDeclared:Z

.field private mVerboseLoggingEnabled:Z

.field private mWaitForDeathLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;


# direct methods
.method static bridge synthetic -$$Nest$fgetMHSDBG(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->MHSDBG:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisRegisteredVar(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->isRegisteredVar:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEventHandler(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mEventHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitForDeathLatch(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mWaitForDeathLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetHAL_INSTANCE_NAME()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->HAL_INSTANCE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->HAL_INSTANCE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .registers 7

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mLock:Ljava/lang/Object;

    .line 67
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->MHSDBG:Z

    .line 68
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_23

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    move v0, v2

    goto :goto_24

    :cond_23
    :goto_23
    move v0, v1

    :goto_24
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mVerboseLoggingEnabled:Z

    .line 73
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mServiceDeclared:Z

    .line 74
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->isRegisteredVar:Z

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mIHostapd:Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd;

    .line 78
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapd;

    .line 79
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mISehHostapdCallbacks:Ljava/util/Map;

    .line 523
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mMHSDumpLogs:Ljava/util/List;

    .line 182
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mContext:Landroid/content/Context;

    .line 183
    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 184
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mEventHandler:Landroid/os/Handler;

    .line 185
    new-instance p1, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$ServiceCallback;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$ServiceCallback;-><init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$ServiceCallback-IA;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mServiceCallback:Landroid/os/IServiceCallback;

    .line 186
    new-instance p1, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$1;-><init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mLocalHandler:Landroid/os/Handler;

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->initialize()Z

    move-result p1

    if-nez p1, :cond_62

    .line 202
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mLocalHandler:Landroid/os/Handler;

    const-wide/16 p1, 0x3e8

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_62
    return-void
.end method

.method private checkHostapdAndLogFailure(Ljava/lang/String;)Z
    .registers 5

    .line 352
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 353
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapd;

    if-nez p0, :cond_25

    const-string p0, "SemHostapdHalAidlImpl"

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mISehHostapd is null"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 355
    monitor-exit v0

    return p0

    :cond_25
    const/4 p0, 0x1

    .line 357
    monitor-exit v0

    return p0

    :catchall_28
    move-exception p0

    .line 358
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method private handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V
    .registers 6

    .line 362
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_3
    const-string v0, "SemHostapdHalAidlImpl"

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IHostapd."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed with exception"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 364
    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p1
.end method

.method private handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V
    .registers 6

    .line 372
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_3
    const-string v0, "SemHostapdHalAidlImpl"

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IHostapd/ISehHostapd."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    monitor-exit p0

    return-void

    :catchall_27
    move-exception p1

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p1
.end method

.method private initSehHostapdService()I
    .registers 5

    .line 287
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 289
    :try_start_3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->getSehHostapdMockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapd;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapd;
    :try_end_9
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_9} :catch_6e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_53
    .catchall {:try_start_3 .. :try_end_9} :catchall_51

    if-nez v1, :cond_16

    :try_start_b
    const-string p0, "SemHostapdHalAidlImpl"

    const-string v1, "Got null ISehHostapd service. Stopping hostapd HIDL startup"

    .line 298
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0xd

    .line 299
    monitor-exit v0

    return p0

    :cond_16
    const-string v1, "SemHostapdHalAidlImpl"

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected to hostapd aidl service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapd;

    if-eqz v3, :cond_29

    const-string v3, "with extension"

    goto :goto_2b

    :cond_29
    const-string v3, ""

    :goto_2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$SemHostapdCallback;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$SemHostapdCallback;-><init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->sehRegisterCallback(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapdCallback;)Z

    move-result v1

    if-nez v1, :cond_4e

    const-string v1, "SemHostapdHalAidlImpl"

    const-string v2, "Fail to regiester sehRegisterCallback, Stopping hostapd HIDL startup"

    .line 306
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 307
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapd;

    const/16 p0, -0xf

    .line 308
    monitor-exit v0

    return p0

    .line 310
    :cond_4e
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_51
    move-exception p0

    goto :goto_89

    :catch_53
    move-exception p0

    const-string v1, "SemHostapdHalAidlImpl"

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISehHostapd.getService exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0xc

    .line 295
    monitor-exit v0

    return p0

    :catch_6e
    move-exception p0

    const-string v1, "SemHostapdHalAidlImpl"

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISehHostapd.getService exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0xb

    .line 292
    monitor-exit v0

    return p0

    .line 310
    :goto_89
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_b .. :try_end_8a} :catchall_51

    throw p0
.end method

.method private registerNotification()Z
    .registers 2

    .line 316
    :try_start_0
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->HAL_INSTANCE_NAME:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mServiceCallback:Landroid/os/IServiceCallback;

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    const/4 p0, 0x1

    return p0

    :catch_9
    move-exception p0

    .line 319
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static serviceDeclared()Z
    .registers 4

    .line 226
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    const-string v1, "SemHostapdHalAidlImpl"

    if-nez v0, :cond_f

    const-string v0, " Not atlest T SDK "

    .line 227
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 230
    :cond_f
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->HAL_INSTANCE_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v0

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " serviceDeclared  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private showMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 545
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->MHSDBG:Z

    if-eqz p0, :cond_5

    return-object p1

    .line 548
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xc

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized addMHSDumpLog(Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    .line 525
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "SemHostapdHalAidlImpl"

    .line 526
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mhs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mMHSDumpLogs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM-dd HH:mm:ss.SSS"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 529
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mMHSDumpLogs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0x64

    if-le p1, v1, :cond_66

    .line 530
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mMHSDumpLogs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_66
    .catchall {:try_start_1 .. :try_end_66} :catchall_71

    .line 533
    :cond_66
    :try_start_66
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mMHSDumpLogs:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6f} :catch_6f
    .catchall {:try_start_66 .. :try_end_6f} :catchall_71

    .line 537
    :catch_6f
    monitor-exit p0

    return-void

    :catchall_71
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public attachDaemon()I
    .registers 6

    .line 105
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->getHostapdMockable()Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mIHostapd:Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd;

    if-nez v1, :cond_12

    const-string v1, "SemHostapdHalAidlImpl"

    const-string v2, "Service hostapd wasn\'t found."

    .line 110
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_90

    :cond_12
    const/4 v1, 0x0

    .line 114
    :try_start_13
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mWaitForDeathLatch:Ljava/util/concurrent/CountDownLatch;

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->getServiceBinderMockable()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1c

    goto :goto_2c

    .line 119
    :cond_1c
    new-instance v2, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;-><init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;Landroid/os/IBinder;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_25} :catch_26
    .catchall {:try_start_13 .. :try_end_25} :catchall_90

    goto :goto_2c

    :catch_26
    move-exception v1

    :try_start_27
    const-string v2, "attachDaemon"

    .line 122
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    :goto_2c
    const-string v1, "SemHostapdHalAidlImpl"

    const-string v2, "init sucess IHostapd, next registerCallback."

    .line 125
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->initSehHostapdService()I

    move-result v1

    if-eqz v1, :cond_41

    const-string v2, "SemHostapdHalAidlImpl"

    const-string v3, "initalizing ISehHostapd failed."

    .line 128
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    :cond_41
    const-string v2, "SemHostapdHalAidlImpl"

    const-string v3, "Completed initialization of ISehHostapd."

    .line 130
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 131
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->isRegisteredVar:Z

    :goto_4b
    const-string v2, "SemHostapdHalAidlImpl"

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init ISehHostapd ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "isRegisteredVar"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->isRegisteredVar:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemHostapdHalAidlImpl init ISehHostapd ret : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "isRegisteredVar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->isRegisteredVar:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->addMHSDumpLog(Ljava/lang/String;)V

    if-eqz v1, :cond_8e

    .line 136
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->clearState()V

    .line 137
    :cond_8e
    monitor-exit v0

    return v1

    :catchall_90
    move-exception p0

    .line 138
    monitor-exit v0
    :try_end_92
    .catchall {:try_start_27 .. :try_end_92} :catchall_90

    throw p0
.end method

.method public clearState()V
    .registers 4

    .line 171
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "SemHostapdHalAidlImpl clearState mISehHostapd"

    .line 172
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->addMHSDumpLog(Ljava/lang/String;)V

    const-string v1, "SemHostapdHalAidlImpl"

    const-string v2, " clearState mISehHostapd to null"

    .line 173
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 174
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mServiceDeclared:Z

    .line 175
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->isRegisteredVar:Z

    const/4 v1, 0x0

    .line 176
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mIHostapd:Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd;

    .line 177
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapd;

    .line 178
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mWaitForDeathLatch:Ljava/util/concurrent/CountDownLatch;

    .line 179
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public getDumpLogs()Ljava/lang/String;
    .registers 3

    .line 539
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "--SemHostapdHalAidl history \n"

    .line 540
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 541
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mMHSDumpLogs:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 542
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getHostapdMockable()Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 247
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 248
    :try_start_3
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->HAL_INSTANCE_NAME:Ljava/lang/String;

    .line 249
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 248
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    .line 250
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method protected getSehHostapdMockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapd;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->getServiceBinderMockable()Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 260
    invoke-interface {p0}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_1c

    const-string v1, "SemHostapdHalAidlImpl"

    const-string v2, "obtaining ISehHostapd binder extension"

    .line 262
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-static {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapd;

    move-result-object p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1a} :catch_2e
    .catchall {:try_start_3 .. :try_end_1a} :catchall_2c

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_2c

    return-object p0

    :cond_1c
    :try_start_1c
    const-string p0, "SemHostapdHalAidlImpl"

    const-string v1, "could not get extension of IHostapd binder"

    .line 265
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    :cond_24
    const-string p0, "SemHostapdHalAidlImpl"

    const-string v1, "could not get IHostapd binder"

    .line 268
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2b} :catch_2e
    .catchall {:try_start_1c .. :try_end_2b} :catchall_2c

    goto :goto_45

    :catchall_2c
    move-exception p0

    goto :goto_48

    :catch_2e
    move-exception p0

    :try_start_2f
    const-string v1, "SemHostapdHalAidlImpl"

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get ISehHostapd service, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_45
    const/4 p0, 0x0

    .line 273
    monitor-exit v0

    return-object p0

    .line 274
    :goto_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_2f .. :try_end_49} :catchall_2c

    throw p0
.end method

.method protected getServiceBinderMockable()Landroid/os/IBinder;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mIHostapd:Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd;

    if-nez p0, :cond_a

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    .line 241
    :cond_a
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_10
    move-exception p0

    .line 242
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public initialize()Z
    .registers 5

    .line 207
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mIHostapd:Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd;

    const/4 v2, 0x1

    if-eqz v1, :cond_11

    const-string p0, "SemHostapdHalAidlImpl"

    const-string v1, "Service is already initialized, skipping initialize method"

    .line 209
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    monitor-exit v0

    return v2

    .line 212
    :cond_11
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_1c

    const-string v1, "SemHostapdHalAidlImpl"

    const-string v3, "Checking for mIHostapd service."

    .line 213
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_1c
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->clearState()V

    .line 216
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->serviceDeclared()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->registerNotification()Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    :goto_2d
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mServiceDeclared:Z

    .line 217
    monitor-exit v0

    return v2

    :catchall_31
    move-exception p0

    .line 218
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public isRegistered()Z
    .registers 1

    .line 279
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->isRegisteredVar:Z

    return p0
.end method

.method public readAllowList()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 381
    :try_start_6
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/data/misc/wifi_hostapd/hostapd.accept"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x40

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_14} :catch_5a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_14} :catch_50
    .catchall {:try_start_6 .. :try_end_14} :catchall_4e

    .line 382
    :cond_14
    :goto_14
    :try_start_14
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_41

    const-string v3, "#"

    .line 385
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v3, 0x1

    .line 386
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 387
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 388
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapd;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADD_ALLOW_LIST "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapd;->sehSendCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_40} :catch_4b
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_40} :catch_48
    .catchall {:try_start_14 .. :try_end_40} :catchall_45

    goto :goto_14

    .line 398
    :cond_41
    :try_start_41
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_64

    goto :goto_68

    :catchall_45
    move-exception p0

    move-object v1, v2

    goto :goto_69

    :catch_48
    move-exception p0

    move-object v1, v2

    goto :goto_51

    :catch_4b
    move-exception p0

    move-object v1, v2

    goto :goto_5b

    :catchall_4e
    move-exception p0

    goto :goto_69

    :catch_50
    move-exception p0

    .line 394
    :goto_51
    :try_start_51
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_4e

    if-eqz v1, :cond_68

    .line 398
    :try_start_56
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_64

    goto :goto_68

    :catch_5a
    move-exception p0

    .line 392
    :goto_5b
    :try_start_5b
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_4e

    if-eqz v1, :cond_68

    .line 398
    :try_start_60
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_68

    :catch_64
    move-exception p0

    .line 400
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_68
    :goto_68
    return-object v0

    :goto_69
    if-eqz v1, :cond_73

    .line 398
    :try_start_6b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6f

    goto :goto_73

    :catch_6f
    move-exception v0

    .line 400
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 403
    :cond_73
    :goto_73
    throw p0
.end method

.method public readDenyList()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 412
    :try_start_6
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/data/misc/wifi_hostapd/hostapd.deny"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x40

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_14} :catch_5a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_14} :catch_50
    .catchall {:try_start_6 .. :try_end_14} :catchall_4e

    .line 413
    :cond_14
    :goto_14
    :try_start_14
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_41

    const-string v3, "#"

    .line 416
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v3, 0x1

    .line 417
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 418
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 419
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapd;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADD_DENY_LIST "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapd;->sehSendCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_40} :catch_4b
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_40} :catch_48
    .catchall {:try_start_14 .. :try_end_40} :catchall_45

    goto :goto_14

    .line 429
    :cond_41
    :try_start_41
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_64

    goto :goto_68

    :catchall_45
    move-exception p0

    move-object v1, v2

    goto :goto_69

    :catch_48
    move-exception p0

    move-object v1, v2

    goto :goto_51

    :catch_4b
    move-exception p0

    move-object v1, v2

    goto :goto_5b

    :catchall_4e
    move-exception p0

    goto :goto_69

    :catch_50
    move-exception p0

    .line 425
    :goto_51
    :try_start_51
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_4e

    if-eqz v1, :cond_68

    .line 429
    :try_start_56
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_64

    goto :goto_68

    :catch_5a
    move-exception p0

    .line 423
    :goto_5b
    :try_start_5b
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_4e

    if-eqz v1, :cond_68

    .line 429
    :try_start_60
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_68

    :catch_64
    move-exception p0

    .line 431
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_68
    :goto_68
    return-object v0

    :goto_69
    if-eqz v1, :cond_73

    .line 429
    :try_start_6b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6f

    goto :goto_73

    :catch_6f
    move-exception v0

    .line 431
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 434
    :cond_73
    :goto_73
    throw p0
.end method

.method public sehRegisterCallback(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapdCallback;)Z
    .registers 7

    const-string v0, "SemHostapdHalAidlImpl"

    const-string v1, "sehRegisterCallback "

    .line 469
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "sehRegisterCallback"

    .line 471
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->checkHostapdAndLogFailure(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_16

    const-string p0, "mISehHostapd is null "

    .line 472
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 476
    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapd;

    invoke-interface {v2, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapd;->sehRegisterCallback(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapdCallback;)I

    move-result p1

    .line 477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sehRegisterCallback ret :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_30} :catch_37
    .catch Landroid/os/ServiceSpecificException; {:try_start_16 .. :try_end_30} :catch_32

    const/4 p0, 0x1

    return p0

    :catch_32
    move-exception p1

    .line 482
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    goto :goto_3b

    :catch_37
    move-exception p1

    .line 480
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    :goto_3b
    return v3
.end method

.method public sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "SemHostapdHalAidlImpl"

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISehHostapd command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_19
    const-string v1, "sendHostapdCommand"

    .line 449
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->checkHostapdAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2b

    const-string p0, "SemHostapdHalAidlImpl"

    const-string p1, "mISehHostapd is null "

    .line 450
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_61

    return-object v2

    .line 454
    :cond_2b
    :try_start_2b
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapd;

    invoke-interface {v1, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/ISehHostapd;->sehSendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 455
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->MHSDBG:Z

    if-eqz v1, :cond_5f

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemHostapdHalAidlImpl  sendHostapdCommand:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " msg : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->addMHSDumpLog(Ljava/lang/String;)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_51} :catch_59
    .catch Landroid/os/ServiceSpecificException; {:try_start_2b .. :try_end_51} :catch_52
    .catchall {:try_start_2b .. :try_end_51} :catchall_61

    goto :goto_5f

    :catch_52
    move-exception p1

    :try_start_53
    const-string v1, "sendHostapdCommand"

    .line 461
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->handleServiceSpecificException(Landroid/os/ServiceSpecificException;Ljava/lang/String;)V

    goto :goto_5f

    :catch_59
    move-exception p1

    const-string v1, "sendHostapdCommand"

    .line 459
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->handleRemoteException(Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 463
    :cond_5f
    :goto_5f
    monitor-exit v0

    return-object v2

    :catchall_61
    move-exception p0

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_53 .. :try_end_63} :catchall_61

    throw p0
.end method

.method public terminate()V
    .registers 5

    .line 325
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "terminate"

    .line 327
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->checkHostapdAndLogFailure(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 328
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->clearState()V

    const-string p0, "SemHostapdHalAidlImpl"

    const-string v1, "Terminated semHostApdHal"

    .line 329
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    monitor-exit v0

    return-void

    :cond_17
    const-string v1, "SemHostapdHalAidlImpl"

    const-string v2, "Terminate HostApd Service."

    .line 332
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->mWaitForDeathLatch:Ljava/util/concurrent/CountDownLatch;

    .line 334
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_4c

    const-wide/16 v2, 0x32

    .line 338
    :try_start_29
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "SemHostapdHalAidlImpl"

    const-string v1, "Timed out waiting for confirmation of hostapd death"

    .line 339
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    :cond_39
    const-string v0, "SemHostapdHalAidlImpl"

    const-string v1, "Got service death confirmation"

    .line 341
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_40} :catch_41

    goto :goto_48

    :catch_41
    const-string v0, "SemHostapdHalAidlImpl"

    const-string v1, "Failed to wait for hostapd death"

    .line 344
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :goto_48
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->clearState()V

    return-void

    :catchall_4c
    move-exception p0

    .line 334
    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p0
.end method
