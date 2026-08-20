.class public Lcom/android/server/wm/RestartAppPolicy;
.super Ljava/lang/Object;
.source "RestartAppPolicy.java"

# interfaces
.implements Lcom/android/server/wm/FoldDisplayController$Policy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RestartAppPolicy$UiHandler;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mIsDoNotShowAgainCheckedForRestartAppDialog:Ljava/lang/Boolean;

.field public mRestartAppDialog:Lcom/android/server/wm/RestartAppDialog;

.field public mRestartingTaskId:I

.field public mRestoreLastMainTopTaskAfterResumeTop:Z

.field public mTopTaskIdOfMainDevice:I

.field public final mUiHandler:Lcom/android/server/wm/RestartAppPolicy$UiHandler;


# direct methods
.method public static synthetic $r8$lambda$VPiaLkw0tI6L539GRRwb91s7VY4(Lcom/android/server/wm/RestartAppPolicy;Ljava/lang/String;IIILcom/android/server/wm/Task;Landroid/content/Intent;IILandroid/app/ActivityOptions;)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/android/server/wm/RestartAppPolicy;->lambda$restartTaskLocked$0(Ljava/lang/String;IIILcom/android/server/wm/Task;Landroid/content/Intent;IILandroid/app/ActivityOptions;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qnO_s3wcEdwN13iKD5HMVGntwjI(Lcom/android/server/wm/RestartAppPolicy;ILjava/lang/Boolean;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/RestartAppPolicy;->lambda$showRestartAppDialog$1(ILjava/lang/Boolean;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdismissRestartAppDialog(Lcom/android/server/wm/RestartAppPolicy;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/RestartAppPolicy;->dismissRestartAppDialog()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowRestartAppDialog(Lcom/android/server/wm/RestartAppPolicy;ILcom/android/server/wm/ActivityRecord;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RestartAppPolicy;->showRestartAppDialog(ILcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/android/server/wm/RestartAppPolicy;->mRestartAppDialog:Lcom/android/server/wm/RestartAppDialog;

    const/4 v0, -0x1

    .line 65
    iput v0, p0, Lcom/android/server/wm/RestartAppPolicy;->mRestartingTaskId:I

    .line 66
    iput v0, p0, Lcom/android/server/wm/RestartAppPolicy;->mTopTaskIdOfMainDevice:I

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/android/server/wm/RestartAppPolicy;->mRestoreLastMainTopTaskAfterResumeTop:Z

    .line 70
    iput-object p1, p0, Lcom/android/server/wm/RestartAppPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 71
    new-instance v0, Lcom/android/server/wm/RestartAppPolicy$UiHandler;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/RestartAppPolicy$UiHandler;-><init>(Lcom/android/server/wm/RestartAppPolicy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/RestartAppPolicy;->mUiHandler:Lcom/android/server/wm/RestartAppPolicy$UiHandler;

    return-void
.end method

.method private synthetic lambda$restartTaskLocked$0(Ljava/lang/String;IIILcom/android/server/wm/Task;Landroid/content/Intent;IILandroid/app/ActivityOptions;)V
    .registers 12

    .line 224
    iget-object v0, p0, Lcom/android/server/wm/RestartAppPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string/jumbo v1, "restartTaskForFold"

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/app/ActivityManagerInternal;->killPackageProcesses(Ljava/lang/String;IILjava/lang/String;)V

    .line 227
    iget-object p1, p0, Lcom/android/server/wm/RestartAppPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 228
    iput p4, p0, Lcom/android/server/wm/RestartAppPolicy;->mRestartingTaskId:I

    .line 229
    iput-object p6, p5, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 232
    iget-boolean p2, p5, Lcom/android/server/wm/Task;->inRecents:Z

    if-nez p2, :cond_23

    .line 233
    iget-object p2, p0, Lcom/android/server/wm/RestartAppPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p2, p5}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 237
    :cond_23
    iget-object p2, p0, Lcom/android/server/wm/RestartAppPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p2}, Lcom/android/server/wm/RecentTasks;->getRecentsComponentUid()I

    move-result p2

    iput p2, p5, Lcom/android/server/wm/Task;->mCallingUid:I
    :try_end_2f
    .catchall {:try_start_f .. :try_end_2f} :catchall_65

    const/4 p2, -0x1

    .line 239
    :try_start_30
    iget-object p3, p0, Lcom/android/server/wm/RestartAppPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    if-eqz p9, :cond_3c

    .line 241
    new-instance p5, Lcom/android/server/wm/SafeActivityOptions;

    invoke-direct {p5, p9}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    goto :goto_3d

    :cond_3c
    const/4 p5, 0x0

    .line 239
    :goto_3d
    invoke-virtual {p3, p7, p8, p4, p5}, Lcom/android/server/wm/ActivityTaskSupervisor;->startActivityFromRecents(IIILcom/android/server/wm/SafeActivityOptions;)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_40} :catch_45
    .catchall {:try_start_30 .. :try_end_40} :catchall_43

    .line 245
    :goto_40
    :try_start_40
    iput p2, p0, Lcom/android/server/wm/RestartAppPolicy;->mRestartingTaskId:I
    :try_end_42
    .catchall {:try_start_40 .. :try_end_42} :catchall_65

    goto :goto_5d

    :catchall_43
    move-exception p3

    goto :goto_62

    :catch_45
    move-exception p3

    :try_start_46
    const-string p5, "WindowManager"

    .line 243
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "Can not open this task id="

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p5, p4, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5c
    .catchall {:try_start_46 .. :try_end_5c} :catchall_43

    goto :goto_40

    .line 247
    :goto_5d
    :try_start_5d
    monitor-exit p1
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_65

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 245
    :goto_62
    :try_start_62
    iput p2, p0, Lcom/android/server/wm/RestartAppPolicy;->mRestartingTaskId:I

    .line 246
    throw p3

    :catchall_65
    move-exception p0

    .line 247
    monitor-exit p1
    :try_end_67
    .catchall {:try_start_62 .. :try_end_67} :catchall_65

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method private synthetic lambda$showRestartAppDialog$1(ILjava/lang/Boolean;)V
    .registers 5

    .line 373
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 374
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/android/server/wm/RestartAppPolicy;->mIsDoNotShowAgainCheckedForRestartAppDialog:Ljava/lang/Boolean;

    const/4 p2, 0x0

    .line 375
    iput-object p2, p0, Lcom/android/server/wm/RestartAppPolicy;->mRestartAppDialog:Lcom/android/server/wm/RestartAppDialog;

    .line 376
    iget-object p2, p0, Lcom/android/server/wm/RestartAppPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v0, 0x1

    const-string v1, "foldable_restart_dialog_do_not_show_again"

    invoke-static {p2, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 379
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RestartAppPolicy;->restartTask(I)V

    return-void
.end method


# virtual methods
.method public apply()Z
    .registers 3

    const-string v0, "WindowManager"

    const-string v1, "apply RestartAppPolicy"

    .line 85
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Lcom/android/server/wm/RestartAppPolicy;->applyRestartAppPolicy()V

    const/4 p0, 0x1

    return p0
.end method

.method public final applyRestartAppPolicy()V
    .registers 3

    .line 92
    invoke-virtual {p0}, Lcom/android/server/wm/RestartAppPolicy;->restoreLastMainDisplayTopTaskIfNeededLocked()V

    .line 94
    iget-object v0, p0, Lcom/android/server/wm/RestartAppPolicy;->mUiHandler:Lcom/android/server/wm/RestartAppPolicy$UiHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 95
    invoke-virtual {p0}, Lcom/android/server/wm/RestartAppPolicy;->isRestartAppDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 96
    iget-object v0, p0, Lcom/android/server/wm/RestartAppPolicy;->mUiHandler:Lcom/android/server/wm/RestartAppPolicy$UiHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 97
    iget-object p0, p0, Lcom/android/server/wm/RestartAppPolicy;->mUiHandler:Lcom/android/server/wm/RestartAppPolicy$UiHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1b
    return-void
.end method

.method public final dismissRestartAppDialog()V
    .registers 3

    .line 398
    iget-object v0, p0, Lcom/android/server/wm/RestartAppPolicy;->mRestartAppDialog:Lcom/android/server/wm/RestartAppDialog;

    if-eqz v0, :cond_10

    const-string v0, "WindowManager"

    const-string v1, "dismissRestartAppDialog"

    .line 399
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object p0, p0, Lcom/android/server/wm/RestartAppPolicy;->mRestartAppDialog:Lcom/android/server/wm/RestartAppDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_10
    return-void
.end method

.method public final getAboveHomeTask(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/Task;
    .registers 4

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return-object p0

    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 178
    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/DisplayContent;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 179
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    goto :goto_12

    :cond_11
    move-object v0, p0

    :goto_12
    if-eqz p1, :cond_1b

    if-nez v0, :cond_17

    goto :goto_1b

    .line 183
    :cond_17
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->getTaskAbove(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object p0

    :cond_1b
    :goto_1b
    return-object p0
.end method

.method public getTopTaskIdOfMainDeviceLocked()I
    .registers 1

    .line 171
    iget p0, p0, Lcom/android/server/wm/RestartAppPolicy;->mTopTaskIdOfMainDevice:I

    return p0
.end method

.method public intercept(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZIILandroid/app/ActivityOptions;)Z
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 268
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RestartAppPolicy;->shouldRestartTask(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-nez v1, :cond_b

    return v0

    .line 272
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intercept:task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", showRestartAppDialog="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", callingPid="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", callingUid="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", isFolded="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/wm/RestartAppPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 275
    invoke-virtual {p3}, Lcom/android/server/wm/WindowManagerService;->isFolded()Z

    move-result p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "WindowManager"

    .line 272
    invoke-static {v1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {p0}, Lcom/android/server/wm/RestartAppPolicy;->resetTopTaskIdOfMainDeviceLocked()V

    const/4 p3, 0x1

    if-eqz p4, :cond_86

    .line 279
    iget-object p4, p0, Lcom/android/server/wm/RestartAppPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p4, p4, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p4}, Lcom/android/server/wm/WindowManagerService;->isFolded()Z

    move-result p4

    if-eqz p4, :cond_80

    .line 280
    invoke-virtual {p0}, Lcom/android/server/wm/RestartAppPolicy;->isDoNotShowRestartAppDialog()Z

    move-result p4

    if-eqz p4, :cond_71

    .line 281
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p2, :cond_80

    const-string p2, "intercept: skip to show RestartAppDialog"

    .line 282
    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    .line 286
    :cond_71
    iget-object p4, p0, Lcom/android/server/wm/RestartAppPolicy;->mUiHandler:Lcom/android/server/wm/RestartAppPolicy$UiHandler;

    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v2, -0x1

    invoke-virtual {p4, p3, v1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 288
    iget-object p4, p0, Lcom/android/server/wm/RestartAppPolicy;->mUiHandler:Lcom/android/server/wm/RestartAppPolicy$UiHandler;

    invoke-virtual {p4, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_81

    :cond_80
    :goto_80
    move v0, p3

    :goto_81
    if-eqz v0, :cond_86

    .line 294
    invoke-virtual {p0, p1, p5, p6, p7}, Lcom/android/server/wm/RestartAppPolicy;->restartTaskLocked(Lcom/android/server/wm/Task;IILandroid/app/ActivityOptions;)V

    :cond_86
    return p3
.end method

.method public intercept(Lcom/android/server/wm/Task;Ljava/lang/String;)Z
    .registers 11

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 258
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/RestartAppPolicy;->intercept(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZIILandroid/app/ActivityOptions;)Z

    move-result p0

    return p0
.end method

.method public final isDoNotShowRestartAppDialog()Z
    .registers 4

    .line 389
    iget-object v0, p0, Lcom/android/server/wm/RestartAppPolicy;->mIsDoNotShowAgainCheckedForRestartAppDialog:Ljava/lang/Boolean;

    if-nez v0, :cond_1d

    .line 390
    iget-object v0, p0, Lcom/android/server/wm/RestartAppPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 391
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "foldable_restart_dialog_do_not_show_again"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    move v2, v1

    :cond_17
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/RestartAppPolicy;->mIsDoNotShowAgainCheckedForRestartAppDialog:Ljava/lang/Boolean;

    .line 394
    :cond_1d
    iget-object p0, p0, Lcom/android/server/wm/RestartAppPolicy;->mIsDoNotShowAgainCheckedForRestartAppDialog:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isRestartAppDialogShowing()Z
    .registers 1

    .line 385
    iget-object p0, p0, Lcom/android/server/wm/RestartAppPolicy;->mRestartAppDialog:Lcom/android/server/wm/RestartAppDialog;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public prepare(II)Z
    .registers 4

    const/4 p0, 0x2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    if-ne p1, p0, :cond_d

    :cond_6
    if-eq p2, v0, :cond_d

    if-ne p2, p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x1

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x0

    return p0
.end method

.method public resetTopTaskIdOfMainDeviceLocked()V
    .registers 4

    .line 154
    iget v0, p0, Lcom/android/server/wm/RestartAppPolicy;->mTopTaskIdOfMainDevice:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_33

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetTopTaskIdOfMainDeviceLocked: last="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/RestartAppPolicy;->mTopTaskIdOfMainDevice:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Callers="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v2, :cond_20

    const/4 v2, 0x5

    goto :goto_21

    :cond_20
    const/4 v2, 0x3

    :goto_21
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowManager"

    .line 155
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iput v1, p0, Lcom/android/server/wm/RestartAppPolicy;->mTopTaskIdOfMainDevice:I

    :cond_33
    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/android/server/wm/RestartAppPolicy;->mRestoreLastMainTopTaskAfterResumeTop:Z

    return-void
.end method

.method public final restartTask(I)V
    .registers 9

    .line 187
    iget-object v0, p0, Lcom/android/server/wm/RestartAppPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "restartTask"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 189
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 190
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 192
    :try_start_18
    iget-object v4, p0, Lcom/android/server/wm/RestartAppPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_3b

    :try_start_1d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 193
    iget-object v5, p0, Lcom/android/server/wm/RestartAppPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object p1

    const/4 v5, 0x0

    .line 195
    invoke-virtual {p0, p1, v0, v1, v5}, Lcom/android/server/wm/RestartAppPolicy;->restartTaskLocked(Lcom/android/server/wm/Task;IILandroid/app/ActivityOptions;)V

    .line 196
    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_35

    :try_start_2e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_3b

    .line 198
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_35
    move-exception p0

    .line 196
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    :try_start_37
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception p0

    .line 198
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 199
    throw p0
.end method

.method public restartTaskLocked(Lcom/android/server/wm/Task;IILandroid/app/ActivityOptions;)V
    .registers 20

    move-object v11, p0

    move-object/from16 v6, p1

    if-nez v6, :cond_e

    const-string v0, "WindowManager"

    const-string/jumbo v1, "restartTaskLocked: task is null."

    .line 204
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 211
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 212
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    move-object v12, v0

    if-nez v12, :cond_1c

    return-void

    .line 217
    :cond_1c
    iget-object v7, v6, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 218
    iget v5, v6, Lcom/android/server/wm/Task;->mTaskId:I

    .line 219
    iget v0, v6, Lcom/android/server/wm/Task;->effectiveUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 220
    iget v4, v6, Lcom/android/server/wm/Task;->mUserId:I

    .line 221
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->removeImmediately()V

    .line 222
    iget-object v0, v11, Lcom/android/server/wm/RestartAppPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v13, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v14, Lcom/android/server/wm/RestartAppPolicy$$ExternalSyntheticLambda0;

    move-object v0, v14

    move-object v1, p0

    move-object v2, v12

    move-object/from16 v6, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v0 .. v10}, Lcom/android/server/wm/RestartAppPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/RestartAppPolicy;Ljava/lang/String;IIILcom/android/server/wm/Task;Landroid/content/Intent;IILandroid/app/ActivityOptions;)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 250
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_SA_LOGGING:Z

    if-eqz v0, :cond_58

    .line 251
    iget-object v0, v11, Lcom/android/server/wm/RestartAppPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isFolded()Z

    move-result v0

    if-eqz v0, :cond_53

    const-string v0, "W008"

    goto :goto_55

    :cond_53
    const-string v0, "W007"

    :goto_55
    invoke-static {v0, v12}, Lcom/samsung/android/core/CoreSaLogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    :cond_58
    return-void
.end method

.method public final restoreLastMainDisplayTopTaskIfNeededLocked()V
    .registers 10

    .line 102
    iget v0, p0, Lcom/android/server/wm/RestartAppPolicy;->mTopTaskIdOfMainDevice:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return-void

    .line 105
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/RestartAppPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 106
    iget-boolean v0, v0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lcom/android/server/wm/RestartAppPolicy;->mRestoreLastMainTopTaskAfterResumeTop:Z

    return-void

    .line 114
    :cond_18
    iget v0, p0, Lcom/android/server/wm/RestartAppPolicy;->mTopTaskIdOfMainDevice:I

    .line 115
    invoke-virtual {p0}, Lcom/android/server/wm/RestartAppPolicy;->resetTopTaskIdOfMainDeviceLocked()V

    .line 116
    iget-object v1, p0, Lcom/android/server/wm/RestartAppPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v1

    const-string v3, "WindowManager"

    if-eqz v1, :cond_a8

    .line 117
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-nez v4, :cond_32

    goto/16 :goto_a8

    .line 123
    :cond_32
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 124
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 125
    iget-object v5, p0, Lcom/android/server/wm/RestartAppPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_71

    .line 126
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    if-eqz v5, :cond_a7

    if-eqz v4, :cond_a7

    .line 128
    invoke-virtual {p0, v5}, Lcom/android/server/wm/RestartAppPolicy;->getAboveHomeTask(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/Task;

    move-result-object v5

    .line 129
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    if-eqz v5, :cond_a7

    if-eqz v4, :cond_a7

    const-string/jumbo v7, "restoreLastMainDisplayTopTaskIfNeededLocked: keyguardOccluded"

    .line 131
    invoke-static {v3, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {v4, v0, v5}, Lcom/android/server/wm/TaskDisplayArea;->moveRootTaskBehindRootTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    .line 133
    invoke-virtual {v1, v6, v2, v2}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 134
    iget-object p0, p0, Lcom/android/server/wm/RestartAppPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    goto :goto_a7

    .line 138
    :cond_71
    iget-object p0, p0, Lcom/android/server/wm/RestartAppPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result p0

    if-eqz p0, :cond_80

    const-string/jumbo p0, "restoreLastMainDisplayTopTaskIfNeededLocked"

    .line 140
    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    goto :goto_92

    :cond_80
    const/4 v5, 0x1

    const/4 p0, 0x0

    if-eqz v4, :cond_88

    .line 143
    iget-object v2, v4, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    move-object v7, v2

    goto :goto_89

    :cond_88
    move-object v7, v6

    :goto_89
    const-string/jumbo v8, "restoreLastMainDisplayTopTaskIfNeededLocked"

    move-object v3, v0

    move-object v4, v1

    move-object v6, p0

    .line 142
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/Task;->moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 146
    :goto_92
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_SA_LOGGING:Z

    if-eqz p0, :cond_a7

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_a7

    .line 148
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v0, "W006"

    .line 147
    invoke-static {v0, p0}, Lcom/samsung/android/core/CoreSaLogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a7
    :goto_a7
    return-void

    .line 118
    :cond_a8
    :goto_a8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restoreLastMainDisplayTopTaskIfNeededLocked: task is null, taskId="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setTopTaskIdOfMainDeviceLocked(I)V
    .registers 5

    .line 163
    iget v0, p0, Lcom/android/server/wm/RestartAppPolicy;->mTopTaskIdOfMainDevice:I

    if-eq v0, p1, :cond_3d

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTopTaskIdOfMainDeviceLocked: taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_2d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2f

    :cond_2d
    const-string v1, ""

    :goto_2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    .line 164
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iput p1, p0, Lcom/android/server/wm/RestartAppPolicy;->mTopTaskIdOfMainDevice:I

    :cond_3d
    return-void
.end method

.method public final shouldRestartTask(Lcom/android/server/wm/Task;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public final showRestartAppDialog(ILcom/android/server/wm/ActivityRecord;)V
    .registers 12

    .line 337
    invoke-virtual {p0}, Lcom/android/server/wm/RestartAppPolicy;->isRestartAppDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string p0, "WindowManager"

    .line 338
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "showRestartAppDialog: already showing, tid="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e
    const/4 v0, 0x0

    .line 344
    iget-object v1, p0, Lcom/android/server/wm/RestartAppPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_24
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v2, 0x1

    if-nez p2, :cond_72

    .line 346
    iget-object p2, p0, Lcom/android/server/wm/RestartAppPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p2, p1, v2}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object p2

    if-nez p2, :cond_50

    const-string p0, "WindowManager"

    .line 349
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "showRestartAppDialog: cannot found task #"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_24 .. :try_end_4c} :catchall_bd

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 352
    :cond_50
    :try_start_50
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    if-nez p2, :cond_72

    const-string p0, "WindowManager"

    .line 354
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "showRestartAppDialog: cannot found root #"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_50 .. :try_end_6e} :catchall_bd

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 360
    :cond_72
    :try_start_72
    iget-object v6, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 361
    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz p2, :cond_84

    .line 362
    iget-object v0, p0, Lcom/android/server/wm/RestartAppPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_84
    move-object v7, v0

    .line 364
    monitor-exit v1
    :try_end_86
    .catchall {:try_start_72 .. :try_end_86} :catchall_bd

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 365
    iget-object p2, p0, Lcom/android/server/wm/RestartAppPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p2, p2, 0x30

    const/16 v0, 0x20

    if-ne p2, v0, :cond_98

    goto :goto_99

    :cond_98
    const/4 v2, 0x0

    .line 367
    :goto_99
    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object p2, p0, Lcom/android/server/wm/RestartAppPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    if-eqz v2, :cond_a5

    const v0, 0x1030128

    goto :goto_a8

    :cond_a5
    const v0, 0x10302d2

    .line 369
    :goto_a8
    invoke-direct {v4, p2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 371
    new-instance p2, Lcom/android/server/wm/RestartAppDialog;

    new-instance v8, Lcom/android/server/wm/RestartAppPolicy$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0, p1}, Lcom/android/server/wm/RestartAppPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/RestartAppPolicy;I)V

    move-object v3, p2

    move v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/RestartAppDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/CharSequence;Ljava/util/function/Consumer;)V

    iput-object p2, p0, Lcom/android/server/wm/RestartAppPolicy;->mRestartAppDialog:Lcom/android/server/wm/RestartAppDialog;

    .line 381
    invoke-virtual {p2}, Landroid/app/AlertDialog;->show()V

    return-void

    :catchall_bd
    move-exception p0

    .line 364
    :try_start_be
    monitor-exit v1
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bd

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
