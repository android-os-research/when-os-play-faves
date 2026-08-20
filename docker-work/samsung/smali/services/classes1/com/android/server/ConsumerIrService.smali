.class public Lcom/android/server/ConsumerIrService;
.super Landroid/hardware/IConsumerIrService$Stub;
.source "ConsumerIrService.java"


# static fields
.field public static final MAX_XMIT_TIME:I = 0x1e8480

.field public static final TAG:Ljava/lang/String; = "ConsumerIrService"


# instance fields
.field public mAidlService:Landroid/hardware/ir/IConsumerIr;

.field public final mContext:Landroid/content/Context;

.field public final mHalLock:Ljava/lang/Object;

.field public final mHasNativeHal:Z

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 44
    invoke-direct {p0}, Landroid/hardware/IConsumerIrService$Stub;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/android/server/ConsumerIrService;->mAidlService:Landroid/hardware/ir/IConsumerIr;

    .line 45
    iput-object p1, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "power"

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "ConsumerIrService"

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ConsumerIrService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 49
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 51
    invoke-virtual {p0}, Lcom/android/server/ConsumerIrService;->getHalService()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "android.hardware.consumerir"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_41

    if-eqz v0, :cond_39

    goto :goto_43

    .line 55
    :cond_39
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "FEATURE_CONSUMER_IR present, but no IR HAL loaded!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_41
    if-nez v0, :cond_44

    :goto_43
    return-void

    .line 58
    :cond_44
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "IR HAL present, but FEATURE_CONSUMER_IR is not set!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native getHidlHalService()Z
.end method

.method private static native halGetCarrierFrequencies()[I
.end method

.method private static native halTransmit(I[I)I
.end method


# virtual methods
.method public getCarrierFrequencies()[I
    .registers 7

    .line 129
    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TRANSMIT_IR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4a

    .line 134
    invoke-virtual {p0}, Lcom/android/server/ConsumerIrService;->throwIfNoIrEmitter()V

    .line 136
    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_10
    iget-object p0, p0, Lcom/android/server/ConsumerIrService;->mAidlService:Landroid/hardware/ir/IConsumerIr;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_47

    if-eqz p0, :cond_41

    .line 139
    :try_start_14
    invoke-interface {p0}, Landroid/hardware/ir/IConsumerIr;->getCarrierFreqs()[Landroid/hardware/ir/ConsumerIrFreqRange;

    move-result-object p0

    .line 140
    array-length v1, p0

    if-gtz v1, :cond_22

    const-string v1, "ConsumerIrService"

    const-string v2, "Error getting carrier frequencies."

    .line 141
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_22
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 144
    :goto_28
    array-length v3, p0

    if-ge v2, v3, :cond_3c

    mul-int/lit8 v3, v2, 0x2

    .line 145
    aget-object v4, p0, v2

    iget v5, v4, Landroid/hardware/ir/ConsumerIrFreqRange;->minHz:I

    aput v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    .line 146
    iget v4, v4, Landroid/hardware/ir/ConsumerIrFreqRange;->maxHz:I

    aput v4, v1, v3
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_39} :catch_3e
    .catchall {:try_start_14 .. :try_end_39} :catchall_47

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 148
    :cond_3c
    :try_start_3c
    monitor-exit v0

    return-object v1

    :catch_3e
    const/4 p0, 0x0

    .line 150
    monitor-exit v0

    return-object p0

    .line 153
    :cond_41
    invoke-static {}, Lcom/android/server/ConsumerIrService;->halGetCarrierFrequencies()[I

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_47
    move-exception p0

    .line 155
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3c .. :try_end_49} :catchall_47

    throw p0

    .line 131
    :cond_4a
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Requires TRANSMIT_IR permission"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getHalService()Z
    .registers 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/hardware/ir/IConsumerIr;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 70
    invoke-static {v0}, Landroid/hardware/ir/IConsumerIr$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ir/IConsumerIr;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ConsumerIrService;->mAidlService:Landroid/hardware/ir/IConsumerIr;

    if-eqz v0, :cond_21

    const/4 p0, 0x1

    return p0

    .line 77
    :cond_21
    invoke-static {}, Lcom/android/server/ConsumerIrService;->getHidlHalService()Z

    move-result p0

    return p0
.end method

.method public hasIrEmitter()Z
    .registers 1

    .line 64
    iget-boolean p0, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    return p0
.end method

.method public final throwIfNoIrEmitter()V
    .registers 2

    .line 81
    iget-boolean p0, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    if-eqz p0, :cond_5

    return-void

    .line 82
    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "IR emitter not available"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public transmit(Ljava/lang/String;I[I)V
    .registers 9

    .line 89
    iget-object p1, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.TRANSMIT_IR"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_76

    const-wide/16 v0, 0x0

    .line 96
    array-length p1, p3

    const/4 v2, 0x0

    :goto_e
    if-ge v2, p1, :cond_21

    aget v3, p3, v2

    if-lez v3, :cond_19

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 98
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Non-positive IR slice"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_21
    const-wide/32 v2, 0x1e8480

    cmp-long p1, v0, v2

    if-gtz p1, :cond_6e

    .line 107
    invoke-virtual {p0}, Lcom/android/server/ConsumerIrService;->throwIfNoIrEmitter()V

    .line 110
    iget-object p1, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter p1

    .line 111
    :try_start_2e
    iget-object p0, p0, Lcom/android/server/ConsumerIrService;->mAidlService:Landroid/hardware/ir/IConsumerIr;
    :try_end_30
    .catchall {:try_start_2e .. :try_end_30} :catchall_6b

    if-eqz p0, :cond_4d

    .line 113
    :try_start_32
    invoke-interface {p0, p2, p3}, Landroid/hardware/ir/IConsumerIr;->transmit(I[I)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_35} :catch_36
    .catchall {:try_start_32 .. :try_end_35} :catchall_6b

    goto :goto_69

    :catch_36
    :try_start_36
    const-string p0, "ConsumerIrService"

    .line 115
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error transmitting frequency: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 118
    :cond_4d
    invoke-static {p2, p3}, Lcom/android/server/ConsumerIrService;->halTransmit(I[I)I

    move-result p0

    if-gez p0, :cond_69

    const-string p2, "ConsumerIrService"

    .line 121
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error transmitting: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_69
    :goto_69
    monitor-exit p1

    return-void

    :catchall_6b
    move-exception p0

    monitor-exit p1
    :try_end_6d
    .catchall {:try_start_36 .. :try_end_6d} :catchall_6b

    throw p0

    .line 104
    :cond_6e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "IR pattern too long"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 91
    :cond_76
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires TRANSMIT_IR permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
