.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;
.super Ljava/lang/Object;
.source "SoundTriggerHw2Compat.java"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;,
        Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SoundTriggerHw2Compat"


# instance fields
.field public final mBinder:Landroid/os/IHwBinder;

.field public final mDeathRecipientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder$DeathRecipient;",
            "Landroid/os/IHwBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field public final mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mProperties:Landroid/media/soundtrigger/Properties;

.field public final mRebootRunnable:Ljava/lang/Runnable;

.field public mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

.field public mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

.field public mUnderlying_2_2:Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

.field public mUnderlying_2_3:Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;


# direct methods
.method public static synthetic $r8$lambda$9xkmsUAk61z_McRprN22AgUZ_5Q(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;ILandroid/hardware/soundtrigger/V2_3/Properties;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->lambda$getPropertiesInternal$0(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;ILandroid/hardware/soundtrigger/V2_3/Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GiWbjVDEP-qQIC2AixehoJHqp-Q(Landroid/os/IBinder$DeathRecipient;J)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->lambda$linkToDeath$5(Landroid/os/IBinder$DeathRecipient;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$JDdoqLFyzo2A7UWrDjJXRIMh2t8(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;II)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->lambda$loadSoundModel$1(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$TzAfs6HlsgNHLoHIopA3_Z04dAc(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;II)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->lambda$getModelParameter$3(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vf5yS4ChHfZvuzyFsrt4xHIQUdE(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;II)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->lambda$loadSoundModel_2_0$7(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZYbUx1PAiKbksGijd4gCWCc_yaU(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->lambda$getProperties_2_0$6(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rJp5CQ4NaJvb7Vt55VS8tFpHE3w(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;II)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->lambda$loadPhraseSoundModel$2(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$v7Mar0hm4xdKMZqEBQ9xJg88Q-E(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;ILandroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->lambda$queryParameter$4(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;ILandroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wGReSpWEWFrHK9jzGTu_DQjK0y0(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;II)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->lambda$loadPhraseSoundModel_2_0$8(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;II)V

    return-void
.end method

.method public constructor <init>(Landroid/os/IHwBinder;Ljava/lang/Runnable;)V
    .registers 4

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mDeathRecipientMap:Ljava/util/Map;

    .line 105
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mRebootRunnable:Ljava/lang/Runnable;

    .line 106
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Landroid/os/IHwBinder;

    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mBinder:Landroid/os/IHwBinder;

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->initUnderlying(Landroid/os/IHwBinder;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->getPropertiesInternal()Landroid/media/soundtrigger/Properties;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Landroid/media/soundtrigger/Properties;

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mProperties:Landroid/media/soundtrigger/Properties;

    return-void
.end method

.method public static create(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;Ljava/lang/Runnable;Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;
    .registers 3

    .line 87
    invoke-interface {p0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->asBinder()Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->create(Landroid/os/IHwBinder;Ljava/lang/Runnable;Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/os/IHwBinder;Ljava/lang/Runnable;Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;
    .registers 4

    .line 93
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;

    invoke-direct {v0, p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;-><init>(Landroid/os/IHwBinder;Ljava/lang/Runnable;)V

    .line 96
    new-instance p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;

    iget-object p1, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mProperties:Landroid/media/soundtrigger/Properties;

    iget p1, p1, Landroid/media/soundtrigger/Properties;->maxSoundModels:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalMaxModelLimiter;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;I)V

    .line 98
    iget-object p1, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mProperties:Landroid/media/soundtrigger/Properties;

    iget-boolean p1, p1, Landroid/media/soundtrigger/Properties;->concurrentCapture:Z

    if-nez p1, :cond_1a

    .line 99
    new-instance p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;

    invoke-direct {p1, p0, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;)V

    move-object p0, p1

    :cond_1a
    return-object p0
.end method

.method public static handleHalStatus(ILjava/lang/String;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    .line 156
    :cond_3
    new-instance v0, Lcom/android/server/soundtrigger_middleware/HalException;

    invoke-direct {v0, p0, p1}, Lcom/android/server/soundtrigger_middleware/HalException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static handleHalStatusAllowBusy(ILjava/lang/String;)V
    .registers 3

    .line 161
    sget v0, Landroid/system/OsConstants;->EBUSY:I

    neg-int v0, v0

    if-eq p0, v0, :cond_9

    .line 164
    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    return-void

    .line 162
    :cond_9
    new-instance p0, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(I)V

    throw p0
.end method

.method public static synthetic lambda$getModelParameter$3(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;II)V
    .registers 4

    .line 342
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 343
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public static synthetic lambda$getPropertiesInternal$0(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;ILandroid/hardware/soundtrigger/V2_3/Properties;)V
    .registers 4

    .line 190
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 191
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$getProperties_2_0$6(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;)V
    .registers 4

    .line 425
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 426
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$linkToDeath$5(Landroid/os/IBinder$DeathRecipient;J)V
    .registers 3

    .line 393
    invoke-interface {p0}, Landroid/os/IBinder$DeathRecipient;->binderDied()V

    return-void
.end method

.method public static synthetic lambda$loadPhraseSoundModel$2(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;II)V
    .registers 4

    .line 257
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 258
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public static synthetic lambda$loadPhraseSoundModel_2_0$8(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;II)V
    .registers 4

    .line 464
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 465
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public static synthetic lambda$loadSoundModel$1(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;II)V
    .registers 4

    .line 221
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 222
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public static synthetic lambda$loadSoundModel_2_0$7(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;II)V
    .registers 4

    .line 444
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 445
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public static synthetic lambda$queryParameter$4(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;ILandroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;)V
    .registers 4

    .line 375
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 376
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final as2_0()Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;
    .registers 1

    .line 502
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    return-object p0
.end method

.method public final as2_1()Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
        }
    .end annotation

    .line 507
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    if-eqz p0, :cond_5

    return-object p0

    .line 508
    :cond_5
    new-instance p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;

    const-string v0, "Underlying driver version < 2.1"

    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final as2_2()Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
        }
    .end annotation

    .line 515
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_2:Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    if-eqz p0, :cond_5

    return-object p0

    .line 516
    :cond_5
    new-instance p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;

    const-string v0, "Underlying driver version < 2.2"

    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final as2_3()Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;
        }
    .end annotation

    .line 523
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_3:Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    if-eqz p0, :cond_5

    return-object p0

    .line 524
    :cond_5
    new-instance p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;

    const-string v0, "Underlying driver version < 2.3"

    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public detach()V
    .registers 1

    return-void
.end method

.method public flushCallbacks()V
    .registers 1

    return-void
.end method

.method public forceRecognitionEvent(I)V
    .registers 2

    .line 326
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_2()Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;->getModelState(I)I

    move-result p0

    const-string p1, "getModelState"

    .line 327
    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_14
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_0 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p0

    .line 331
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;->throwAsRecoverableException()Lcom/android/server/soundtrigger_middleware/RecoverableException;

    move-result-object p0

    throw p0

    :catch_14
    move-exception p0

    .line 329
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getModelParameter(II)I
    .registers 6

    .line 337
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 338
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 340
    :try_start_c
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_3()Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    move-result-object p0

    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {p0, p1, p2, v2}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;->getParameter(IILandroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$getParameterCallback;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_18} :catch_2c
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_c .. :try_end_18} :catch_26

    .line 350
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const-string p1, "getParameter"

    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 351
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0

    :catch_26
    move-exception p0

    .line 348
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;->throwAsRecoverableException()Lcom/android/server/soundtrigger_middleware/RecoverableException;

    move-result-object p0

    throw p0

    :catch_2c
    move-exception p0

    .line 346
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getProperties()Landroid/media/soundtrigger/Properties;
    .registers 1

    .line 179
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mProperties:Landroid/media/soundtrigger/Properties;

    return-object p0
.end method

.method public final getPropertiesInternal()Landroid/media/soundtrigger/Properties;
    .registers 5

    .line 184
    :try_start_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 185
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_30

    .line 188
    :try_start_b
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_3()Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    move-result-object v2

    new-instance v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v2, v3}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;->getProperties_2_3(Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$getProperties_2_3Callback;)V
    :try_end_17
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_b .. :try_end_17} :catch_2b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_17} :catch_30

    .line 197
    :try_start_17
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const-string v0, "getProperties_2_3"

    invoke-static {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 198
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/soundtrigger/V2_3/Properties;

    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlProperties(Landroid/hardware/soundtrigger/V2_3/Properties;)Landroid/media/soundtrigger/Properties;

    move-result-object p0

    return-object p0

    .line 195
    :catch_2b
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->getProperties_2_0()Landroid/media/soundtrigger/Properties;

    move-result-object p0
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_2f} :catch_30

    return-object p0

    :catch_30
    move-exception p0

    .line 200
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final getProperties_2_0()Landroid/media/soundtrigger/Properties;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 419
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 421
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 423
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_0()Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object p0

    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda6;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {p0, v2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->getProperties(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$getPropertiesCallback;)V

    .line 428
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const-string v0, "getProperties"

    invoke-static {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 430
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/Hw2CompatUtil;->convertProperties_2_0_to_2_3(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;)Landroid/hardware/soundtrigger/V2_3/Properties;

    move-result-object p0

    .line 429
    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlProperties(Landroid/hardware/soundtrigger/V2_3/Properties;)Landroid/media/soundtrigger/Properties;

    move-result-object p0

    return-object p0
.end method

.method public final initUnderlying(Landroid/os/IHwBinder;)V
    .registers 4

    .line 118
    invoke-static {p1}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 120
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_3:Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_2:Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    return-void

    .line 126
    :cond_f
    invoke-static {p1}, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 128
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_2:Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    .line 129
    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_3:Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    return-void

    .line 135
    :cond_1f
    invoke-static {p1}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 137
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    .line 138
    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_3:Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_2:Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    return-void

    .line 144
    :cond_2e
    invoke-static {p1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object p1

    if-eqz p1, :cond_3d

    .line 146
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    .line 147
    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_3:Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_2:Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw;

    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mUnderlying_2_1:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    return-void

    .line 151
    :cond_3d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Binder doesn\'t support ISoundTriggerHw@2.0"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 406
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_0()Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object p0

    invoke-interface {p0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 408
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .registers 5

    .line 393
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda5;-><init>(Landroid/os/IBinder$DeathRecipient;)V

    .line 394
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mDeathRecipientMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mBinder:Landroid/os/IHwBinder;

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    return-void
.end method

.method public loadPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .registers 11

    const-string v0, "Failed to close file"

    const-string v1, "SoundTriggerHw2Compat"

    .line 249
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlPhraseSoundModel(Landroid/media/soundtrigger/PhraseSoundModel;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;

    move-result-object p1

    .line 251
    :try_start_8
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 252
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_14} :catch_64
    .catchall {:try_start_8 .. :try_end_14} :catchall_62

    .line 254
    :try_start_14
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_1()Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    move-result-object v5

    new-instance v6, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;

    const/4 v7, 0x0

    invoke-direct {v6, p2, v7}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper-IA;)V

    new-instance v7, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda7;

    invoke-direct {v7, v2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda7;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v5, p1, v6, v4, v7}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;->loadPhraseSoundModel_2_1(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$loadPhraseSoundModel_2_1Callback;)V

    .line 260
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const-string v4, "loadPhraseSoundModel_2_1"

    invoke-static {v2, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 261
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_14 .. :try_end_3c} :catch_4f
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_3c} :catch_64
    .catchall {:try_start_14 .. :try_end_3c} :catchall_62

    .line 266
    :try_start_3c
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_40} :catch_64
    .catchall {:try_start_3c .. :try_end_40} :catchall_62

    .line 272
    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;->common:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Landroid/os/HidlMemory;

    if-eqz p1, :cond_4e

    .line 274
    :try_start_46
    invoke-virtual {p1}, Landroid/os/HidlMemory;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_4e

    :catch_4a
    move-exception p1

    .line 276
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4e
    :goto_4e
    return p0

    .line 264
    :catch_4f
    :try_start_4f
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->loadPhraseSoundModel_2_0(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    move-result p0
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_53} :catch_64
    .catchall {:try_start_4f .. :try_end_53} :catchall_62

    .line 272
    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;->common:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Landroid/os/HidlMemory;

    if-eqz p1, :cond_61

    .line 274
    :try_start_59
    invoke-virtual {p1}, Landroid/os/HidlMemory;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_61

    :catch_5d
    move-exception p1

    .line 276
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_61
    :goto_61
    return p0

    :catchall_62
    move-exception p0

    goto :goto_6a

    :catch_64
    move-exception p0

    .line 268
    :try_start_65
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
    :try_end_6a
    .catchall {:try_start_65 .. :try_end_6a} :catchall_62

    .line 272
    :goto_6a
    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;->common:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Landroid/os/HidlMemory;

    if-eqz p1, :cond_78

    .line 274
    :try_start_70
    invoke-virtual {p1}, Landroid/os/HidlMemory;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_78

    :catch_74
    move-exception p1

    .line 276
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    :cond_78
    :goto_78
    throw p0
.end method

.method public final loadPhraseSoundModel_2_0(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 458
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/Hw2CompatUtil;->convertPhraseSoundModel_2_1_to_2_0(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;

    move-result-object p1

    .line 460
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 461
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 462
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_0()Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object v3

    new-instance v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;

    const/4 v5, 0x0

    invoke-direct {v4, p2, v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper-IA;)V

    new-instance v5, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v3, p1, v4, v2, v5}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->loadPhraseSoundModel(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$loadPhraseSoundModelCallback;)V

    .line 467
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const-string v0, "loadSoundModel"

    invoke-static {p1, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 468
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public loadSoundModel(Landroid/media/soundtrigger/SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .registers 11

    const-string v0, "Failed to close file"

    const-string v1, "SoundTriggerHw2Compat"

    .line 213
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlSoundModel(Landroid/media/soundtrigger/SoundModel;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    move-result-object p1

    .line 215
    :try_start_8
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 216
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_14} :catch_60
    .catchall {:try_start_8 .. :try_end_14} :catchall_5e

    .line 218
    :try_start_14
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_1()Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    move-result-object v5

    new-instance v6, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;

    const/4 v7, 0x0

    invoke-direct {v6, p2, v7}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper-IA;)V

    new-instance v7, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda3;

    invoke-direct {v7, v2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v5, p1, v6, v4, v7}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;->loadSoundModel_2_1(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$loadSoundModel_2_1Callback;)V

    .line 224
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const-string v4, "loadSoundModel_2_1"

    invoke-static {v2, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 225
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_14 .. :try_end_3c} :catch_4d
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_3c} :catch_60
    .catchall {:try_start_14 .. :try_end_3c} :catchall_5e

    .line 230
    :try_start_3c
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_40} :catch_60
    .catchall {:try_start_3c .. :try_end_40} :catchall_5e

    .line 236
    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Landroid/os/HidlMemory;

    if-eqz p1, :cond_4c

    .line 238
    :try_start_44
    invoke-virtual {p1}, Landroid/os/HidlMemory;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_4c

    :catch_48
    move-exception p1

    .line 240
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4c
    :goto_4c
    return p0

    .line 228
    :catch_4d
    :try_start_4d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->loadSoundModel_2_0(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I

    move-result p0
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_51} :catch_60
    .catchall {:try_start_4d .. :try_end_51} :catchall_5e

    .line 236
    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Landroid/os/HidlMemory;

    if-eqz p1, :cond_5d

    .line 238
    :try_start_55
    invoke-virtual {p1}, Landroid/os/HidlMemory;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_5d

    :catch_59
    move-exception p1

    .line 240
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5d
    :goto_5d
    return p0

    :catchall_5e
    move-exception p0

    goto :goto_66

    :catch_60
    move-exception p0

    .line 232
    :try_start_61
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
    :try_end_66
    .catchall {:try_start_61 .. :try_end_66} :catchall_5e

    .line 236
    :goto_66
    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Landroid/os/HidlMemory;

    if-eqz p1, :cond_72

    .line 238
    :try_start_6a
    invoke-virtual {p1}, Landroid/os/HidlMemory;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_72

    :catch_6e
    move-exception p1

    .line 240
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    :cond_72
    :goto_72
    throw p0
.end method

.method public final loadSoundModel_2_0(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 439
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/Hw2CompatUtil;->convertSoundModel_2_1_to_2_0(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    move-result-object p1

    .line 441
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 442
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 443
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_0()Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object v3

    new-instance v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;

    const/4 v5, 0x0

    invoke-direct {v4, p2, v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper-IA;)V

    new-instance v5, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda4;

    invoke-direct {v5, v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda4;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v3, p1, v4, v2, v5}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->loadSoundModel(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$loadSoundModelCallback;)V

    .line 447
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const-string v0, "loadSoundModel"

    invoke-static {p1, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 448
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public queryParameter(II)Landroid/media/soundtrigger/ModelParameterRange;
    .registers 7

    .line 368
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 370
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const/4 v2, 0x0

    .line 373
    :try_start_c
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_3()Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    move-result-object p0

    new-instance v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda8;

    invoke-direct {v3, v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda8;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {p0, p1, p2, v3}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;->queryParameter(IILandroid/hardware/soundtrigger/V2_3/ISoundTriggerHw$queryParameterCallback;)V
    :try_end_18
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_c .. :try_end_18} :catch_44
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_18} :catch_3e

    .line 384
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const-string/jumbo p1, "queryParameter"

    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    .line 385
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->getDiscriminator()B

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_3d

    .line 388
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange;->range()Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlModelParameterRange(Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;)Landroid/media/soundtrigger/ModelParameterRange;

    move-result-object v2

    :cond_3d
    return-object v2

    :catch_3e
    move-exception p0

    .line 382
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catch_44
    return-object v2
.end method

.method public reboot()V
    .registers 1

    .line 169
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mRebootRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public registerCallback(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$GlobalCallback;)V
    .registers 2

    return-void
.end method

.method public setModelParameter(III)V
    .registers 4

    .line 357
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_3()Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;->setParameter(III)I

    move-result p0

    const-string/jumbo p1, "setParameter"

    .line 358
    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_15
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p0

    .line 362
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported;->throwAsRecoverableException()Lcom/android/server/soundtrigger_middleware/RecoverableException;

    move-result-object p0

    throw p0

    :catch_15
    move-exception p0

    .line 360
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public startRecognition(IIILandroid/media/soundtrigger/RecognitionConfig;)V
    .registers 5

    .line 309
    invoke-static {p4, p2, p3}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlRecognitionConfig(Landroid/media/soundtrigger/RecognitionConfig;II)Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;

    move-result-object p2

    .line 312
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_3()Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Landroid/hardware/soundtrigger/V2_3/ISoundTriggerHw;->startRecognition_2_3(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;)I

    move-result p3

    const-string/jumbo p4, "startRecognition_2_3"

    .line 313
    invoke-static {p3, p4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V
    :try_end_12
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_4 .. :try_end_12} :catch_15
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_13

    goto :goto_18

    :catch_13
    move-exception p0

    goto :goto_19

    .line 316
    :catch_15
    :try_start_15
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->startRecognition_2_1(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_13

    :goto_18
    return-void

    .line 319
    :goto_19
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final startRecognition_2_0(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 494
    invoke-static {p2}, Lcom/android/server/soundtrigger_middleware/Hw2CompatUtil;->convertRecognitionConfig_2_3_to_2_0(Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    move-result-object p2

    .line 495
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_0()Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object v0

    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    .line 496
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper-IA;)V

    const/4 p0, 0x0

    .line 495
    invoke-interface {v0, p1, p2, v1, p0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->startRecognition(ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;I)I

    move-result p0

    const-string/jumbo p1, "startRecognition"

    .line 497
    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V

    return-void
.end method

.method public final startRecognition_2_1(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;)V
    .registers 8

    .line 477
    :try_start_0
    invoke-static {p2}, Lcom/android/server/soundtrigger_middleware/Hw2CompatUtil;->convertRecognitionConfig_2_3_to_2_1(Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;

    move-result-object v0

    .line 478
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_1()Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;

    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    .line 479
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$ModelCallbackWrapper-IA;)V

    const/4 v3, 0x0

    .line 478
    invoke-interface {v1, p1, v0, v2, v3}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw;->startRecognition_2_1(ILandroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;I)I

    move-result v0

    const-string/jumbo v1, "startRecognition_2_1"

    .line 480
    invoke-static {v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V
    :try_end_25
    .catch Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$NotSupported; {:try_start_0 .. :try_end_25} :catch_28
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_2b

    :catch_26
    move-exception p0

    goto :goto_2c

    .line 483
    :catch_28
    :try_start_28
    invoke-virtual {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->startRecognition_2_0(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2b} :catch_26

    :goto_2b
    return-void

    .line 486
    :goto_2c
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public stopRecognition(I)V
    .registers 2

    .line 297
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_0()Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->stopRecognition(I)I

    move-result p0

    const-string/jumbo p1, "stopRecognition"

    .line 298
    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p0

    .line 300
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .registers 3

    .line 400
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mBinder:Landroid/os/IHwBinder;

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mDeathRecipientMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IHwBinder$DeathRecipient;

    invoke-interface {v0, p0}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    return-void
.end method

.method public unloadSoundModel(I)V
    .registers 4

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->mModelCallbacks:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->as2_0()Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->unloadSoundModel(I)I

    move-result p0

    const-string/jumbo p1, "unloadSoundModel"

    .line 288
    invoke-static {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->handleHalStatus(ILjava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception p0

    .line 290
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
