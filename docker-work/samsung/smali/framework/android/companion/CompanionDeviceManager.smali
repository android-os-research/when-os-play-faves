.class public final Landroid/companion/CompanionDeviceManager;
.super Ljava/lang/Object;
.source "CompanionDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;,
        Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;,
        Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;,
        Landroid/companion/CompanionDeviceManager$Callback;
    }
.end annotation


# static fields
.field public static final greylist-max-o COMPANION_DEVICE_DISCOVERY_PACKAGE_NAME:Ljava/lang/String; = "com.android.companiondevicemanager"

.field private static final greylist-max-o DEBUG:Z = false

.field public static final whitelist EXTRA_ASSOCIATION:Ljava/lang/String; = "android.companion.extra.ASSOCIATION"

.field public static final whitelist EXTRA_DEVICE:Ljava/lang/String; = "android.companion.extra.DEVICE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "CompanionDeviceManager"

.field public static final blacklist REASON_CANCELED:Ljava/lang/String; = "canceled"

.field public static final blacklist REASON_DISCOVERY_TIMEOUT:Ljava/lang/String; = "discovery_timeout"

.field public static final blacklist REASON_USER_REJECTED:Ljava/lang/String; = "user_rejected"

.field public static final blacklist RESULT_DISCOVERY_TIMEOUT:I = 0x2

.field public static final blacklist RESULT_INTERNAL_ERROR:I = 0x3

.field public static final blacklist RESULT_USER_REJECTED:I = 0x1


# instance fields
.field private greylist-max-o mContext:Landroid/content/Context;

.field private final blacklist mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mService:Landroid/companion/ICompanionDeviceManager;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/companion/ICompanionDeviceManager;Landroid/content/Context;)V
    .registers 4
    .param p1, "service"    # Landroid/companion/ICompanionDeviceManager;
    .param p2, "context"    # Landroid/content/Context;

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/companion/CompanionDeviceManager;->mListeners:Ljava/util/ArrayList;

    .line 279
    iput-object p1, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    .line 280
    iput-object p2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 281
    return-void
.end method

.method private greylist-max-o checkFeaturePresent()Z
    .registers 2

    .line 878
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 879
    .local v0, "featurePresent":Z
    :goto_7
    nop

    .line 883
    return v0
.end method

.method static synthetic blacklist lambda$getAssociations$0(Landroid/companion/AssociationInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "a"    # Landroid/companion/AssociationInfo;

    .line 409
    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getDeviceMacAddressAsString()Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0
.end method


# virtual methods
.method public whitelist addOnAssociationsChangedListener(Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 627
    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->checkFeaturePresent()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 628
    :cond_7
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 629
    :try_start_a
    new-instance v1, Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy-IA;)V
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_2a

    .line 632
    .local v1, "proxy":Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;
    :try_start_10
    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v3, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v2, v1, v3}, Landroid/companion/ICompanionDeviceManager;->addOnAssociationsChangedListener(Landroid/companion/IOnAssociationsChangedListener;I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1b} :catch_24
    .catchall {:try_start_10 .. :try_end_1b} :catchall_2a

    .line 635
    nop

    .line 636
    :try_start_1c
    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    nop

    .end local v1    # "proxy":Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;
    monitor-exit v0

    .line 638
    return-void

    .line 633
    .restart local v1    # "proxy":Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;
    :catch_24
    move-exception v2

    .line 634
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/companion/CompanionDeviceManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;
    throw v3

    .line 637
    .end local v1    # "proxy":Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/companion/CompanionDeviceManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public whitelist associate(Landroid/companion/AssociationRequest;Landroid/companion/CompanionDeviceManager$Callback;Landroid/os/Handler;)V
    .registers 8
    .param p1, "request"    # Landroid/companion/AssociationRequest;
    .param p2, "callback"    # Landroid/companion/CompanionDeviceManager$Callback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 326
    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->checkFeaturePresent()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 327
    :cond_7
    const-string v0, "Request cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 328
    const-string v0, "Callback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 329
    invoke-static {p3}, Landroid/os/Handler;->mainIfNull(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p3

    .line 332
    :try_start_15
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    new-instance v1, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;

    const/4 v2, 0x0

    invoke-direct {v1, p3, p2, v2}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;-><init>(Landroid/os/Handler;Landroid/companion/CompanionDeviceManager$Callback;Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy-IA;)V

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 333
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 332
    invoke-interface {v0, p1, v1, v2, v3}, Landroid/companion/ICompanionDeviceManager;->associate(Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Ljava/lang/String;I)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_2c} :catch_2e

    .line 336
    nop

    .line 337
    return-void

    .line 334
    :catch_2e
    move-exception v0

    .line 335
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist associate(Landroid/companion/AssociationRequest;Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$Callback;)V
    .registers 8
    .param p1, "request"    # Landroid/companion/AssociationRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/companion/CompanionDeviceManager$Callback;

    .line 381
    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->checkFeaturePresent()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 382
    :cond_7
    const-string v0, "Request cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 383
    const-string v0, "Executor cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 384
    const-string v0, "Callback cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 387
    :try_start_16
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    new-instance v1, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p3, v2}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$Callback;Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy-IA;)V

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 388
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 387
    invoke-interface {v0, p1, v1, v2, v3}, Landroid/companion/ICompanionDeviceManager;->associate(Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Ljava/lang/String;I)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_2d} :catch_2f

    .line 391
    nop

    .line 392
    return-void

    .line 389
    :catch_2f
    move-exception v0

    .line 390
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist associate(Ljava/lang/String;Landroid/net/MacAddress;[B)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "macAddress"    # Landroid/net/MacAddress;
    .param p3, "certificate"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 817
    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->checkFeaturePresent()Z

    move-result v0

    if-nez v0, :cond_7

    .line 818
    return-void

    .line 820
    :cond_7
    const-string/jumbo v0, "package name cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 821
    const-string/jumbo v0, "mac address cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 823
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 825
    .local v0, "user":Landroid/os/UserHandle;
    :try_start_17
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    .line 826
    invoke-virtual {p2}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 825
    invoke-interface {v1, p1, v2, v3, p3}, Landroid/companion/ICompanionDeviceManager;->createAssociation(Ljava/lang/String;Ljava/lang/String;I[B)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_24} :catch_26

    .line 829
    nop

    .line 830
    return-void

    .line 827
    :catch_26
    move-exception v1

    .line 828
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist canPairWithoutPrompt(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "deviceMacAddress"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 684
    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->checkFeaturePresent()Z

    move-result v0

    if-nez v0, :cond_8

    .line 685
    const/4 v0, 0x0

    return v0

    .line 687
    :cond_8
    const-string/jumbo v0, "package name cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 688
    const-string v0, "device mac address cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 689
    const-string/jumbo v0, "user handle cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 691
    :try_start_19
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    .line 692
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 691
    invoke-interface {v0, p1, p2, v1}, Landroid/companion/ICompanionDeviceManager;->canPairWithoutPrompt(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_23} :catch_24

    return v0

    .line 693
    :catch_24
    move-exception v0

    .line 694
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist disassociate(I)V
    .registers 4
    .param p1, "associationId"    # I

    .line 474
    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->checkFeaturePresent()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 477
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/ICompanionDeviceManager;->disassociate(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    .line 480
    nop

    .line 481
    return-void

    .line 478
    :catch_e
    move-exception v0

    .line 479
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist disassociate(Ljava/lang/String;)V
    .registers 5
    .param p1, "deviceMacAddress"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 449
    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->checkFeaturePresent()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 452
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 453
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 452
    invoke-interface {v0, p1, v1, v2}, Landroid/companion/ICompanionDeviceManager;->legacyDisassociate(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_18} :catch_1a

    .line 456
    nop

    .line 457
    return-void

    .line 454
    :catch_1a
    move-exception v0

    .line 455
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist dispatchMessage(II[B)V
    .registers 7
    .param p1, "messageId"    # I
    .param p2, "associationId"    # I
    .param p3, "message"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/companion/DeviceNotAssociatedException;
        }
    .end annotation

    .line 795
    :try_start_0
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/companion/ICompanionDeviceManager;->dispatchMessage(II[B)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 799
    nop

    .line 800
    return-void

    .line 796
    :catch_7
    move-exception v0

    .line 797
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    const-class v2, Landroid/companion/DeviceNotAssociatedException;

    invoke-static {v1, v2}, Landroid/util/ExceptionUtils;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 798
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAllAssociations()Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation

    .line 592
    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->checkFeaturePresent()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 594
    :cond_b
    :try_start_b
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/companion/ICompanionDeviceManager;->getAllAssociationsForUser(I)Ljava/util/List;

    move-result-object v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_17} :catch_18

    return-object v0

    .line 595
    :catch_18
    move-exception v0

    .line 596
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAssociations()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 408
    invoke-virtual {p0}, Landroid/companion/CompanionDeviceManager;->getMyAssociations()Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/companion/CompanionDeviceManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/companion/CompanionDeviceManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->mapNotNull(Ljava/util/List;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMyAssociations()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation

    .line 421
    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->checkFeaturePresent()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 424
    :cond_b
    :try_start_b
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/companion/ICompanionDeviceManager;->getAssociations(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1d} :catch_1e

    return-object v0

    .line 425
    :catch_1e
    move-exception v0

    .line 426
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist hasNotificationAccess(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "component"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 530
    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->checkFeaturePresent()Z

    move-result v0

    if-nez v0, :cond_8

    .line 531
    const/4 v0, 0x0

    return v0

    .line 534
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/ICompanionDeviceManager;->hasNotificationAccess(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return v0

    .line 535
    :catch_f
    move-exception v0

    .line 536
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isDeviceAssociatedForWifiConnection(Ljava/lang/String;Landroid/net/MacAddress;Landroid/os/UserHandle;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "macAddress"    # Landroid/net/MacAddress;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 568
    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->checkFeaturePresent()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 569
    :cond_8
    const-string/jumbo v0, "package name cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 570
    const-string/jumbo v0, "mac address cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 571
    const-string/jumbo v0, "user cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 573
    :try_start_1a
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    .line 574
    invoke-virtual {p2}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 573
    invoke-interface {v0, p1, v1, v2}, Landroid/companion/ICompanionDeviceManager;->isDeviceAssociatedForWifiConnection(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_28} :catch_29

    return v0

    .line 575
    :catch_29
    move-exception v0

    .line 576
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist notifyDeviceAppeared(I)V
    .registers 4
    .param p1, "associationId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 849
    :try_start_0
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/ICompanionDeviceManager;->notifyDeviceAppeared(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 852
    nop

    .line 853
    return-void

    .line 850
    :catch_7
    move-exception v0

    .line 851
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist notifyDeviceDisappeared(I)V
    .registers 4
    .param p1, "associationId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 871
    :try_start_0
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/ICompanionDeviceManager;->notifyDeviceDisappeared(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 874
    nop

    .line 875
    return-void

    .line 872
    :catch_7
    move-exception v0

    .line 873
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeOnAssociationsChangedListener(Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 651
    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->checkFeaturePresent()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 652
    :cond_7
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 653
    :try_start_a
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 654
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;>;"
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 655
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;

    .line 656
    .local v2, "proxy":Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;
    invoke-static {v2}, Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;->-$$Nest$fgetmListener(Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;)Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_3b

    if-ne v3, p1, :cond_38

    .line 658
    :try_start_22
    iget-object v3, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v4, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v3, v2, v4}, Landroid/companion/ICompanionDeviceManager;->removeOnAssociationsChangedListener(Landroid/companion/IOnAssociationsChangedListener;I)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2d} :catch_32
    .catchall {:try_start_22 .. :try_end_2d} :catchall_3b

    .line 661
    nop

    .line 662
    :try_start_2e
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_38

    .line 659
    :catch_32
    move-exception v3

    .line 660
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local p0    # "this":Landroid/companion/CompanionDeviceManager;
    .end local p1    # "listener":Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;
    throw v4

    .line 664
    .end local v2    # "proxy":Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/companion/CompanionDeviceManager;
    .restart local p1    # "listener":Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;
    :cond_38
    :goto_38
    goto :goto_10

    .line 665
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;>;"
    :cond_39
    monitor-exit v0

    .line 666
    return-void

    .line 665
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_2e .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public whitelist requestNotificationAccess(Landroid/content/ComponentName;)V
    .registers 9
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 498
    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->checkFeaturePresent()Z

    move-result v0

    if-nez v0, :cond_7

    .line 499
    return-void

    .line 502
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 503
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/companion/ICompanionDeviceManager;->requestNotificationAccess(Landroid/content/ComponentName;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 504
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    .line 505
    .local v2, "intentSender":Landroid/content/IntentSender;
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_20} :catch_29
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_7 .. :try_end_20} :catch_22

    .line 510
    .end local v2    # "intentSender":Landroid/content/IntentSender;
    nop

    .line 511
    return-void

    .line 508
    :catch_22
    move-exception v0

    .line 509
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 506
    .end local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    :catch_29
    move-exception v0

    .line 507
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startObservingDevicePresence(Ljava/lang/String;)V
    .registers 5
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/companion/DeviceNotAssociatedException;
        }
    .end annotation

    .line 731
    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->checkFeaturePresent()Z

    move-result v0

    if-nez v0, :cond_7

    .line 732
    return-void

    .line 734
    :cond_7
    const-string v0, "address cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 736
    :try_start_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 737
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 736
    invoke-interface {v0, p1, v1, v2}, Landroid/companion/ICompanionDeviceManager;->registerDevicePresenceListenerService(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1d} :catch_1f

    .line 741
    nop

    .line 742
    return-void

    .line 738
    :catch_1f
    move-exception v0

    .line 739
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    const-class v2, Landroid/companion/DeviceNotAssociatedException;

    invoke-static {v1, v2}, Landroid/util/ExceptionUtils;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 740
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist stopObservingDevicePresence(Ljava/lang/String;)V
    .registers 5
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/companion/DeviceNotAssociatedException;
        }
    .end annotation

    .line 764
    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->checkFeaturePresent()Z

    move-result v0

    if-nez v0, :cond_7

    .line 765
    return-void

    .line 767
    :cond_7
    const-string v0, "address cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 769
    :try_start_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 770
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 769
    invoke-interface {v0, p1, v1, v2}, Landroid/companion/ICompanionDeviceManager;->unregisterDevicePresenceListenerService(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1d} :catch_1e

    .line 773
    goto :goto_28

    .line 771
    :catch_1e
    move-exception v0

    .line 772
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    const-class v2, Landroid/companion/DeviceNotAssociatedException;

    invoke-static {v1, v2}, Landroid/util/ExceptionUtils;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 774
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_28
    return-void
.end method
