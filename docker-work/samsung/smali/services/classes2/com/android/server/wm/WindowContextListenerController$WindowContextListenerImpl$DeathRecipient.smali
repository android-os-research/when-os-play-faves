.class public Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;
.super Ljava/lang/Object;
.source "WindowContextListenerController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeathRecipient"
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)V
    .registers 2

    .line 468
    iput-object p1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;->this$1:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;-><init>(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 471
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;->this$1:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    invoke-static {v0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmContainer(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 472
    iget-object v1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;->this$1:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fputmDeathRecipient(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;)V

    .line 473
    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;->this$1:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    invoke-static {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$munregister(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)V

    .line 474
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1e
    move-exception p0

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public linkToDeath()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 478
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;->this$1:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    invoke-static {v0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmClientToken(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Landroid/app/IWindowToken;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IWindowToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method

.method public unlinkToDeath()V
    .registers 3

    .line 482
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;->this$1:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    invoke-static {v0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->-$$Nest$fgetmClientToken(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)Landroid/app/IWindowToken;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IWindowToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
