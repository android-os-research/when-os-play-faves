.class public Lcom/android/server/vr/VrManagerService$2;
.super Landroid/os/Handler;
.source "VrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/VrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .registers 2

    .line 314
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 317
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6a

    if-eq v0, v2, :cond_51

    const/4 v3, 0x2

    if-ne v0, v3, :cond_38

    .line 339
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_10

    move v1, v2

    .line 340
    :cond_10
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$fgetmPersistentVrStateRemoteCallbacks(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p1

    :catch_1a
    :goto_1a
    if-lez p1, :cond_2e

    add-int/lit8 p1, p1, -0x1

    .line 344
    :try_start_1e
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/VrManagerService;->-$$Nest$fgetmPersistentVrStateRemoteCallbacks(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 345
    invoke-interface {v0, v1}, Landroid/service/vr/IPersistentVrStateCallbacks;->onPersistentVrStateChanged(Z)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_2d} :catch_1a

    goto :goto_1a

    .line 350
    :cond_2e
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p0}, Lcom/android/server/vr/VrManagerService;->-$$Nest$fgetmPersistentVrStateRemoteCallbacks(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_96

    .line 353
    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 332
    :cond_51
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$fgetmLock(Lcom/android/server/vr/VrManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 333
    :try_start_58
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$fgetmVrModeAllowed(Lcom/android/server/vr/VrManagerService;)Z

    move-result p1

    if-eqz p1, :cond_65

    .line 334
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p0}, Lcom/android/server/vr/VrManagerService;->-$$Nest$mconsumeAndApplyPendingStateLocked(Lcom/android/server/vr/VrManagerService;)V

    .line 336
    :cond_65
    monitor-exit v0

    goto :goto_96

    :catchall_67
    move-exception p0

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_58 .. :try_end_69} :catchall_67

    throw p0

    .line 319
    :cond_6a
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_6f

    move v1, v2

    .line 320
    :cond_6f
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$fgetmVrStateRemoteCallbacks(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p1

    :catch_79
    :goto_79
    if-lez p1, :cond_8d

    add-int/lit8 p1, p1, -0x1

    .line 324
    :try_start_7d
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/VrManagerService;->-$$Nest$fgetmVrStateRemoteCallbacks(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v0, v1}, Landroid/service/vr/IVrStateCallbacks;->onVrStateChanged(Z)V
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_8c} :catch_79

    goto :goto_79

    .line 329
    :cond_8d
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p0}, Lcom/android/server/vr/VrManagerService;->-$$Nest$fgetmVrStateRemoteCallbacks(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :goto_96
    return-void
.end method
