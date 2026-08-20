.class public final Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;
.super Ljava/lang/Object;
.source "RemoteDisplayProviderProxy.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/RemoteDisplayProviderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Connection"
.end annotation


# instance fields
.field public final mCallback:Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;

.field public final mProvider:Landroid/media/IRemoteDisplayProvider;

.field public final synthetic this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/media/RemoteDisplayProviderProxy;Landroid/media/IRemoteDisplayProvider;)V
    .registers 3

    .line 329
    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-object p2, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mProvider:Landroid/media/IRemoteDisplayProvider;

    .line 331
    new-instance p1, Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;

    invoke-direct {p1, p0}, Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;-><init>(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;)V

    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mCallback:Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;

    return-void
.end method


# virtual methods
.method public adjustVolume(Ljava/lang/String;I)V
    .registers 3

    .line 390
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mProvider:Landroid/media/IRemoteDisplayProvider;

    invoke-interface {p0, p1, p2}, Landroid/media/IRemoteDisplayProvider;->adjustVolume(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    const-string p1, "RemoteDisplayProvider"

    const-string p2, "Failed to deliver request to adjust display volume."

    .line 392
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public binderDied()V
    .registers 3

    .line 398
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-static {v0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->-$$Nest$fgetmHandler(Lcom/android/server/media/RemoteDisplayProviderProxy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection$2;

    invoke-direct {v1, p0}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection$2;-><init>(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public connect(Ljava/lang/String;)V
    .registers 3

    .line 366
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mProvider:Landroid/media/IRemoteDisplayProvider;

    invoke-interface {p0, p1}, Landroid/media/IRemoteDisplayProvider;->connect(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    const-string p1, "RemoteDisplayProvider"

    const-string v0, "Failed to deliver request to connect to display."

    .line 368
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public disconnect(Ljava/lang/String;)V
    .registers 3

    .line 374
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mProvider:Landroid/media/IRemoteDisplayProvider;

    invoke-interface {p0, p1}, Landroid/media/IRemoteDisplayProvider;->disconnect(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    const-string p1, "RemoteDisplayProvider"

    const-string v0, "Failed to deliver request to disconnect from display."

    .line 376
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public dispose()V
    .registers 3

    .line 352
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mProvider:Landroid/media/IRemoteDisplayProvider;

    invoke-interface {v0}, Landroid/media/IRemoteDisplayProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 353
    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mCallback:Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;

    invoke-virtual {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;->dispose()V

    return-void
.end method

.method public postStateChanged(Landroid/media/RemoteDisplayState;)V
    .registers 4

    .line 407
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-static {v0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->-$$Nest$fgetmHandler(Lcom/android/server/media/RemoteDisplayProviderProxy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection$3;-><init>(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;Landroid/media/RemoteDisplayState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public register()Z
    .registers 4

    const/4 v0, 0x0

    .line 336
    :try_start_1
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mProvider:Landroid/media/IRemoteDisplayProvider;

    invoke-interface {v1}, Landroid/media/IRemoteDisplayProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 337
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mProvider:Landroid/media/IRemoteDisplayProvider;

    iget-object v2, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mCallback:Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;

    invoke-interface {v1, v2}, Landroid/media/IRemoteDisplayProvider;->setCallback(Landroid/media/IRemoteDisplayCallback;)V

    .line 338
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-static {v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->-$$Nest$fgetmHandler(Lcom/android/server/media/RemoteDisplayProviderProxy;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection$1;

    invoke-direct {v2, p0}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection$1;-><init>(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1f} :catch_21

    const/4 p0, 0x1

    return p0

    .line 346
    :catch_21
    invoke-virtual {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->binderDied()V

    return v0
.end method

.method public setDiscoveryMode(I)V
    .registers 3

    .line 358
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mProvider:Landroid/media/IRemoteDisplayProvider;

    invoke-interface {p0, p1}, Landroid/media/IRemoteDisplayProvider;->setDiscoveryMode(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    const-string p1, "RemoteDisplayProvider"

    const-string v0, "Failed to deliver request to set discovery mode."

    .line 360
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public setVolume(Ljava/lang/String;I)V
    .registers 3

    .line 382
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mProvider:Landroid/media/IRemoteDisplayProvider;

    invoke-interface {p0, p1, p2}, Landroid/media/IRemoteDisplayProvider;->setVolume(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    const-string p1, "RemoteDisplayProvider"

    const-string p2, "Failed to deliver request to set display volume."

    .line 384
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method
