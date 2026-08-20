.class public Lcom/android/server/wm/DragDropController$DragHandler;
.super Landroid/os/Handler;
.source "DragDropController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DragDropController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DragHandler"
.end annotation


# instance fields
.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final synthetic this$0:Lcom/android/server/wm/DragDropController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DragDropController;Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;)V
    .registers 4

    .line 544
    iput-object p1, p0, Lcom/android/server/wm/DragDropController$DragHandler;->this$0:Lcom/android/server/wm/DragDropController;

    .line 545
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 546
    iput-object p2, p0, Lcom/android/server/wm/DragDropController$DragHandler;->mService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 551
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_91

    const/4 v1, 0x1

    if-eq v0, v1, :cond_69

    const/4 v1, 0x2

    if-eq v0, v1, :cond_39

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    goto/16 :goto_d5

    .line 593
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/DragDropController$DragHandler;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 594
    iget-object p0, p0, Lcom/android/server/wm/DragDropController$DragHandler;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    .line 595
    invoke-virtual {p0, p1, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 596
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_14 .. :try_end_2e} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_d5

    :catchall_33
    move-exception p0

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 581
    :cond_39
    iget-object p1, p0, Lcom/android/server/wm/DragDropController$DragHandler;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 582
    iget-object p1, p0, Lcom/android/server/wm/DragDropController$DragHandler;->this$0:Lcom/android/server/wm/DragDropController;

    invoke-static {p1}, Lcom/android/server/wm/DragDropController;->-$$Nest$fgetmDragState(Lcom/android/server/wm/DragDropController;)Lcom/android/server/wm/DragState;

    move-result-object p1

    if-nez p1, :cond_55

    const-string p0, "WindowManager"

    const-string p1, "mDragState unexpectedly became null while playing animation"

    .line 583
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3e .. :try_end_51} :catchall_63

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 587
    :cond_55
    :try_start_55
    iget-object p0, p0, Lcom/android/server/wm/DragDropController$DragHandler;->this$0:Lcom/android/server/wm/DragDropController;

    invoke-static {p0}, Lcom/android/server/wm/DragDropController;->-$$Nest$fgetmDragState(Lcom/android/server/wm/DragDropController;)Lcom/android/server/wm/DragState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->closeLocked()V

    .line 588
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_55 .. :try_end_5f} :catchall_63

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_d5

    :catchall_63
    move-exception p0

    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 569
    :cond_69
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_74

    const-string v0, "WindowManager"

    const-string v1, "Drag ending; tearing down input channel"

    .line 570
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_74
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/DragState$InputInterceptor;

    if-nez p1, :cond_7b

    return-void

    .line 574
    :cond_7b
    iget-object p0, p0, Lcom/android/server/wm/DragDropController$DragHandler;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_80
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 575
    invoke-virtual {p1}, Lcom/android/server/wm/DragState$InputInterceptor;->tearDown()V

    .line 576
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_80 .. :try_end_87} :catchall_8b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_d5

    :catchall_8b
    move-exception p0

    :try_start_8c
    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 553
    :cond_91
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/IBinder;

    .line 554
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_af

    const-string v0, "WindowManager"

    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout ending drag to win "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_af
    iget-object p1, p0, Lcom/android/server/wm/DragDropController$DragHandler;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_b4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 560
    iget-object v0, p0, Lcom/android/server/wm/DragDropController$DragHandler;->this$0:Lcom/android/server/wm/DragDropController;

    invoke-static {v0}, Lcom/android/server/wm/DragDropController;->-$$Nest$fgetmDragState(Lcom/android/server/wm/DragDropController;)Lcom/android/server/wm/DragState;

    move-result-object v0

    if-eqz v0, :cond_d1

    .line 561
    iget-object v0, p0, Lcom/android/server/wm/DragDropController$DragHandler;->this$0:Lcom/android/server/wm/DragDropController;

    invoke-static {v0}, Lcom/android/server/wm/DragDropController;->-$$Nest$fgetmDragState(Lcom/android/server/wm/DragDropController;)Lcom/android/server/wm/DragState;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 562
    iget-object p0, p0, Lcom/android/server/wm/DragDropController$DragHandler;->this$0:Lcom/android/server/wm/DragDropController;

    invoke-static {p0}, Lcom/android/server/wm/DragDropController;->-$$Nest$fgetmDragState(Lcom/android/server/wm/DragDropController;)Lcom/android/server/wm/DragState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->endDragLocked()V

    .line 564
    :cond_d1
    monitor-exit p1
    :try_end_d2
    .catchall {:try_start_b4 .. :try_end_d2} :catchall_d6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :goto_d5
    return-void

    :catchall_d6
    move-exception p0

    :try_start_d7
    monitor-exit p1
    :try_end_d8
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_d6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
