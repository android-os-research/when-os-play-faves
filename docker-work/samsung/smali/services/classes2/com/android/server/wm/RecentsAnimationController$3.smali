.class public Lcom/android/server/wm/RecentsAnimationController$3;
.super Landroid/view/IRecentsAnimationController$Stub;
.source "RecentsAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RecentsAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/RecentsAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/RecentsAnimationController;)V
    .registers 2

    .line 262
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-direct {p0}, Landroid/view/IRecentsAnimationController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public animateNavigationBarToApp(J)V
    .registers 6

    .line 451
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 453
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmService(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_1c

    .line 454
    :try_start_f
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RecentsAnimationController;->animateNavigationBarForAppLaunch(J)V

    .line 455
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_19

    .line 457
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_19
    move-exception p0

    .line 455
    :try_start_1a
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    :try_start_1b
    throw p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception p0

    .line 457
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 458
    throw p0
.end method

.method public cleanupScreenshot()V
    .registers 3

    .line 406
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 410
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {p0}, Lcom/android/server/wm/RecentsAnimationController;->continueDeferredCancelAnimation()V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 412
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 413
    throw p0
.end method

.method public detachNavigationBarFromApp(Z)V
    .registers 6

    .line 437
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 439
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmService(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_31

    .line 440
    :try_start_f
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    if-nez p1, :cond_1a

    iget-boolean p1, v3, Lcom/android/server/wm/RecentsAnimationController;->mIsAddingTaskToTargets:Z

    if-eqz p1, :cond_18

    goto :goto_1a

    :cond_18
    const/4 p1, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 p1, 0x1

    :goto_1b
    invoke-virtual {v3, p1}, Lcom/android/server/wm/RecentsAnimationController;->restoreNavigationBarFromApp(Z)V

    .line 442
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {p0}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmService(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 443
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_f .. :try_end_2a} :catchall_2e

    .line 445
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2e
    move-exception p0

    .line 443
    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    throw p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception p0

    .line 445
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 446
    throw p0
.end method

.method public finish(ZZ)V
    .registers 12

    .line 319
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmCanceled(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v0

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x1a9493ea

    const/16 v5, 0xf

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v1

    const-string v0, "finish(%b): mCanceled=%b"

    invoke-static {v3, v4, v5, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 321
    :cond_27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 325
    :try_start_2b
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {p0}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;

    move-result-object p0

    if-eqz p1, :cond_34

    goto :goto_35

    :cond_34
    move v1, v2

    :goto_35
    invoke-interface {p0, v1, p2}, Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;->onAnimationFinished(IZ)V
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_3c

    .line 329
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_3c
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 330
    throw p0
.end method

.method public hideCurrentInputMethod()V
    .registers 1

    return-void
.end method

.method public removeTask(I)Z
    .registers 5

    .line 425
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 427
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmService(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_1d

    .line 428
    :try_start_f
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {p0, p1}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$mremoveTaskInternal(Lcom/android/server/wm/RecentsAnimationController;I)Z

    move-result p0

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_1a

    .line 431
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1a
    move-exception p0

    .line 429
    :try_start_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    :try_start_1c
    throw p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1d

    :catchall_1d
    move-exception p0

    .line 431
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 432
    throw p0
.end method

.method public screenshotTask(I)Landroid/window/TaskSnapshot;
    .registers 12

    .line 266
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_29

    int-to-long v3, p1

    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmCanceled(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v0

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0xafd244c

    const/16 v7, 0xd

    const-string/jumbo v8, "screenshotTask(%d): mCanceled=%b"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v9, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v9, v1

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 268
    :cond_29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 270
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmService(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_93

    .line 271
    :try_start_38
    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v5}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmCanceled(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_46

    .line 272
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_90

    .line 290
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v6

    .line 274
    :cond_46
    :try_start_46
    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v5}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmPendingAnimations(Lcom/android/server/wm/RecentsAnimationController;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v1

    :goto_51
    if-ltz v5, :cond_8b

    .line 275
    iget-object v7, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v7}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmPendingAnimations(Lcom/android/server/wm/RecentsAnimationController;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 276
    invoke-static {v7}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->-$$Nest$fgetmTask(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v7

    .line 277
    iget v8, v7, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v8, p1, :cond_88

    .line 278
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {p0}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmService(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    new-array v1, v1, [Lcom/android/server/wm/Task;

    aput-object v7, v1, v2

    .line 280
    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    .line 281
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    .line 282
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskSnapshotController;->addSkipClosingAppSnapshotTasks(Ljava/util/Set;)V

    .line 283
    iget v1, v7, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p0, p1, v1, v2, v2}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IIZZ)Landroid/window/TaskSnapshot;

    move-result-object p0

    monitor-exit v0
    :try_end_84
    .catchall {:try_start_46 .. :try_end_84} :catchall_90

    .line 290
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :cond_88
    add-int/lit8 v5, v5, -0x1

    goto :goto_51

    .line 287
    :cond_8b
    :try_start_8b
    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_90

    .line 290
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v6

    :catchall_90
    move-exception p0

    .line 288
    :try_start_91
    monitor-exit v0
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    :try_start_92
    throw p0
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_93

    :catchall_93
    move-exception p0

    .line 290
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 291
    throw p0
.end method

.method public setAnimationTargetsBehindSystemBars(Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 336
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 338
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmService(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_7e

    .line 339
    :try_start_f
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmPendingAnimations(Lcom/android/server/wm/RecentsAnimationController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_1b
    if-ltz v3, :cond_3f

    .line 340
    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v5}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmPendingAnimations(Lcom/android/server/wm/RecentsAnimationController;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    invoke-static {v5}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->-$$Nest$fgetmTask(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v5

    .line 341
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v7}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmTargetActivityType(Lcom/android/server/wm/RecentsAnimationController;)I

    move-result v7

    if-eq v6, v7, :cond_3c

    .line 342
    invoke-virtual {v5, p1}, Lcom/android/server/wm/Task;->setCanAffectSystemUiFlags(Z)V

    :cond_3c
    add-int/lit8 v3, v3, -0x1

    goto :goto_1b

    .line 345
    :cond_3f
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->maybeFinishStylusHandwriting()V

    if-nez p1, :cond_6b

    .line 350
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {p1}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isImeAttachedToApp()Z

    move-result p1

    if-nez p1, :cond_64

    .line 351
    const-class p1, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 352
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    if-eqz p1, :cond_6b

    const/16 v3, 0x12

    .line 354
    invoke-virtual {p1, v3}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod(I)V

    goto :goto_6b

    .line 362
    :cond_64
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->updateImeWindowStatus(Z)V

    .line 366
    :cond_6b
    :goto_6b
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {p0}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmService(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 367
    monitor-exit v2
    :try_end_77
    .catchall {:try_start_f .. :try_end_77} :catchall_7b

    .line 369
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_7b
    move-exception p0

    .line 367
    :try_start_7c
    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    :try_start_7d
    throw p0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7e

    :catchall_7e
    move-exception p0

    .line 369
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 370
    throw p0
.end method

.method public setDeferCancelUntilNextTransition(ZZ)V
    .registers 4

    .line 399
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmService(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 400
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RecentsAnimationController;->setDeferredCancel(ZZ)V

    .line 401
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_16
    move-exception p0

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setFinishTaskTransaction(ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V
    .registers 13

    .line 298
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    int-to-long v2, p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x9c60c62

    const-string/jumbo v6, "setFinishTaskTransaction(%d): transaction=%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v8

    aput-object v0, v7, v1

    invoke-static {v4, v5, v1, v6, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 300
    :cond_21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 302
    :try_start_25
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmService(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_63

    .line 303
    :try_start_30
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v4}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmPendingAnimations(Lcom/android/server/wm/RecentsAnimationController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_3b
    if-ltz v4, :cond_5b

    .line 304
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v1}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmPendingAnimations(Lcom/android/server/wm/RecentsAnimationController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 305
    invoke-static {v1}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->-$$Nest$fgetmTask(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v5, p1, :cond_58

    .line 306
    invoke-static {v1, p2}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->-$$Nest$fputmFinishTransaction(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;Landroid/window/PictureInPictureSurfaceTransaction;)V

    .line 307
    invoke-static {v1, p3}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->-$$Nest$fputmFinishOverlay(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;Landroid/view/SurfaceControl;)V

    goto :goto_5b

    :cond_58
    add-int/lit8 v4, v4, -0x1

    goto :goto_3b

    .line 311
    :cond_5b
    :goto_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_30 .. :try_end_5c} :catchall_60

    .line 313
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_60
    move-exception p0

    .line 311
    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    :try_start_62
    throw p0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_63

    :catchall_63
    move-exception p0

    .line 313
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    throw p0
.end method

.method public setInputConsumerEnabled(Z)V
    .registers 11

    .line 375
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_28

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmCanceled(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v2

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x48b44425

    const/16 v5, 0xc

    const-string/jumbo v6, "setInputConsumerEnabled(%s): mCanceled=%b"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v7, v1

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 377
    :cond_28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 379
    :try_start_2c
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmService(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_67

    .line 380
    :try_start_37
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v4}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmCanceled(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 381
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_64

    .line 389
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 383
    :cond_44
    :try_start_44
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v4, p1}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fputmInputConsumerEnabled(Lcom/android/server/wm/RecentsAnimationController;Z)V

    .line 384
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {p1}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object p1

    .line 385
    invoke-virtual {p1, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 386
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {p0}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmService(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 387
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_44 .. :try_end_60} :catchall_64

    .line 389
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_64
    move-exception p0

    .line 387
    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    :try_start_66
    throw p0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_67

    :catchall_67
    move-exception p0

    .line 389
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 390
    throw p0
.end method

.method public setWillFinishToHome(Z)V
    .registers 3

    .line 418
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->-$$Nest$fgetmService(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 419
    :try_start_b
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController$3;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentsAnimationController;->setWillFinishToHome(Z)V

    .line 420
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_12

    throw p0
.end method
