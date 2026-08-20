.class public final Lcom/android/server/wm/MultiTaskingTransitionController$H;
.super Landroid/os/Handler;
.source "MultiTaskingTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MultiTaskingTransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "H"
.end annotation


# static fields
.field public static final FREEZE_DISPLAY_TIMEOUT:I = 0x1


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/MultiTaskingTransitionController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MultiTaskingTransitionController;Landroid/os/Looper;)V
    .registers 3

    .line 315
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingTransitionController$H;->this$0:Lcom/android/server/wm/MultiTaskingTransitionController;

    .line 316
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 321
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_2b

    .line 323
    :cond_6
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingTransitionController$H;->this$0:Lcom/android/server/wm/MultiTaskingTransitionController;

    invoke-static {p1}, Lcom/android/server/wm/MultiTaskingTransitionController;->-$$Nest$fgetmGlobalLock(Lcom/android/server/wm/MultiTaskingTransitionController;)Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object p1

    monitor-enter p1

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const-string v0, "MultiTaskingTransitionController"

    const-string v1, "FREEZE_DISPLAY_TIMEOUT!!"

    .line 324
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    const-string/jumbo v1, "timeout"

    .line 326
    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction;->freezeDisplayInTransaction(Ljava/lang/String;)V

    .line 327
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTransitionController$H;->this$0:Lcom/android/server/wm/MultiTaskingTransitionController;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiTaskingTransitionController;->stopFreezingDefaultDisplayIfNeeded(Landroid/window/WindowContainerTransaction;)V

    .line 328
    monitor-exit p1
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :goto_2b
    return-void

    :catchall_2c
    move-exception p0

    :try_start_2d
    monitor-exit p1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
