.class public Lcom/android/server/cloudsearch/RemoteCloudSearchService;
.super Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;
.source "RemoteCloudSearchService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cloudsearch/RemoteCloudSearchService$RemoteCloudSearchServiceCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService<",
        "Lcom/android/server/cloudsearch/RemoteCloudSearchService;",
        "Landroid/service/cloudsearch/ICloudSearchService;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RemoteCloudSearchService"

.field public static final TIMEOUT_IDLE_BOUND_TIMEOUT_MS:J = 0x927c0L

.field public static final TIMEOUT_REMOTE_REQUEST_MILLIS:J = 0x7d0L


# instance fields
.field public final mCallback:Lcom/android/server/cloudsearch/RemoteCloudSearchService$RemoteCloudSearchServiceCallbacks;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/server/cloudsearch/RemoteCloudSearchService$RemoteCloudSearchServiceCallbacks;ZZ)V
    .registers 18

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v6

    if-eqz p6, :cond_9

    const/high16 v0, 0x400000

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    move v7, v0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v8, p7

    .line 47
    invoke-direct/range {v0 .. v9}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZI)V

    move-object v1, p5

    .line 51
    iput-object v1, v0, Lcom/android/server/cloudsearch/RemoteCloudSearchService;->mCallback:Lcom/android/server/cloudsearch/RemoteCloudSearchService$RemoteCloudSearchServiceCallbacks;

    return-void
.end method


# virtual methods
.method public executeOnResolvedService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<",
            "Landroid/service/cloudsearch/ICloudSearchService;",
            ">;)V"
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->executeAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    return-void
.end method

.method public getRemoteRequestMillis()J
    .registers 3

    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method public bridge synthetic getServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 2

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/cloudsearch/RemoteCloudSearchService;->getServiceInterface(Landroid/os/IBinder;)Landroid/service/cloudsearch/ICloudSearchService;

    move-result-object p0

    return-object p0
.end method

.method public getServiceInterface(Landroid/os/IBinder;)Landroid/service/cloudsearch/ICloudSearchService;
    .registers 2

    .line 56
    invoke-static {p1}, Landroid/service/cloudsearch/ICloudSearchService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/cloudsearch/ICloudSearchService;

    move-result-object p0

    return-object p0
.end method

.method public getTimeoutIdleBindMillis()J
    .registers 3

    const-wide/32 v0, 0x927c0

    return-wide v0
.end method

.method public handleOnConnectedStateChanged(Z)V
    .registers 2

    .line 109
    iget-object p0, p0, Lcom/android/server/cloudsearch/RemoteCloudSearchService;->mCallback:Lcom/android/server/cloudsearch/RemoteCloudSearchService$RemoteCloudSearchServiceCallbacks;

    if-eqz p0, :cond_7

    .line 110
    invoke-interface {p0, p1}, Lcom/android/server/cloudsearch/RemoteCloudSearchService$RemoteCloudSearchServiceCallbacks;->onConnectedStateChanged(Z)V

    :cond_7
    return-void
.end method

.method public reconnect()V
    .registers 1

    .line 73
    invoke-super {p0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleBind()V

    return-void
.end method

.method public scheduleOnResolvedService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<",
            "Landroid/service/cloudsearch/ICloudSearchService;",
            ">;)V"
        }
    .end annotation

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    return-void
.end method
