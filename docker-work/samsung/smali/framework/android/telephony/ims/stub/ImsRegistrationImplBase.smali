.class public Landroid/telephony/ims/stub/ImsRegistrationImplBase;
.super Ljava/lang/Object;
.source "ImsRegistrationImplBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/stub/ImsRegistrationImplBase$ImsRegistrationTech;
    }
.end annotation


# static fields
.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "ImsRegistrationImplBase"

.field private static final greylist-max-o REGISTRATION_STATE_UNKNOWN:I = -0x1

.field public static final whitelist REGISTRATION_TECH_CROSS_SIM:I = 0x2

.field public static final whitelist REGISTRATION_TECH_IWLAN:I = 0x1

.field public static final whitelist REGISTRATION_TECH_LTE:I = 0x0

.field public static final blacklist REGISTRATION_TECH_MAX:I = 0x4

.field public static final whitelist REGISTRATION_TECH_NONE:I = -0x1

.field public static final whitelist REGISTRATION_TECH_NR:I = 0x3


# instance fields
.field private final greylist-max-o mBinder:Landroid/telephony/ims/aidl/IImsRegistration;

.field private final blacklist mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/util/RemoteCallbackListExt<",
            "Landroid/telephony/ims/aidl/IImsRegistrationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private greylist-max-o mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private blacklist mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

.field private greylist-max-o mRegistrationState:I

.field private blacklist mUris:[Landroid/net/Uri;

.field private blacklist mUrisSet:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsRegistrationImplBase;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRegistrationAttributes(Landroid/telephony/ims/stub/ImsRegistrationImplBase;)Landroid/telephony/ims/ImsRegistrationAttributes;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$maddRegistrationCallback(Landroid/telephony/ims/stub/ImsRegistrationImplBase;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->addRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveRegistrationCallback(Landroid/telephony/ims/stub/ImsRegistrationImplBase;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->removeRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;-><init>(Landroid/telephony/ims/stub/ImsRegistrationImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mBinder:Landroid/telephony/ims/aidl/IImsRegistration;

    .line 222
    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    .line 224
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    .line 228
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationState:I

    .line 230
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 234
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/net/Uri;

    iput-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUris:[Landroid/net/Uri;

    .line 235
    iput-boolean v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUrisSet:Z

    .line 120
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;-><init>(Landroid/telephony/ims/stub/ImsRegistrationImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mBinder:Landroid/telephony/ims/aidl/IImsRegistration;

    .line 222
    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    .line 224
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    .line 228
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationState:I

    .line 230
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 234
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/net/Uri;

    iput-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUris:[Landroid/net/Uri;

    .line 235
    iput-boolean v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUrisSet:Z

    .line 132
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    .line 133
    return-void
.end method

.method private greylist-max-o addRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 3
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->register(Landroid/os/IInterface;)Z

    .line 246
    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateNewCallbackWithState(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 247
    return-void
.end method

.method static synthetic blacklist lambda$onDeregistered$2(Landroid/telephony/ims/ImsReasonInfo;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 5
    .param p0, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 389
    :try_start_0
    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 392
    goto :goto_1e

    .line 390
    :catch_4
    move-exception v0

    .line 391
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "onDeregistered() - Skipping callback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsRegistrationImplBase"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1e
    return-void
.end method

.method static synthetic blacklist lambda$onRegistered$0(Landroid/telephony/ims/ImsRegistrationAttributes;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 5
    .param p0, "attributes"    # Landroid/telephony/ims/ImsRegistrationAttributes;
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 329
    :try_start_0
    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 332
    goto :goto_1e

    .line 330
    :catch_4
    move-exception v0

    .line 331
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "onRegistered(int, Set) - Skipping callback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsRegistrationImplBase"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1e
    return-void
.end method

.method static synthetic blacklist lambda$onRegistering$1(Landroid/telephony/ims/ImsRegistrationAttributes;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 5
    .param p0, "attributes"    # Landroid/telephony/ims/ImsRegistrationAttributes;
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 358
    :try_start_0
    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onRegistering(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 361
    goto :goto_1e

    .line 359
    :catch_4
    move-exception v0

    .line 360
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "onRegistering(int, Set) - Skipping callback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsRegistrationImplBase"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1e
    return-void
.end method

.method static synthetic blacklist lambda$onTechnologyChangeFailed$3(ILandroid/telephony/ims/ImsReasonInfo;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 6
    .param p0, "imsRadioTech"    # I
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p2, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 411
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 414
    goto :goto_1e

    .line 412
    :catch_4
    move-exception v0

    .line 413
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "onTechnologyChangeFailed() - Skipping callback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsRegistrationImplBase"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1e
    return-void
.end method

.method private blacklist onSubscriberAssociatedUriChanged(Landroid/telephony/ims/aidl/IImsRegistrationCallback;[Landroid/net/Uri;)V
    .registers 6
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .param p2, "uris"    # [Landroid/net/Uri;

    .line 437
    :try_start_0
    invoke-interface {p1, p2}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 440
    goto :goto_1e

    .line 438
    :catch_4
    move-exception v0

    .line 439
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "onSubscriberAssociatedUriChanged() - Skipping callback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsRegistrationImplBase"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1e
    return-void
.end method

.method private greylist-max-o removeRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 3
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 250
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->unregister(Landroid/os/IInterface;)Z

    .line 251
    return-void
.end method

.method private greylist-max-o updateNewCallbackWithState(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 8
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 479
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 480
    :try_start_3
    iget v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationState:I

    .line 481
    .local v1, "state":I
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 482
    .local v2, "attributes":Landroid/telephony/ims/ImsRegistrationAttributes;
    iget-object v3, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 483
    .local v3, "disconnectInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-boolean v4, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUrisSet:Z

    .line 484
    .local v4, "urisSet":Z
    iget-object v5, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUris:[Landroid/net/Uri;

    .line 485
    .local v5, "uris":[Landroid/net/Uri;
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_24

    .line 486
    packed-switch v1, :pswitch_data_28

    goto :goto_1e

    .line 496
    :pswitch_12
    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    .line 497
    goto :goto_1e

    .line 492
    :pswitch_16
    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onRegistering(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    .line 493
    goto :goto_1e

    .line 488
    :pswitch_1a
    invoke-interface {p1, v3}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 489
    nop

    .line 504
    :goto_1e
    if-eqz v4, :cond_23

    .line 505
    invoke-direct {p0, p1, v5}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onSubscriberAssociatedUriChanged(Landroid/telephony/ims/aidl/IImsRegistrationCallback;[Landroid/net/Uri;)V

    .line 507
    :cond_23
    return-void

    .line 485
    .end local v1    # "state":I
    .end local v2    # "attributes":Landroid/telephony/ims/ImsRegistrationAttributes;
    .end local v3    # "disconnectInfo":Landroid/telephony/ims/ImsReasonInfo;
    .end local v4    # "urisSet":Z
    .end local v5    # "uris":[Landroid/net/Uri;
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_16
        :pswitch_12
    .end packed-switch
.end method

.method private greylist-max-o updateToDisconnectedState(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 452
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 454
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUrisSet:Z

    .line 455
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUris:[Landroid/net/Uri;

    .line 457
    new-instance v2, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;-><init>(I)V

    invoke-virtual {v2}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->build()Landroid/telephony/ims/ImsRegistrationAttributes;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToState(Landroid/telephony/ims/ImsRegistrationAttributes;I)V

    .line 459
    if-eqz p1, :cond_1b

    .line 460
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    goto :goto_2a

    .line 462
    :cond_1b
    const-string v1, "ImsRegistrationImplBase"

    const-string/jumbo v2, "updateToDisconnectedState: no ImsReasonInfo provided."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 465
    :goto_2a
    monitor-exit v0

    .line 466
    return-void

    .line 465
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private blacklist updateToState(Landroid/telephony/ims/ImsRegistrationAttributes;I)V
    .registers 5
    .param p1, "attributes"    # Landroid/telephony/ims/ImsRegistrationAttributes;
    .param p2, "newState"    # I

    .line 444
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 445
    :try_start_3
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 446
    iput p2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationState:I

    .line 447
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 448
    monitor-exit v0

    .line 449
    return-void

    .line 448
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method


# virtual methods
.method public final greylist-max-o getBinder()Landroid/telephony/ims/aidl/IImsRegistration;
    .registers 2

    .line 241
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mBinder:Landroid/telephony/ims/aidl/IImsRegistration;

    return-object v0
.end method

.method synthetic blacklist lambda$onSubscriberAssociatedUriChanged$4$android-telephony-ims-stub-ImsRegistrationImplBase([Landroid/net/Uri;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 3
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 432
    invoke-direct {p0, p2, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onSubscriberAssociatedUriChanged(Landroid/telephony/ims/aidl/IImsRegistrationCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method public final whitelist onDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 384
    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToDisconnectedState(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 386
    if-eqz p1, :cond_7

    move-object v0, p1

    goto :goto_c

    :cond_7
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    .line 387
    .local v0, "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :goto_c
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v2, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    .line 394
    return-void
.end method

.method public final whitelist onRegistered(I)V
    .registers 3
    .param p1, "imsRadioTech"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 315
    new-instance v0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    invoke-direct {v0, p1}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->build()Landroid/telephony/ims/ImsRegistrationAttributes;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    .line 316
    return-void
.end method

.method public final whitelist onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 4
    .param p1, "attributes"    # Landroid/telephony/ims/ImsRegistrationAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 326
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToState(Landroid/telephony/ims/ImsRegistrationAttributes;I)V

    .line 327
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v1, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    .line 334
    return-void
.end method

.method public final whitelist onRegistering(I)V
    .registers 3
    .param p1, "imsRadioTech"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 344
    new-instance v0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    invoke-direct {v0, p1}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->build()Landroid/telephony/ims/ImsRegistrationAttributes;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onRegistering(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    .line 345
    return-void
.end method

.method public final whitelist onRegistering(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 4
    .param p1, "attributes"    # Landroid/telephony/ims/ImsRegistrationAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 355
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToState(Landroid/telephony/ims/ImsRegistrationAttributes;I)V

    .line 356
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v1, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    .line 363
    return-void
.end method

.method public final whitelist onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    .registers 4
    .param p1, "uris"    # [Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 428
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 429
    :try_start_3
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/Uri;

    iput-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUris:[Landroid/net/Uri;

    .line 430
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUrisSet:Z

    .line 431
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1a

    .line 432
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v1, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/stub/ImsRegistrationImplBase;[Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    .line 433
    return-void

    .line 431
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public final whitelist onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .param p1, "imsRadioTech"    # I
    .param p2, "info"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 408
    if-eqz p2, :cond_4

    move-object v0, p2

    goto :goto_9

    :cond_4
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    .line 409
    .local v0, "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :goto_9
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v2, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda0;-><init>(ILandroid/telephony/ims/ImsReasonInfo;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    .line 416
    return-void
.end method

.method public final blacklist setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 516
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_6

    .line 517
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    .line 519
    :cond_6
    return-void
.end method

.method public whitelist triggerFullNetworkRegistration(ILjava/lang/String;)V
    .registers 3
    .param p1, "sipCode"    # I
    .param p2, "sipReason"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 304
    return-void
.end method

.method public whitelist triggerSipDelegateDeregistration()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 283
    return-void
.end method

.method public whitelist updateSipDelegateRegistration()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 265
    return-void
.end method
