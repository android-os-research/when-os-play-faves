.class public Lcom/android/internal/telephony/RadioConfig;
.super Landroid/os/Handler;
.source "RadioConfig.java"


# static fields
.field static final blacklist RADIO_CONFIG_HAL_VERSION_1_0:Lcom/android/internal/telephony/HalVersion;

.field static final blacklist RADIO_CONFIG_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

.field static final blacklist RADIO_CONFIG_HAL_VERSION_1_3:Lcom/android/internal/telephony/HalVersion;

.field static final blacklist RADIO_CONFIG_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

.field static final blacklist RADIO_CONFIG_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

.field private static blacklist sContext:Landroid/content/Context;

.field private static final blacklist sLock:Ljava/lang/Object;

.field private static blacklist sRadioConfig:Lcom/android/internal/telephony/RadioConfig;


# instance fields
.field private final blacklist mDefaultWorkSource:Landroid/os/WorkSource;

.field private final blacklist mDeviceNrCapabilities:[I

.field private final blacklist mIsMobileNetworkSupported:Z

.field private blacklist mMockModem:Lcom/android/internal/telephony/MockModem;

.field private final blacklist mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

.field private final blacklist mRadioConfigProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field private final blacklist mRequestList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/RILRequest;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mSimSlotStatusRegistrant:Lcom/android/internal/telephony/Registrant;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/RadioConfig;->sLock:Ljava/lang/Object;

    .line 63
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/RadioConfig;->RADIO_CONFIG_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    .line 64
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/RadioConfig;->RADIO_CONFIG_HAL_VERSION_1_0:Lcom/android/internal/telephony/HalVersion;

    .line 65
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v1, v1}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/RadioConfig;->RADIO_CONFIG_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    .line 66
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/RadioConfig;->RADIO_CONFIG_HAL_VERSION_1_3:Lcom/android/internal/telephony/HalVersion;

    .line 67
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/RadioConfig;->RADIO_CONFIG_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/HalVersion;)V
    .registers 6

    .line 88
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 89
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioConfig;->isMobileDataCapable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/RadioConfig;->mIsMobileNetworkSupported:Z

    .line 90
    new-instance v0, Lcom/android/internal/telephony/RadioConfigProxy;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/telephony/RadioConfigProxy;-><init>(Lcom/android/internal/telephony/RadioConfig;Lcom/android/internal/telephony/HalVersion;)V

    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    .line 91
    new-instance p2, Landroid/os/WorkSource;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RadioConfig;->mDefaultWorkSource:Landroid/os/WorkSource;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x11101e4

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x11101e3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p2, :cond_51

    if-nez p1, :cond_51

    const/4 p1, 0x0

    new-array p1, p1, [I

    .line 100
    iput-object p1, p0, Lcom/android/internal/telephony/RadioConfig;->mDeviceNrCapabilities:[I

    goto :goto_7d

    .line 102
    :cond_51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_60

    const/4 p1, 0x1

    .line 104
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_60
    if-eqz p2, :cond_6a

    const/4 p1, 0x2

    .line 107
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_6a
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/RadioConfig$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/android/internal/telephony/RadioConfig$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/RadioConfig;->mDeviceNrCapabilities:[I

    :goto_7d
    return-void
.end method

.method private blacklist clearRequestList(IZ)V
    .registers 9

    .line 162
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 163
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz p2, :cond_1f

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearRequestList: mRequestList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    if-ge v2, v1, :cond_5d

    .line 169
    iget-object v3, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/RILRequest;

    if-eqz p2, :cond_53

    .line 171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    :cond_53
    const/4 v4, 0x0

    .line 173
    invoke-virtual {v3, p1, v4}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 174
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 176
    :cond_5d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 177
    monitor-exit v0

    return-void

    :catchall_64
    move-exception p0

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_3 .. :try_end_66} :catchall_64

    throw p0
.end method

.method private blacklist findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;
    .registers 4

    .line 353
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 354
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RILRequest;

    if-eqz v1, :cond_12

    .line 356
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 358
    :cond_12
    monitor-exit v0

    return-object v1

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/RadioConfig;
    .registers 3

    .line 117
    sget-object v0, Lcom/android/internal/telephony/RadioConfig;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/RadioConfig;->sRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    if-eqz v1, :cond_9

    .line 122
    monitor-exit v0

    return-object v1

    .line 119
    :cond_9
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "RadioConfig.getInstance can\'t be called before make()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_11
    move-exception v1

    .line 123
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private blacklist isMobileDataCapable(Landroid/content/Context;)Z
    .registers 2

    .line 84
    const-class p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_12

    .line 85
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .registers 2

    const-string v0, "RadioConfig"

    .line 633
    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2

    const-string v0, "RadioConfig"

    .line 637
    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist make(Landroid/content/Context;Lcom/android/internal/telephony/HalVersion;)Lcom/android/internal/telephony/RadioConfig;
    .registers 4

    .line 130
    sget-object v0, Lcom/android/internal/telephony/RadioConfig;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/RadioConfig;->sRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    if-nez v1, :cond_12

    .line 134
    sput-object p0, Lcom/android/internal/telephony/RadioConfig;->sContext:Landroid/content/Context;

    .line 135
    new-instance v1, Lcom/android/internal/telephony/RadioConfig;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/RadioConfig;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/HalVersion;)V

    sput-object v1, Lcom/android/internal/telephony/RadioConfig;->sRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    .line 136
    monitor-exit v0

    return-object v1

    .line 132
    :cond_12
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "RadioConfig.make() should only be called once"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1a
    move-exception p0

    .line 137
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method private blacklist obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;
    .registers 4

    .line 344
    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 345
    iget-object p2, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    monitor-enter p2

    .line 346
    :try_start_7
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfig;->mRequestList:Landroid/util/SparseArray;

    iget p3, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p3, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 347
    monitor-exit p2

    return-object p1

    :catchall_10
    move-exception p0

    monitor-exit p2
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw p0
.end method

.method private blacklist resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/RadioConfig;->loge(Ljava/lang/String;)V

    .line 182
    iget-object p1, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioConfigProxy;->clear()V

    .line 185
    iget-object p1, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 187
    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioConfig;->clearRequestList(IZ)V

    const/4 p1, 0x0

    .line 191
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioConfig;->getRadioConfigProxy(Landroid/os/Message;)Lcom/android/internal/telephony/RadioConfigProxy;

    return-void
.end method

.method private blacklist updateRadioConfigProxy()V
    .registers 5

    .line 285
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mMockModem:Lcom/android/internal/telephony/MockModem;

    if-nez v0, :cond_1c

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/hardware/radio/config/IRadioConfig;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_21

    :cond_1c
    const/4 v1, 0x7

    .line 290
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MockModem;->getServiceBinder(I)Landroid/os/IBinder;

    move-result-object v0

    :goto_21
    if-eqz v0, :cond_2e

    .line 294
    iget-object v1, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    sget-object v2, Lcom/android/internal/telephony/RadioConfig;->RADIO_CONFIG_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    .line 296
    invoke-static {v0}, Landroid/hardware/radio/config/IRadioConfig$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/config/IRadioConfig;

    move-result-object v0

    .line 294
    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/RadioConfigProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/config/IRadioConfig;)V

    .line 299
    :cond_2e
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioConfigProxy;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5d

    .line 301
    :try_start_37
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    sget-object v2, Lcom/android/internal/telephony/RadioConfig;->RADIO_CONFIG_HAL_VERSION_1_3:Lcom/android/internal/telephony/HalVersion;

    .line 302
    invoke-static {v1}, Landroid/hardware/radio/config/V1_3/IRadioConfig;->getService(Z)Landroid/hardware/radio/config/V1_3/IRadioConfig;

    move-result-object v3

    .line 301
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/RadioConfigProxy;->setHidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/config/V1_0/IRadioConfig;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_42} :catch_43
    .catch Ljava/util/NoSuchElementException; {:try_start_37 .. :try_end_42} :catch_43

    goto :goto_5d

    :catch_43
    move-exception v0

    .line 304
    iget-object v2, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RadioConfigProxy;->clear()V

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHidlRadioConfigProxy1_3: RadioConfigProxy getService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RadioConfig;->loge(Ljava/lang/String;)V

    .line 309
    :cond_5d
    :goto_5d
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioConfigProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 311
    :try_start_65
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    sget-object v2, Lcom/android/internal/telephony/RadioConfig;->RADIO_CONFIG_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    .line 312
    invoke-static {v1}, Landroid/hardware/radio/config/V1_1/IRadioConfig;->getService(Z)Landroid/hardware/radio/config/V1_1/IRadioConfig;

    move-result-object v3

    .line 311
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/RadioConfigProxy;->setHidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/config/V1_0/IRadioConfig;)V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_70} :catch_71
    .catch Ljava/util/NoSuchElementException; {:try_start_65 .. :try_end_70} :catch_71

    goto :goto_8b

    :catch_71
    move-exception v0

    .line 314
    iget-object v2, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RadioConfigProxy;->clear()V

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHidlRadioConfigProxy1_1: RadioConfigProxy getService | linkToDeath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RadioConfig;->loge(Ljava/lang/String;)V

    .line 319
    :cond_8b
    :goto_8b
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioConfigProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 321
    :try_start_93
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    sget-object v2, Lcom/android/internal/telephony/RadioConfig;->RADIO_CONFIG_HAL_VERSION_1_0:Lcom/android/internal/telephony/HalVersion;

    .line 322
    invoke-static {v1}, Landroid/hardware/radio/config/V1_0/IRadioConfig;->getService(Z)Landroid/hardware/radio/config/V1_0/IRadioConfig;

    move-result-object v1

    .line 321
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/RadioConfigProxy;->setHidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/config/V1_0/IRadioConfig;)V
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_93 .. :try_end_9e} :catch_9f
    .catch Ljava/util/NoSuchElementException; {:try_start_93 .. :try_end_9e} :catch_9f

    goto :goto_b9

    :catch_9f
    move-exception v0

    .line 324
    iget-object v1, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioConfigProxy;->clear()V

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHidlRadioConfigProxy1_0: RadioConfigProxy getService | linkToDeath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RadioConfig;->loge(Ljava/lang/String;)V

    .line 329
    :cond_b9
    :goto_b9
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioConfigProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_dc

    .line 331
    :try_start_c1
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/RadioConfigProxy;->linkToDeath(J)V

    .line 332
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/RadioConfigProxy;->setResponseFunctions(Lcom/android/internal/telephony/RadioConfig;)V
    :try_end_d1
    .catch Landroid/os/RemoteException; {:try_start_c1 .. :try_end_d1} :catch_d2

    return-void

    .line 335
    :catch_d2
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioConfigProxy;->clear()V

    const-string p0, "RadioConfigProxy: failed to linkToDeath() or setResponseFunction()"

    .line 336
    invoke-static {p0}, Lcom/android/internal/telephony/RadioConfig;->loge(Ljava/lang/String;)V

    :cond_dc
    const-string p0, "getRadioConfigProxy: mRadioConfigProxy == null"

    .line 340
    invoke-static {p0}, Lcom/android/internal/telephony/RadioConfig;->loge(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist getDeviceNrCapabilities()[I
    .registers 1

    .line 629
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfig;->mDeviceNrCapabilities:[I

    return-object p0
.end method

.method public blacklist getHalDeviceCapabilities(Landroid/os/Message;)V
    .registers 5

    .line 590
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RadioConfig;->getRadioConfigProxy(Landroid/os/Message;)Lcom/android/internal/telephony/RadioConfigProxy;

    move-result-object v0

    .line 591
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioConfigProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    return-void

    .line 593
    :cond_f
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioConfigProxy;->getVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/RadioConfig;->RADIO_CONFIG_HAL_VERSION_1_3:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_38

    if-eqz p1, :cond_32

    const-string p0, "RIL_REQUEST_GET_HAL_DEVICE_CAPABILITIES > REQUEST_NOT_SUPPORTED"

    .line 596
    invoke-static {p0}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    .line 601
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioConfigProxy;->getFullCapabilitySet()Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x6

    .line 602
    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 598
    invoke-static {p1, p0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 603
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_37

    :cond_32
    const-string p0, "RIL_REQUEST_GET_HAL_DEVICE_CAPABILITIES > REQUEST_NOT_SUPPORTED on complete message not set."

    .line 606
    invoke-static {p0}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    :goto_37
    return-void

    :cond_38
    const/16 v1, 0xdc

    .line 613
    iget-object v2, p0, Lcom/android/internal/telephony/RadioConfig;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RadioConfig;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    .line 619
    :try_start_61
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RadioConfigProxy;->getHalDeviceCapabilities(I)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_66} :catch_67
    .catch Ljava/lang/RuntimeException; {:try_start_61 .. :try_end_66} :catch_67

    goto :goto_6d

    :catch_67
    move-exception p1

    const-string v0, "getHalDeviceCapabilities"

    .line 621
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/RadioConfig;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_6d
    return-void
.end method

.method public blacklist getPhoneCapability(Landroid/os/Message;)V
    .registers 6

    const/4 v0, 0x0

    .line 485
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RadioConfig;->getRadioConfigProxy(Landroid/os/Message;)Lcom/android/internal/telephony/RadioConfigProxy;

    move-result-object v1

    .line 486
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioConfigProxy;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    return-void

    .line 488
    :cond_c
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioConfigProxy;->getVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/RadioConfig;->RADIO_CONFIG_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_26

    if-eqz p1, :cond_25

    const/4 p0, 0x6

    .line 491
    invoke-static {p0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p0

    .line 490
    invoke-static {p1, v0, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 492
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_25
    return-void

    :cond_26
    const/16 v0, 0xce

    .line 497
    iget-object v2, p0, Lcom/android/internal/telephony/RadioConfig;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p1, v2}, Lcom/android/internal/telephony/RadioConfig;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    .line 502
    :try_start_4f
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/RadioConfigProxy;->getPhoneCapability(I)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_54} :catch_55
    .catch Ljava/lang/RuntimeException; {:try_start_4f .. :try_end_54} :catch_55

    goto :goto_5b

    :catch_55
    move-exception p1

    const-string v0, "getPhoneCapability"

    .line 504
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/RadioConfig;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_5b
    return-void
.end method

.method public blacklist getRadioConfigProxy(Landroid/os/Message;)Lcom/android/internal/telephony/RadioConfigProxy;
    .registers 5

    .line 201
    iget-boolean v0, p0, Lcom/android/internal/telephony/RadioConfig;->mIsMobileNetworkSupported:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1a

    if-eqz p1, :cond_12

    .line 205
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 204
    invoke-static {p1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 206
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 208
    :cond_12
    iget-object p1, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioConfigProxy;->clear()V

    .line 209
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    return-object p0

    .line 212
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioConfigProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 213
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    return-object p0

    .line 216
    :cond_25
    invoke-direct {p0}, Lcom/android/internal/telephony/RadioConfig;->updateRadioConfigProxy()V

    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioConfigProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3c

    if-eqz p1, :cond_3c

    .line 220
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 219
    invoke-static {p1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 221
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 224
    :cond_3c
    iget-object p0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxy:Lcom/android/internal/telephony/RadioConfigProxy;

    return-object p0
.end method

.method public blacklist getSimSlotsStatus(Landroid/os/Message;)V
    .registers 5

    .line 439
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioConfig;->getRadioConfigProxy(Landroid/os/Message;)Lcom/android/internal/telephony/RadioConfigProxy;

    move-result-object v0

    .line 440
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioConfigProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    :cond_b
    const/16 v1, 0xc8

    .line 442
    iget-object v2, p0, Lcom/android/internal/telephony/RadioConfig;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/RadioConfig;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    .line 447
    :try_start_34
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RadioConfigProxy;->getSimSlotStatus(I)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_39} :catch_3a
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_39} :catch_3a

    goto :goto_40

    :catch_3a
    move-exception p1

    const-string v0, "getSimSlotsStatus"

    .line 449
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/RadioConfig;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_40
    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 142
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_42

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: EVENT_HIDL_SERVICE_DEAD cookie = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mRadioConfigProxyCookie = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 144
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    .line 145
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object p1, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_64

    const-string p1, "EVENT_HIDL_SERVICE_DEAD"

    .line 146
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/RadioConfig;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_64

    :cond_42
    const/4 p1, 0x2

    if-ne v0, p1, :cond_64

    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage: EVENT_AIDL_SERVICE_DEAD mRadioConfigProxyCookie = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mRadioConfigProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 150
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-static {p1}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    const-string p1, "EVENT_AIDL_SERVICE_DEAD"

    .line 151
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/RadioConfig;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_64
    :goto_64
    return-void
.end method

.method public blacklist isSetPreferredDataCommandSupported()Z
    .registers 2

    const/4 v0, 0x0

    .line 515
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RadioConfig;->getRadioConfigProxy(Landroid/os/Message;)Lcom/android/internal/telephony/RadioConfigProxy;

    move-result-object p0

    .line 516
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioConfigProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioConfigProxy;->getVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object p0

    sget-object v0, Lcom/android/internal/telephony/RadioConfig;->RADIO_CONFIG_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p0

    if-eqz p0, :cond_19

    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return p0
.end method

.method public blacklist processResponse(Landroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;
    .registers 6

    .line 370
    iget v0, p1, Landroid/hardware/radio/RadioResponseInfo;->serial:I

    .line 371
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    .line 372
    iget p1, p1, Landroid/hardware/radio/RadioResponseInfo;->type:I

    if-eqz p1, :cond_1c

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processResponse: Unexpected response type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/RadioConfig;->loge(Ljava/lang/String;)V

    .line 378
    :cond_1c
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RadioConfig;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    if-nez p0, :cond_3f

    .line 380
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "processResponse: Unexpected response! serial: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " error: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RadioConfig;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_3f
    return-object p0
.end method

.method public blacklist processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;
    .registers 6

    .line 394
    iget v0, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->serial:I

    .line 395
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    .line 396
    iget p1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    if-eqz p1, :cond_1c

    .line 399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processResponse: Unexpected response type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/RadioConfig;->loge(Ljava/lang/String;)V

    .line 402
    :cond_1c
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RadioConfig;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    if-nez p0, :cond_3f

    .line 404
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "processResponse: Unexpected response! serial: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " error: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RadioConfig;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_3f
    return-object p0
.end method

.method public blacklist processResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;
    .registers 6

    .line 419
    iget v0, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->serial:I

    .line 420
    iget v1, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    .line 421
    iget p1, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->type:I

    if-eqz p1, :cond_1c

    .line 423
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processResponse: Unexpected response type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/RadioConfig;->loge(Ljava/lang/String;)V

    .line 426
    :cond_1c
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RadioConfig;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    if-nez p0, :cond_3f

    .line 428
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "processResponse: Unexpected response! serial: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " error: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/RadioConfig;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_3f
    return-object p0
.end method

.method public blacklist registerForSimSlotStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 573
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mSimSlotStatusRegistrant:Lcom/android/internal/telephony/Registrant;

    return-void
.end method

.method public blacklist setModemService(Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_55

    const-string v2, "Overriding connected service to MockModemService"

    .line 237
    invoke-static {v2}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    .line 238
    iput-object v1, p0, Lcom/android/internal/telephony/RadioConfig;->mMockModem:Lcom/android/internal/telephony/MockModem;

    .line 240
    new-instance v2, Lcom/android/internal/telephony/MockModem;

    sget-object v3, Lcom/android/internal/telephony/RadioConfig;->sContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/android/internal/telephony/MockModem;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/telephony/RadioConfig;->mMockModem:Lcom/android/internal/telephony/MockModem;

    const/4 v3, 0x7

    .line 246
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/MockModem;->bindToMockModemService(I)V

    const/4 v2, 0x0

    move v4, v2

    .line 251
    :cond_1a
    iget-object v5, p0, Lcom/android/internal/telephony/RadioConfig;->mMockModem:Lcom/android/internal/telephony/MockModem;

    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/MockModem;->getServiceBinder(I)Landroid/os/IBinder;

    move-result-object v5

    add-int/2addr v4, v0

    if-nez v5, :cond_41

    .line 255
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retry("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") Mock RadioConfig"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    const-wide/16 v6, 0x12c

    .line 257
    :try_start_3e
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_41
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_41} :catch_41

    :catch_41
    :cond_41
    if-nez v5, :cond_46

    const/4 v6, 0x3

    if-lt v4, v6, :cond_1a

    :cond_46
    if-nez v5, :cond_4e

    const-string v0, "Mock RadioConfig bind fail"

    .line 264
    invoke-static {v0}, Lcom/android/internal/telephony/RadioConfig;->loge(Ljava/lang/String;)V

    move v0, v2

    :cond_4e
    if-eqz v0, :cond_55

    const-string v2, "EVENT_HIDL_SERVICE_DEAD"

    .line 268
    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/RadioConfig;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_55
    if-eqz p1, :cond_59

    if-nez v0, :cond_6b

    :cond_59
    if-eqz v0, :cond_60

    const-string p1, "Unbinding to mock RadioConfig service"

    .line 272
    invoke-static {p1}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    .line 274
    :cond_60
    iget-object p1, p0, Lcom/android/internal/telephony/RadioConfig;->mMockModem:Lcom/android/internal/telephony/MockModem;

    if-eqz p1, :cond_6b

    .line 275
    iput-object v1, p0, Lcom/android/internal/telephony/RadioConfig;->mMockModem:Lcom/android/internal/telephony/MockModem;

    const-string p1, "EVENT_AIDL_SERVICE_DEAD"

    .line 276
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/RadioConfig;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_6b
    return v0
.end method

.method public blacklist setNumOfLiveModems(ILandroid/os/Message;)V
    .registers 6

    .line 544
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RadioConfig;->getRadioConfigProxy(Landroid/os/Message;)Lcom/android/internal/telephony/RadioConfigProxy;

    move-result-object v0

    .line 545
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioConfigProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    .line 547
    :cond_b
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioConfigProxy;->getVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/RadioConfig;->RADIO_CONFIG_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_26

    if-eqz p2, :cond_25

    const/4 p0, 0x0

    const/4 p1, 0x6

    .line 550
    invoke-static {p1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p1

    .line 549
    invoke-static {p2, p0, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 551
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_25
    return-void

    :cond_26
    const/16 v1, 0xcf

    .line 556
    iget-object v2, p0, Lcom/android/internal/telephony/RadioConfig;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RadioConfig;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", numOfLiveModems = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    .line 563
    :try_start_57
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/RadioConfigProxy;->setNumOfLiveModems(II)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_5c} :catch_5d
    .catch Ljava/lang/RuntimeException; {:try_start_57 .. :try_end_5c} :catch_5d

    goto :goto_63

    :catch_5d
    move-exception p1

    const-string p2, "setNumOfLiveModems"

    .line 565
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/RadioConfig;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_63
    return-void
.end method

.method public blacklist setPreferredDataModem(ILandroid/os/Message;)V
    .registers 6

    const/4 v0, 0x0

    .line 457
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RadioConfig;->getRadioConfigProxy(Landroid/os/Message;)Lcom/android/internal/telephony/RadioConfigProxy;

    move-result-object v1

    .line 458
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioConfigProxy;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    return-void

    .line 460
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioConfig;->isSetPreferredDataCommandSupported()Z

    move-result v2

    if-nez v2, :cond_20

    if-eqz p2, :cond_1f

    const/4 p0, 0x6

    .line 463
    invoke-static {p0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p0

    .line 462
    invoke-static {p2, v0, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 464
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_1f
    return-void

    :cond_20
    const/16 v0, 0xcc

    .line 469
    iget-object v2, p0, Lcom/android/internal/telephony/RadioConfig;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p2, v2}, Lcom/android/internal/telephony/RadioConfig;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    .line 475
    :try_start_49
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v1, p2, p1}, Lcom/android/internal/telephony/RadioConfigProxy;->setPreferredDataModem(II)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4e} :catch_4f
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_4e} :catch_4f

    goto :goto_55

    :catch_4f
    move-exception p1

    const-string p2, "setPreferredDataModem"

    .line 477
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/RadioConfig;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_55
    return-void
.end method

.method public blacklist setSimSlotsMapping(Ljava/util/List;Landroid/os/Message;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 523
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RadioConfig;->getRadioConfigProxy(Landroid/os/Message;)Lcom/android/internal/telephony/RadioConfigProxy;

    move-result-object v0

    .line 524
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioConfigProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    :cond_b
    const/16 v1, 0xc9

    .line 526
    iget-object v2, p0, Lcom/android/internal/telephony/RadioConfig;->mDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/internal/telephony/RadioConfig;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/RadioConfig;->logd(Ljava/lang/String;)V

    .line 533
    :try_start_3c
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/telephony/RadioConfigProxy;->setSimSlotsMapping(ILjava/util/List;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_41} :catch_42
    .catch Ljava/lang/RuntimeException; {:try_start_3c .. :try_end_41} :catch_42

    goto :goto_48

    :catch_42
    move-exception p1

    const-string p2, "setSimSlotsMapping"

    .line 535
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/RadioConfig;->resetProxyAndRequestList(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_48
    return-void
.end method

.method public blacklist unregisterForSimSlotStatusChanged(Landroid/os/Handler;)V
    .registers 3

    .line 580
    iget-object v0, p0, Lcom/android/internal/telephony/RadioConfig;->mSimSlotStatusRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_12

    .line 581
    iget-object p1, p0, Lcom/android/internal/telephony/RadioConfig;->mSimSlotStatusRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Registrant;->clear()V

    const/4 p1, 0x0

    .line 582
    iput-object p1, p0, Lcom/android/internal/telephony/RadioConfig;->mSimSlotStatusRegistrant:Lcom/android/internal/telephony/Registrant;

    :cond_12
    return-void
.end method
