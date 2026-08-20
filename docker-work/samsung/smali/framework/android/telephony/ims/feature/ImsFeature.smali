.class public abstract Landroid/telephony/ims/feature/ImsFeature;
.super Ljava/lang/Object;
.source "ImsFeature.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/feature/ImsFeature$Capabilities;,
        Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;,
        Landroid/telephony/ims/feature/ImsFeature$ImsCapabilityError;,
        Landroid/telephony/ims/feature/ImsFeature$ImsState;,
        Landroid/telephony/ims/feature/ImsFeature$FeatureType;
    }
.end annotation


# static fields
.field public static final whitelist CAPABILITY_ERROR_GENERIC:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FEATURE_EMERGENCY_MMTEL:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o FEATURE_INVALID:I = -0x1

.field public static final blacklist FEATURE_LOG_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o FEATURE_MAX:I = 0x3

.field public static final whitelist FEATURE_MMTEL:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FEATURE_RCS:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "ImsFeature"

.field public static final whitelist STATE_INITIALIZING:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist STATE_LOG_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist STATE_READY:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATE_UNAVAILABLE:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final blacklist mCapabilityCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/util/RemoteCallbackListExt<",
            "Landroid/telephony/ims/aidl/IImsCapabilityCallback;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mCapabilityStatus:Landroid/telephony/ims/feature/ImsFeature$Capabilities;

.field protected greylist-max-o mContext:Landroid/content/Context;

.field protected final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mSlotId:I

.field private greylist-max-o mState:I

.field private final blacklist mStatusCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/util/RemoteCallbackListExt<",
            "Lcom/android/ims/internal/IImsFeatureStatusCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 88
    new-instance v0, Landroid/telephony/ims/feature/ImsFeature$1;

    invoke-direct {v0}, Landroid/telephony/ims/feature/ImsFeature$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    .line 148
    new-instance v0, Landroid/telephony/ims/feature/ImsFeature$2;

    invoke-direct {v0}, Landroid/telephony/ims/feature/ImsFeature$2;-><init>()V

    sput-object v0, Landroid/telephony/ims/feature/ImsFeature;->STATE_LOG_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mLock:Ljava/lang/Object;

    .line 329
    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    .line 331
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mState:I

    .line 332
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mSlotId:I

    .line 333
    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    .line 335
    new-instance v0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    invoke-direct {v0}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityStatus:Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    return-void
.end method

.method static synthetic blacklist lambda$notifyCapabilitiesStatusChanged$1(Landroid/telephony/ims/feature/ImsFeature$Capabilities;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 6
    .param p0, "caps"    # Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 507
    const-string v0, "ImsFeature"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsFeature notifyCapabilitiesStatusChanged Capabilities = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget v1, p0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    invoke-interface {p1, v1}, Landroid/telephony/ims/aidl/IImsCapabilityCallback;->onCapabilitiesStatusChanged(I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1f} :catch_20

    .line 513
    goto :goto_37

    .line 510
    :catch_20
    move-exception v1

    .line 511
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " notifyCapabilitiesStatusChanged() - Skipping callback."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_37
    return-void
.end method

.method static synthetic blacklist lambda$notifyFeatureState$0(ILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 5
    .param p0, "state"    # I
    .param p1, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;

    .line 422
    :try_start_0
    invoke-interface {p1, p0}, Lcom/android/ims/internal/IImsFeatureStatusCallback;->notifyImsFeatureStatus(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 426
    goto :goto_1d

    .line 423
    :catch_4
    move-exception v0

    .line 424
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " notifyFeatureState() - Skipping callback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsFeature"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1d
    return-void
.end method

.method private greylist-max-o notifyFeatureState(I)V
    .registers 5
    .param p1, "state"    # I

    .line 419
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    monitor-enter v0

    .line 420
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v2, Landroid/telephony/ims/feature/ImsFeature$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Landroid/telephony/ims/feature/ImsFeature$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    .line 428
    monitor-exit v0

    .line 429
    return-void

    .line 428
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method


# virtual methods
.method public final greylist-max-o addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 5
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 435
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->register(Landroid/os/IInterface;)Z

    .line 438
    :try_start_5
    invoke-virtual {p0}, Landroid/telephony/ims/feature/ImsFeature;->queryCapabilityStatus()Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    move-result-object v0

    iget v0, v0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCapabilityCallback;->onCapabilitiesStatusChanged(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    .line 441
    goto :goto_2c

    .line 439
    :catch_f
    move-exception v0

    .line 440
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCapabilityCallback: error accessing callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsFeature"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2c
    return-void
.end method

.method public greylist-max-o addImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 5
    .param p1, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;

    .line 398
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/feature/ImsFeature;->getFeatureState()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/ims/internal/IImsFeatureStatusCallback;->notifyImsFeatureStatus(I)V

    .line 400
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->register(Landroid/os/IInterface;)Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    .line 403
    goto :goto_2a

    .line 401
    :catch_d
    move-exception v0

    .line 402
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t notify feature state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsFeature"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2a
    return-void
.end method

.method public abstract whitelist changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
.end method

.method protected abstract greylist-max-o getBinder()Landroid/os/IInterface;
.end method

.method public whitelist getFeatureState()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 364
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    :try_start_3
    iget v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mState:I

    monitor-exit v0

    return v1

    .line 366
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final whitelist getSlotIndex()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 354
    iget v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mSlotId:I

    return v0
.end method

.method public greylist-max-o initialize(Landroid/content/Context;I)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I

    .line 341
    iput-object p1, p0, Landroid/telephony/ims/feature/ImsFeature;->mContext:Landroid/content/Context;

    .line 342
    iput p2, p0, Landroid/telephony/ims/feature/ImsFeature;->mSlotId:I

    .line 343
    return-void
.end method

.method protected final greylist-max-o notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V
    .registers 5
    .param p1, "caps"    # Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    .line 498
    const-string v0, "ImsFeature"

    const-string/jumbo v1, "notifyCapabilitiesStatusChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 501
    :try_start_b
    invoke-virtual {p1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->copy()Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityStatus:Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    .line 502
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_24

    .line 504
    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    monitor-enter v1

    .line 505
    :try_start_15
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v2, Landroid/telephony/ims/feature/ImsFeature$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Landroid/telephony/ims/feature/ImsFeature$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    .line 515
    monitor-exit v1

    .line 516
    return-void

    .line 515
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_21

    throw v0

    .line 502
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public abstract whitelist onFeatureReady()V
.end method

.method public abstract whitelist onFeatureRemoved()V
.end method

.method public abstract blacklist queryCapabilityConfiguration(II)Z
.end method

.method final blacklist queryCapabilityConfigurationInternal(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 8
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 454
    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/feature/ImsFeature;->queryCapabilityConfiguration(II)Z

    move-result v0

    .line 456
    .local v0, "enabled":Z
    if-eqz p3, :cond_14

    .line 457
    :try_start_6
    invoke-interface {p3, p1, p2, v0}, Landroid/telephony/ims/aidl/IImsCapabilityCallback;->onQueryCapabilityConfiguration(IIZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_14

    .line 459
    :catch_a
    move-exception v1

    .line 460
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ImsFeature"

    const-string/jumbo v3, "queryCapabilityConfigurationInternal called on dead binder!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 461
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    nop

    .line 462
    :goto_15
    return-void
.end method

.method public greylist-max-o queryCapabilityStatus()Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    .registers 3

    .line 470
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 471
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityStatus:Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    invoke-virtual {v1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->copy()Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 472
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method final greylist-max-o removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 3
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 448
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->unregister(Landroid/os/IInterface;)Z

    .line 449
    return-void
.end method

.method public greylist-max-o removeImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 3
    .param p1, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;

    .line 412
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->unregister(Landroid/os/IInterface;)Z

    .line 413
    return-void
.end method

.method public final greylist-max-o requestChangeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 5
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 482
    if-eqz p1, :cond_b

    .line 486
    new-instance v0, Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    invoke-direct {v0, p2}, Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;-><init>(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    invoke-virtual {p0, p1, v0}, Landroid/telephony/ims/feature/ImsFeature;->changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V

    .line 487
    return-void

    .line 483
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImsFeature#requestChangeEnabledCapabilities called with invalid params."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist setFeatureState(I)V
    .registers 5
    .param p1, "state"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 378
    const/4 v0, 0x0

    .line 379
    .local v0, "isNotify":Z
    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 380
    :try_start_4
    iget v2, p0, Landroid/telephony/ims/feature/ImsFeature;->mState:I

    if-eq v2, p1, :cond_b

    .line 381
    iput p1, p0, Landroid/telephony/ims/feature/ImsFeature;->mState:I

    .line 382
    const/4 v0, 0x1

    .line 384
    :cond_b
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_12

    .line 385
    if-eqz v0, :cond_11

    .line 386
    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/ImsFeature;->notifyFeatureState(I)V

    .line 388
    :cond_11
    return-void

    .line 384
    :catchall_12
    move-exception v2

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v2
.end method
