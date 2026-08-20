.class public final Lcom/android/server/wm/WindowManagerService$LocalService;
.super Lcom/android/server/wm/WindowManagerInternal;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$MlxXDXfbUjNjkRXYSV1NA5QD0Mw(Ljava/lang/String;Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/WindowManagerService$LocalService;->lambda$removeFixedRefreshRatePackageInternal$3(Ljava/lang/String;Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O6YZDT5zEQ8v5VLd8lESXl4O3bU(Ljava/lang/String;ILcom/android/server/wm/DisplayContent;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService$LocalService;->lambda$addFixedRefreshRatePackageInternal$2(Ljava/lang/String;ILcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hgvXe3t21W4lTXn3Msc9HAI2VkM(Ljava/lang/String;FFLcom/android/server/wm/DisplayContent;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService$LocalService;->lambda$addRefreshRateRangeForPackage$0(Ljava/lang/String;FFLcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zG_Xgx4e-xyV78pyyeRruTNDb9s(Ljava/lang/String;Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/WindowManagerService$LocalService;->lambda$removeRefreshRateRangeForPackage$1(Ljava/lang/String;Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .line 8745
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerService$LocalService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService$LocalService;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    return-void
.end method

.method public static synthetic lambda$addFixedRefreshRatePackageInternal$2(Ljava/lang/String;ILcom/android/server/wm/DisplayContent;)V
    .registers 3

    .line 9316
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayPolicy;->getRefreshRatePolicy()Lcom/android/server/wm/RefreshRatePolicy;

    move-result-object p2

    .line 9317
    invoke-virtual {p2, p0, p1}, Lcom/android/server/wm/RefreshRatePolicy;->addFixedRefreshRatePackage(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$addRefreshRateRangeForPackage$0(Ljava/lang/String;FFLcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 9297
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/wm/DisplayPolicy;->getRefreshRatePolicy()Lcom/android/server/wm/RefreshRatePolicy;

    move-result-object p3

    .line 9298
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/wm/RefreshRatePolicy;->addRefreshRateRangeForPackage(Ljava/lang/String;FF)V

    return-void
.end method

.method public static synthetic lambda$removeFixedRefreshRatePackageInternal$3(Ljava/lang/String;Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    .line 9326
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->getRefreshRatePolicy()Lcom/android/server/wm/RefreshRatePolicy;

    move-result-object p1

    .line 9327
    invoke-virtual {p1, p0}, Lcom/android/server/wm/RefreshRatePolicy;->removeFixedRefreshRatePackage(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$removeRefreshRateRangeForPackage$1(Ljava/lang/String;Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    .line 9306
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->getRefreshRatePolicy()Lcom/android/server/wm/RefreshRatePolicy;

    move-result-object p1

    .line 9307
    invoke-virtual {p1, p0}, Lcom/android/server/wm/RefreshRatePolicy;->removeRefreshRateRangeForPackage(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addFixedRefreshRatePackageInternal(Ljava/lang/String;I)V
    .registers 5

    .line 9314
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FIXED_REFRESH_RATE_PACKAGE:Z

    if-eqz v0, :cond_23

    .line 9315
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9316
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v1, Lcom/android/server/wm/WindowManagerService$LocalService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2}, Lcom/android/server/wm/WindowManagerService$LocalService$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 9318
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_23

    :catchall_1d
    move-exception p0

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_23
    :goto_23
    return-void
.end method

.method public addRefreshRateRangeForPackage(Ljava/lang/String;FF)V
    .registers 6

    .line 9296
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9297
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v1, Lcom/android/server/wm/WindowManagerService$LocalService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService$LocalService$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;FF)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 9300
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_19
    move-exception p0

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public addTrustedTaskOverlay(ILandroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 5

    .line 9413
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9414
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(I)Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 9418
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/WindowContainer;->addTrustedOverlay(Landroid/view/SurfaceControlViewHost$SurfacePackage;Lcom/android/server/wm/WindowState;)V

    .line 9419
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 9416
    :cond_1e
    :try_start_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no task with taskId"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_35
    move-exception p0

    .line 9419
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_1e .. :try_end_37} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public addWindowToken(Landroid/os/IBinder;IILandroid/os/Bundle;)V
    .registers 5

    .line 8915
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowManagerService;->addWindowToken(Landroid/os/IBinder;IILandroid/os/Bundle;)V

    return-void
.end method

.method public clearForcedDisplaySize(I)V
    .registers 2

    .line 8909
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->clearForcedDisplaySize(I)V

    return-void
.end method

.method public clearSnapshotCache()V
    .registers 2

    .line 8755
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8756
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotController;->clearSnapshotCache()V

    .line 8757
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_14
    move-exception p0

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public computeWindowsForAccessibility(I)V
    .registers 3

    .line 9066
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AccessibilityController;->performComputeChangedWindowsNot(IZ)V

    return-void
.end method

.method public freezeDisplayRotation(II)V
    .registers 5

    .line 9539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "freezeDisplayRotation: #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9540
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->freezeDisplayRotation(II)V

    return-void
.end method

.method public getAccessibilityController()Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;
    .registers 1

    .line 8749
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {p0}, Lcom/android/server/wm/AccessibilityController;->getAccessibilityControllerInternal(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayIdForWindow(Landroid/os/IBinder;)I
    .registers 3

    .line 9258
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9259
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_21

    .line 9261
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :cond_21
    const/4 p0, -0x1

    .line 9263
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_27
    move-exception p0

    .line 9264
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getDisplayImePolicy(I)I
    .registers 2
    .annotation build Landroid/view/WindowManager$DisplayImePolicy;
    .end annotation

    .line 9290
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayImePolicy(I)I

    move-result p0

    return p0
.end method

.method public getFocusedWindowToken()Landroid/os/IBinder;
    .registers 2

    .line 8823
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8824
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController;->getFocusedWindowToken()Landroid/os/IBinder;

    move-result-object p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    :catchall_15
    move-exception p0

    .line 8825
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getFocusedWindowTokenFromWindowStates()Landroid/os/IBinder;
    .registers 2

    .line 8831
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8832
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 8834
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {p0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    :cond_1b
    const/4 p0, 0x0

    .line 8836
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    :catchall_21
    move-exception p0

    .line 8837
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getHandwritingSurfaceForDisplay(I)Landroid/view/SurfaceControl;
    .registers 5

    .line 9436
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9437
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-nez v1, :cond_33

    const-string p0, "WindowManager"

    .line 9439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create a handwriting surface on display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " - DisplayContent not found."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 9441
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_5e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    .line 9444
    :cond_33
    :try_start_33
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSession()Landroid/view/SurfaceSession;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    .line 9445
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    const-string p1, "IME Handwriting Surface"

    .line 9446
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    const-string p1, "getHandwritingSurfaceForDisplay"

    .line 9447
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    .line 9448
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    .line 9449
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p0

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_33 .. :try_end_5a} :catchall_5e

    .line 9444
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    :catchall_5e
    move-exception p0

    .line 9450
    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getInitialDisplayProperties(I)[I
    .registers 2

    .line 9506
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerServiceExt;->getInitialDisplayProperties(I)[I

    move-result-object p0

    return-object p0
.end method

.method public getInputMethodWindowVisibleHeight(I)I
    .registers 3

    .line 8992
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8993
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-nez p0, :cond_18

    const/4 p0, 0x0

    .line 8997
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    .line 9000
    :cond_18
    :try_start_18
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInputMethodWindowVisibleHeight()I

    move-result p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_21
    move-exception p0

    .line 9001
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getKeyInterceptionInfoFromToken(Landroid/os/IBinder;)Lcom/android/internal/policy/KeyInterceptionInfo;
    .registers 2

    .line 9346
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mKeyInterceptionInfoForToken:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/policy/KeyInterceptionInfo;

    return-object p0
.end method

.method public getMagnificationRegion(ILandroid/graphics/Region;)V
    .registers 5

    .line 8791
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8792
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v1}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 8793
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AccessibilityController;->getMagnificationRegion(ILandroid/graphics/Region;)V

    .line 8797
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 8795
    :cond_1e
    :try_start_1e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Magnification callbacks not set!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_26
    move-exception p0

    .line 8797
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getTopFocusedDisplayId()I
    .registers 2

    .line 9269
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9270
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_19
    move-exception p0

    .line 9271
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getTopFocusedDisplayUiContext()Landroid/content/Context;
    .registers 2

    .line 9276
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9277
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayUiContext()Landroid/content/Context;

    move-result-object p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    :catchall_19
    move-exception p0

    .line 9278
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getWindowFrame(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .registers 4

    .line 8857
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8858
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_1c

    .line 8860
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1f

    .line 8862
    :cond_1c
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 8864
    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_24

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

.method public getWindowName(Landroid/os/IBinder;)Ljava/lang/String;
    .registers 3

    .line 9365
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9366
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_19

    .line 9367
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    :catchall_1f
    move-exception p0

    .line 9368
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getWindowOwnerUserId(Landroid/os/IBinder;)I
    .registers 4

    .line 9091
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9092
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_1b

    .line 9094
    iget p0, v1, Lcom/android/server/wm/WindowState;->mShowUserId:I

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    .line 9098
    :cond_1b
    :try_start_1b
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mEmbeddedWindowController:Lcom/android/server/wm/EmbeddedWindowController;

    .line 9099
    invoke-virtual {p0, p1}, Lcom/android/server/wm/EmbeddedWindowController;->getByWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    move-result-object p0

    if-eqz p0, :cond_2c

    .line 9101
    iget p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mShowUserId:I

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :cond_2c
    const/16 p0, -0x2710

    .line 9105
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_33
    move-exception p0

    .line 9106
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getWindowTransformationMatrixAndMagnificationSpec(Landroid/os/IBinder;)Landroid/util/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/graphics/Matrix;",
            "Landroid/view/MagnificationSpec;",
            ">;"
        }
    .end annotation

    .line 8870
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 8871
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AccessibilityController;->getWindowTransformationMatrixAndMagnificationSpec(Landroid/os/IBinder;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public hasInputMethodClientFocus(Landroid/os/IBinder;III)I
    .registers 9

    const/4 v0, -0x3

    const/4 v1, -0x1

    if-ne p4, v1, :cond_5

    return v0

    .line 9129
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9130
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 9131
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getInputTargetFromWindowTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/InputTarget;

    move-result-object p0

    if-nez p0, :cond_22

    .line 9133
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_8f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 9135
    :cond_22
    :try_start_22
    invoke-interface {p0}, Lcom/android/server/wm/InputTarget;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p1

    if-eq p1, p4, :cond_50

    const-string p0, "WindowManager"

    .line 9137
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isInputMethodClientFocus: display ID mismatch. from client: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " from window: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    .line 9140
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_22 .. :try_end_4c} :catchall_8f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :cond_50
    if-eqz v3, :cond_8a

    .line 9143
    :try_start_52
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p1

    if-ne p1, p4, :cond_8a

    .line 9144
    invoke-virtual {v3, p2}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result p1

    if-nez p1, :cond_5f

    goto :goto_8a

    .line 9148
    :cond_5f
    invoke-interface {p0, p2, p3}, Lcom/android/server/wm/InputTarget;->isInputMethodClientFocus(II)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_6b

    .line 9149
    monitor-exit v2
    :try_end_67
    .catchall {:try_start_52 .. :try_end_67} :catchall_8f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 9159
    :cond_6b
    :try_start_6b
    iget-object p0, v3, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_85

    .line 9160
    iget-object p4, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, p4, Lcom/android/server/wm/Session;->mUid:I

    if-ne v0, p2, :cond_85

    iget p2, p4, Lcom/android/server/wm/Session;->mPid:I

    if-ne p2, p3, :cond_85

    .line 9162
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->canBeImeTarget()Z

    move-result p0

    if-eqz p0, :cond_80

    move v1, p1

    .line 9163
    :cond_80
    monitor-exit v2
    :try_end_81
    .catchall {:try_start_6b .. :try_end_81} :catchall_8f

    .line 9162
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 9165
    :cond_85
    :try_start_85
    monitor-exit v2
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_8f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 9145
    :cond_8a
    :goto_8a
    :try_start_8a
    monitor-exit v2
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_8f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_8f
    move-exception p0

    .line 9165
    :try_start_90
    monitor-exit v2
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public hideIme(Landroid/os/IBinder;I)V
    .registers 13

    const-string v0, "WMS.hideIme"

    const-wide/16 v1, 0x20

    .line 9202
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 9203
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9204
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 9205
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_30

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, 0x5ace442

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v3, v9, v6

    invoke-static {v7, v8, v6, v4, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 9206
    :cond_30
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eqz p1, :cond_53

    .line 9221
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getImeControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-eqz p1, :cond_48

    .line 9223
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    .line 9227
    :cond_48
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ImeInsetsSourceProvider;->abortShowImePostLayout()V

    :cond_53
    if-eqz p0, :cond_7f

    const/4 p1, 0x2

    .line 9229
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p2

    if-eqz p2, :cond_7f

    .line 9230
    sget-boolean p2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    if-eqz p2, :cond_74

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x209c41bb

    new-array v8, v5, [Ljava/lang/Object;

    aput-object p2, v8, v6

    invoke-static {v3, v7, v6, v4, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 9232
    :cond_74
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p1

    .line 9233
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p2

    .line 9232
    invoke-interface {p1, p2, v5}, Lcom/android/server/wm/InsetsControlTarget;->hideInsets(IZ)V

    :cond_7f
    if-eqz p0, :cond_8c

    .line 9236
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/android/server/wm/ImeInsetsSourceProvider;->setImeShowing(Z)V

    .line 9238
    :cond_8c
    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_c .. :try_end_8d} :catchall_94

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 9239
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_94
    move-exception p0

    .line 9238
    :try_start_95
    monitor-exit v0
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public isHardKeyboardAvailable()Z
    .registers 2

    .line 9051
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9052
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean p0, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_11
    move-exception p0

    .line 9053
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public isKeyguardLocked()Z
    .registers 1

    .line 8842
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result p0

    return p0
.end method

.method public isKeyguardShowingAndNotOccluded()Z
    .registers 1

    .line 8847
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardShowingAndNotOccluded()Z

    move-result p0

    return p0
.end method

.method public isPointInsideWindow(Landroid/os/IBinder;IFF)Z
    .registers 6

    .line 9456
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9457
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_2a

    .line 9458
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result p1

    if-eq p1, p2, :cond_1b

    goto :goto_2a

    .line 9462
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    float-to-int p1, p3

    float-to-int p2, p4

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :cond_2a
    :goto_2a
    const/4 p0, 0x0

    .line 9459
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_30
    move-exception p0

    .line 9463
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public isTouchOrFaketouchDevice()Z
    .registers 3

    .line 9335
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9336
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mIsTouchDevice:Z

    if-eqz v1, :cond_1c

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mIsFakeTouchDevice:Z

    if-eqz v1, :cond_13

    goto :goto_1c

    .line 9337
    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "touchscreen supported device must report faketouch."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9340
    :cond_1c
    :goto_1c
    iget-boolean p0, p0, Lcom/android/server/wm/WindowManagerService;->mIsFakeTouchDevice:Z

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_23
    move-exception p0

    .line 9341
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public isUidAllowedOnDisplay(II)Z
    .registers 6

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_9

    return v2

    .line 9250
    :cond_9
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9251
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 9252
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result p0

    if-eqz p0, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    :goto_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_28
    move-exception p0

    .line 9253
    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public isUidFocused(I)Z
    .registers 6

    .line 9111
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9112
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_12
    if-ltz v1, :cond_30

    .line 9113
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 9114
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_2d

    .line 9115
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v3

    if-ne p1, v3, :cond_2d

    .line 9116
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_2d
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    :cond_30
    const/4 p0, 0x0

    .line 9119
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_36
    move-exception p0

    .line 9120
    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public launchHomeForDesktopMode(I)V
    .registers 2

    .line 9511
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerServiceExt;->launchHomeForDesktopMode(I)V

    return-void
.end method

.method public lockNow()V
    .registers 2

    .line 9086
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    return-void
.end method

.method public moveWindowTokenToDisplay(Landroid/os/IBinder;I)V
    .registers 3

    .line 8927
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->moveWindowTokenToDisplay(Landroid/os/IBinder;I)V

    return-void
.end method

.method public onToggleImeRequested(ZLandroid/os/IBinder;Landroid/os/IBinder;I)Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;
    .registers 7

    .line 9378
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9379
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/WindowState;

    if-eqz p2, :cond_19

    .line 9380
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_1b

    :cond_19
    const-string p2, "null"

    .line 9381
    :goto_1b
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/wm/WindowState;

    if-eqz p3, :cond_2c

    .line 9382
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object p3

    goto :goto_2e

    :cond_2c
    const-string p3, "null"

    .line 9383
    :goto_2e
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eqz p0, :cond_69

    const/4 p4, 0x2

    .line 9385
    invoke-virtual {p0, p4}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p4

    if-eqz p4, :cond_4f

    .line 9387
    invoke-static {p4}, Lcom/android/server/wm/InsetsControlTarget;->asWindowOrNull(Lcom/android/server/wm/InsetsControlTarget;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_4a

    .line 9388
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object p4

    goto :goto_51

    :cond_4a
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_51

    :cond_4f
    const-string p4, "null"

    :goto_51
    const/4 v1, 0x0

    .line 9392
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v1

    if-eqz v1, :cond_61

    .line 9393
    invoke-interface {v1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_63

    :cond_61
    const-string v1, "null"

    :goto_63
    if-eqz p1, :cond_6c

    .line 9395
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->onShowImeRequested()V

    goto :goto_6c

    :cond_69
    const-string p4, "no-display"

    move-object v1, p4

    .line 9400
    :cond_6c
    :goto_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_5 .. :try_end_6d} :catchall_76

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 9401
    new-instance p0, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;

    invoke-direct {p0, p2, p3, p4, v1}, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :catchall_76
    move-exception p0

    .line 9400
    :try_start_77
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public registerAppTransitionListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V
    .registers 4

    .line 8934
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8935
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 8936
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->registerLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 8937
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_23
    move-exception p0

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public registerAppTransitionListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;I)V
    .registers 4

    .line 8966
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8967
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 8969
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 8971
    :cond_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1c
    move-exception p0

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public registerDragDropControllerCallback(Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;)V
    .registers 2

    .line 9081
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragDropController;->registerCallback(Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;)V

    return-void
.end method

.method public registerKeyguardExitAnimationStartListener(Lcom/android/server/wm/WindowManagerInternal$KeyguardExitAnimationStartListener;)V
    .registers 3

    .line 8957
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8958
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 8959
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppTransition;->registerKeygaurdExitAnimationStartListener(Lcom/android/server/wm/WindowManagerInternal$KeyguardExitAnimationStartListener;)V

    .line 8960
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_18
    move-exception p0

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public registerTaskSystemBarsListener(Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;)V
    .registers 3

    .line 8942
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8943
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSystemBarsListenerController:Lcom/android/server/wm/TaskSystemBarsListenerController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSystemBarsListenerController;->registerListener(Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;)V

    .line 8944
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_14
    move-exception p0

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public removeFixedRefreshRatePackageInternal(Ljava/lang/String;)V
    .registers 4

    .line 9324
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FIXED_REFRESH_RATE_PACKAGE:Z

    if-eqz v0, :cond_23

    .line 9325
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9326
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v1, Lcom/android/server/wm/WindowManagerService$LocalService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/wm/WindowManagerService$LocalService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 9328
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_23

    :catchall_1d
    move-exception p0

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_23
    :goto_23
    return-void
.end method

.method public removeRefreshRateRangeForPackage(Ljava/lang/String;)V
    .registers 4

    .line 9305
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9306
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v1, Lcom/android/server/wm/WindowManagerService$LocalService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/android/server/wm/WindowManagerService$LocalService$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 9308
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_19
    move-exception p0

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public removeTrustedTaskOverlay(ILandroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 5

    .line 9425
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9426
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(I)Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 9430
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->removeTrustedOverlay(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 9431
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 9428
    :cond_1a
    :try_start_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no task with taskId"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_31
    move-exception p0

    .line 9431
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_1a .. :try_end_33} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public removeWindowToken(Landroid/os/IBinder;ZZI)V
    .registers 5

    .line 8921
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowManagerService;->removeWindowToken(Landroid/os/IBinder;ZZI)V

    return-void
.end method

.method public reportPasswordChanged(I)V
    .registers 2

    .line 8987
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {p0}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fgetmKeyguardDisableHandler(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/KeyguardDisableHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardDisableHandler;->updateKeyguardEnabled(I)V

    return-void
.end method

.method public requestTraversalFromDisplayManager()V
    .registers 2

    .line 8762
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8763
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 8764
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_12
    move-exception p0

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setAccessibilityIdToSurfaceMetadata(Landroid/os/IBinder;I)V
    .registers 5

    .line 9352
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9353
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowState;

    if-nez p1, :cond_20

    const-string p0, "WindowManager"

    const-string p1, "Cannot find window which accessibility connection is added to"

    .line 9355
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9356
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 9358
    :cond_20
    :try_start_20
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {p0}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$fgetmTransaction(Lcom/android/server/wm/WindowManagerService;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x5

    invoke-virtual {p0, p1, v1, p2}, Landroid/view/SurfaceControl$Transaction;->setMetadata(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    .line 9359
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 9360
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_20 .. :try_end_31} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_35
    move-exception p0

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setContentRecordingSession(Landroid/view/ContentRecordingSession;)V
    .registers 4

    .line 9468
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9469
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContentRecordingController:Lcom/android/server/wm/ContentRecordingController;

    invoke-virtual {v1, p1, p0}, Lcom/android/server/wm/ContentRecordingController;->setContentRecordingSessionLocked(Landroid/view/ContentRecordingSession;Lcom/android/server/wm/WindowManagerService;)V

    .line 9471
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_14
    move-exception p0

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setDeviceStateListener(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V
    .registers 2

    .line 9564
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExtraDisplayController:Lcom/android/server/wm/ExtraDisplayController;

    iget-object p0, p0, Lcom/android/server/wm/ExtraDisplayController;->as:Lcom/android/server/wm/ExtraDisplayFactory;

    invoke-virtual {p0}, Lcom/android/server/wm/ExtraDisplayFactory;->flexible()Lcom/android/server/wm/FlexibleDisplayController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/FlexibleDisplayController;->setDeviceStateListener(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    return-void
.end method

.method public setDismissImeOnBackKeyPressed(ZZ)V
    .registers 4

    .line 9010
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setDismissImeOnBackKeyPressed(Z)V

    .line 9012
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9013
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_CONTROLLER:Z

    if-eqz v0, :cond_22

    .line 9014
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowManagerServiceExt;->updateImeWindowVisibility(Z)V

    .line 9015
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowManagerServiceExt;->updateTspStateControllerWindowPolicyLocked(Lcom/android/server/wm/WindowState;)V

    .line 9017
    :cond_22
    monitor-exit p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_27
    move-exception p0

    :try_start_28
    monitor-exit p1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setDisplaySizeAndDensityInDex(IIII)V
    .registers 5

    return-void
.end method

.method public setForceShowMagnifiableBounds(IZ)V
    .registers 5

    .line 8780
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8781
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v1}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 8782
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AccessibilityController;->setForceShowMagnifiableBounds(IZ)V

    .line 8786
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 8784
    :cond_1e
    :try_start_1e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Magnification callbacks not set!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_26
    move-exception p0

    .line 8786
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setForcedDisplaySize(III)V
    .registers 4

    .line 8904
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplaySize(III)V

    return-void
.end method

.method public setInputFilter(Landroid/view/IInputFilter;)V
    .registers 2

    .line 8818
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->setInputFilter(Landroid/view/IInputFilter;)V

    return-void
.end method

.method public setMagnificationCallbacks(ILcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)Z
    .registers 4

    .line 8803
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8804
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AccessibilityController;->setMagnificationCallbacks(ILcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)Z

    move-result p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_15
    move-exception p0

    .line 8805
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setMagnificationSpec(ILandroid/view/MagnificationSpec;)V
    .registers 5

    .line 8769
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8770
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v1}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 8771
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AccessibilityController;->setMagnificationSpec(ILandroid/view/MagnificationSpec;)V

    .line 8775
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 8773
    :cond_1e
    :try_start_1e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Magnification callbacks not set!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_26
    move-exception p0

    .line 8775
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setOnHardKeyboardStatusChangeListener(Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;)V
    .registers 3

    .line 9059
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9060
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardStatusChangeListener:Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;

    .line 9061
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_11
    move-exception p0

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setVr2dDisplayId(I)V
    .registers 5

    .line 9071
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    if-eqz v0, :cond_1b

    const-string v0, "WindowManager"

    .line 9072
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVr2dDisplayId called for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9074
    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_20
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9075
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mVr2dDisplayId:I

    .line 9076
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2c
    move-exception p0

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setWindowsForAccessibilityCallback(ILcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V
    .registers 4

    .line 8811
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8812
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AccessibilityController;->setWindowsForAccessibilityCallback(ILcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V

    .line 8813
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_14
    move-exception p0

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public shouldRestoreImeVisibility(Landroid/os/IBinder;)Z
    .registers 2

    .line 9407
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->shouldRestoreImeVisibility(Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public shouldShowSystemDecorOnDisplay(I)Z
    .registers 3

    .line 9283
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9284
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->shouldShowSystemDecors(I)Z

    move-result p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_13
    move-exception p0

    .line 9285
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public showGlobalActions()V
    .registers 1

    .line 8852
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->showGlobalActions()V

    return-void
.end method

.method public showImePostLayout(Landroid/os/IBinder;)V
    .registers 7

    .line 9171
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9172
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->getInputTargetFromWindowTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/InputTarget;

    move-result-object p1

    if-nez p1, :cond_15

    .line 9174
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_15
    const-wide/16 v1, 0x20

    :try_start_17
    const-string v3, "WMS.showImePostLayout"

    const/4 v4, 0x0

    .line 9176
    invoke-static {v1, v2, v3, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 9189
    invoke-interface {p1}, Lcom/android/server/wm/InputTarget;->getImeControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p1

    .line 9190
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 9194
    invoke-interface {v1}, Lcom/android/server/wm/InputTarget;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    goto :goto_32

    :cond_2c
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    .line 9195
    :goto_32
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object p0

    .line 9196
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ImeInsetsSourceProvider;->scheduleShowImePostLayout(Lcom/android/server/wm/InsetsControlTarget;)V

    .line 9197
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_17 .. :try_end_3e} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_42
    move-exception p0

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public takeScreenshotToTargetWindowInternal(IIZLandroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;
    .registers 19

    move-object v0, p0

    .line 9521
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    const-string v2, "android.permission.READ_FRAME_BUFFER"

    const-string/jumbo v3, "takeScreenshotToTargetWindow()"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 9526
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    move v10, v1

    .line 9527
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mScreenshotExecutor:Lcom/android/server/wm/ScreenshotExecutor;

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/wm/ScreenshotExecutor;->takeScreenshotToTargetWindow(IIZLandroid/graphics/Rect;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 9522
    :cond_2f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_FRAME_BUFFER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterAppTransitionListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;I)V
    .registers 4

    .line 8976
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8977
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 8979
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppTransition;->unregisterListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 8981
    :cond_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1c
    move-exception p0

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public unregisterTaskSystemBarsListener(Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;)V
    .registers 3

    .line 8949
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8950
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSystemBarsListenerController:Lcom/android/server/wm/TaskSystemBarsListenerController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSystemBarsListenerController;->unregisterListener(Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;)V

    .line 8951
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_14
    move-exception p0

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public updateInputMethodTargetWindow(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 6

    .line 9025
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v0, :cond_23

    const-string v0, "WindowManager"

    .line 9026
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateInputMethodTargetWindow: imeToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " imeTargetWindowToken="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9029
    :cond_23
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_28
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9030
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 9031
    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowManagerService;->getInputTargetFromWindowTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/InputTarget;

    move-result-object p2

    if-eqz p2, :cond_3a

    .line 9033
    invoke-interface {p2}, Lcom/android/server/wm/InputTarget;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/wm/DisplayContent;->updateImeInputAndControlTarget(Lcom/android/server/wm/InputTarget;)V

    .line 9041
    :cond_3a
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_CONTROLLER:Z

    if-eqz v0, :cond_55

    .line 9042
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    const/4 v1, 0x0

    if-eqz p2, :cond_4a

    invoke-interface {p2}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object p2

    goto :goto_4b

    :cond_4a
    move-object p2, v1

    :goto_4b
    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowManagerServiceExt;->updateImeTargetWindow(Lcom/android/server/wm/WindowState;)V

    .line 9043
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerServiceExt;->updateTspStateControllerWindowPolicyLocked(Lcom/android/server/wm/WindowState;)V

    .line 9046
    :cond_55
    monitor-exit p1
    :try_end_56
    .catchall {:try_start_28 .. :try_end_56} :catchall_5a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_5a
    move-exception p0

    :try_start_5b
    monitor-exit p1
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public updateMirroredSurface(I)V
    .registers 5

    .line 9551
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9552
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-nez p0, :cond_2e

    const-string p0, "WindowManager"

    .line 9554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateMirroredSurface: cannot find dc, #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9555
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 9557
    :cond_2e
    :try_start_2e
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateMirroredSurfaceFromDisplayManager()V

    .line 9558
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_36
    move-exception p0

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public waitForAllWindowsDrawn(Ljava/lang/Runnable;JI)V
    .registers 9

    const/4 v0, -0x1

    if-ne p4, v0, :cond_8

    .line 8877
    iget-object p4, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p4, p4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    goto :goto_10

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p4

    :goto_10
    if-nez p4, :cond_16

    .line 8881
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_16
    const/4 v0, 0x0

    .line 8885
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_1c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8886
    invoke-virtual {p4}, Lcom/android/server/wm/WindowContainer;->waitForAllWindowsDrawn()V

    .line 8887
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 8888
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x18

    invoke-virtual {v2, v3, p4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 8889
    iget-object v2, p4, Lcom/android/server/wm/WindowContainer;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3c

    const/4 v0, 0x1

    goto :goto_4f

    .line 8892
    :cond_3c
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8893
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2, v3, p4, p2, p3}, Lcom/android/server/wm/WindowManagerService$H;->sendNewMessageDelayed(ILjava/lang/Object;J)V

    .line 8894
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    .line 8896
    :goto_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_1c .. :try_end_50} :catchall_59

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v0, :cond_58

    .line 8898
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_58
    return-void

    :catchall_59
    move-exception p0

    .line 8896
    :try_start_5a
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
