.class public Lcom/android/server/wm/DragDropController;
.super Ljava/lang/Object;
.source "DragDropController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DragDropController$DragHandler;
    }
.end annotation


# static fields
.field public static final A11Y_DRAG_TIMEOUT_DEFAULT_MS:I = 0xea60

.field public static final DRAG_SHADOW_ALPHA_TRANSPARENT:F = 0.7071f

.field public static final DRAG_TIMEOUT_MS:J = 0x1388L

.field public static final MSG_ANIMATION_END:I = 0x2

.field public static final MSG_DRAG_END_TIMEOUT:I = 0x0

.field public static final MSG_REMOVE_DRAG_SURFACE_TIMEOUT:I = 0x3

.field public static final MSG_TEAR_DOWN_DRAG_AND_DROP_INPUT:I = 0x1


# instance fields
.field public mCallback:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mDragState:Lcom/android/server/wm/DragState;

.field public final mHandler:Landroid/os/Handler;

.field public mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDragState(Lcom/android/server/wm/DragDropController;)Lcom/android/server/wm/DragState;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;)V
    .registers 5

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/android/server/wm/DragDropController$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DragDropController$1;-><init>(Lcom/android/server/wm/DragDropController;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 92
    iput-object p1, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 93
    new-instance v0, Lcom/android/server/wm/DragDropController$DragHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/DragDropController$DragHandler;-><init>(Lcom/android/server/wm/DragDropController;Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public cancelDragAndDrop(Landroid/os/IBinder;Z)V
    .registers 6

    .line 383
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_b

    const-string v0, "WindowManager"

    const-string v1, "cancelDragAndDrop"

    .line 384
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0, p1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->preCancelDragAndDrop(Landroid/os/IBinder;)V

    .line 389
    :try_start_16
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_60

    :try_start_1b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 390
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v1, :cond_4b

    .line 395
    iget-object v2, v1, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    if-ne v2, p1, :cond_3c

    const/4 p1, 0x0

    .line 402
    iput-boolean p1, v1, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 403
    invoke-virtual {v1, p2}, Lcom/android/server/wm/DragState;->cancelDragLocked(Z)V

    .line 404
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1b .. :try_end_2d} :catchall_5a

    :try_start_2d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_60

    .line 406
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {p0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postCancelDragAndDrop()V

    return-void

    :cond_3c
    :try_start_3c
    const-string p1, "WindowManager"

    const-string p2, "cancelDragAndDrop() does not match prepareDrag()"

    .line 396
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cancelDragAndDrop() does not match prepareDrag()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4b
    const-string p1, "WindowManager"

    const-string p2, "cancelDragAndDrop() without prepareDrag()"

    .line 391
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cancelDragAndDrop() without prepareDrag()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_5a
    move-exception p1

    .line 404
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3c .. :try_end_5c} :catchall_5a

    :try_start_5c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_60

    :catchall_60
    move-exception p1

    .line 406
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {p0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postCancelDragAndDrop()V

    .line 407
    throw p1
.end method

.method public dpToPixel(I)F
    .registers 3

    int-to-float p1, p1

    .line 449
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p0, v0

    mul-float/2addr p1, p0

    return p1
.end method

.method public dragDropActiveLocked()Z
    .registers 1

    .line 97
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->isClosing()Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public dragRecipientEntered(Landroid/view/IWindow;)V
    .registers 4

    .line 455
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_1e

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Drag into new candidate view @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_1e
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {p0, p1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->dragRecipientEntered(Landroid/view/IWindow;)V

    return-void
.end method

.method public dragRecipientExited(Landroid/view/IWindow;)V
    .registers 4

    .line 462
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_1e

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Drag from old candidate view @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_1e
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {p0, p1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->dragRecipientExited(Landroid/view/IWindow;)V

    return-void
.end method

.method public dragSurfaceRelinquishedToDropTarget()Z
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz p0, :cond_a

    iget-boolean p0, p0, Lcom/android/server/wm/DragState;->mRelinquishDragSurfaceToDropTarget:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public dropForAccessibility(Landroid/view/IWindow;FF)Z
    .registers 8

    .line 507
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 508
    invoke-virtual {p0}, Lcom/android/server/wm/DragDropController;->getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    .line 509
    invoke-virtual {p0}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1c

    .line 510
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_4c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 512
    :cond_1c
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->isAccessibilityDragDrop()Z

    move-result v2

    if-eqz v2, :cond_47

    if-eqz v1, :cond_47

    .line 513
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object p1

    .line 515
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 516
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_1c .. :try_end_36} :catchall_4c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 518
    :cond_3a
    :try_start_3a
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    .line 519
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DragState;->reportDropWindowLock(Landroid/os/IBinder;FF)Z

    move-result p0

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_4c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    .line 521
    :cond_47
    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_4c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :catchall_4c
    move-exception p0

    .line 522
    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 624
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_7a

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "DragState: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 626
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CallingWindowToken="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v0, v0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 627
    iget-object p2, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {p2}, Lcom/android/server/wm/DragState;->getInputWindowHandle()Landroid/view/InputWindowHandle;

    move-result-object p2

    if-eqz p2, :cond_62

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " InputWindowHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 632
    :cond_62
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " InputSurface="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object p0, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7a
    return-void
.end method

.method public getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;
    .registers 2

    .line 526
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method public handleDownEvent()V
    .registers 3

    .line 438
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DRAG_AND_DROP_ANIMATION:Z

    if-eqz v0, :cond_30

    .line 439
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 440
    invoke-virtual {p0}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v1}, Lcom/android/server/wm/DragState;->isAnimationSet()Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_25

    .line 443
    :cond_1b
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->notifyDownEventLocked()V

    .line 444
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_30

    .line 441
    :cond_25
    :goto_25
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2a
    move-exception p0

    .line 444
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_30
    :goto_30
    return-void
.end method

.method public handleMotionEvent(ZFF)V
    .registers 6

    .line 418
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 419
    invoke-virtual {p0}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v1

    if-nez v1, :cond_13

    .line 423
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_13
    if-eqz p1, :cond_1a

    .line 428
    :try_start_15
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/wm/DragState;->notifyLocationToEavesdropDragEventWindowLocked(FF)V

    .line 432
    :cond_1a
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DragState;->updateDragSurfaceLocked(ZFF)V

    .line 433
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_24
    move-exception p0

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public notifyDragSplitAppIconHasDrawable(Z)V
    .registers 2

    .line 532
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz p0, :cond_7

    .line 533
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragState;->setDragSplitAppIconHasDrawable(Z)V

    :cond_7
    return-void
.end method

.method public onDragStateClosedLocked(Lcom/android/server/wm/DragState;)V
    .registers 3

    .line 488
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eq v0, p1, :cond_c

    const-string p0, "WindowManager"

    const-string p1, "Unknown drag state is closed"

    .line 489
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/4 p1, 0x0

    .line 492
    iput-object p1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    return-void
.end method

.method public performDrag(IILandroid/view/IWindow;ILandroid/view/SurfaceControl;IFFFFLandroid/content/ClipData;)Landroid/os/IBinder;
    .registers 26

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    .line 117
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/wm/DragDropController;->performDragWithArea(IILandroid/view/IWindow;ILandroid/view/SurfaceControl;IFFFFLandroid/content/ClipData;Landroid/graphics/RectF;Landroid/graphics/Point;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public performDragWithArea(IILandroid/view/IWindow;ILandroid/view/SurfaceControl;IFFFFLandroid/content/ClipData;Landroid/graphics/RectF;Landroid/graphics/Point;)Landroid/os/IBinder;
    .registers 35

    move-object/from16 v8, p0

    move-object/from16 v0, p3

    move/from16 v7, p4

    move-object/from16 v6, p5

    move/from16 v5, p7

    move/from16 v4, p8

    move-object/from16 v3, p11

    move-object/from16 v2, p12

    .line 126
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v1, :cond_47

    const-string v1, "WindowManager"

    .line 127
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "perform drag: win="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " surface="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " flags="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " data="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 127
    invoke-static {v1, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_47
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 132
    iget-object v9, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    move-object/from16 v10, p3

    move-object v11, v1

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    move/from16 v16, p10

    move-object/from16 v17, p11

    invoke-interface/range {v9 .. v17}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->prePerformDrag(Landroid/view/IWindow;Landroid/os/IBinder;IFFFFLandroid/content/ClipData;)Z

    move-result v9

    .line 135
    :try_start_67
    iget-object v10, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v10
    :try_end_6c
    .catchall {:try_start_67 .. :try_end_6c} :catchall_376

    const/4 v11, 0x0

    :try_start_6d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_358

    if-nez v9, :cond_a2

    :try_start_72
    const-string v0, "WindowManager"

    const-string v1, "IDragDropCallback rejects the performDrag request"

    .line 138
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_72 .. :try_end_79} :catchall_9d

    if-eqz v6, :cond_7e

    .line 327
    :try_start_7b
    invoke-virtual/range {p5 .. p5}, Landroid/view/SurfaceControl;->release()V

    .line 329
    :cond_7e
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_8d

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_8d

    .line 330
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_8d
    :goto_8d
    monitor-exit v10
    :try_end_8e
    .catchall {:try_start_7b .. :try_end_8e} :catchall_370

    .line 336
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    return-object v11

    :catchall_9d
    move-exception v0

    move-object/from16 v18, v6

    goto/16 :goto_35b

    .line 142
    :cond_a2
    :try_start_a2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v9
    :try_end_a6
    .catchall {:try_start_a2 .. :try_end_a6} :catchall_358

    if-eqz v9, :cond_c4

    :try_start_a8
    const-string v0, "WindowManager"

    const-string v1, "Drag already in progress"

    .line 143
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_af
    .catchall {:try_start_a8 .. :try_end_af} :catchall_9d

    if-eqz v6, :cond_b4

    .line 327
    :try_start_b1
    invoke-virtual/range {p5 .. p5}, Landroid/view/SurfaceControl;->release()V

    .line 329
    :cond_b4
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_8d

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_8d

    .line 330
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->closeLocked()V
    :try_end_c3
    .catchall {:try_start_b1 .. :try_end_c3} :catchall_370

    goto :goto_8d

    .line 147
    :cond_c4
    :try_start_c4
    iget-object v9, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v0, v12}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v9

    if-eqz v9, :cond_32c

    .line 149
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->canReceiveTouchInput()Z

    move-result v13

    if-nez v13, :cond_d5

    goto/16 :goto_32c

    .line 155
    :cond_d5
    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z
    :try_end_d7
    .catchall {:try_start_c4 .. :try_end_d7} :catchall_358

    if-eqz v13, :cond_e4

    :try_start_d9
    iget-boolean v13, v9, Lcom/android/server/wm/WindowState;->mDssEnabled:Z

    if-eqz v13, :cond_e4

    .line 156
    iget v13, v9, Lcom/android/server/wm/WindowState;->mDssScale:F
    :try_end_df
    .catchall {:try_start_d9 .. :try_end_df} :catchall_9d

    div-float v14, p9, v13

    div-float v13, p10, v13

    goto :goto_e8

    :cond_e4
    move/from16 v14, p9

    move/from16 v13, p10

    .line 173
    :goto_e8
    :try_start_e8
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v15
    :try_end_ec
    .catchall {:try_start_e8 .. :try_end_ec} :catchall_358

    if-nez v15, :cond_10a

    :try_start_ee
    const-string v0, "WindowManager"

    const-string v1, "display content is null"

    .line 175
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f5
    .catchall {:try_start_ee .. :try_end_f5} :catchall_9d

    if-eqz v6, :cond_fa

    .line 327
    :try_start_f7
    invoke-virtual/range {p5 .. p5}, Landroid/view/SurfaceControl;->release()V

    .line 329
    :cond_fa
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_8d

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_8d

    .line 330
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->closeLocked()V
    :try_end_109
    .catchall {:try_start_f7 .. :try_end_109} :catchall_370

    goto :goto_8d

    :cond_10a
    const/high16 v16, 0x3f800000    # 1.0f

    if-eqz v3, :cond_11a

    .line 184
    :try_start_10e
    invoke-virtual/range {p11 .. p11}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ClipDescription;->isNaturalSwitching()Z

    move-result v17
    :try_end_116
    .catchall {:try_start_10e .. :try_end_116} :catchall_9d

    if-eqz v17, :cond_11a

    const/4 v12, 0x0

    goto :goto_124

    :cond_11a
    and-int/lit16 v12, v7, 0x200

    if-nez v12, :cond_122

    const v12, 0x3f350481    # 0.7071f

    goto :goto_124

    :cond_122
    move/from16 v12, v16

    .line 191
    :goto_124
    :try_start_124
    invoke-interface/range {p3 .. p3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 192
    new-instance v17, Landroid/os/Binder;

    invoke-direct/range {v17 .. v17}, Landroid/os/Binder;-><init>()V

    .line 193
    new-instance v11, Lcom/android/server/wm/DragState;

    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    move/from16 p10, v13

    move-object v13, v1

    move-object v1, v11

    move/from16 v19, v14

    move-object/from16 v14, p12

    move-object/from16 v20, v9

    move-object v9, v3

    move-object/from16 v3, p0

    move-object/from16 v4, v17

    move-object/from16 v5, p5

    move/from16 v6, p4

    move v14, v7

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/DragState;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DragDropController;Landroid/os/IBinder;Landroid/view/SurfaceControl;ILandroid/os/IBinder;)V

    iput-object v11, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_14b
    .catchall {:try_start_124 .. :try_end_14b} :catchall_358

    move/from16 v0, p1

    .line 195
    :try_start_14d
    iput v0, v11, Lcom/android/server/wm/DragState;->mPid:I

    move/from16 v0, p2

    .line 196
    iput v0, v11, Lcom/android/server/wm/DragState;->mUid:I

    .line 197
    iput v12, v11, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    .line 198
    iput-object v13, v11, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 199
    iput-object v15, v11, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 200
    iput-object v9, v11, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 203
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DRAG_AND_DROP_OBJECT_CAPTURE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_16f

    const/high16 v0, 0x400000

    and-int/2addr v0, v14

    if-eqz v0, :cond_16f

    move-object/from16 v2, p12

    move v0, v14

    if-eqz v2, :cond_170

    .line 206
    iput-boolean v1, v11, Lcom/android/server/wm/DragState;->mIsObjectCapture:Z

    .line 207
    iput-object v2, v11, Lcom/android/server/wm/DragState;->mObjectCaptureRect:Landroid/graphics/RectF;

    goto :goto_170

    :cond_16f
    move v0, v14

    :cond_170
    :goto_170
    and-int/lit16 v2, v0, 0x400

    if-nez v2, :cond_2e9

    .line 212
    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v2

    .line 213
    iget-object v4, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    iget-object v5, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v6, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    move-object/from16 v7, v20

    iget-object v11, v7, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-interface {v4, v5, v2, v6, v11}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->registerInputChannel(Lcom/android/server/wm/DragState;Landroid/view/Display;Lcom/android/server/input/InputManagerService;Landroid/view/InputChannel;)Z

    move-result v2

    if-nez v2, :cond_1b7

    const-string v0, "WindowManager"

    const-string v1, "Unable to transfer touch focus"

    .line 216
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_197
    .catchall {:try_start_14d .. :try_end_197} :catchall_328

    .line 329
    :try_start_197
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_1a6

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_1a6

    .line 330
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_1a6
    :goto_1a6
    monitor-exit v10
    :try_end_1a7
    .catchall {:try_start_197 .. :try_end_1a7} :catchall_370

    .line 336
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    const/4 v1, 0x0

    return-object v1

    .line 222
    :cond_1b7
    :try_start_1b7
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/wm/DragState;->mCallingPackageName:Ljava/lang/String;

    const/high16 v2, 0x200000

    and-int/2addr v2, v0

    if-eqz v2, :cond_1cd

    if-eqz v9, :cond_1cd

    .line 228
    invoke-virtual/range {p11 .. p11}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipDescription;->setDragFromRecent()V

    .line 232
    :cond_1cd
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v4, v2, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    move/from16 v5, p7

    move/from16 v6, p8

    .line 233
    invoke-virtual {v2, v5, v6}, Lcom/android/server/wm/DragState;->broadcastDragStartedLocked(FF)V

    .line 234
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v11, p6

    invoke-virtual {v2, v11}, Lcom/android/server/wm/DragState;->overridePointerIconLocked(I)V

    .line 236
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v14, v19

    iput v14, v2, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    move/from16 v11, p10

    .line 237
    iput v11, v2, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    .line 240
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_DRAG_AND_DROP_ANIMATION:Z

    if-eqz v2, :cond_21f

    if-eqz v9, :cond_21f

    const-string v2, "WindowManager"

    .line 241
    invoke-virtual/range {p11 .. p11}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ClipDescription;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual/range {p11 .. p11}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    const-string v12, "image/*"

    invoke-virtual {v2, v12}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20e

    .line 244
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    const/4 v9, 0x0

    iput v9, v2, Lcom/android/server/wm/DragState;->mMimeType:I

    goto :goto_21f

    .line 245
    :cond_20e
    invoke-virtual/range {p11 .. p11}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    const-string/jumbo v9, "text/*"

    invoke-virtual {v2, v9}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21f

    .line 246
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput v1, v2, Lcom/android/server/wm/DragState;->mMimeType:I

    .line 252
    :cond_21f
    :goto_21f
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v2, v2, Lcom/android/server/wm/DragState;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 253
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z

    if-eqz v9, :cond_23e

    iget-boolean v9, v7, Lcom/android/server/wm/WindowState;->mDssEnabled:Z

    if-eqz v9, :cond_23e

    .line 254
    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 255
    iget v9, v7, Lcom/android/server/wm/WindowState;->mDssScale:F

    div-float v12, v16, v9

    div-float v9, v16, v9

    invoke-virtual {v2, v12, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    sub-float v9, v5, v14

    sub-float v12, v6, v11

    .line 256
    invoke-virtual {v2, v9, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 261
    :cond_23e
    sget-boolean v9, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v9, :cond_249

    const-string v9, "WindowManager"

    const-string v12, ">>> OPEN TRANSACTION performDrag"

    .line 262
    invoke-static {v9, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_249
    iget-object v9, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v9, v9, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 267
    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    move-result v12

    if-eqz v12, :cond_274

    .line 268
    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v12

    if-eqz v12, :cond_27b

    sub-float v14, v5, v14

    .line 272
    iget v3, v12, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v14, v3

    iget v1, v12, Landroid/view/MagnificationSpec;->offsetX:F

    add-float/2addr v14, v1

    float-to-int v1, v14

    sub-float v11, v6, v11

    mul-float/2addr v11, v3

    .line 273
    iget v3, v12, Landroid/view/MagnificationSpec;->offsetY:F

    add-float/2addr v11, v3

    float-to-int v3, v11

    int-to-float v1, v1

    int-to-float v3, v3

    .line 275
    invoke-virtual {v9, v4, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 276
    iget v1, v12, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v9, v4, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_27b

    :cond_274
    sub-float v1, v5, v14

    sub-float v3, v6, v11

    .line 279
    invoke-virtual {v9, v4, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 283
    :cond_27b
    :goto_27b
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_DRAG_AND_DROP_ANIMATION:Z

    if-eqz v1, :cond_290

    iget-object v1, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 284
    invoke-virtual {v1}, Lcom/android/server/wm/DragState;->isAnimationSet()Z

    move-result v1

    if-eqz v1, :cond_290

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_290

    const/4 v0, 0x0

    .line 286
    invoke-virtual {v9, v4, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_297

    .line 289
    :cond_290
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget v0, v0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    invoke-virtual {v9, v4, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 293
    :goto_297
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z

    if-eqz v0, :cond_2ca

    iget-boolean v0, v7, Lcom/android/server/wm/WindowState;->mDssEnabled:Z

    if-eqz v0, :cond_2ca

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 295
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v1, 0x2

    aget v1, v0, v1

    const/4 v2, 0x5

    aget v2, v0, v2

    .line 296
    invoke-virtual {v9, v4, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x3

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v7, v0, v3

    const/4 v3, 0x4

    aget v0, v0, v3

    move-object/from16 p1, v9

    move-object/from16 p2, v4

    move/from16 p3, v1

    move/from16 p4, v2

    move/from16 p5, v7

    move/from16 p6, v0

    .line 298
    invoke-virtual/range {p1 .. p6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 304
    :cond_2ca
    invoke-virtual {v9, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 305
    invoke-virtual {v15, v9, v4}, Lcom/android/server/wm/DisplayContent;->reparentToOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 307
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DRAG_AND_DROP_ANIMATION:Z

    if-eqz v0, :cond_2d7

    .line 308
    invoke-virtual {v9}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 311
    :cond_2d7
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/server/wm/DragState;->updateDragSurfaceLocked(ZFF)V

    .line 312
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_309

    const-string v0, "WindowManager"

    const-string v1, "<<< CLOSE TRANSACTION performDrag"

    .line 313
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_309

    :cond_2e9
    move/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, v20

    .line 317
    invoke-virtual {v11, v5, v6}, Lcom/android/server/wm/DragState;->broadcastDragStartedLocked(FF)V

    .line 320
    iget-object v0, v7, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragDropController;->getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    const v2, 0xea60

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x0

    .line 320
    invoke-virtual {v8, v3, v0, v1, v2}, Lcom/android/server/wm/DragDropController;->sendTimeoutMessage(ILjava/lang/Object;J)V
    :try_end_309
    .catchall {:try_start_1b7 .. :try_end_309} :catchall_328

    .line 329
    :cond_309
    :goto_309
    :try_start_309
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_318

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_318

    .line 330
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->closeLocked()V

    .line 333
    :cond_318
    monitor-exit v10
    :try_end_319
    .catchall {:try_start_309 .. :try_end_319} :catchall_370

    :try_start_319
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_31c
    .catchall {:try_start_319 .. :try_end_31c} :catchall_376

    .line 336
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    return-object v13

    :catchall_328
    move-exception v0

    const/16 v18, 0x0

    goto :goto_35b

    :cond_32c
    :goto_32c
    :try_start_32c
    const-string v1, "WindowManager"

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad requesting window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_342
    .catchall {:try_start_32c .. :try_end_342} :catchall_358

    if-eqz p5, :cond_347

    .line 327
    :try_start_344
    invoke-virtual/range {p5 .. p5}, Landroid/view/SurfaceControl;->release()V

    .line 329
    :cond_347
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_1a6

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_1a6

    .line 330
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->closeLocked()V

    goto/16 :goto_1a6

    :catchall_358
    move-exception v0

    move-object/from16 v18, p5

    :goto_35b
    if-eqz v18, :cond_360

    .line 327
    invoke-virtual/range {v18 .. v18}, Landroid/view/SurfaceControl;->release()V

    .line 329
    :cond_360
    iget-object v1, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v1, :cond_36f

    invoke-virtual {v1}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v1

    if-nez v1, :cond_36f

    .line 330
    iget-object v1, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v1}, Lcom/android/server/wm/DragState;->closeLocked()V

    .line 332
    :cond_36f
    throw v0

    :catchall_370
    move-exception v0

    .line 333
    monitor-exit v10
    :try_end_372
    .catchall {:try_start_344 .. :try_end_372} :catchall_370

    :try_start_372
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_376
    .catchall {:try_start_372 .. :try_end_376} :catchall_376

    :catchall_376
    move-exception v0

    .line 336
    iget-object v1, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 337
    throw v0
.end method

.method public registerCallback(Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;)V
    .registers 2

    .line 105
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public reportDropResult(Landroid/view/IWindow;Z)V
    .registers 7

    .line 341
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 342
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v1, :cond_26

    const-string v1, "WindowManager"

    .line 343
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Drop result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " reported by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_26
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1, p1, p2}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->preReportDropResult(Landroid/view/IWindow;Z)V

    .line 348
    :try_start_31
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_cc

    :try_start_36
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 349
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-nez v2, :cond_54

    const-string p1, "WindowManager"

    const-string p2, "Drop result given but no drag in progress"

    .line 352
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_36 .. :try_end_45} :catchall_c6

    .line 378
    :goto_45
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {p0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    return-void

    .line 356
    :cond_54
    :try_start_54
    iget-object v2, v2, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    if-ne v2, v0, :cond_a7

    .line 365
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 366
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_83

    const-string p2, "WindowManager"

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad result-reporting window "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    monitor-exit v1

    goto :goto_45

    .line 372
    :cond_83
    iget-object p1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-boolean p2, p1, Lcom/android/server/wm/DragState;->mDragResult:Z

    if-eqz p2, :cond_90

    .line 374
    invoke-virtual {p1, v0}, Lcom/android/server/wm/DragState;->targetInterceptsGlobalDrag(Lcom/android/server/wm/WindowState;)Z

    move-result p2

    if-eqz p2, :cond_90

    const/4 v3, 0x1

    :cond_90
    iput-boolean v3, p1, Lcom/android/server/wm/DragState;->mRelinquishDragSurfaceToDropTarget:Z

    .line 375
    iget-object p1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {p1}, Lcom/android/server/wm/DragState;->endDragLocked()V

    .line 376
    monitor-exit v1
    :try_end_98
    .catchall {:try_start_54 .. :try_end_98} :catchall_c6

    :try_start_98
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_cc

    .line 378
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {p0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    return-void

    :cond_a7
    :try_start_a7
    const-string p2, "WindowManager"

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid drop-result claim by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "reportDropResult() by non-recipient"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_c6
    move-exception p1

    .line 376
    monitor-exit v1
    :try_end_c8
    .catchall {:try_start_a7 .. :try_end_c8} :catchall_c6

    :try_start_c8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_cc
    .catchall {:try_start_c8 .. :try_end_cc} :catchall_cc

    :catchall_cc
    move-exception p1

    .line 378
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {p0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    .line 379
    throw p1
.end method

.method public reportDropWindow(Landroid/os/IBinder;FF)V
    .registers 5

    .line 496
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-nez v0, :cond_c

    const-string p0, "WindowManager"

    const-string p1, "Drag state is closed."

    .line 497
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 501
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 502
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DragState;->reportDropWindowLock(Landroid/os/IBinder;FF)Z

    .line 503
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1e

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

.method public sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 110
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragState;->sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public sendHandlerMessage(ILjava/lang/Object;)V
    .registers 3

    .line 472
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public sendTimeoutMessage(ILjava/lang/Object;J)V
    .registers 6

    .line 479
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 480
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 481
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public setDragSurfaceToOverlay(Z)V
    .registers 5

    .line 605
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_31

    iget-object v1, v0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v1, :cond_9

    goto :goto_31

    :cond_9
    const/4 v2, -0x1

    if-eqz p1, :cond_18

    .line 610
    iget-object p0, v0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 611
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getOverlayLayer()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 610
    invoke-virtual {p0, p1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_31

    .line 613
    :cond_18
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getWindowEavesdropDragEvent()Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-eqz p1, :cond_31

    .line 614
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 615
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 616
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    .line 615
    invoke-virtual {v0, p0, p1, v2}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_31
    :goto_31
    return-void
.end method
