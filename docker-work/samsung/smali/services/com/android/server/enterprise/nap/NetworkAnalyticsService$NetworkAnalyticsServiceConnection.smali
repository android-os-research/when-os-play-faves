.class public Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;
.super Ljava/lang/Object;
.source "NetworkAnalyticsService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/nap/NetworkAnalyticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkAnalyticsServiceConnection"
.end annotation


# instance fields
.field public countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field public handleObj:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

.field public napInterface:Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;

.field public final synthetic this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;)V
    .registers 3

    .line 1688
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1683
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1686
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->napInterface:Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;

    .line 1689
    iput-object p2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->handleObj:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    return-void
.end method


# virtual methods
.method public getBinderObject()Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHandlerObject()Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized onBindingDied(Landroid/content/ComponentName;)V
    .registers 2

    monitor-enter p0

    .line 1755
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    monitor-enter p0

    .line 1707
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    monitor-enter p0

    .line 1745
    monitor-exit p0

    return-void
.end method
