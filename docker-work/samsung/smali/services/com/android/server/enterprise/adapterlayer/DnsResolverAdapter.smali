.class public Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;
.super Ljava/lang/Object;
.source "DnsResolverAdapter.java"

# interfaces
.implements Lcom/android/server/enterprise/adapter/IDnsResolverAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$CheckedRemoteRequest;
    }
.end annotation


# static fields
.field public static final DNS_RESOLVER_SERVICE:Ljava/lang/String; = "dnsresolver"

.field public static final TAG:Ljava/lang/String; = "DnsResolverAdapter"

.field public static sInstance:Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

.field public static final sLock:Ljava/lang/Object;


# instance fields
.field public volatile mDnsResolver:Landroid/net/IDnsResolver;


# direct methods
.method public static synthetic $r8$lambda$QMABR3zVReP6LZM8PqL_5KBKFDY(Landroid/net/ResolverParamsParcel;Landroid/net/IDnsResolver;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->lambda$setResolverConfiguration$1(Landroid/net/ResolverParamsParcel;Landroid/net/IDnsResolver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U2uk0U7pj-rlfB9uoINIXNejXi8(ILandroid/net/IDnsResolver;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->lambda$flushNetworkCache$3(ILandroid/net/IDnsResolver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$djoXl5v9iju7wfH8Y-0Osr1EJ-Y(ZILandroid/net/IDnsResolver;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->lambda$updateEnforceDnsUidForNetwork$0(ZILandroid/net/IDnsResolver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qH5_vTyInMmnv42jfI_DklHgaSs(ILandroid/net/IDnsResolver;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->lambda$createNetworkCache$2(ILandroid/net/IDnsResolver;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;
    .registers 2

    .line 38
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->sInstance:Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

    if-nez v0, :cond_17

    .line 40
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 41
    :try_start_7
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->sInstance:Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

    if-nez v0, :cond_12

    .line 43
    new-instance v0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

    invoke-direct {v0}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->sInstance:Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

    .line 45
    :cond_12
    monitor-exit v1

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v0

    :cond_17
    :goto_17
    return-object v0
.end method

.method public static synthetic lambda$createNetworkCache$2(ILandroid/net/IDnsResolver;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    invoke-interface {p1, p0}, Landroid/net/IDnsResolver;->createNetworkCache(I)V

    return-void
.end method

.method public static synthetic lambda$flushNetworkCache$3(ILandroid/net/IDnsResolver;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    invoke-interface {p1, p0}, Landroid/net/IDnsResolver;->flushNetworkCache(I)V

    return-void
.end method

.method public static synthetic lambda$setResolverConfiguration$1(Landroid/net/ResolverParamsParcel;Landroid/net/IDnsResolver;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    invoke-interface {p1, p0}, Landroid/net/IDnsResolver;->setResolverConfiguration(Landroid/net/ResolverParamsParcel;)V

    return-void
.end method

.method public static synthetic lambda$updateEnforceDnsUidForNetwork$0(ZILandroid/net/IDnsResolver;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    new-instance v0, Landroid/net/ResolverOptionsParcel;

    invoke-direct {v0}, Landroid/net/ResolverOptionsParcel;-><init>()V

    .line 55
    iput-boolean p0, v0, Landroid/net/ResolverOptionsParcel;->enforceDnsUid:Z

    .line 56
    invoke-interface {p2, p1, v0}, Landroid/net/IDnsResolver;->setResolverOptions(ILandroid/net/ResolverOptionsParcel;)V

    return-void
.end method


# virtual methods
.method public createNetworkCache(I)V
    .registers 4

    .line 68
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->TAG:Ljava/lang/String;

    const-string v1, "createNetworkCache - entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v1, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->runWithExceptionHandling(Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$CheckedRemoteRequest;)V

    const-string p0, "createNetworkCache - exited"

    .line 70
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public flushNetworkCache(I)V
    .registers 4

    .line 74
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->TAG:Ljava/lang/String;

    const-string v1, "flushNetworkCache - entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v1, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->runWithExceptionHandling(Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$CheckedRemoteRequest;)V

    const-string p0, "flushNetworkCache - exited"

    .line 76
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final getDnsResolver()Landroid/net/IDnsResolver;
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->mDnsResolver:Landroid/net/IDnsResolver;

    if-nez v0, :cond_20

    const-string v0, "dnsresolver"

    .line 99
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_16

    .line 101
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "updateEnforceDnsUidForNetwork: Failed to get binder for dns resolver service"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 105
    :cond_16
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IDnsResolver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IDnsResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->mDnsResolver:Landroid/net/IDnsResolver;

    .line 107
    :cond_20
    iget-object p0, p0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->mDnsResolver:Landroid/net/IDnsResolver;

    return-object p0
.end method

.method public final runWithExceptionHandling(Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$CheckedRemoteRequest;)V
    .registers 4

    .line 85
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->getDnsResolver()Landroid/net/IDnsResolver;

    move-result-object v0

    if-nez v0, :cond_e

    .line 86
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->TAG:Ljava/lang/String;

    const-string p1, "Failed to get dns resolver service"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 90
    :cond_e
    :try_start_e
    iget-object p0, p0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->mDnsResolver:Landroid/net/IDnsResolver;

    invoke-interface {p1, p0}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$CheckedRemoteRequest;->execute(Landroid/net/IDnsResolver;)V

    .line 91
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->TAG:Ljava/lang/String;

    const-string p1, "dnsresolver called successfully"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1a} :catch_1b
    .catch Landroid/os/ServiceSpecificException; {:try_start_e .. :try_end_1a} :catch_1b

    goto :goto_32

    :catch_1b
    move-exception p0

    .line 93
    sget-object p1, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error calling dnsresolver service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_32
    return-void
.end method

.method public setResolverConfiguration(Landroid/net/ResolverParamsParcel;)V
    .registers 4

    .line 62
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setResolverConfiguration - entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v1, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda0;-><init>(Landroid/net/ResolverParamsParcel;)V

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->runWithExceptionHandling(Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$CheckedRemoteRequest;)V

    const-string/jumbo p0, "setResolverConfiguration - exited"

    .line 64
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateEnforceDnsUidForNetwork(IZ)V
    .registers 5

    .line 51
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateEnforceDnsUidForNetwork - entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v1, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2, p1}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda3;-><init>(ZI)V

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->runWithExceptionHandling(Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$CheckedRemoteRequest;)V

    const-string/jumbo p0, "updateEnforceDnsUidForNetwork - exited"

    .line 58
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
