.class public Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;
.super Ljava/lang/Object;
.source "SemHostapdHalV3.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$SehHostapdCallback;,
        Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$ServiceManagerDeathRecipient;,
        Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$SehHostapdDeathRecipient;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x40

.field public static final HAL_INSTANCE_NAME:Ljava/lang/String; = "default"

.field private static final HOSTAPD_ACCEPT:Ljava/lang/String; = "/data/misc/wifi_hostapd/hostapd.accept"

.field private static final HOSTAPD_DENY:Ljava/lang/String; = "/data/misc/wifi_hostapd/hostapd.deny"

.field private static TAG:Ljava/lang/String; = "SemHostapdHalV3"


# instance fields
.field private MHSDBG:Z

.field private isRegisteredVar:Z

.field private final mContext:Landroid/content/Context;

.field private mDeathRecipientCookie:J

.field private mEventHandler:Landroid/os/Handler;

.field private mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd;

.field private mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

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

.field private mSehHostapdDeathRecipient:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$SehHostapdDeathRecipient;

.field private mServiceManagerDeathRecipient:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$ServiceManagerDeathRecipient;

.field private final mServiceNotificationCallback:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceNotification;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;


# direct methods
.method static bridge synthetic -$$Nest$fgetisRegisteredVar(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->isRegisteredVar:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEventHandler(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mEventHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocalHandler(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mLocalHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisRegisteredVar(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->isRegisteredVar:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmISehHostapd(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIServiceManager(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$minitSehHostapdService(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->initSehHostapdService()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$minitialize(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->initialize()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .registers 9

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_22

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "userdebug"

    .line 57
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_22

    :cond_20
    move v0, v1

    goto :goto_23

    :cond_22
    :goto_22
    move v0, v2

    :goto_23
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->MHSDBG:Z

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    const-wide/16 v3, 0x0

    .line 68
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mDeathRecipientCookie:J

    .line 69
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mLock:Ljava/lang/Object;

    .line 73
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->isRegisteredVar:Z

    .line 98
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$2;-><init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mServiceNotificationCallback:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceNotification;

    .line 438
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mMHSDumpLogs:Ljava/util/List;

    .line 75
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mEventHandler:Landroid/os/Handler;

    .line 77
    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 78
    new-instance p1, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$ServiceManagerDeathRecipient;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$ServiceManagerDeathRecipient;-><init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$ServiceManagerDeathRecipient-IA;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mServiceManagerDeathRecipient:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$ServiceManagerDeathRecipient;

    .line 79
    new-instance p1, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$SehHostapdDeathRecipient;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$SehHostapdDeathRecipient;-><init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$SehHostapdDeathRecipient-IA;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mSehHostapdDeathRecipient:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$SehHostapdDeathRecipient;

    .line 80
    new-instance p1, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$1;-><init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mLocalHandler:Landroid/os/Handler;

    .line 94
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->initialize()Z

    move-result p1

    if-nez p1, :cond_6f

    .line 95
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mLocalHandler:Landroid/os/Handler;

    const-wide/16 p1, 0x12c

    invoke-virtual {p0, v2, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_6f
    return-void
.end method

.method private getSehHostapdMockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 235
    :try_start_3
    invoke-static {}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd;->getService()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd;->castFrom(Landroid/os/IHwInterface;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd;

    move-result-object v0
    :try_end_b
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_b} :catch_f
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    :try_start_b
    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    goto :goto_1a

    :catch_f
    move-exception v0

    .line 237
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get ISehHostapd"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 238
    monitor-exit p0

    return-object v0

    .line 240
    :goto_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_d

    throw v0
.end method

.method private initSehHostapdService()Z
    .registers 8

    .line 247
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 249
    :try_start_4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->getSehHostapdMockable()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_6a
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_a} :catch_51
    .catchall {:try_start_4 .. :try_end_a} :catchall_4f

    if-nez v2, :cond_15

    .line 258
    :try_start_c
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->TAG:Ljava/lang/String;

    const-string v2, "Got null ISehHostapd service. Stopping hostapd HIDL startup"

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    monitor-exit v0

    return v1

    .line 261
    :cond_15
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mSehHostapdDeathRecipient:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$SehHostapdDeathRecipient;

    iget-wide v3, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mDeathRecipientCookie:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mDeathRecipientCookie:J

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->linkToSehHostapdDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_30

    .line 262
    sget-object v2, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->TAG:Ljava/lang/String;

    const-string v4, "Fail to link to SehHostapd Death, Stopping hostapd HIDL startup"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iput-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd;

    .line 264
    monitor-exit v0

    return v1

    .line 267
    :cond_30
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->isSamsungV3_0()Z

    move-result v2

    if-eqz v2, :cond_4c

    new-instance v2, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$SehHostapdCallback;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$SehHostapdCallback;-><init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->sehRegisterCallback(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapdCallback;)Z

    move-result v2

    if-nez v2, :cond_4c

    .line 268
    sget-object v2, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->TAG:Ljava/lang/String;

    const-string v4, "Fail to regiester sehRegisterCallback, Stopping hostapd HIDL startup"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iput-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd;

    .line 270
    monitor-exit v0

    return v1

    .line 272
    :cond_4c
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_4f
    move-exception p0

    goto :goto_83

    :catch_51
    move-exception p0

    .line 254
    sget-object v2, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ISehHostapd.getService exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    monitor-exit v0

    return v1

    :catch_6a
    move-exception p0

    .line 251
    sget-object v2, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ISehHostapd.getService exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    monitor-exit v0

    return v1

    .line 272
    :goto_83
    monitor-exit v0
    :try_end_84
    .catchall {:try_start_c .. :try_end_84} :catchall_4f

    throw p0
.end method

.method private initialize()Z
    .registers 9

    .line 148
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_3
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->TAG:Ljava/lang/String;

    const-string v2, "Registering ISehHostapd service ready callback."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 152
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd;

    .line 154
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    const/4 v3, 0x1

    if-eqz v2, :cond_14

    .line 157
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_6b

    return v3

    :cond_14
    const/4 v2, 0x0

    .line 160
    :try_start_15
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->getServiceManagerMockable()Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    if-nez v4, :cond_26

    .line 162
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->TAG:Ljava/lang/String;

    const-string v4, "Failed to get HIDL Service Manager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_24} :catch_50
    .catchall {:try_start_15 .. :try_end_24} :catchall_6b

    .line 163
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_6b

    return v2

    .line 165
    :cond_26
    :try_start_26
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->linkToServiceManagerDeath()Z

    move-result v4
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2a} :catch_50
    .catchall {:try_start_26 .. :try_end_2a} :catchall_6b

    if-nez v4, :cond_2e

    .line 166
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_6b

    return v2

    .line 168
    :cond_2e
    :try_start_2e
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    const-string v5, "vendor.samsung.hardware.wifi.hostapd@3.0::ISehHostapd"

    const-string v6, "default"

    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mServiceNotificationCallback:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceNotification;

    invoke-interface {v4, v5, v6, v7}, Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v4

    if-nez v4, :cond_47

    .line 170
    sget-object v3, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->TAG:Ljava/lang/String;

    const-string v4, "Failed to register for notifications to vendor.samsung.hardware.wifi.hostapd@3.0::ISehHostapd"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_45} :catch_50
    .catchall {:try_start_2e .. :try_end_45} :catchall_6b

    .line 173
    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_6b

    return v2

    .line 175
    :cond_47
    :try_start_47
    sget-object v4, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->TAG:Ljava/lang/String;

    const-string v5, "registerForNotifications successful"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4e} :catch_50
    .catchall {:try_start_47 .. :try_end_4e} :catchall_6b

    .line 183
    :try_start_4e
    monitor-exit v0

    return v3

    :catch_50
    move-exception v3

    .line 178
    sget-object v4, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while trying to register a listener for ISehHostapd service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    .line 181
    monitor-exit v0

    return v2

    :catchall_6b
    move-exception p0

    .line 184
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_4e .. :try_end_6d} :catchall_6b

    throw p0
.end method

.method private linkToSehHostapdDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 6

    .line 217
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd;

    const/4 v1, 0x0

    if-nez p0, :cond_a

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_26

    return v1

    .line 220
    :cond_a
    :try_start_a
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result p0

    if-nez p0, :cond_19

    .line 221
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->TAG:Ljava/lang/String;

    const-string p1, "Error on linkToDeath on ISehHostapd"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_17} :catch_1c
    .catchall {:try_start_a .. :try_end_17} :catchall_26

    .line 222
    :try_start_17
    monitor-exit v0

    return v1

    :cond_19
    const/4 p0, 0x1

    .line 228
    monitor-exit v0

    return p0

    :catch_1c
    move-exception p0

    .line 225
    sget-object p1, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->TAG:Ljava/lang/String;

    const-string p2, "ISehHostapd.linkToDeath exception"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    monitor-exit v0

    return v1

    :catchall_26
    move-exception p0

    .line 229
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_17 .. :try_end_28} :catchall_26

    throw p0
.end method

.method private linkToServiceManagerDeath()Z
    .registers 8

    .line 196
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_2f

    return v2

    :cond_a
    const/4 v3, 0x0

    .line 199
    :try_start_b
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mServiceManagerDeathRecipient:Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3$ServiceManagerDeathRecipient;

    const-wide/16 v5, 0x0

    invoke-interface {v1, v4, v5, v6}, Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v1

    if-nez v1, :cond_20

    .line 200
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->TAG:Ljava/lang/String;

    const-string v4, "Error on linkToDeath on IServiceManager"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iput-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1e} :catch_23
    .catchall {:try_start_b .. :try_end_1e} :catchall_2f

    .line 202
    :try_start_1e
    monitor-exit v0

    return v2

    :cond_20
    const/4 p0, 0x1

    .line 209
    monitor-exit v0

    return p0

    :catch_23
    move-exception v1

    .line 205
    sget-object v4, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->TAG:Ljava/lang/String;

    const-string v5, "IServiceManager.linkToDeath exception"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    iput-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    .line 207
    monitor-exit v0

    return v2

    :catchall_2f
    move-exception p0

    .line 210
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_1e .. :try_end_31} :catchall_2f

    throw p0
.end method

.method private showMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 460
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->MHSDBG:Z

    if-eqz p0, :cond_5

    return-object p1

    .line 463
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

    .line 440
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 441
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mhs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mMHSDumpLogs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
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

    .line 444
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mMHSDumpLogs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0x64

    if-le p1, v1, :cond_66

    .line 445
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mMHSDumpLogs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_66
    .catchall {:try_start_1 .. :try_end_66} :catchall_71

    .line 448
    :cond_66
    :try_start_66
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mMHSDumpLogs:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6f} :catch_6f
    .catchall {:try_start_66 .. :try_end_6f} :catchall_71

    .line 452
    :catch_6f
    monitor-exit p0

    return-void

    :catchall_71
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDumpLogs()Ljava/lang/String;
    .registers 3

    .line 454
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "--SemHostapdHalV3 history \n"

    .line 455
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 456
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mMHSDumpLogs:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 457
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getServiceManagerMockable()Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 188
    :try_start_3
    invoke-static {}, Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;->getService()Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    .line 189
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public isRegistered()Z
    .registers 1

    .line 115
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->isRegisteredVar:Z

    return p0
.end method

.method public isSamsungV3_0()Z
    .registers 6

    .line 421
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 422
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mIServiceManager:Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;

    const/4 v1, 0x0

    if-nez p0, :cond_11

    .line 423
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->TAG:Ljava/lang/String;

    const-string v2, "isV1_1: called but mServiceManager is null!?"

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_37

    return v1

    :cond_11
    :try_start_11
    const-string v2, "vendor.samsung.hardware.wifi.hostapd@3.0::ISehHostapd"

    const-string v3, "default"

    .line 427
    invoke-interface {p0, v2, v3}, Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceManager;->getTransport(Ljava/lang/String;Ljava/lang/String;)B

    move-result p0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_19} :catch_1e
    .catchall {:try_start_11 .. :try_end_19} :catchall_37

    if-eqz p0, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    :try_start_1c
    monitor-exit v0

    return v1

    :catch_1e
    move-exception p0

    .line 432
    sget-object v2, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while operating on IServiceManager: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    monitor-exit v0

    return v1

    :catchall_37
    move-exception p0

    .line 436
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_1c .. :try_end_39} :catchall_37

    throw p0
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

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 280
    :try_start_6
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/data/misc/wifi_hostapd/hostapd.accept"

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    const/16 v4, 0x40

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_16} :catch_5c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_52
    .catchall {:try_start_6 .. :try_end_16} :catchall_50

    .line 281
    :cond_16
    :goto_16
    :try_start_16
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_43

    const-string v3, "#"

    .line 284
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v3, 0x1

    .line 285
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 286
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 287
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADD_ALLOW_LIST "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd;->sehSendCommand(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_42} :catch_4d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_42} :catch_4a
    .catchall {:try_start_16 .. :try_end_42} :catchall_47

    goto :goto_16

    .line 297
    :cond_43
    :try_start_43
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_66

    goto :goto_6a

    :catchall_47
    move-exception p0

    move-object v1, v2

    goto :goto_6b

    :catch_4a
    move-exception p0

    move-object v1, v2

    goto :goto_53

    :catch_4d
    move-exception p0

    move-object v1, v2

    goto :goto_5d

    :catchall_50
    move-exception p0

    goto :goto_6b

    :catch_52
    move-exception p0

    .line 293
    :goto_53
    :try_start_53
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_50

    if-eqz v1, :cond_6a

    .line 297
    :try_start_58
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_66

    goto :goto_6a

    :catch_5c
    move-exception p0

    .line 291
    :goto_5d
    :try_start_5d
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_50

    if-eqz v1, :cond_6a

    .line 297
    :try_start_62
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_6a

    :catch_66
    move-exception p0

    .line 299
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6a
    :goto_6a
    return-object v0

    :goto_6b
    if-eqz v1, :cond_75

    .line 297
    :try_start_6d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_75

    :catch_71
    move-exception v0

    .line 299
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 302
    :cond_75
    :goto_75
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

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 310
    :try_start_6
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/data/misc/wifi_hostapd/hostapd.deny"

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    const/16 v4, 0x40

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_16} :catch_5c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_52
    .catchall {:try_start_6 .. :try_end_16} :catchall_50

    .line 311
    :cond_16
    :goto_16
    :try_start_16
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_43

    const-string v3, "#"

    .line 314
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v3, 0x1

    .line 315
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 316
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 317
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADD_DENY_LIST "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd;->sehSendCommand(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_42} :catch_4d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_42} :catch_4a
    .catchall {:try_start_16 .. :try_end_42} :catchall_47

    goto :goto_16

    .line 327
    :cond_43
    :try_start_43
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_66

    goto :goto_6a

    :catchall_47
    move-exception p0

    move-object v1, v2

    goto :goto_6b

    :catch_4a
    move-exception p0

    move-object v1, v2

    goto :goto_53

    :catch_4d
    move-exception p0

    move-object v1, v2

    goto :goto_5d

    :catchall_50
    move-exception p0

    goto :goto_6b

    :catch_52
    move-exception p0

    .line 323
    :goto_53
    :try_start_53
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_50

    if-eqz v1, :cond_6a

    .line 327
    :try_start_58
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_66

    goto :goto_6a

    :catch_5c
    move-exception p0

    .line 321
    :goto_5d
    :try_start_5d
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_50

    if-eqz v1, :cond_6a

    .line 327
    :try_start_62
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_6a

    :catch_66
    move-exception p0

    .line 329
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6a
    :goto_6a
    return-object v0

    :goto_6b
    if-eqz v1, :cond_75

    .line 327
    :try_start_6d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_75

    :catch_71
    move-exception v0

    .line 329
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 332
    :cond_75
    :goto_75
    throw p0
.end method

.method public sehRegisterCallback(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapdCallback;)Z
    .registers 5

    .line 367
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->TAG:Ljava/lang/String;

    const-string v1, "sehRegisterCallback "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd;

    const/4 v0, 0x0

    if-nez p0, :cond_14

    .line 369
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->TAG:Ljava/lang/String;

    const-string p1, "mISehHostapd is null "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 373
    :cond_14
    :try_start_14
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd;->sehRegisterCallback(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapdCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;

    move-result-object p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_18} :catch_19

    goto :goto_31

    :catch_19
    move-exception p0

    .line 375
    sget-object p1, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mISehHostapd exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_31
    if-eqz p0, :cond_41

    .line 377
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;->code:I

    if-eqz p0, :cond_38

    goto :goto_41

    .line 381
    :cond_38
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->TAG:Ljava/lang/String;

    const-string p1, "sehRegisterCallback successful "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 378
    :cond_41
    :goto_41
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->TAG:Ljava/lang/String;

    const-string p1, "sehRegisterCallback failed "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 343
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISehHostapd command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd;

    const/4 v1, 0x0

    if-eqz v0, :cond_7f

    .line 348
    :try_start_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  sendHostapdCommand:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",isRegisteredVar:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->isRegisteredVar:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->addMHSDumpLog(Ljava/lang/String;)V

    .line 349
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->mISehHostapd:Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd;

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V3_0/ISehHostapd;->sehSendCommand(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;

    move-result-object p0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_44} :catch_45

    goto :goto_5d

    :catch_45
    move-exception p0

    .line 351
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mISehHostapd exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v1

    :goto_5d
    if-eqz p0, :cond_67

    .line 353
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;->code:I

    if-eqz v0, :cond_64

    goto :goto_67

    .line 360
    :cond_64
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;->debugMessage:Ljava/lang/String;

    return-object p0

    .line 354
    :cond_67
    :goto_67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_7f

    const-string p0, "NUM_STA"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7f

    .line 355
    sget-object p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalV3;->TAG:Ljava/lang/String;

    const-string p1, "ISehHostapd command NUM_STA abnormal "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "0"

    return-object p0

    :cond_7f
    return-object v1
.end method
