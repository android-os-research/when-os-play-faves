.class public Landroid/net/lowpan/LowpanInterface;
.super Ljava/lang/Object;
.source "LowpanInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/LowpanInterface$Callback;
    }
.end annotation


# static fields
.field public static final blacklist EMPTY_PARTITION_ID:Ljava/lang/String; = ""

.field public static final blacklist NETWORK_TYPE_THREAD_V1:Ljava/lang/String; = "org.threadgroup.thread.v1"

.field public static final blacklist ROLE_COORDINATOR:Ljava/lang/String; = "coordinator"

.field public static final blacklist ROLE_DETACHED:Ljava/lang/String; = "detached"

.field public static final blacklist ROLE_END_DEVICE:Ljava/lang/String; = "end-device"

.field public static final blacklist ROLE_LEADER:Ljava/lang/String; = "leader"

.field public static final blacklist ROLE_ROUTER:Ljava/lang/String; = "router"

.field public static final blacklist ROLE_SLEEPY_END_DEVICE:Ljava/lang/String; = "sleepy-end-device"

.field public static final blacklist ROLE_SLEEPY_ROUTER:Ljava/lang/String; = "sleepy-router"

.field public static final blacklist STATE_ATTACHED:Ljava/lang/String; = "attached"

.field public static final blacklist STATE_ATTACHING:Ljava/lang/String; = "attaching"

.field public static final blacklist STATE_COMMISSIONING:Ljava/lang/String; = "commissioning"

.field public static final blacklist STATE_FAULT:Ljava/lang/String; = "fault"

.field public static final blacklist STATE_OFFLINE:Ljava/lang/String; = "offline"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mBinder:Landroid/net/lowpan/ILowpanInterface;

.field private final blacklist mListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/net/lowpan/ILowpanInterfaceListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLooper:Landroid/os/Looper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLooper(Landroid/net/lowpan/LowpanInterface;)Landroid/os/Looper;
    .registers 1

    iget-object p0, p0, Landroid/net/lowpan/LowpanInterface;->mLooper:Landroid/os/Looper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/net/lowpan/LowpanInterface;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    const-class v0, Landroid/net/lowpan/LowpanInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/lowpan/LowpanInterface;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/net/lowpan/ILowpanInterface;Landroid/os/Looper;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/lowpan/ILowpanInterface;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mListenerMap:Ljava/util/HashMap;

    .line 201
    iput-object p2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 202
    iput-object p3, p0, Landroid/net/lowpan/LowpanInterface;->mLooper:Landroid/os/Looper;

    .line 203
    return-void
.end method


# virtual methods
.method public blacklist addExternalRoute(Landroid/net/IpPrefix;I)V
    .registers 5
    .param p1, "prefix"    # Landroid/net/IpPrefix;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    .line 797
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0, p1, p2}, Landroid/net/lowpan/ILowpanInterface;->addExternalRoute(Landroid/net/IpPrefix;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_7

    .line 804
    nop

    .line 805
    return-void

    .line 802
    :catch_7
    move-exception v0

    .line 803
    .local v0, "x":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v1

    throw v1

    .line 799
    .end local v0    # "x":Landroid/os/ServiceSpecificException;
    :catch_d
    move-exception v0

    .line 800
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist addOnMeshPrefix(Landroid/net/IpPrefix;I)V
    .registers 5
    .param p1, "prefix"    # Landroid/net/IpPrefix;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    .line 760
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0, p1, p2}, Landroid/net/lowpan/ILowpanInterface;->addOnMeshPrefix(Landroid/net/IpPrefix;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_7

    .line 767
    nop

    .line 768
    return-void

    .line 765
    :catch_7
    move-exception v0

    .line 766
    .local v0, "x":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v1

    throw v1

    .line 762
    .end local v0    # "x":Landroid/os/ServiceSpecificException;
    :catch_d
    move-exception v0

    .line 763
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist attach(Landroid/net/lowpan/LowpanProvision;)V
    .registers 4
    .param p1, "provision"    # Landroid/net/lowpan/LowpanProvision;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    .line 269
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0, p1}, Landroid/net/lowpan/ILowpanInterface;->attach(Landroid/net/lowpan/LowpanProvision;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_7

    .line 276
    nop

    .line 277
    return-void

    .line 274
    :catch_7
    move-exception v0

    .line 275
    .local v0, "x":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v1

    throw v1

    .line 271
    .end local v0    # "x":Landroid/os/ServiceSpecificException;
    :catch_d
    move-exception v0

    .line 272
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist createScanner()Landroid/net/lowpan/LowpanScanner;
    .registers 3

    .line 708
    new-instance v0, Landroid/net/lowpan/LowpanScanner;

    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-direct {v0, v1}, Landroid/net/lowpan/LowpanScanner;-><init>(Landroid/net/lowpan/ILowpanInterface;)V

    return-object v0
.end method

.method public blacklist form(Landroid/net/lowpan/LowpanProvision;)V
    .registers 4
    .param p1, "provision"    # Landroid/net/lowpan/LowpanProvision;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    .line 230
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0, p1}, Landroid/net/lowpan/ILowpanInterface;->form(Landroid/net/lowpan/LowpanProvision;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_7

    .line 237
    nop

    .line 238
    return-void

    .line 235
    :catch_7
    move-exception v0

    .line 236
    .local v0, "x":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v1

    throw v1

    .line 232
    .end local v0    # "x":Landroid/os/ServiceSpecificException;
    :catch_d
    move-exception v0

    .line 233
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getLinkAddresses()[Landroid/net/LinkAddress;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    .line 720
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->getLinkAddresses()[Ljava/lang/String;

    move-result-object v0

    .line 721
    .local v0, "linkAddressStrings":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [Landroid/net/LinkAddress;

    .line 722
    .local v1, "ret":[Landroid/net/LinkAddress;
    const/4 v2, 0x0

    .line 723
    .local v2, "i":I
    array-length v3, v0

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v3, :cond_1d

    aget-object v5, v0, v4

    .line 724
    .local v5, "str":Ljava/lang/String;
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "i":I
    .local v6, "i":I
    new-instance v7, Landroid/net/LinkAddress;

    invoke-direct {v7, v5}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    aput-object v7, v1, v2
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_24
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_19} :catch_1e

    .line 723
    .end local v5    # "str":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    move v2, v6

    goto :goto_c

    .line 726
    .end local v6    # "i":I
    .restart local v2    # "i":I
    :cond_1d
    return-object v1

    .line 731
    .end local v0    # "linkAddressStrings":[Ljava/lang/String;
    .end local v1    # "ret":[Landroid/net/LinkAddress;
    .end local v2    # "i":I
    :catch_1e
    move-exception v0

    .line 732
    .local v0, "x":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v1

    throw v1

    .line 728
    .end local v0    # "x":Landroid/os/ServiceSpecificException;
    :catch_24
    move-exception v0

    .line 729
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getLinkNetworks()[Landroid/net/IpPrefix;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    .line 743
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->getLinkNetworks()[Landroid/net/IpPrefix;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 748
    :catch_7
    move-exception v0

    .line 749
    .local v0, "x":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v1

    throw v1

    .line 745
    .end local v0    # "x":Landroid/os/ServiceSpecificException;
    :catch_d
    move-exception v0

    .line 746
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getLowpanCredential()Landroid/net/lowpan/LowpanCredential;
    .registers 3

    .line 512
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->getLowpanCredential()Landroid/net/lowpan/LowpanCredential;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 514
    :catch_7
    move-exception v0

    .line 515
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getLowpanIdentity()Landroid/net/lowpan/LowpanIdentity;
    .registers 3

    .line 484
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->getLowpanIdentity()Landroid/net/lowpan/LowpanIdentity;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 489
    :catch_7
    move-exception v0

    .line 490
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 486
    .end local v0    # "x":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 487
    .local v0, "x":Landroid/os/DeadObjectException;
    new-instance v1, Landroid/net/lowpan/LowpanIdentity;

    invoke-direct {v1}, Landroid/net/lowpan/LowpanIdentity;-><init>()V

    return-object v1
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 3

    .line 342
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 347
    :catch_7
    move-exception v0

    .line 348
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 344
    .end local v0    # "x":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 345
    .local v0, "x":Landroid/os/DeadObjectException;
    const-string v1, ""

    return-object v1
.end method

.method public blacklist getPartitionId()Ljava/lang/String;
    .registers 3

    .line 471
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->getPartitionId()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 476
    :catch_7
    move-exception v0

    .line 477
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 473
    .end local v0    # "x":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 474
    .local v0, "x":Landroid/os/DeadObjectException;
    const-string v1, ""

    return-object v1
.end method

.method public blacklist getRole()Ljava/lang/String;
    .registers 3

    .line 498
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->getRole()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 503
    :catch_7
    move-exception v0

    .line 504
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 500
    .end local v0    # "x":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 501
    .local v0, "x":Landroid/os/DeadObjectException;
    const-string v1, "detached"

    return-object v1
.end method

.method public blacklist getService()Landroid/net/lowpan/ILowpanInterface;
    .registers 2

    .line 211
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    return-object v0
.end method

.method public blacklist getState()Ljava/lang/String;
    .registers 3

    .line 458
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->getState()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 463
    :catch_7
    move-exception v0

    .line 464
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 460
    .end local v0    # "x":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 461
    .local v0, "x":Landroid/os/DeadObjectException;
    const-string v1, "fault"

    return-object v1
.end method

.method public blacklist getSupportedChannels()[Landroid/net/lowpan/LowpanChannelInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    .line 533
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->getSupportedChannels()[Landroid/net/lowpan/LowpanChannelInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 538
    :catch_7
    move-exception v0

    .line 539
    .local v0, "x":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v1

    throw v1

    .line 535
    .end local v0    # "x":Landroid/os/ServiceSpecificException;
    :catch_d
    move-exception v0

    .line 536
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSupportedNetworkTypes()[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    .line 521
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->getSupportedNetworkTypes()[Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 526
    :catch_7
    move-exception v0

    .line 527
    .local v0, "x":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v1

    throw v1

    .line 523
    .end local v0    # "x":Landroid/os/ServiceSpecificException;
    :catch_d
    move-exception v0

    .line 524
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isCommissioned()Z
    .registers 3

    .line 432
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->isCommissioned()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 437
    :catch_7
    move-exception v0

    .line 438
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 434
    .end local v0    # "x":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 435
    .local v0, "x":Landroid/os/DeadObjectException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isConnected()Z
    .registers 3

    .line 416
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->isConnected()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 421
    :catch_7
    move-exception v0

    .line 422
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 418
    .end local v0    # "x":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 419
    .local v0, "x":Landroid/os/DeadObjectException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isEnabled()Z
    .registers 3

    .line 360
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->isEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 365
    :catch_7
    move-exception v0

    .line 366
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 362
    .end local v0    # "x":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 363
    .local v0, "x":Landroid/os/DeadObjectException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isUp()Z
    .registers 3

    .line 398
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->isUp()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_6} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 403
    :catch_7
    move-exception v0

    .line 404
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 400
    .end local v0    # "x":Landroid/os/RemoteException;
    :catch_d
    move-exception v0

    .line 401
    .local v0, "x":Landroid/os/DeadObjectException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist join(Landroid/net/lowpan/LowpanProvision;)V
    .registers 4
    .param p1, "provision"    # Landroid/net/lowpan/LowpanProvision;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    .line 250
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0, p1}, Landroid/net/lowpan/ILowpanInterface;->join(Landroid/net/lowpan/LowpanProvision;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_7

    .line 257
    nop

    .line 258
    return-void

    .line 255
    :catch_7
    move-exception v0

    .line 256
    .local v0, "x":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v1

    throw v1

    .line 252
    .end local v0    # "x":Landroid/os/ServiceSpecificException;
    :catch_d
    move-exception v0

    .line 253
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist leave()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    .line 287
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->leave()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_7

    .line 294
    nop

    .line 295
    return-void

    .line 292
    :catch_7
    move-exception v0

    .line 293
    .local v0, "x":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v1

    throw v1

    .line 289
    .end local v0    # "x":Landroid/os/ServiceSpecificException;
    :catch_d
    move-exception v0

    .line 290
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist registerCallback(Landroid/net/lowpan/LowpanInterface$Callback;)V
    .registers 3
    .param p1, "cb"    # Landroid/net/lowpan/LowpanInterface$Callback;

    .line 667
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/lowpan/LowpanInterface;->registerCallback(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/os/Handler;)V

    .line 668
    return-void
.end method

.method public blacklist registerCallback(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/os/Handler;)V
    .registers 7
    .param p1, "cb"    # Landroid/net/lowpan/LowpanInterface$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 556
    new-instance v0, Landroid/net/lowpan/LowpanInterface$1;

    invoke-direct {v0, p0, p2, p1}, Landroid/net/lowpan/LowpanInterface$1;-><init>(Landroid/net/lowpan/LowpanInterface;Landroid/os/Handler;Landroid/net/lowpan/LowpanInterface$Callback;)V

    .line 647
    .local v0, "listenerBinder":Landroid/net/lowpan/ILowpanInterfaceListener$Stub;
    :try_start_5
    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v1, v0}, Landroid/net/lowpan/ILowpanInterface;->addListener(Landroid/net/lowpan/ILowpanInterfaceListener;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_20

    .line 650
    nop

    .line 652
    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface;->mListenerMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 653
    :try_start_e
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mListenerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    monitor-exit v1

    .line 655
    return-void

    .line 654
    :catchall_1d
    move-exception v2

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_1d

    throw v2

    .line 648
    :catch_20
    move-exception v1

    .line 649
    .local v1, "x":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist removeExternalRoute(Landroid/net/IpPrefix;)V
    .registers 5
    .param p1, "prefix"    # Landroid/net/IpPrefix;

    .line 814
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0, p1}, Landroid/net/lowpan/ILowpanInterface;->removeExternalRoute(Landroid/net/IpPrefix;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_6

    .line 822
    goto :goto_10

    .line 819
    :catch_6
    move-exception v0

    .line 821
    .local v0, "x":Landroid/os/ServiceSpecificException;
    sget-object v1, Landroid/net/lowpan/LowpanInterface;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    .end local v0    # "x":Landroid/os/ServiceSpecificException;
    :goto_10
    return-void

    .line 816
    :catch_11
    move-exception v0

    .line 817
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeOnMeshPrefix(Landroid/net/IpPrefix;)V
    .registers 5
    .param p1, "prefix"    # Landroid/net/IpPrefix;

    .line 778
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0, p1}, Landroid/net/lowpan/ILowpanInterface;->removeOnMeshPrefix(Landroid/net/IpPrefix;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_6

    .line 786
    goto :goto_10

    .line 783
    :catch_6
    move-exception v0

    .line 785
    .local v0, "x":Landroid/os/ServiceSpecificException;
    sget-object v1, Landroid/net/lowpan/LowpanInterface;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    .end local v0    # "x":Landroid/os/ServiceSpecificException;
    :goto_10
    return-void

    .line 780
    :catch_11
    move-exception v0

    .line 781
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    .line 326
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->reset()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_7

    .line 333
    nop

    .line 334
    return-void

    .line 331
    :catch_7
    move-exception v0

    .line 332
    .local v0, "x":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v1

    throw v1

    .line 328
    .end local v0    # "x":Landroid/os/ServiceSpecificException;
    :catch_d
    move-exception v0

    .line 329
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    .line 381
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0, p1}, Landroid/net/lowpan/ILowpanInterface;->setEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_5} :catch_7

    .line 388
    nop

    .line 389
    return-void

    .line 386
    :catch_7
    move-exception v0

    .line 387
    .local v0, "x":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v1

    throw v1

    .line 383
    .end local v0    # "x":Landroid/os/ServiceSpecificException;
    :catch_d
    move-exception v0

    .line 384
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist startCommissioningSession(Landroid/net/lowpan/LowpanBeaconInfo;)Landroid/net/lowpan/LowpanCommissioningSession;
    .registers 5
    .param p1, "beaconInfo"    # Landroid/net/lowpan/LowpanBeaconInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    .line 304
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0, p1}, Landroid/net/lowpan/ILowpanInterface;->startCommissioningSession(Landroid/net/lowpan/LowpanBeaconInfo;)V

    .line 306
    new-instance v0, Landroid/net/lowpan/LowpanCommissioningSession;

    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1, p1, v2}, Landroid/net/lowpan/LowpanCommissioningSession;-><init>(Landroid/net/lowpan/ILowpanInterface;Landroid/net/lowpan/LowpanBeaconInfo;Landroid/os/Looper;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_15
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    .line 311
    :catch_f
    move-exception v0

    .line 312
    .local v0, "x":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v1

    throw v1

    .line 308
    .end local v0    # "x":Landroid/os/ServiceSpecificException;
    :catch_15
    move-exception v0

    .line 309
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist unregisterCallback(Landroid/net/lowpan/LowpanInterface$Callback;)V
    .registers 7
    .param p1, "cb"    # Landroid/net/lowpan/LowpanInterface$Callback;

    .line 679
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 680
    .local v0, "hashCode":I
    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface;->mListenerMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 681
    :try_start_7
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mListenerMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/lowpan/ILowpanInterfaceListener;

    .line 683
    .local v2, "listenerBinder":Landroid/net/lowpan/ILowpanInterfaceListener;
    if-eqz v2, :cond_2b

    .line 684
    iget-object v3, p0, Landroid/net/lowpan/LowpanInterface;->mListenerMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_2d

    .line 687
    :try_start_1e
    iget-object v3, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v3, v2}, Landroid/net/lowpan/ILowpanInterface;->removeListener(Landroid/net/lowpan/ILowpanInterfaceListener;)V
    :try_end_23
    .catch Landroid/os/DeadObjectException; {:try_start_1e .. :try_end_23} :catch_2a
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_23} :catch_24
    .catchall {:try_start_1e .. :try_end_23} :catchall_2d

    goto :goto_2b

    .line 691
    :catch_24
    move-exception v3

    .line 692
    .local v3, "x":Landroid/os/RemoteException;
    :try_start_25
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "hashCode":I
    .end local p0    # "this":Landroid/net/lowpan/LowpanInterface;
    .end local p1    # "cb":Landroid/net/lowpan/LowpanInterface$Callback;
    throw v4

    .line 688
    .end local v3    # "x":Landroid/os/RemoteException;
    .restart local v0    # "hashCode":I
    .restart local p0    # "this":Landroid/net/lowpan/LowpanInterface;
    .restart local p1    # "cb":Landroid/net/lowpan/LowpanInterface$Callback;
    :catch_2a
    move-exception v3

    .line 695
    .end local v2    # "listenerBinder":Landroid/net/lowpan/ILowpanInterfaceListener;
    :cond_2b
    :goto_2b
    monitor-exit v1

    .line 696
    return-void

    .line 695
    :catchall_2d
    move-exception v2

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_2d

    throw v2
.end method
