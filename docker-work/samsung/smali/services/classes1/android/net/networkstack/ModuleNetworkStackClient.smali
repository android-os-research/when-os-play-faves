.class public Landroid/net/networkstack/ModuleNetworkStackClient;
.super Landroid/net/networkstack/NetworkStackClientBase;
.source "ModuleNetworkStackClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/networkstack/ModuleNetworkStackClient$PollingRunner;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ModuleNetworkStackClient"

.field private static sInstance:Landroid/net/networkstack/ModuleNetworkStackClient;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/net/networkstack/ModuleNetworkStackClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Landroid/net/networkstack/NetworkStackClientBase;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/net/networkstack/ModuleNetworkStackClient;
    .registers 2

    const-class p0, Landroid/net/networkstack/ModuleNetworkStackClient;

    monitor-enter p0

    .line 53
    :try_start_3
    sget-object v0, Landroid/net/networkstack/ModuleNetworkStackClient;->sInstance:Landroid/net/networkstack/ModuleNetworkStackClient;

    if-nez v0, :cond_11

    .line 54
    new-instance v0, Landroid/net/networkstack/ModuleNetworkStackClient;

    invoke-direct {v0}, Landroid/net/networkstack/ModuleNetworkStackClient;-><init>()V

    sput-object v0, Landroid/net/networkstack/ModuleNetworkStackClient;->sInstance:Landroid/net/networkstack/ModuleNetworkStackClient;

    .line 55
    invoke-direct {v0}, Landroid/net/networkstack/ModuleNetworkStackClient;->startPolling()V

    .line 57
    :cond_11
    sget-object v0, Landroid/net/networkstack/ModuleNetworkStackClient;->sInstance:Landroid/net/networkstack/ModuleNetworkStackClient;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized resetInstanceForTest()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-class v0, Landroid/net/networkstack/ModuleNetworkStackClient;

    monitor-enter v0

    const/4 v1, 0x0

    .line 62
    :try_start_4
    sput-object v1, Landroid/net/networkstack/ModuleNetworkStackClient;->sInstance:Landroid/net/networkstack/ModuleNetworkStackClient;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    .line 63
    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private startPolling()V
    .registers 4

    .line 68
    invoke-static {}, Landroid/net/NetworkStack;->getService()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 73
    invoke-static {v0}, Landroid/net/INetworkStackConnector$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackConnector;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/networkstack/NetworkStackClientBase;->onNetworkStackConnected(Landroid/net/INetworkStackConnector;)V

    return-void

    .line 76
    :cond_e
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/net/networkstack/ModuleNetworkStackClient$PollingRunner;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/net/networkstack/ModuleNetworkStackClient$PollingRunner;-><init>(Landroid/net/networkstack/ModuleNetworkStackClient;Landroid/net/networkstack/ModuleNetworkStackClient$PollingRunner-IA;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
