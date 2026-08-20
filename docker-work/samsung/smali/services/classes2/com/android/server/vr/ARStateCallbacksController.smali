.class public Lcom/android/server/vr/ARStateCallbacksController;
.super Ljava/lang/Object;
.source "ARStateCallbacksController.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ARStateCallbacksController"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mRemoteCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/vr/IARStateCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field public final mXrManagerService:Lcom/android/server/vr/XrManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/vr/XrManagerService;)V
    .registers 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/ARStateCallbacksController;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    .line 35
    iput-object p1, p0, Lcom/android/server/vr/ARStateCallbacksController;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/android/server/vr/ARStateCallbacksController;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    return-void
.end method


# virtual methods
.method public broadcastRemoteCallbacks(II)V
    .registers 5

    .line 41
    iget-object v0, p0, Lcom/android/server/vr/ARStateCallbacksController;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :catch_6
    :goto_6
    if-lez v0, :cond_16

    add-int/lit8 v0, v0, -0x1

    .line 45
    :try_start_a
    iget-object v1, p0, Lcom/android/server/vr/ARStateCallbacksController;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/vr/IARStateCallbacks;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/vr/IARStateCallbacks;->onARStateChanged(II)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_6

    goto :goto_6

    .line 49
    :cond_16
    iget-object p0, p0, Lcom/android/server/vr/ARStateCallbacksController;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public registerARStateListener(Lcom/samsung/android/vr/IARStateCallbacks;)V
    .registers 4

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerARStateListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ARStateCallbacksController"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object p0, p0, Lcom/android/server/vr/ARStateCallbacksController;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public unregisterARStateListener(Lcom/samsung/android/vr/IARStateCallbacks;)V
    .registers 4

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterARStateListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ARStateCallbacksController"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object p0, p0, Lcom/android/server/vr/ARStateCallbacksController;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method
