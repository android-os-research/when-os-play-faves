.class public Lcom/android/server/vr/GearVrStateCallbacksController;
.super Ljava/lang/Object;
.source "GearVrStateCallbacksController.java"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mRemoteCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/vr/IGearVrStateCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field public final mXrManagerService:Lcom/android/server/vr/XrManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/vr/XrManagerService;)V
    .registers 4

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-class v0, Lcom/android/server/vr/GearVrStateCallbacksController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vr/GearVrStateCallbacksController;->TAG:Ljava/lang/String;

    .line 18
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/GearVrStateCallbacksController;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    .line 22
    iput-object p1, p0, Lcom/android/server/vr/GearVrStateCallbacksController;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/android/server/vr/GearVrStateCallbacksController;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    return-void
.end method


# virtual methods
.method public broadcastRemoteCallbacks(II)V
    .registers 5

    .line 28
    iget-object v0, p0, Lcom/android/server/vr/GearVrStateCallbacksController;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :catch_6
    :goto_6
    if-lez v0, :cond_16

    add-int/lit8 v0, v0, -0x1

    .line 32
    :try_start_a
    iget-object v1, p0, Lcom/android/server/vr/GearVrStateCallbacksController;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/vr/IGearVrStateCallbacks;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/vr/IGearVrStateCallbacks;->onGearVrStateChanged(II)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_6

    goto :goto_6

    .line 37
    :cond_16
    iget-object p0, p0, Lcom/android/server/vr/GearVrStateCallbacksController;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    const-string v0, "GearVrStateCallbacksController:"

    .line 51
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "IGearVrStateCallbacks Remote Callbacks:"

    .line 53
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/android/server/vr/GearVrStateCallbacksController;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_10
    add-int/lit8 v1, v0, -0x1

    const-string v2, "    "

    if-lez v0, :cond_2b

    .line 56
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/android/server/vr/GearVrStateCallbacksController;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-lez v1, :cond_29

    const-string v0, ","

    .line 58
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_29
    move v0, v1

    goto :goto_10

    .line 60
    :cond_2b
    iget-object v0, p0, Lcom/android/server/vr/GearVrStateCallbacksController;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 61
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 62
    iget-object p0, p0, Lcom/android/server/vr/GearVrStateCallbacksController;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1, v2}, Landroid/os/RemoteCallbackList;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    .registers 5

    .line 41
    iget-object v0, p0, Lcom/android/server/vr/GearVrStateCallbacksController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerVrStateListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object p0, p0, Lcom/android/server/vr/GearVrStateCallbacksController;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public unregisterVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    .registers 5

    .line 46
    iget-object v0, p0, Lcom/android/server/vr/GearVrStateCallbacksController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterVrStateListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object p0, p0, Lcom/android/server/vr/GearVrStateCallbacksController;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method
