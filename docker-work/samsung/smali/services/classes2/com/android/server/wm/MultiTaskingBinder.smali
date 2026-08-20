.class public final Lcom/android/server/wm/MultiTaskingBinder;
.super Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;
.source "MultiTaskingBinder.java"


# static fields
.field public static final LONG_PRESS_TIME_OUT_SYSTEM_DEFAULT:I = 0x1f4

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public static synthetic $r8$lambda$CWZ74rzy7eU9R414XdzyQZZWenA([ILcom/android/server/wm/Task;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/MultiTaskingBinder;->lambda$minimizeTaskByToken$0([ILcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Dvdszgd-QucIJdtoVeI02e5Cd_c(Lcom/android/server/wm/MultiTaskingBinder;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/MultiTaskingBinder;->lambda$disableDividerPanelFirstAutoOpen$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$MXXm3XXslgW0-5KtQvKL_NBT0n0(Lcom/android/server/wm/Task;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingBinder;->lambda$enterSplitScreenTopActivity$1(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$WJm7lCsspOeZTnf_oqDKw0C7pGQ([Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/MultiTaskingBinder;->lambda$dismissSplitTask$2([Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$v3e3G9D0cT_EumGb-ukBZoV2k0U(Lcom/android/server/wm/MultiTaskingBinder;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/MultiTaskingBinder;->lambda$setCornerGestureEnabledWithSettings$4(Z)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 100
    const-class v0, Lcom/android/server/wm/MultiTaskingBinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/MultiTaskingBinder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 2

    .line 104
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder$Stub;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method

.method private synthetic lambda$disableDividerPanelFirstAutoOpen$3()V
    .registers 2

    .line 1106
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1107
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowEnableController;->disableDividerPanelFirstAutoOpen()V

    .line 1108
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

.method private synthetic lambda$disableNonResizeableAppRestartDialog$5()V
    .registers 2

    .line 1368
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1369
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowEnableController;->disableNonResizeableAppRestartDialog()V

    .line 1370
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

.method public static synthetic lambda$dismissSplitTask$2([Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)Z
    .registers 4

    .line 1082
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1083
    aput-object p1, p0, v1

    const/4 p0, 0x1

    return p0

    :cond_11
    return v1
.end method

.method public static synthetic lambda$enterSplitScreenTopActivity$1(Lcom/android/server/wm/Task;)Z
    .registers 2

    .line 862
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 863
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public static synthetic lambda$minimizeTaskByToken$0([ILcom/android/server/wm/Task;)V
    .registers 3

    .line 135
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 p1, 0x0

    .line 136
    aget v0, p0, p1

    add-int/lit8 v0, v0, 0x1

    aput v0, p0, p1

    :cond_13
    return-void
.end method

.method private synthetic lambda$setCornerGestureEnabledWithSettings$4(Z)V
    .registers 4

    .line 1255
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1256
    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_FREEFORM_CORNER_GESTURE_ENABLED:Z

    if-ne v1, p1, :cond_11

    .line 1257
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1259
    :cond_11
    :try_start_11
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowEnableController;->setCornerGestureEnabled(Z)V

    .line 1260
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1d
    move-exception p0

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method


# virtual methods
.method public changeSplitLayoutByNaturalSwitching(ILandroid/os/Bundle;Landroid/graphics/Rect;)V
    .registers 9

    .line 447
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    const-string v2, "changeSplitLayoutByNaturalSwitching()"

    .line 449
    invoke-static {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 450
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_53

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 451
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v3

    if-nez v3, :cond_3a

    .line 454
    sget-object p0, Lcom/android/server/wm/MultiTaskingBinder;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "changeSplitLayoutByNaturalSwitching: failed, cannot find task #"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_e .. :try_end_33} :catchall_4d

    .line 462
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 458
    :cond_3a
    :try_start_3a
    invoke-static {p2}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 459
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mNaturalSwitchingController:Lcom/android/server/wm/NaturalSwitchingController;

    invoke-virtual {p0, v3, p1, p3}, Lcom/android/server/wm/NaturalSwitchingController;->changeLayout(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V

    .line 460
    monitor-exit v2
    :try_end_46
    .catchall {:try_start_3a .. :try_end_46} :catchall_4d

    :try_start_46
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_53

    .line 462
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_4d
    move-exception p0

    .line 460
    :try_start_4e
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    :try_start_4f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_53

    :catchall_53
    move-exception p0

    .line 462
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 463
    throw p0
.end method

.method public changeToHorizontalSplitLayout(Landroid/os/IBinder;)V
    .registers 6

    .line 1407
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1409
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_96

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1410
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 1411
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    if-eqz p1, :cond_81

    .line 1412
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v3

    if-nez v3, :cond_21

    goto :goto_81

    .line 1415
    :cond_21
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    if-eqz v3, :cond_5f

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    goto :goto_5f

    .line 1418
    :cond_36
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskOrganizerController;->changeToHorizontalSplitLayout()V

    .line 1419
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_9 .. :try_end_3e} :catchall_90

    :try_start_3e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_96

    .line 1421
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1422
    sget-object p0, Lcom/android/server/wm/MultiTaskingBinder;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "changeToHorizontalSplitLayout called from pid : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1423
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1422
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1416
    :cond_5f
    :goto_5f
    :try_start_5f
    monitor-exit v2
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_90

    .line 1421
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1422
    sget-object p0, Lcom/android/server/wm/MultiTaskingBinder;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_6d
    const-string v0, "changeToHorizontalSplitLayout called from pid : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1423
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1422
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1413
    :cond_81
    :goto_81
    :try_start_81
    monitor-exit v2
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_90

    .line 1421
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1422
    sget-object p0, Lcom/android/server/wm/MultiTaskingBinder;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_6d

    :catchall_90
    move-exception p0

    .line 1419
    :try_start_91
    monitor-exit v2
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    :try_start_92
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_96
    .catchall {:try_start_92 .. :try_end_96} :catchall_96

    :catchall_96
    move-exception p0

    .line 1421
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1422
    sget-object p1, Lcom/android/server/wm/MultiTaskingBinder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeToHorizontalSplitLayout called from pid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1423
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1422
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    throw p0
.end method

.method public disableDividerPanelFirstAutoOpen()V
    .registers 7

    .line 1103
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1105
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v3, Lcom/android/server/wm/MultiTaskingBinder$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/android/server/wm/MultiTaskingBinder$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/MultiTaskingBinder;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    .line 1111
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_16
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1112
    throw p0
.end method

.method public disableNonResizeableAppRestartDialog()V
    .registers 1

    return-void
.end method

.method public dismissSplitTask(Landroid/os/IBinder;Z)V
    .registers 9

    .line 1026
    iget-object p2, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiStarController:Lcom/android/server/wm/MultiStarController;

    const-string v0, "dismissSplitTask"

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.controlpanel"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 1027
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1026
    invoke-virtual {p2, v0, v1}, Lcom/android/server/wm/MultiStarController;->checkMultiStarPackageAndPermission(Ljava/lang/String;Ljava/util/List;)V

    .line 1028
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1030
    :try_start_1c
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_e2

    :try_start_21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1031
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    const/4 v2, 0x0

    if-eqz p2, :cond_30

    .line 1032
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    goto :goto_31

    :cond_30
    move-object v3, v2

    :goto_31
    if-eqz p2, :cond_c4

    if-nez v3, :cond_37

    goto/16 :goto_c4

    .line 1037
    :cond_37
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    if-eqz p1, :cond_c2

    .line 1039
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result p2

    if-eqz p2, :cond_45

    goto/16 :goto_c2

    .line 1042
    :cond_45
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/Task;

    .line 1062
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    move-result-object p2

    if-eqz p2, :cond_b9

    .line 1063
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object p2

    if-eq p2, v3, :cond_59

    goto :goto_b9

    .line 1068
    :cond_59
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result p2

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne p2, v4, :cond_6a

    .line 1069
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getRootMainStageTask()Lcom/android/server/wm/Task;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getTopLeafTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_78

    .line 1070
    :cond_6a
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result p2

    if-ne p2, v5, :cond_78

    .line 1071
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getRootSideStageTask()Lcom/android/server/wm/Task;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getTopLeafTask()Lcom/android/server/wm/Task;

    move-result-object v2

    :cond_78
    :goto_78
    if-eqz v2, :cond_aa

    .line 1073
    iget-boolean p2, v2, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz p2, :cond_7f

    goto :goto_aa

    :cond_7f
    new-array p2, v5, [Lcom/android/server/wm/Task;

    .line 1081
    new-instance v3, Lcom/android/server/wm/MultiTaskingBinder$$ExternalSyntheticLambda0;

    invoke-direct {v3, p2}, Lcom/android/server/wm/MultiTaskingBinder$$ExternalSyntheticLambda0;-><init>([Lcom/android/server/wm/Task;)V

    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Predicate;)Z

    const/4 v3, 0x0

    aget-object p2, p2, v3

    if-eqz p2, :cond_96

    .line 1088
    invoke-virtual {p2, v2}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p2

    if-lez p2, :cond_96

    move p2, v3

    goto :goto_97

    :cond_96
    move p2, v5

    .line 1091
    :goto_97
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-nez p2, :cond_9e

    goto :goto_9f

    :cond_9e
    move v5, v3

    :goto_9f
    invoke-virtual {p1, v2, v5, p2}, Lcom/android/server/wm/TaskDisplayArea;->onStageSplitScreenDismissed(Lcom/android/server/wm/Task;ZZ)V

    .line 1093
    monitor-exit p0
    :try_end_a3
    .catchall {:try_start_21 .. :try_end_a3} :catchall_dc

    :try_start_a3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_e2

    .line 1095
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1074
    :cond_aa
    :goto_aa
    :try_start_aa
    sget-object p1, Lcom/android/server/wm/MultiTaskingBinder;->TAG:Ljava/lang/String;

    const-string p2, "dismissSplitTask: failed, couldn\'t found opposite task."

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    monitor-exit p0
    :try_end_b2
    .catchall {:try_start_aa .. :try_end_b2} :catchall_dc

    .line 1095
    :goto_b2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1064
    :cond_b9
    :goto_b9
    :try_start_b9
    sget-object p1, Lcom/android/server/wm/MultiTaskingBinder;->TAG:Ljava/lang/String;

    const-string p2, "dismissSplitTask: failed, controlpanel is not top child"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    monitor-exit p0

    goto :goto_b2

    .line 1040
    :cond_c2
    :goto_c2
    monitor-exit p0

    goto :goto_b2

    .line 1034
    :cond_c4
    :goto_c4
    sget-object p2, Lcom/android/server/wm/MultiTaskingBinder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismissSplitTask: failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    monitor-exit p0

    goto :goto_b2

    :catchall_dc
    move-exception p1

    .line 1093
    monitor-exit p0
    :try_end_de
    .catchall {:try_start_b9 .. :try_end_de} :catchall_dc

    :try_start_de
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_e2
    .catchall {:try_start_de .. :try_end_e2} :catchall_e2

    :catchall_e2
    move-exception p0

    .line 1095
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1096
    throw p0
.end method

.method public dismissTaskInSplitScreen(Landroid/os/IBinder;)V
    .registers 6

    .line 777
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 779
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_34

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 780
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 781
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    goto :goto_19

    :cond_18
    move-object p1, v3

    :goto_19
    if-eqz p1, :cond_1f

    .line 782
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 783
    :cond_1f
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/MultiTaskingController;->dismissSplitTaskLocked(Lcom/android/server/wm/Task;)V

    .line 784
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_2e

    :try_start_27
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_34

    .line 786
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2e
    move-exception p0

    .line 784
    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_34

    :catchall_34
    move-exception p0

    .line 786
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 787
    throw p0
.end method

.method public final enforceNotIsolatedCaller(Ljava/lang/String;)V
    .registers 4

    .line 113
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result p0

    if-nez p0, :cond_b

    return-void

    .line 114
    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Isolated process not allowed to call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceShell()V
    .registers 2

    .line 493
    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingBinder;->isCallerShell()Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 494
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller must be shell"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enterSplitScreenTopActivity()V
    .registers 6

    .line 857
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 858
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 859
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 860
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 861
    new-instance v4, Lcom/android/server/wm/MultiTaskingBinder$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lcom/android/server/wm/MultiTaskingBinder$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_6e

    .line 865
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_6e

    .line 866
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result v3

    if-nez v3, :cond_3c

    const-string v3, "android.permission.MANAGE_ACTIVITY_TASKS"

    .line 867
    invoke-static {v3, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_3c

    goto :goto_6e

    .line 872
    :cond_3c
    sget-object v0, Lcom/android/server/wm/MultiTaskingBinder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enterSplitScreenTopActivity, caller:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_d .. :try_end_53} :catchall_89

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 875
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 877
    :try_start_5a
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_65

    .line 879
    invoke-interface {p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleSplitScreen()V
    :try_end_65
    .catchall {:try_start_5a .. :try_end_65} :catchall_69

    .line 882
    :cond_65
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_69
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 883
    throw p0

    .line 869
    :cond_6e
    :goto_6e
    :try_start_6e
    sget-object p0, Lcom/android/server/wm/MultiTaskingBinder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enterSplitScreenTopActivity failed, caller:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    monitor-exit v2
    :try_end_85
    .catchall {:try_start_6e .. :try_end_85} :catchall_89

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_89
    move-exception p0

    .line 874
    :try_start_8a
    monitor-exit v2
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public exitMultiWindow(Landroid/os/IBinder;Z)Z
    .registers 6

    if-eqz p2, :cond_7

    const-string v0, "exitMultiWindow"

    .line 518
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 520
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 522
    :try_start_b
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/wm/MultiTaskingController;->exitMultiWindow(Landroid/os/IBinder;ZZ)Z

    move-result p0
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_18

    .line 525
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_18
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 526
    throw p0
.end method

.method public finishNaturalSwitching()V
    .registers 4

    .line 431
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    const-string v2, "finishNaturalSwitching()"

    .line 433
    invoke-static {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 434
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_26

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 435
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mNaturalSwitchingController:Lcom/android/server/wm/NaturalSwitchingController;

    invoke-virtual {p0}, Lcom/android/server/wm/NaturalSwitchingController;->finishNaturalSwitching()V

    .line 436
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_20

    :try_start_19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_26

    .line 438
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_20
    move-exception p0

    .line 436
    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    :try_start_22
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception p0

    .line 438
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 439
    throw p0
.end method

.method public getAllowedMultiWindowPackageList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 249
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->getAllowAppList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCornerGestureCustomValue()I
    .registers 2

    .line 1290
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object p0

    monitor-enter p0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1291
    sget v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_FREEFORM_CORNER_GESTURE_CUSTOM_VALUE:I

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_11
    move-exception v0

    .line 1292
    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public getDexTaskInfoFlags(Landroid/os/IBinder;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getEmbedActivityPackageEnabled(Ljava/lang/String;I)Z
    .registers 6

    .line 605
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_PACKAGE_ENABLED:Z

    if-nez v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 608
    :cond_6
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p2, v0, :cond_17

    .line 609
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "getEmbedActivityPackageEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    :cond_17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 617
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/MultiTaskingController;->getEmbedActivityPackageEnabled(Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 614
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getEmbedActivityPackageEnabled, packageName="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFreeformAlpha(Landroid/os/IBinder;)F
    .registers 4

    .line 994
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 996
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformController;->getFreeformAlpha(Landroid/os/IBinder;)F

    move-result p0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 998
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 999
    throw p0
.end method

.method public getFreeformContainerDefaultPoint()Landroid/graphics/PointF;
    .registers 1

    .line 215
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingTransitController:Lcom/android/server/wm/MultiTaskingTransitionController;

    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingTransitionController;->getFreeformContainerDefaultPoint()Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public getMWDisableRequesters()Landroid/content/pm/StringParceledListSlice;
    .registers 5

    .line 337
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 339
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_27

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 340
    new-instance v3, Landroid/content/pm/StringParceledListSlice;

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    .line 341
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowEnableController;->getMWDisableRequesters()Ljava/util/List;

    move-result-object p0

    invoke-direct {v3, p0}, Landroid/content/pm/StringParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_21

    .line 344
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_21
    move-exception p0

    .line 342
    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    :try_start_23
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_27

    :catchall_27
    move-exception p0

    .line 344
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 345
    throw p0
.end method

.method public getMinimizedFreeformTasksForCurrentUser()Landroid/content/pm/ParceledListSlice;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {p0}, Lcom/android/server/wm/FreeformController;->getMinimizedFreeformTasksForCurrentUser()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getMultiSplitFlags()I
    .registers 4

    .line 765
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 767
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_22

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 768
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingController;->getMultiSplitFlags()I

    move-result p0

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_1c

    .line 771
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1c
    move-exception p0

    .line 769
    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_22

    :catchall_22
    move-exception p0

    .line 771
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 772
    throw p0
.end method

.method public getMultiWindowBlockListApp()Landroid/content/pm/StringParceledListSlice;
    .registers 2

    .line 278
    new-instance v0, Landroid/content/pm/StringParceledListSlice;

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    .line 279
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->getBlocklistAppList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/pm/StringParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getMultiWindowModeStates(I)I
    .registers 2

    .line 534
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingController;->getMultiWindowModeStates(I)I

    move-result p0

    return p0
.end method

.method public getResizeMode(Landroid/content/pm/ActivityInfo;)I
    .registers 2

    .line 293
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->getResizeMode(Landroid/content/pm/ActivityInfo;)I

    move-result p0

    return p0
.end method

.method public getSplitActivityAllowPackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 560
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_ACTIVITY:Z

    if-nez v0, :cond_9

    .line 561
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 563
    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingController;->getSplitActivityAllowPackages()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSplitActivityPackageEnabled(Ljava/lang/String;I)I
    .registers 6
    .annotation build Lcom/samsung/android/multiwindow/MultiWindowManager$SplitActivityPackageEnabledState;
    .end annotation

    .line 571
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_ACTIVITY_PACKAGE_ENABLED:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 574
    :cond_6
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p2, v0, :cond_17

    .line 575
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "getSplitActivityLaunchMode"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    :cond_17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 581
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/MultiTaskingController;->getSplitActivityPackageEnabled(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 579
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSplitActivityLaunchMode, packageName="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSupportEmbedActivityPackages()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 639
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingController;->getSupportEmbedActivityPackages()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSurfaceFreezerSnapshot(I)Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.READ_FRAME_BUFFER"

    const-string v2, "getSurfaceFreezerSnapshot"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 403
    :try_start_f
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingController;->getSurfaceFreezerSnapshot(I)Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;

    move-result-object p0
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_1b

    .line 405
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_1b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 406
    throw p0
.end method

.method public getTaskInfoFromPackageName(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "getTaskInfoFromPackageName"

    .line 1330
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 1331
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1333
    :try_start_9
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingController;->getTaskInfoFromPackageName(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_15

    .line 1335
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_15
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1336
    throw p0
.end method

.method public getVisibleTasks()Landroid/content/pm/ParceledListSlice;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 327
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getVisibleTasks()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public hasMinimizedToggleTasks()Z
    .registers 2

    .line 239
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 240
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->hasMinimizedToggleTasksLocked()Z

    move-result p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_17
    move-exception p0

    .line 241
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public hideInputMethod(I)V
    .registers 4

    .line 372
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 374
    :try_start_4
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod(I)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 376
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 377
    throw p0
.end method

.method public injectBackEventForDex(Landroid/os/IBinder;I)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public isAllTasksResizable(III)Z
    .registers 7

    .line 1515
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1517
    :try_start_4
    iget-object p3, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p3
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_48

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1518
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RecentTasks;->getTask(I)Lcom/android/server/wm/Task;

    move-result-object p1

    .line 1519
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/RecentTasks;->getTask(I)Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p1, :cond_39

    if-eqz p0, :cond_39

    .line 1538
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindowInDefaultDisplayArea()Z

    move-result p1

    if-eqz p1, :cond_39

    .line 1539
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindowInDefaultDisplayArea()Z

    move-result p0

    if-eqz p0, :cond_39

    const/4 p0, 0x1

    .line 1540
    monitor-exit p3
    :try_end_32
    .catchall {:try_start_9 .. :try_end_32} :catchall_42

    .line 1545
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 1543
    :cond_39
    :try_start_39
    monitor-exit p3
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_42

    :try_start_3a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_48

    .line 1545
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :catchall_42
    move-exception p0

    .line 1543
    :try_start_43
    monitor-exit p3
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    :try_start_44
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_48

    :catchall_48
    move-exception p0

    .line 1545
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1546
    throw p0
.end method

.method public isAllowedMultiWindowPackage(Ljava/lang/String;)Z
    .registers 2

    .line 258
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->isAllowListApp(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isCallerShell()Z
    .registers 2

    .line 488
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_d

    if-nez p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public isDisabledNonResizeableAppRestartDialog()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isFlexPanelRunning()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isMultiWindowBlockListApp(Ljava/lang/String;)Z
    .registers 2

    .line 269
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->isBlocklistApp(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSplitImmersiveModeEnabled()Z
    .registers 4

    .line 1199
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 1200
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_1b

    .line 1202
    :try_start_9
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowEnableController;->isSplitImmersiveModeEnabledLocked()Z

    move-result p0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_16

    .line 1204
    :try_start_11
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1205
    throw p0

    :catchall_1b
    move-exception p0

    .line 1206
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public isValidCornerGesture(Landroid/view/MotionEvent;)Z
    .registers 5

    const-string v0, "isValidCornerGesture"

    .line 1272
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 1273
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 1274
    :try_start_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_24

    .line 1276
    :try_start_e
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->isValidCornerGesture(Landroid/view/MotionEvent;)Z

    move-result p0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_1f

    .line 1278
    :try_start_1a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return p0

    :catchall_1f
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1279
    throw p0

    :catchall_24
    move-exception p0

    .line 1280
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_24

    throw p0
.end method

.method public minimizeAllTasks(I)Z
    .registers 6

    const-string v0, "minimizeAllTasks"

    .line 175
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 177
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_26

    .line 179
    :try_start_11
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/MultiTaskingController;->minimizeAllTasksLocked(IZ)V
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_21

    .line 181
    :try_start_19
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 183
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :catchall_21
    move-exception p0

    .line 181
    :try_start_22
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 182
    throw p0

    :catchall_26
    move-exception p0

    .line 184
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public minimizeTaskById(I)Z
    .registers 6

    const-string v0, "minimizeTaskById"

    .line 158
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 160
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_2f

    .line 162
    :try_start_11
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object p1

    .line 163
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/MultiTaskingController;->minimizeTaskLocked(Lcom/android/server/wm/Task;Z)Z

    move-result p0
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_2a

    .line 165
    :try_start_22
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_2f

    .line 163
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_2a
    move-exception p0

    .line 165
    :try_start_2b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 166
    throw p0

    :catchall_2f
    move-exception p0

    .line 167
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public minimizeTaskByToken(Landroid/os/IBinder;)Z
    .registers 10

    const-string v0, "minimizeTaskByToken"

    .line 124
    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiTaskingBinder;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 126
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_63

    .line 128
    :try_start_11
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    const/4 v3, 0x0

    if-eqz p1, :cond_56

    .line 131
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_SA_LOGGING:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_42

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v4

    if-nez v4, :cond_42

    new-array v4, v5, [I

    aput v5, v4, v3

    .line 133
    iget-object v6, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v6}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    .line 134
    new-instance v7, Lcom/android/server/wm/MultiTaskingBinder$$ExternalSyntheticLambda3;

    invoke-direct {v7, v4}, Lcom/android/server/wm/MultiTaskingBinder$$ExternalSyntheticLambda3;-><init>([I)V

    invoke-virtual {v6, v7, v5}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    const-string v6, "2001"

    aget v3, v4, v3

    .line 140
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-static {v6, v3}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_42
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p0, p1, v5}, Lcom/android/server/wm/MultiTaskingController;->minimizeTaskLocked(Lcom/android/server/wm/Task;Z)Z

    move-result p0
    :try_end_4e
    .catchall {:try_start_11 .. :try_end_4e} :catchall_5e

    .line 147
    :try_start_4e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_63

    .line 144
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    .line 147
    :cond_56
    :try_start_56
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 149
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_63

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :catchall_5e
    move-exception p0

    .line 147
    :try_start_5f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 148
    throw p0

    :catchall_63
    move-exception p0

    .line 149
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_5f .. :try_end_65} :catchall_63

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public moveFreeformTaskToSplit(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 8

    .line 830
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 832
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_5b

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    if-eqz p2, :cond_13

    .line 834
    invoke-static {p2}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object p2

    goto :goto_14

    :cond_13
    const/4 p2, 0x0

    .line 835
    :goto_14
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_4d

    .line 836
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_4d

    .line 837
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    const/4 v4, 0x1

    .line 838
    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInWindowingMode(I)Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 839
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 840
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v4, p2, p2}, Lcom/android/server/wm/TaskOrganizerController;->onFreeformToSplitRequested(Lcom/android/server/wm/Task;ZIZ)V

    goto :goto_4d

    .line 843
    :cond_42
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/MultiTaskingController;->moveFreeformTaskToSplitLocked(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;)V

    .line 846
    :cond_4d
    :goto_4d
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_9 .. :try_end_4e} :catchall_55

    :try_start_4e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_5b

    .line 848
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_55
    move-exception p0

    .line 846
    :try_start_56
    monitor-exit v2
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    :try_start_57
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_5b

    :catchall_5b
    move-exception p0

    .line 848
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 849
    throw p0
.end method

.method public moveSplitTaskToFreeform(Landroid/os/IBinder;)V
    .registers 8

    .line 792
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 794
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_a8

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 797
    instance-of v3, p1, Lcom/android/server/wm/WindowContainer$RemoteToken;

    const/4 v4, 0x0

    if-eqz v3, :cond_2b

    move-object v3, p1

    check-cast v3, Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 798
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer$RemoteToken;->getContainer()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    instance-of v3, v3, Lcom/android/server/wm/Task;

    if-eqz v3, :cond_2b

    .line 799
    check-cast p1, Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer$RemoteToken;->getContainer()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p1

    .line 800
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    goto :goto_5b

    .line 802
    :cond_2b
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 803
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p1

    goto :goto_37

    :cond_36
    move-object p1, v4

    :goto_37
    if-nez p1, :cond_57

    .line 805
    sget-object p0, Lcom/android/server/wm/MultiTaskingBinder;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveSplitTaskToFreeform: cannot find task, r="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    monitor-exit v2
    :try_end_50
    .catchall {:try_start_9 .. :try_end_50} :catchall_a2

    .line 824
    :goto_50
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 808
    :cond_57
    :try_start_57
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    :goto_5b
    if-nez p1, :cond_75

    .line 812
    sget-object p0, Lcom/android/server/wm/MultiTaskingBinder;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveSplitTaskToFreeform: cannot find rootTask, r="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    monitor-exit v2

    goto :goto_50

    .line 816
    :cond_75
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v5

    if-nez v5, :cond_93

    .line 817
    sget-object p0, Lcom/android/server/wm/MultiTaskingBinder;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveSplitTaskToFreeform: It\'s not split task, r="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    monitor-exit v2

    goto :goto_50

    .line 820
    :cond_93
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p0, p1, v4}, Lcom/android/server/wm/MultiTaskingController;->moveSplitTaskToFreeformLocked(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V

    .line 822
    monitor-exit v2
    :try_end_9b
    .catchall {:try_start_57 .. :try_end_9b} :catchall_a2

    :try_start_9b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_9e
    .catchall {:try_start_9b .. :try_end_9e} :catchall_a8

    .line 824
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_a2
    move-exception p0

    .line 822
    :try_start_a3
    monitor-exit v2
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a2

    :try_start_a4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_a8
    .catchall {:try_start_a4 .. :try_end_a8} :catchall_a8

    :catchall_a8
    move-exception p0

    .line 824
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 825
    throw p0
.end method

.method public noMoreShowMultiWindowHandlerHelp(I)V
    .registers 5

    .line 697
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_32

    .line 698
    sget-object v0, Lcom/android/server/wm/MultiTaskingBinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noMoreShowMultiWindowHandlerHelp: pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " windowingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 698
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_32
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 704
    :try_start_36
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v2

    monitor-enter v2
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_55

    :try_start_3d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 705
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingHelpController:Lcom/android/server/wm/MultiTaskingHelpController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingHelpController;->stopHelpingIn(I)V

    .line 706
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_3d .. :try_end_48} :catchall_4f

    :try_start_48
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_55

    .line 708
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_4f
    move-exception p0

    .line 706
    :try_start_50
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    :try_start_51
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_55

    :catchall_55
    move-exception p0

    .line 708
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 709
    throw p0
.end method

.method public notifyDragSplitAppIconHasDrawable(Z)V
    .registers 5

    .line 385
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 387
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_23

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 388
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragDropController;->notifyDragSplitAppIconHasDrawable(Z)V

    .line 389
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_1d

    :try_start_16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_23

    .line 391
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1d
    move-exception p0

    .line 389
    :try_start_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_23

    :catchall_23
    move-exception p0

    .line 391
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 392
    throw p0
.end method

.method public notifyFreeformMinimizeAnimationEnd(I)V
    .registers 2

    .line 231
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformController;->notifyFreeformMinimizeAnimationEnd(I)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 502
    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingBinder;->enforceShell()V

    .line 503
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 505
    :try_start_7
    new-instance v3, Lcom/android/server/wm/MultiWindowShellCommand;

    move-object v0, p0

    iget-object v4, v0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v3, v4}, Lcom/android/server/wm/MultiWindowShellCommand;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1f

    .line 508
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1f
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 509
    throw v0
.end method

.method public registerDexSnappingCallback(Lcom/samsung/android/multiwindow/IDexSnappingCallback;)V
    .registers 5

    .line 1237
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.REAL_GET_TASKS"

    const-string/jumbo v2, "registerDexSnappingCallback()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexController;->registerDexSnappingCallback(Lcom/samsung/android/multiwindow/IDexSnappingCallback;)V

    return-void
.end method

.method public registerFreeformCallback(Lcom/samsung/android/multiwindow/IFreeformCallback;)V
    .registers 2

    .line 192
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformController;->registerFreeformCallback(Lcom/samsung/android/multiwindow/IFreeformCallback;)V

    return-void
.end method

.method public registerNaturalSwitchingListener(Lcom/samsung/android/multiwindow/INaturalSwitchingListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_f

    const-string/jumbo v0, "registerNaturalSwitchingListener()"

    .line 471
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 472
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingController;->registerNaturalSwitchingListener(Lcom/samsung/android/multiwindow/INaturalSwitchingListener;)V

    :cond_f
    return-void
.end method

.method public registerRemoteAppTransitionListener(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;)V
    .registers 3

    if-eqz p1, :cond_f

    const-string/jumbo v0, "registerRemoteAppTransitionListener()"

    .line 950
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 951
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingController;->registerRemoteAppTransitionListener(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;)V

    :cond_f
    return-void
.end method

.method public registerSplitAdjacentCallback(Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;)V
    .registers 5

    .line 935
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.REGISTER_WINDOW_MANAGER_LISTENERS"

    const-string/jumbo v2, "registerSplitAdjacentCallback"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingHelpController:Lcom/android/server/wm/MultiTaskingHelpController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingHelpController;->registerSplitAdjacentCallback(Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;)V

    return-void
.end method

.method public removeFocusedTask(I)Z
    .registers 4

    const-string/jumbo v0, "removeFocusedTask"

    .line 1319
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 1320
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1322
    :try_start_a
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingController;->removeFocusedTask(I)Z

    move-result p0
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_16

    .line 1324
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_16
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1325
    throw p0
.end method

.method public reportDexHelpShown(Landroid/os/IBinder;I)V
    .registers 3

    return-void
.end method

.method public reportFreeformContainerPoint(Landroid/graphics/PointF;)V
    .registers 2

    .line 208
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingTransitController:Lcom/android/server/wm/MultiTaskingTransitionController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTransitionController;->reportFreeformContainerPoint(Landroid/graphics/PointF;)V

    return-void
.end method

.method public reportMultiWindowHandlerHelpShown(I)V
    .registers 6

    .line 717
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_33

    .line 718
    sget-object v0, Lcom/android/server/wm/MultiTaskingBinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportMultiWindowHandlerHelpShown: pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " windowingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 718
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_33
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 724
    :try_start_37
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v2

    monitor-enter v2
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_57

    :try_start_3e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 725
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingHelpController:Lcom/android/server/wm/MultiTaskingHelpController;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/MultiTaskingHelpController;->increaseCount(IZ)V

    .line 727
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_3e .. :try_end_4a} :catchall_51

    :try_start_4a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_57

    .line 729
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_51
    move-exception p0

    .line 727
    :try_start_52
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    :try_start_53
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_57
    .catchall {:try_start_53 .. :try_end_57} :catchall_57

    :catchall_57
    move-exception p0

    .line 729
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 730
    throw p0
.end method

.method public final sendBackKeyEvent(II)V
    .registers 16

    .line 1499
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1500
    new-instance p0, Landroid/view/KeyEvent;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x48

    const/16 v12, 0x101

    move-object v0, p0

    move-wide v1, v3

    move v5, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 1504
    invoke-virtual {p0, p2}, Landroid/view/KeyEvent;->semSetDisplayId(I)V

    .line 1505
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method public setBlockedMinimizeFreeformEnable(Z)V
    .registers 4

    .line 1124
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiStarController:Lcom/android/server/wm/MultiStarController;

    const-string/jumbo v1, "setBlockedMinimizeFreeformEnable"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiStarController;->checkMultiStarPackageAndPermission(Ljava/lang/String;)V

    .line 1126
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    monitor-enter v0

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1127
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowEnableController;->setBlockedMinimizeFreeformEnabled(Z)V

    .line 1128
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_20
    move-exception p0

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setCornerGestureCustomValue(I)V
    .registers 6

    .line 1301
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiStarController:Lcom/android/server/wm/MultiStarController;

    const-string/jumbo v1, "setCornerGestureCustomValue"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiStarController;->checkMultiStarPackageAndPermission(Ljava/lang/String;)V

    .line 1302
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1304
    :try_start_e
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v2

    monitor-enter v2
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_34

    :try_start_15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1305
    sget v3, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_FREEFORM_CORNER_GESTURE_CUSTOM_VALUE:I

    if-eq v3, p1, :cond_26

    .line 1306
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowEnableController;->setCornerGestureCustomValue(I)V

    .line 1307
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->updateCustomBounds()V

    .line 1309
    :cond_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_2e

    :try_start_27
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_34

    .line 1311
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2e
    move-exception p0

    .line 1309
    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_34

    :catchall_34
    move-exception p0

    .line 1311
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1312
    throw p0
.end method

.method public setCornerGestureEnabledWithSettings(Z)V
    .registers 6

    const-string/jumbo v0, "setCornerGestureEnabledWithSettings"

    .line 1251
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 1252
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1254
    :try_start_a
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v3, Lcom/android/server/wm/MultiTaskingBinder$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Lcom/android/server/wm/MultiTaskingBinder$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/MultiTaskingBinder;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_1a

    .line 1263
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1a
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1264
    throw p0
.end method

.method public setCustomDensityEnabled(I)V
    .registers 7

    .line 1138
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiStarController:Lcom/android/server/wm/MultiStarController;

    const-string/jumbo v1, "setCustomDensityEnabled"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiStarController;->checkMultiStarPackageAndPermission(Ljava/lang/String;)V

    .line 1139
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1141
    :try_start_e
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_37

    :try_start_13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1142
    sget v3, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_CUSTOM_DENSITY_DYNAMIC_ENABLED:I

    if-eq v3, p1, :cond_29

    .line 1144
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->dismissSplitScreenMode(Z)V

    .line 1145
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiStarController:Lcom/android/server/wm/MultiStarController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiStarController;->setCustomDensityEnabled(I)V

    .line 1147
    :cond_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_31

    :try_start_2a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_37

    .line 1149
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_31
    move-exception p0

    .line 1147
    :try_start_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    :try_start_33
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_37

    :catchall_37
    move-exception p0

    .line 1149
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1150
    throw p0
.end method

.method public setEmbedActivityPackageEnabled(Ljava/lang/String;ZI)V
    .registers 7

    .line 622
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_PACKAGE_ENABLED:Z

    if-nez v0, :cond_5

    return-void

    .line 625
    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p3, v0, :cond_17

    .line 626
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string/jumbo v2, "setEmbedActivityPackageEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    :cond_17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 634
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/MultiTaskingController;->setEmbedActivityPackageEnabled(Ljava/lang/String;ZI)V

    return-void

    .line 631
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setEmbedActivityPackageEnabled, packageName="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFreeformAlpha(Landroid/os/IBinder;F)V
    .registers 5

    .line 982
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 984
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/FreeformController;->setFreeformAlpha(Landroid/os/IBinder;F)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 986
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 987
    throw p0
.end method

.method public setFreeformHeaderType(I)V
    .registers 4
    .param p1    # I
        .annotation build Lcom/samsung/android/multiwindow/MultiWindowManager$FreeformHeaderType;
        .end annotation
    .end param

    .line 968
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 970
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformController;->setFreeformHeaderTypeAndResizeTasksIfChanged(I)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 972
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 973
    throw p0
.end method

.method public setMaxVisibleFreeformCountForDex(II)V
    .registers 3

    return-void
.end method

.method public setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 8

    const-string/jumbo v0, "setMultiWindowEnabledForUser"

    .line 543
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 544
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-eq p4, v1, :cond_15

    .line 545
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    :cond_15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 549
    :try_start_19
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/MultiWindowEnableController;->setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_24

    .line 552
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_24
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 553
    throw p0
.end method

.method public setNaviStarSplitImmersiveMode(Z)V
    .registers 6

    .line 1217
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiStarController:Lcom/android/server/wm/MultiStarController;

    const-string/jumbo v1, "setNaviBarImmersiveModeLocked"

    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "com.samsung.systemui.navillera"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 1218
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1217
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/MultiStarController;->checkMultiStarPackageAndPermission(Ljava/lang/String;Ljava/util/List;)V

    .line 1219
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 1220
    :try_start_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_49

    .line 1222
    :try_start_22
    sget-boolean v3, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_NAVISTAR_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-eq v3, p1, :cond_3f

    .line 1223
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/MultiWindowEnableController;->setNaviStarImmersiveSplitModeLocked(Z)V

    .line 1224
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1225
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V
    :try_end_3f
    .catchall {:try_start_22 .. :try_end_3f} :catchall_44

    .line 1228
    :cond_3f
    :try_start_3f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1230
    monitor-exit v0

    return-void

    :catchall_44
    move-exception p0

    .line 1228
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1229
    throw p0

    :catchall_49
    move-exception p0

    .line 1230
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3f .. :try_end_4b} :catchall_49

    throw p0
.end method

.method public setSplitActivityPackageEnabled(Ljava/lang/String;II)V
    .registers 7
    .param p2    # I
        .annotation build Lcom/samsung/android/multiwindow/MultiWindowManager$SplitActivityPackageEnabledState;
        .end annotation
    .end param

    .line 587
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_ACTIVITY_PACKAGE_ENABLED:Z

    if-nez v0, :cond_5

    return-void

    .line 590
    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p3, v0, :cond_17

    .line 591
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string/jumbo v2, "setSplitActivityLaunchMode"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    :cond_17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 597
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/MultiTaskingController;->setSplitActivityPackageEnabled(Ljava/lang/String;II)V

    return-void

    .line 595
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setSplitActivityLaunchMode, packageName="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSplitImmersiveMode(Z)V
    .registers 6

    const-string/jumbo v0, "setSplitImmersiveMode"

    .line 1180
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 1181
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 1182
    :try_start_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_32

    .line 1184
    :try_start_f
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/MultiWindowEnableController;->setSplitImmersiveModeLocked(Z)V

    .line 1185
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1186
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_2d

    .line 1188
    :try_start_28
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1190
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    .line 1188
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1189
    throw p0

    :catchall_32
    move-exception p0

    .line 1190
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_28 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public setStayFocusActivityEnabled(Z)V
    .registers 6

    .line 1343
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiStarController:Lcom/android/server/wm/MultiStarController;

    const-string/jumbo v1, "setStayFocusActivityEnabled"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiStarController;->checkMultiStarPackageAndPermission(Ljava/lang/String;)V

    .line 1345
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1347
    :try_start_e
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v2

    monitor-enter v2
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_31

    :try_start_15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1348
    sget-boolean v3, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_STAY_FOCUS_ACTIVITY_DYNAMIC_ENABLED:Z

    if-eq v3, p1, :cond_23

    .line 1350
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowEnableController;->setStayFocusActivityEnabled(Z)V

    .line 1352
    :cond_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_2b

    :try_start_24
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_31

    .line 1354
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2b
    move-exception p0

    .line 1352
    :try_start_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    :try_start_2d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_31

    :catchall_31
    move-exception p0

    .line 1354
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1355
    throw p0
.end method

.method public showOverlayAllApps(Landroid/os/IBinder;[I)V
    .registers 5

    .line 894
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 896
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/MultiTaskingController;->showOverlayAllApps(Landroid/os/IBinder;[I)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 898
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 899
    throw p0
.end method

.method public startFreeformTaskPinning(Landroid/os/IBinder;)V
    .registers 4

    .line 649
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 651
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_33

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 652
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_1a

    .line 654
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_2d

    .line 663
    :goto_13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 656
    :cond_1a
    :try_start_1a
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-nez p1, :cond_22

    .line 658
    monitor-exit p0

    goto :goto_13

    .line 660
    :cond_22
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->startFreeformPinning()V

    .line 661
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_2d

    :try_start_26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_33

    .line 663
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2d
    move-exception p1

    .line 661
    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    :try_start_2f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_33

    :catchall_33
    move-exception p0

    .line 663
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 664
    throw p0
.end method

.method public startNaturalSwitching(ILandroid/os/IRemoteCallback;)Z
    .registers 6

    .line 414
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    const-string/jumbo v2, "startNaturalSwitching()"

    .line 416
    invoke-static {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 417
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_28

    :try_start_f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 418
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mNaturalSwitchingController:Lcom/android/server/wm/NaturalSwitchingController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/NaturalSwitchingController;->startNaturalSwitching(ILandroid/os/IRemoteCallback;)Z

    move-result p0

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_22

    .line 422
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_22
    move-exception p0

    .line 420
    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    :try_start_24
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception p0

    .line 422
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 423
    throw p0
.end method

.method public startResizingFreeformTask(Landroid/os/IBinder;IIZ)V
    .registers 10

    .line 907
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 908
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_6d

    .line 910
    :try_start_c
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 911
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    goto :goto_18

    :cond_17
    const/4 v4, 0x0

    :goto_18
    if-eqz v3, :cond_49

    if-nez v4, :cond_1d

    goto :goto_49

    .line 916
    :cond_1d
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 917
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v3

    .line 916
    invoke-virtual {p1, p2, p3, p4, v3}, Lcom/android/server/wm/FreeformController;->startResizingFreeformTaskLocked(IIZI)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 918
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_41

    const-string/jumbo p2, "startResizingFreeformTask"

    .line 919
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 921
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z
    :try_end_41
    .catchall {:try_start_c .. :try_end_41} :catchall_68

    .line 925
    :cond_41
    :try_start_41
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 927
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_6d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 913
    :cond_49
    :goto_49
    :try_start_49
    sget-object p0, Lcom/android/server/wm/MultiTaskingBinder;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "startResizingFreeformTask: failed, "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_49 .. :try_end_60} :catchall_68

    .line 925
    :try_start_60
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_60 .. :try_end_64} :catchall_6d

    .line 914
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_68
    move-exception p0

    .line 925
    :try_start_69
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 926
    throw p0

    :catchall_6d
    move-exception p0

    .line 927
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_69 .. :try_end_6f} :catchall_6d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public stopFreeformTaskPinning(Landroid/os/IBinder;)V
    .registers 6

    .line 672
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 674
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_36

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 675
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_1a

    .line 677
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_30

    .line 686
    :goto_13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 679
    :cond_1a
    :try_start_1a
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-nez p1, :cond_22

    .line 681
    monitor-exit p0

    goto :goto_13

    :cond_22
    const/4 v2, 0x1

    const-string v3, "API"

    .line 683
    invoke-virtual {p1, v2, v3}, Lcom/android/server/wm/Task;->stopFreeformPinning(ZLjava/lang/String;)V

    .line 684
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1a .. :try_end_29} :catchall_30

    :try_start_29
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_36

    .line 686
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_30
    move-exception p1

    .line 684
    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    :try_start_32
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception p0

    .line 686
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 687
    throw p0
.end method

.method public supportMultiSplitAppMinimumSize()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public supportsMultiWindow(Landroid/os/IBinder;)Z
    .registers 7

    .line 304
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 306
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter p0
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_47

    .line 307
    :try_start_9
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 308
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    if-eqz v2, :cond_27

    .line 310
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    if-nez v3, :cond_1e

    goto :goto_27

    .line 315
    :cond_1e
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingMode()Z

    move-result p1

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_44

    .line 318
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    .line 311
    :cond_27
    :goto_27
    :try_start_27
    sget-object v2, Lcom/android/server/wm/MultiTaskingBinder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "supportsMultiWindow: cannot find task, token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 312
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_27 .. :try_end_40} :catchall_44

    .line 318
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_44
    move-exception p1

    .line 316
    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    :try_start_46
    throw p1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_47

    :catchall_47
    move-exception p0

    .line 318
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 319
    throw p0
.end method

.method public toggleFreeformWindowingMode()Z
    .registers 5

    .line 1161
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiStarController:Lcom/android/server/wm/MultiStarController;

    const-string/jumbo v1, "toggleFreeformWindowingMode"

    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "com.samsung.android.sidegesturepad"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 1162
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1161
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/MultiStarController;->checkMultiStarPackageAndPermission(Ljava/lang/String;Ljava/util/List;)V

    .line 1163
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1165
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v2
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_32

    .line 1166
    :try_start_22
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiStarController:Lcom/android/server/wm/MultiStarController;

    invoke-virtual {p0}, Lcom/android/server/wm/MultiStarController;->toggleFreeformWindowingMode()Z

    move-result p0

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_2f

    .line 1169
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_2f
    move-exception p0

    .line 1167
    :try_start_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    throw p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception p0

    .line 1169
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1170
    throw p0
.end method

.method public unregisterDexSnappingCallback(Lcom/samsung/android/multiwindow/IDexSnappingCallback;)V
    .registers 2

    .line 1244
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexController;->unregisterDexSnappingCallback(Lcom/samsung/android/multiwindow/IDexSnappingCallback;)V

    return-void
.end method

.method public unregisterFreeformCallback(Lcom/samsung/android/multiwindow/IFreeformCallback;)V
    .registers 2

    .line 199
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformController;->unregisterFreeformCallback(Lcom/samsung/android/multiwindow/IFreeformCallback;)V

    return-void
.end method

.method public unregisterNaturalSwitchingListener(Lcom/samsung/android/multiwindow/INaturalSwitchingListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_f

    const-string/jumbo v0, "unregisterNaturalSwitchingListener()"

    .line 480
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 481
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingController;->unregisterNaturalSwitchingListener(Lcom/samsung/android/multiwindow/INaturalSwitchingListener;)V

    :cond_f
    return-void
.end method

.method public unregisterRemoteAppTransitionListener(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;)V
    .registers 3

    if-eqz p1, :cond_f

    const-string/jumbo v0, "unregisterRemoteAppTransitionListener()"

    .line 958
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 959
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingController;->unregisterRemoteAppTransitionListener(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;)V

    :cond_f
    return-void
.end method

.method public unregisterSplitAdjacentCallback(Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;)V
    .registers 2

    .line 942
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingHelpController:Lcom/android/server/wm/MultiTaskingHelpController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingHelpController;->unregisterSplitAdjacentCallback(Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;)V

    return-void
.end method

.method public updateMultiSplitAppMinimumSize()V
    .registers 1

    return-void
.end method
