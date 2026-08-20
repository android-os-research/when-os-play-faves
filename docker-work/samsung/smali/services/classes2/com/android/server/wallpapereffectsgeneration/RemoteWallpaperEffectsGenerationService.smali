.class public Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;
.super Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;
.source "RemoteWallpaperEffectsGenerationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService$RemoteWallpaperEffectsGenerationServiceCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService<",
        "Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;",
        "Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static final TIMEOUT_REMOTE_REQUEST_MILLIS:J = 0x7d0L


# instance fields
.field public final mCallback:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService$RemoteWallpaperEffectsGenerationServiceCallback;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 38
    const-class v0, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    .line 39
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService$RemoteWallpaperEffectsGenerationServiceCallback;ZZ)V
    .registers 17

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v6

    if-eqz p5, :cond_9

    const/high16 v0, 0x400000

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    move v7, v0

    const/4 v9, 0x1

    const-string v2, "android.service.wallpapereffectsgeneration.WallpaperEffectsGenerationService"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v8, p6

    .line 50
    invoke-direct/range {v0 .. v9}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZI)V

    move-object v1, p4

    .line 55
    iput-object v1, v0, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;->mCallback:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService$RemoteWallpaperEffectsGenerationServiceCallback;

    return-void
.end method


# virtual methods
.method public executeOnResolvedService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<",
            "Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService;",
            ">;)V"
        }
    .end annotation

    .line 93
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

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;->getServiceInterface(Landroid/os/IBinder;)Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService;

    move-result-object p0

    return-object p0
.end method

.method public getServiceInterface(Landroid/os/IBinder;)Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService;
    .registers 2

    .line 60
    invoke-static {p1}, Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService;

    move-result-object p0

    return-object p0
.end method

.method public getTimeoutIdleBindMillis()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleOnConnectedStateChanged(Z)V
    .registers 2

    .line 109
    iget-object p0, p0, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;->mCallback:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService$RemoteWallpaperEffectsGenerationServiceCallback;

    if-eqz p0, :cond_7

    .line 110
    invoke-interface {p0, p1}, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService$RemoteWallpaperEffectsGenerationServiceCallback;->onConnectedStateChanged(Z)V

    :cond_7
    return-void
.end method

.method public reconnect()V
    .registers 1

    .line 77
    invoke-super {p0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleBind()V

    return-void
.end method

.method public scheduleOnResolvedService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<",
            "Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService;",
            ">;)V"
        }
    .end annotation

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    return-void
.end method
