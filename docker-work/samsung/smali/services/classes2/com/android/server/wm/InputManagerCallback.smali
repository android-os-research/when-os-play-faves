.class public final Lcom/android/server/wm/InputManagerCallback;
.super Ljava/lang/Object;
.source "InputManagerCallback.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;


# static fields
.field public static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field public mInputDevicesReady:Z

.field public final mInputDevicesReadyMonitor:Ljava/lang/Object;

.field public mInputDispatchEnabled:Z

.field public mInputDispatchFrozen:Z

.field public mInputFreezeReason:Ljava/lang/String;

.field public final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputFreezeReason:Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method


# virtual methods
.method public createSurfaceForGestureMonitor(Ljava/lang/String;I)Landroid/view/SurfaceControl;
    .registers 5

    .line 323
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 324
    iget-object v1, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-nez v1, :cond_33

    const-string p0, "WindowManager"

    .line 326
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create a gesture monitor on display: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " - DisplayContent not found."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 328
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_5c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    .line 330
    :cond_33
    :try_start_33
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSession()Landroid/view/SurfaceSession;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    .line 331
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    .line 332
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    const-string p1, "createSurfaceForGestureMonitor"

    .line 333
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    .line 334
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    .line 335
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p0

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_33 .. :try_end_58} :catchall_5c

    .line 330
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    :catchall_5c
    move-exception p0

    .line 336
    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public dispatchUnhandledKey(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 4

    .line 184
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->dispatchUnhandledKey(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 411
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputFreezeReason:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mInputFreezeReason="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputFreezeReason:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public freezeInputDispatchingLw()V
    .registers 3

    .line 369
    iget-boolean v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDispatchFrozen:Z

    if-nez v0, :cond_20

    .line 370
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    if-eqz v0, :cond_f

    const-string v0, "WindowManager"

    const-string v1, "Freezing input dispatching"

    .line 371
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const/4 v0, 0x1

    .line 374
    iput-boolean v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDispatchFrozen:Z

    .line 376
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    if-eqz v0, :cond_1d

    const/4 v0, 0x6

    .line 377
    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputFreezeReason:Ljava/lang/String;

    .line 379
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/wm/InputManagerCallback;->updateInputDispatchModeLw()V

    :cond_20
    return-void
.end method

.method public getCursorPosition()Landroid/graphics/PointF;
    .registers 1

    .line 254
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getLatestMousePosition()Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public getParentSurfaceForPointers(I)Landroid/view/SurfaceControl;
    .registers 5

    .line 309
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 310
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-nez p0, :cond_33

    const-string p0, "WindowManager"

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get parent surface for pointers on display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " - DisplayContent not found."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 314
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    .line 316
    :cond_33
    :try_start_33
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getOverlayLayer()Landroid/view/SurfaceControl;

    move-result-object p0

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    :catchall_3c
    move-exception p0

    .line 317
    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getPointerDisplayId()I
    .registers 8

    .line 198
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 207
    iget-object v1, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v1, Lcom/android/server/wm/WindowManagerService;->mForceDesktopModeOnExternalDisplays:Z

    const/4 v3, 0x0

    if-nez v2, :cond_14

    .line 213
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_64

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 220
    :cond_14
    :try_start_14
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_1e
    if-ltz v1, :cond_5f

    .line 221
    iget-object v4, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, v4, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayContent;

    .line 222
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v5

    iget v5, v5, Landroid/view/DisplayInfo;->state:I

    if-ne v5, v2, :cond_35

    goto :goto_5c

    .line 228
    :cond_35
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getType()I

    move-result v5

    if-ne v5, v2, :cond_40

    goto :goto_5c

    .line 237
    :cond_40
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_50

    .line 238
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_14 .. :try_end_4c} :catchall_64

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :cond_50
    if-nez v3, :cond_5c

    .line 242
    :try_start_52
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    if-eqz v5, :cond_5c

    .line 243
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    :cond_5c
    :goto_5c
    add-int/lit8 v1, v1, -0x1

    goto :goto_1e

    .line 248
    :cond_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_52 .. :try_end_60} :catchall_64

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :catchall_64
    move-exception p0

    .line 249
    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getPointerLayer()I
    .registers 2

    .line 190
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v0, 0x7e2

    invoke-interface {p0, v0}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result p0

    mul-int/lit16 p0, p0, 0x2710

    add-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J
    .registers 4

    .line 174
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .registers 3

    .line 156
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result p0

    return p0
.end method

.method public interceptKeyBeforeQuickAccess(IFF)Z
    .registers 4

    .line 296
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicyExt;->interceptKeyBeforeQuickAccess(IFF)Z

    move-result p0

    return p0
.end method

.method public interceptMotionBeforeQueueingNonInteractive(IJI)I
    .registers 5

    .line 163
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/policy/WindowManagerPolicy;->interceptMotionBeforeQueueingNonInteractive(IJI)I

    move-result p0

    return p0
.end method

.method public notifyCameraLensCoverSwitchChanged(JZ)V
    .registers 4

    .line 147
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->notifyCameraLensCoverSwitchChanged(JZ)V

    return-void
.end method

.method public notifyConfigurationChanged()V
    .registers 4

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 127
    iget-object v1, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 128
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 130
    iget-object v1, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 131
    :try_start_1b
    iget-boolean v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReady:Z

    if-nez v0, :cond_27

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReady:Z

    .line 133
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 135
    :cond_27
    monitor-exit v1

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_29

    throw p0

    :catchall_2c
    move-exception p0

    .line 128
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public notifyDropWindow(Landroid/os/IBinder;FF)V
    .registers 6

    .line 289
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 290
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DragDropController;)V

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    .line 289
    invoke-static {v1, p1, p0, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyFocusChanged(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 5

    .line 283
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 284
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 283
    invoke-static {v1, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyInputChannelBroken(Landroid/os/IBinder;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 92
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mInputToWindowMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_30

    const-string p1, "WindowManager"

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WINDOW DIED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->removeIfPossible()V

    .line 97
    :cond_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_35

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

.method public notifyLidSwitchChanged(JZ)V
    .registers 4

    .line 141
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->notifyLidSwitchChanged(JZ)V

    return-void
.end method

.method public notifyNoFocusedWindowAnr(Landroid/view/InputApplicationHandle;)V
    .registers 3

    .line 108
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAnrController:Lcom/android/server/wm/AnrController;

    const-string v0, "Application does not have a focused window"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AnrController;->notifyAppUnresponsive(Landroid/view/InputApplicationHandle;Ljava/lang/String;)V

    return-void
.end method

.method public notifyPenSwitchChanged(JZ)V
    .registers 4

    .line 303
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicyExt;->notifyPenSwitchChanged(JZ)V

    return-void
.end method

.method public notifyPointerDisplayIdChanged(IFF)V
    .registers 6

    .line 341
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 342
    iget-object v1, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->setMousePointerDisplayId(I)V

    const/4 v1, -0x1

    if-ne p1, v1, :cond_15

    .line 343
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 345
    :cond_15
    :try_start_15
    iget-object v1, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-nez v1, :cond_3f

    const-string p0, "WindowManager"

    .line 347
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The mouse pointer was moved to display "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " that does not have a valid DisplayContent."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_15 .. :try_end_3b} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 351
    :cond_3f
    :try_start_3f
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->restorePointerIconLocked(Lcom/android/server/wm/DisplayContent;FF)V

    .line 352
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_49
    move-exception p0

    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public notifyWindowResponsive(Landroid/os/IBinder;Ljava/util/OptionalInt;)V
    .registers 3

    .line 120
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAnrController:Lcom/android/server/wm/AnrController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AnrController;->notifyWindowResponsive(Landroid/os/IBinder;Ljava/util/OptionalInt;)V

    return-void
.end method

.method public notifyWindowUnresponsive(Landroid/os/IBinder;Ljava/util/OptionalInt;Ljava/lang/String;)V
    .registers 4

    .line 115
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAnrController:Lcom/android/server/wm/AnrController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/AnrController;->notifyWindowUnresponsive(Landroid/os/IBinder;Ljava/util/OptionalInt;Ljava/lang/String;)V

    return-void
.end method

.method public onPointerDownOutsideFocus(Landroid/os/IBinder;)V
    .registers 3

    .line 259
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v0, 0x3e

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPointerDownUpCancelOutsideFocus(Landroid/os/IBinder;III)V
    .registers 6

    .line 267
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 268
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 269
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 270
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 271
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 272
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 p1, 0x3e

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setEventDispatchingLw(Z)V
    .registers 4

    .line 396
    iget-boolean v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDispatchEnabled:Z

    if-eq v0, p1, :cond_23

    .line 397
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    if-eqz v0, :cond_1e

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting event dispatching to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_1e
    iput-boolean p1, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDispatchEnabled:Z

    .line 402
    invoke-virtual {p0}, Lcom/android/server/wm/InputManagerCallback;->updateInputDispatchModeLw()V

    :cond_23
    return-void
.end method

.method public thawInputDispatchingLw()V
    .registers 3

    .line 384
    iget-boolean v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDispatchFrozen:Z

    if-eqz v0, :cond_18

    .line 385
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    if-eqz v0, :cond_f

    const-string v0, "WindowManager"

    const-string v1, "Thawing input dispatching"

    .line 386
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const/4 v0, 0x0

    .line 389
    iput-boolean v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDispatchFrozen:Z

    const/4 v0, 0x0

    .line 390
    iput-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputFreezeReason:Ljava/lang/String;

    .line 391
    invoke-virtual {p0}, Lcom/android/server/wm/InputManagerCallback;->updateInputDispatchModeLw()V

    :cond_18
    return-void
.end method

.method public final updateInputDispatchModeLw()V
    .registers 3

    .line 407
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-boolean v1, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDispatchEnabled:Z

    iget-boolean p0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDispatchFrozen:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/server/input/InputManagerService;->setInputDispatchMode(ZZ)V

    return-void
.end method

.method public waitForInputDevicesReady(J)Z
    .registers 5

    .line 357
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 358
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReady:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_10

    if-nez v1, :cond_c

    .line 360
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_c} :catch_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 364
    :catch_c
    :cond_c
    :try_start_c
    iget-boolean p0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReady:Z

    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 365
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_10

    throw p0
.end method
