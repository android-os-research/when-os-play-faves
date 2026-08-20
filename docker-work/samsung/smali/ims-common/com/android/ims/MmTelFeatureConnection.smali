.class public Lcom/android/ims/MmTelFeatureConnection;
.super Lcom/android/ims/FeatureConnection;
.source "MmTelFeatureConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;,
        Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;,
        Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;,
        Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;
    }
.end annotation


# static fields
.field protected static final blacklist TAG:Ljava/lang/String; = "MmTelFeatureConn"


# instance fields
.field private final blacklist mCapabilityCallbackManager:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

.field private blacklist mEcbm:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/ims/MmTelFeatureConnection$BinderAccessState<",
            "Lcom/android/ims/ImsEcbm;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMmTelFeatureListener:Landroid/telephony/ims/feature/MmTelFeature$Listener;

.field private blacklist mMultiEndpoint:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/ims/MmTelFeatureConnection$BinderAccessState<",
            "Lcom/android/ims/ImsMultiEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mProvisioningCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;

.field private final blacklist mRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

.field private blacklist mSupportsEmergencyCalling:Z

.field private blacklist mUt:Lcom/android/ims/ImsUt;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetServiceInterface(Lcom/android/ims/MmTelFeatureConnection;Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;IILandroid/telephony/ims/aidl/IImsMmTelFeature;Landroid/telephony/ims/aidl/IImsConfig;Landroid/telephony/ims/aidl/IImsRegistration;Landroid/telephony/ims/aidl/ISipTransport;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I
    .param p3, "subId"    # I
    .param p4, "f"    # Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .param p5, "c"    # Landroid/telephony/ims/aidl/IImsConfig;
    .param p6, "r"    # Landroid/telephony/ims/aidl/IImsRegistration;
    .param p7, "s"    # Landroid/telephony/ims/aidl/ISipTransport;

    .line 262
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/ims/FeatureConnection;-><init>(Landroid/content/Context;IILandroid/telephony/ims/aidl/IImsConfig;Landroid/telephony/ims/aidl/IImsRegistration;Landroid/telephony/ims/aidl/ISipTransport;)V

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mSupportsEmergencyCalling:Z

    .line 249
    new-instance v1, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-direct {v1, v0}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;-><init>(I)V

    iput-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mEcbm:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    .line 251
    new-instance v1, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-direct {v1, v0}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;-><init>(I)V

    iput-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mMultiEndpoint:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    .line 264
    if-eqz p4, :cond_22

    invoke-interface {p4}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    invoke-virtual {p0, v0}, Lcom/android/ims/MmTelFeatureConnection;->setBinder(Landroid/os/IBinder;)V

    .line 265
    new-instance v0, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;-><init>(Lcom/android/ims/MmTelFeatureConnection;Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    .line 266
    new-instance v0, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;-><init>(Lcom/android/ims/MmTelFeatureConnection;Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mCapabilityCallbackManager:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

    .line 267
    new-instance v0, Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;

    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;-><init>(Lcom/android/ims/MmTelFeatureConnection;Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mProvisioningCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;

    .line 268
    return-void
.end method

.method private blacklist getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .registers 3
    .param p1, "b"    # Landroid/os/IBinder;

    .line 643
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v0

    return-object v0
.end method

.method private blacklist setEcbmInterface(Lcom/android/ims/ImsEcbmStateListener;)V
    .registers 6
    .param p1, "ecbmListener"    # Lcom/android/ims/ImsEcbmStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 473
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 474
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mEcbm:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->getState()I

    move-result v1

    if-nez v1, :cond_40

    .line 478
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 479
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v1

    .line 480
    .local v1, "imsEcbm":Lcom/android/ims/internal/IImsEcbm;
    if-eqz v1, :cond_24

    new-instance v2, Lcom/android/ims/ImsEcbm;

    invoke-direct {v2, v1}, Lcom/android/ims/ImsEcbm;-><init>(Lcom/android/ims/internal/IImsEcbm;)V

    invoke-static {v2}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->of(Ljava/lang/Object;)Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    move-result-object v2

    goto :goto_2a

    .line 481
    :cond_24
    new-instance v2, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;-><init>(I)V

    :goto_2a
    iput-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mEcbm:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    .line 482
    invoke-virtual {v2}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3e

    .line 484
    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mEcbm:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-virtual {v2}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->getInterface()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/ImsEcbm;

    invoke-virtual {v2, p1}, Lcom/android/ims/ImsEcbm;->setEcbmStateListener(Lcom/android/ims/ImsEcbmStateListener;)V

    .line 486
    .end local v1    # "imsEcbm":Lcom/android/ims/internal/IImsEcbm;
    :cond_3e
    monitor-exit v0

    .line 487
    return-void

    .line 475
    :cond_40
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ECBM interface already open"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/ims/MmTelFeatureConnection;
    .end local p1    # "ecbmListener":Lcom/android/ims/ImsEcbmStateListener;
    throw v1

    .line 486
    .restart local p0    # "this":Lcom/android/ims/MmTelFeatureConnection;
    .restart local p1    # "ecbmListener":Lcom/android/ims/ImsEcbmStateListener;
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method private blacklist setMultiEndpointInterface(Lcom/android/ims/ImsExternalCallStateListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/android/ims/ImsExternalCallStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 510
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 511
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mMultiEndpoint:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->getState()I

    move-result v1

    if-nez v1, :cond_40

    .line 515
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 516
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v1

    .line 517
    .local v1, "imEndpoint":Lcom/android/ims/internal/IImsMultiEndpoint;
    if-eqz v1, :cond_24

    .line 518
    new-instance v2, Lcom/android/ims/ImsMultiEndpoint;

    invoke-direct {v2, v1}, Lcom/android/ims/ImsMultiEndpoint;-><init>(Lcom/android/ims/internal/IImsMultiEndpoint;)V

    invoke-static {v2}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->of(Ljava/lang/Object;)Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    move-result-object v2

    goto :goto_2a

    .line 519
    :cond_24
    new-instance v2, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;-><init>(I)V

    :goto_2a
    iput-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mMultiEndpoint:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    .line 520
    invoke-virtual {v2}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3e

    .line 522
    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mMultiEndpoint:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-virtual {v2}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->getInterface()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/ImsMultiEndpoint;

    invoke-virtual {v2, p1}, Lcom/android/ims/ImsMultiEndpoint;->setExternalCallStateListener(Lcom/android/ims/ImsExternalCallStateListener;)V

    .line 524
    .end local v1    # "imEndpoint":Lcom/android/ims/internal/IImsMultiEndpoint;
    :cond_3e
    monitor-exit v0

    .line 525
    return-void

    .line 512
    :cond_40
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "multiendpoint interface is already open"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/ims/MmTelFeatureConnection;
    .end local p1    # "listener":Lcom/android/ims/ImsExternalCallStateListener;
    throw v1

    .line 524
    .restart local p0    # "this":Lcom/android/ims/MmTelFeatureConnection;
    .restart local p1    # "listener":Lcom/android/ims/ImsExternalCallStateListener;
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_48

    throw v1
.end method


# virtual methods
.method public blacklist acknowledgeSms(III)V
    .registers 6
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 538
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 539
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 540
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->acknowledgeSms(III)V

    .line 541
    monitor-exit v0

    .line 542
    return-void

    .line 541
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist acknowledgeSmsReport(III)V
    .registers 6
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 546
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 547
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 548
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->acknowledgeSmsReport(III)V

    .line 549
    monitor-exit v0

    .line 550
    return-void

    .line 549
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist acknowledgeSmsWithPdu(II[B)V
    .registers 8
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 591
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 592
    :try_start_3
    const-string v1, "MmTelFeatureConn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acknowledgeSmsWithPdu["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/ims/MmTelFeatureConnection;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 594
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->acknowledgeSmsWithPdu(II[B)V

    .line 595
    monitor-exit v0

    .line 596
    return-void

    .line 595
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public blacklist addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 361
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mCapabilityCallbackManager:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->addCallback(Landroid/os/IInterface;)V

    .line 362
    return-void
.end method

.method public blacklist addCapabilityCallbackForSubscription(Landroid/telephony/ims/aidl/IImsCapabilityCallback;I)V
    .registers 4
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .param p2, "subId"    # I

    .line 366
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mCapabilityCallbackManager:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->addCallbackForSubscription(Landroid/os/IInterface;I)V

    .line 367
    return-void
.end method

.method public blacklist addProvisioningCallbackForSubscription(Landroid/telephony/ims/aidl/IImsConfigCallback;I)V
    .registers 4
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsConfigCallback;
    .param p2, "subId"    # I

    .line 380
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mProvisioningCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;->addCallbackForSubscription(Landroid/os/IInterface;I)V

    .line 381
    return-void
.end method

.method public blacklist addRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 343
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->addCallback(Landroid/os/IInterface;)V

    .line 344
    return-void
.end method

.method public blacklist addRegistrationCallbackForSubscription(Landroid/telephony/ims/aidl/IImsRegistrationCallback;I)V
    .registers 4
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .param p2, "subId"    # I

    .line 348
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->addCallbackForSubscription(Landroid/os/IInterface;I)V

    .line 349
    return-void
.end method

.method public blacklist changeAudioPath(II)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 648
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 649
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 650
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->changeAudioPath(II)V

    .line 651
    monitor-exit v0

    .line 652
    return-void

    .line 651
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 5
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 391
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 392
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->changeCapabilitiesConfiguration(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 393
    monitor-exit v0

    .line 394
    return-void

    .line 393
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist changeOfferedRtpHeaderExtensionTypes(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtensionType;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 423
    .local p1, "types":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/RtpHeaderExtensionType;>;"
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 424
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 425
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->changeOfferedRtpHeaderExtensionTypes(Ljava/util/List;)V

    .line 427
    monitor-exit v0

    .line 428
    return-void

    .line 427
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public blacklist closeConnection()V
    .registers 6

    .line 320
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_b

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8a

    return-void

    .line 323
    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mMmTelFeatureListener:Landroid/telephony/ims/feature/MmTelFeature$Listener;

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    .line 324
    iput-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mMmTelFeatureListener:Landroid/telephony/ims/feature/MmTelFeature$Listener;

    .line 325
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->setListener(Landroid/telephony/ims/aidl/IImsMmTelListener;)V

    .line 327
    :cond_1b
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mEcbm:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->getState()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_37

    .line 328
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mEcbm:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->getInterface()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsEcbm;

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsEcbm;->setEcbmStateListener(Lcom/android/ims/ImsEcbmStateListener;)V

    .line 329
    new-instance v1, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-direct {v1, v3}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;-><init>(I)V

    iput-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mEcbm:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    .line 331
    :cond_37
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mMultiEndpoint:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->getState()I

    move-result v1

    if-ne v1, v4, :cond_51

    .line 332
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mMultiEndpoint:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->getInterface()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsMultiEndpoint;

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsMultiEndpoint;->setExternalCallStateListener(Lcom/android/ims/ImsExternalCallStateListener;)V

    .line 333
    new-instance v1, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-direct {v1, v3}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;-><init>(I)V

    iput-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mMultiEndpoint:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_51} :catch_52
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_51} :catch_52
    .catchall {:try_start_b .. :try_end_51} :catchall_8a

    .line 338
    :cond_51
    goto :goto_88

    .line 335
    :catch_52
    move-exception v1

    .line 336
    .local v1, "e":Ljava/lang/Exception;
    :try_start_53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MmTelFeatureConn ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/ims/MmTelFeatureConnection;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closeConnection: couldn\'t remove listeners! Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 337
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 336
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_88
    monitor-exit v0

    .line 340
    return-void

    .line 339
    :catchall_8a
    move-exception v1

    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_53 .. :try_end_8c} :catchall_8a

    throw v1
.end method

.method public blacklist createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;
    .registers 5
    .param p1, "callServiceType"    # I
    .param p2, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 415
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 416
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 417
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 418
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public blacklist createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;
    .registers 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 433
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 434
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 435
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public blacklist createOrGetUtInterface()Lcom/android/ims/ImsUt;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 439
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 440
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mUt:Lcom/android/ims/ImsUt;

    if-eqz v1, :cond_9

    monitor-exit v0

    return-object v1

    .line 442
    :cond_9
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 443
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->getUtInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object v1

    .line 447
    .local v1, "imsUt":Lcom/android/ims/internal/IImsUt;
    if-eqz v1, :cond_24

    new-instance v2, Lcom/android/ims/ImsUt;

    iget-object v3, p0, Lcom/android/ims/MmTelFeatureConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/android/ims/ImsUt;-><init>(Lcom/android/ims/internal/IImsUt;Ljava/util/concurrent/Executor;)V

    goto :goto_25

    :cond_24
    const/4 v2, 0x0

    :goto_25
    iput-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mUt:Lcom/android/ims/ImsUt;

    .line 448
    monitor-exit v0

    return-object v2

    .line 449
    .end local v1    # "imsUt":Lcom/android/ims/internal/IImsUt;
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public blacklist getEcbmInterface()Lcom/android/ims/ImsEcbm;
    .registers 4

    .line 490
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 491
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mEcbm:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->getState()I

    move-result v1

    if-eqz v1, :cond_20

    .line 495
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mEcbm:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1d

    .line 496
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mEcbm:Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-virtual {v1}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->getInterface()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsEcbm;

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    monitor-exit v0

    .line 495
    return-object v1

    .line 492
    :cond_20
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ECBM interface has not been opened"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/ims/MmTelFeatureConnection;
    throw v1

    .line 497
    .restart local p0    # "this":Lcom/android/ims/MmTelFeatureConnection;
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method protected blacklist getRegistrationBinder()Landroid/telephony/ims/aidl/IImsRegistration;
    .registers 4

    .line 467
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 468
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_e

    iget v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mSlotId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getImsRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return-object v1
.end method

.method public blacklist getRegistrationTech()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 455
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->getRegistration()Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v0

    .line 456
    .local v0, "registration":Landroid/telephony/ims/aidl/IImsRegistration;
    if-eqz v0, :cond_b

    .line 457
    invoke-interface {v0}, Landroid/telephony/ims/aidl/IImsRegistration;->getRegistrationTechnology()I

    move-result v1

    return v1

    .line 459
    :cond_b
    const/4 v1, -0x1

    return v1
.end method

.method public blacklist getSmsFormat()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 553
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 554
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 555
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->getSmsFormat()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 556
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public blacklist getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "srcMsisdn"    # Ljava/lang/String;
    .param p2, "dstMsisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 676
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 677
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 678
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 679
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public blacklist initImsSmsImplAdapter()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 599
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 600
    :try_start_3
    const-string v1, "MmTelFeatureConn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initImsSmsImplAdapter["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/ims/MmTelFeatureConnection;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 602
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->initImsSmsImplAdapter()V

    .line 603
    monitor-exit v0

    .line 604
    return-void

    .line 603
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public blacklist isCmcEmergencyCallSupported(I)Z
    .registers 4
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 690
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 691
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 692
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->isCmcEmergencyCallSupported(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 693
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public blacklist isEmergencyMmTelAvailable()Z
    .registers 2

    .line 291
    iget-boolean v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mSupportsEmergencyCalling:Z

    return v0
.end method

.method public blacklist onFeatureCapabilitiesUpdated(J)V
    .registers 8
    .param p1, "capabilities"    # J

    .line 636
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 637
    const-wide/16 v1, 0x1

    or-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    :try_start_f
    iput-boolean v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mSupportsEmergencyCalling:Z

    .line 639
    monitor-exit v0

    .line 640
    return-void

    .line 639
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_13

    throw v1
.end method

.method protected blacklist onRemovedOrDied()V
    .registers 3

    .line 273
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->close()V

    .line 274
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mCapabilityCallbackManager:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->close()V

    .line 275
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mProvisioningCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;->close()V

    .line 280
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    :try_start_12
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mUt:Lcom/android/ims/ImsUt;

    if-eqz v1, :cond_1c

    .line 282
    invoke-virtual {v1}, Lcom/android/ims/ImsUt;->close()V

    .line 283
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mUt:Lcom/android/ims/ImsUt;

    .line 285
    :cond_1c
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->closeConnection()V

    .line 286
    invoke-super {p0}, Lcom/android/ims/FeatureConnection;->onRemovedOrDied()V

    .line 287
    monitor-exit v0

    .line 288
    return-void

    .line 287
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_12 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public blacklist onSmsReady()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 560
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 561
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 562
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->onSmsReady()V

    .line 563
    monitor-exit v0

    .line 564
    return-void

    .line 563
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist openConnection(Landroid/telephony/ims/feature/MmTelFeature$Listener;Lcom/android/ims/ImsEcbmStateListener;Lcom/android/ims/ImsExternalCallStateListener;)V
    .registers 6
    .param p1, "mmTelListener"    # Landroid/telephony/ims/feature/MmTelFeature$Listener;
    .param p2, "ecbmListener"    # Lcom/android/ims/ImsEcbmStateListener;
    .param p3, "multiEndpointListener"    # Lcom/android/ims/ImsExternalCallStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 308
    iput-object p1, p0, Lcom/android/ims/MmTelFeatureConnection;->mMmTelFeatureListener:Landroid/telephony/ims/feature/MmTelFeature$Listener;

    .line 309
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->setListener(Landroid/telephony/ims/aidl/IImsMmTelListener;)V

    .line 310
    invoke-direct {p0, p2}, Lcom/android/ims/MmTelFeatureConnection;->setEcbmInterface(Lcom/android/ims/ImsEcbmStateListener;)V

    .line 311
    invoke-direct {p0, p3}, Lcom/android/ims/MmTelFeatureConnection;->setMultiEndpointInterface(Lcom/android/ims/ImsExternalCallStateListener;)V

    .line 312
    monitor-exit v0

    .line 313
    return-void

    .line 312
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public blacklist queryCapabilityStatus()Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 407
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 408
    new-instance v1, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    iget-object v2, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    .line 409
    invoke-direct {p0, v2}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v2

    invoke-interface {v2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->queryCapabilityStatus()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>(I)V

    monitor-exit v0

    .line 408
    return-object v1

    .line 410
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public blacklist queryEnabledCapabilities(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 6
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 399
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 400
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->queryCapabilityConfiguration(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 402
    monitor-exit v0

    .line 403
    return-void

    .line 402
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 370
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mCapabilityCallbackManager:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->removeCallback(Landroid/os/IInterface;)V

    .line 371
    return-void
.end method

.method public blacklist removeCapabilityCallbackForSubscription(Landroid/telephony/ims/aidl/IImsCapabilityCallback;I)V
    .registers 4
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .param p2, "subId"    # I

    .line 375
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mCapabilityCallbackManager:Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection$CapabilityCallbackManager;->removeCallback(Landroid/os/IInterface;)V

    .line 376
    return-void
.end method

.method public blacklist removeProvisioningCallbackForSubscription(Landroid/telephony/ims/aidl/IImsConfigCallback;I)V
    .registers 4
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsConfigCallback;
    .param p2, "subId"    # I

    .line 385
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mProvisioningCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection$ProvisioningCallbackManager;->removeCallback(Landroid/os/IInterface;)V

    .line 386
    return-void
.end method

.method public blacklist removeRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 352
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->removeCallback(Landroid/os/IInterface;)V

    .line 353
    return-void
.end method

.method public blacklist removeRegistrationCallbackForSubscription(Landroid/telephony/ims/aidl/IImsRegistrationCallback;I)V
    .registers 4
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .param p2, "subId"    # I

    .line 357
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection$ImsRegistrationCallbackAdapter;->removeCallback(Landroid/os/IInterface;)V

    .line 358
    return-void
.end method

.method protected blacklist retrieveFeatureState()Ljava/lang/Integer;
    .registers 2

    .line 623
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_14

    .line 625
    :try_start_4
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->getFeatureState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_13

    return-object v0

    .line 626
    :catch_13
    move-exception v0

    .line 630
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "publishDialog"    # Lcom/android/internal/telephony/PublishDialog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 683
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 684
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 685
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V

    .line 686
    monitor-exit v0

    .line 687
    return-void

    .line 686
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist sendRpSmma(Ljava/lang/String;)V
    .registers 6
    .param p1, "smsc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 583
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 584
    :try_start_3
    const-string v1, "MmTelFeatureConn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendRpSmma["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/ims/MmTelFeatureConnection;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 586
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->sendRpSmma(Ljava/lang/String;)V

    .line 587
    monitor-exit v0

    .line 588
    return-void

    .line 587
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public blacklist sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .registers 16
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "smsc"    # Ljava/lang/String;
    .param p5, "isRetry"    # Z
    .param p6, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 529
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 530
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 531
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v2

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V

    .line 533
    monitor-exit v0

    .line 534
    return-void

    .line 533
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public blacklist setRetryCount(II)V
    .registers 7
    .param p1, "token"    # I
    .param p2, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 575
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 576
    :try_start_3
    const-string v1, "MmTelFeatureConn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRetryCount["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/ims/MmTelFeatureConnection;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 578
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->setRetryCount(II)V

    .line 579
    monitor-exit v0

    .line 580
    return-void

    .line 579
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public blacklist setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/telephony/ims/aidl/IImsSmsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 567
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 568
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 569
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V

    .line 570
    monitor-exit v0

    .line 571
    return-void

    .line 570
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist setUiTTYMode(ILandroid/os/Message;)V
    .registers 5
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 502
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 503
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 504
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->setUiTtyMode(ILandroid/os/Message;)V

    .line 505
    monitor-exit v0

    .line 506
    return-void

    .line 505
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist setVideoCrtAudio(IZ)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 669
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 670
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 671
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->setVideoCrtAudio(IZ)V

    .line 672
    monitor-exit v0

    .line 673
    return-void

    .line 672
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist shouldProcessCall(Z[Ljava/lang/String;)I
    .registers 5
    .param p1, "isEmergency"    # Z
    .param p2, "numbers"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 609
    if-eqz p1, :cond_2a

    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->isEmergencyMmTelAvailable()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmTelFeatureConn ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MmTel does not support emergency over IMS, fallback to CS."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const/4 v0, 0x1

    return v0

    .line 615
    :cond_2a
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 616
    :try_start_2d
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 617
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->shouldProcessCall([Ljava/lang/String;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 618
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_2d .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public blacklist startLocalRingBackTone(III)I
    .registers 6
    .param p1, "streamType"    # I
    .param p2, "volume"    # I
    .param p3, "toneType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 655
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 656
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 657
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->startLocalRingBackTone(III)I

    move-result v1

    monitor-exit v0

    return v1

    .line 658
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public blacklist stopLocalRingBackTone()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 662
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 663
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/MmTelFeatureConnection;->checkServiceIsReady()V

    .line 664
    iget-object v1, p0, Lcom/android/ims/MmTelFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/ims/MmTelFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->stopLocalRingBackTone()I

    move-result v1

    monitor-exit v0

    return v1

    .line 665
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method
