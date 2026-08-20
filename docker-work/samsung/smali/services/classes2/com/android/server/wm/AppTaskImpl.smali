.class public Lcom/android/server/wm/AppTaskImpl;
.super Landroid/app/IAppTask$Stub;
.source "AppTaskImpl.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AppTaskImpl"

.field public static final TAG_SPEG:Ljava/lang/String; = "SPEG"


# instance fields
.field public final mCallingUid:I

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mTaskId:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;II)V
    .registers 4

    .line 55
    invoke-direct {p0}, Landroid/app/IAppTask$Stub;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 57
    iput p2, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    .line 58
    iput p3, p0, Lcom/android/server/wm/AppTaskImpl;->mCallingUid:I

    return-void
.end method


# virtual methods
.method public final checkCallerOrSystemOrRoot()V
    .registers 4

    .line 62
    iget v0, p0, Lcom/android/server/wm/AppTaskImpl;->mCallingUid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-eq v0, v1, :cond_3c

    const/16 v0, 0x3e8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-eq v0, v1, :cond_3c

    .line 63
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-nez v0, :cond_17

    goto :goto_3c

    .line 64
    :cond_17
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/AppTaskImpl;->mCallingUid:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " does not match caller of getAppTasks(): "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    :goto_3c
    return-void
.end method

.method public finishAndRemoveTask()V
    .registers 9

    .line 81
    invoke-virtual {p0}, Lcom/android/server/wm/AppTaskImpl;->checkCallerOrSystemOrRoot()V

    .line 83
    iget-object v0, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 84
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_45

    .line 87
    :try_start_f
    iget-object v3, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v4, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "finish-and-remove-task"

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTaskById(IZZLjava/lang/String;)Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_40

    if-eqz v3, :cond_27

    .line 92
    :try_start_1f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 94
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_45

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 89
    :cond_27
    :try_start_27
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find task ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_40
    .catchall {:try_start_27 .. :try_end_40} :catchall_40

    :catchall_40
    move-exception p0

    .line 92
    :try_start_41
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 93
    throw p0

    :catchall_45
    move-exception p0

    .line 94
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_45

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;
    .registers 7

    .line 99
    invoke-virtual {p0}, Lcom/android/server/wm/AppTaskImpl;->checkCallerOrSystemOrRoot()V

    .line 101
    iget-object v0, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 102
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_4d

    .line 104
    :try_start_f
    iget-object v3, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v4, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 109
    iget-object p0, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object p0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/wm/RecentTasks;->createRecentTaskInfo(Lcom/android/server/wm/Task;ZZ)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p0
    :try_end_27
    .catchall {:try_start_f .. :try_end_27} :catchall_48

    .line 112
    :try_start_27
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_4d

    .line 109
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    .line 107
    :cond_2f
    :try_start_2f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find task ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_48
    .catchall {:try_start_2f .. :try_end_48} :catchall_48

    :catchall_48
    move-exception p0

    .line 112
    :try_start_49
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 113
    throw p0

    :catchall_4d
    move-exception p0

    .line 114
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_49 .. :try_end_4f} :catchall_4d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public moveToFront(Landroid/app/IApplicationThread;Ljava/lang/String;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTaskImpl;->checkCallerOrSystemOrRoot()V

    .line 125
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 126
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 127
    iget-object v2, v0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 128
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 131
    :try_start_1a
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v2, :cond_50

    .line 133
    iget-object v2, v0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_50

    .line 134
    invoke-virtual {v2, v13}, Landroid/content/pm/PackageManager;->isSpeg(I)Z

    move-result v2

    if-eqz v2, :cond_50

    const-string v0, "SPEG"

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowed app transition for callingPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_1a .. :try_end_4c} :catchall_b4

    .line 159
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 142
    :cond_50
    :try_start_50
    iget-object v2, v0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v11, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v11
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_b4

    :try_start_55
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v10, 0x0

    if-eqz v1, :cond_63

    .line 145
    iget-object v2, v0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    move-object v7, v1

    goto :goto_64

    :cond_63
    move-object v7, v10

    .line 147
    :goto_64
    iget-object v1, v0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    const-string v2, "moveToFront"

    invoke-virtual {v1, v10, v2}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1
    :try_end_70
    .catchall {:try_start_55 .. :try_end_70} :catchall_aa

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move v2, v13

    move v3, v12

    move-object/from16 v4, p2

    move-object/from16 v10, v16

    move-object/from16 v16, v11

    move-object/from16 v11, v17

    .line 149
    :try_start_82
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/wm/ActivityStarter;->shouldAbortBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLandroid/content/Intent;Landroid/app/ActivityOptions;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 151
    iget-object v1, v0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isBackgroundActivityStartsEnabled()Z

    move-result v1

    if-nez v1, :cond_98

    .line 152
    monitor-exit v16
    :try_end_91
    .catchall {:try_start_82 .. :try_end_91} :catchall_b2

    .line 159
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 155
    :cond_98
    :try_start_98
    monitor-exit v16
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_b2

    :try_start_99
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 156
    iget-object v1, v0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v0, v0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    const/4 v2, 0x0

    invoke-virtual {v1, v12, v13, v0, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->startActivityFromRecents(IIILcom/android/server/wm/SafeActivityOptions;)I
    :try_end_a6
    .catchall {:try_start_99 .. :try_end_a6} :catchall_b4

    .line 159
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_aa
    move-exception v0

    move-object/from16 v16, v11

    .line 155
    :goto_ad
    :try_start_ad
    monitor-exit v16
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_b2

    :try_start_ae
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_b2
    .catchall {:try_start_ae .. :try_end_b2} :catchall_b4

    :catchall_b2
    move-exception v0

    goto :goto_ad

    :catchall_b4
    move-exception v0

    .line 159
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 160
    throw v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/IAppTask$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    const-string p1, "AppTaskImpl"

    .line 75
    invoke-static {p1, p0}, Lcom/android/server/wm/ActivityTaskManagerService;->logAndRethrowRuntimeExceptionOnTransact(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setExcludeFromRecents(Z)V
    .registers 8

    .line 197
    invoke-virtual {p0}, Lcom/android/server/wm/AppTaskImpl;->checkCallerOrSystemOrRoot()V

    .line 199
    iget-object v0, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 200
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_59

    .line 202
    :try_start_f
    iget-object v3, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v4, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_3b

    .line 207
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p1, :cond_28

    const/high16 p1, 0x800000

    .line 209
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_33

    .line 211
    :cond_28
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result p1

    const v3, -0x800001

    and-int/2addr p1, v3

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_33
    .catchall {:try_start_f .. :try_end_33} :catchall_54

    .line 215
    :goto_33
    :try_start_33
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 217
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_59

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 205
    :cond_3b
    :try_start_3b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find task ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_54
    .catchall {:try_start_3b .. :try_end_54} :catchall_54

    :catchall_54
    move-exception p0

    .line 215
    :try_start_55
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 216
    throw p0

    :catchall_59
    move-exception p0

    .line 217
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_55 .. :try_end_5b} :catchall_59

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public startActivity(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 12

    .line 166
    invoke-virtual {p0}, Lcom/android/server/wm/AppTaskImpl;->checkCallerOrSystemOrRoot()V

    .line 167
    iget-object v0, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 169
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 172
    iget-object v1, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 173
    iget-object v2, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v3, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_6f

    .line 178
    invoke-static {p1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object p1

    if-eqz p1, :cond_58

    .line 182
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_11 .. :try_end_28} :catchall_88

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 184
    iget-object p0, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object p0

    const-string v1, "AppTaskImpl"

    invoke-virtual {p0, p4, v1}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 185
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 186
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 187
    invoke-virtual {p0, p3}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 188
    invoke-virtual {p0, p5}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 189
    invoke-virtual {p0, p6}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 190
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 191
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityStarter;->setInTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 192
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result p0

    return p0

    .line 180
    :cond_58
    :try_start_58
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bad app thread "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 176
    :cond_6f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to find task ID "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_88
    move-exception p0

    .line 182
    monitor-exit v1
    :try_end_8a
    .catchall {:try_start_58 .. :try_end_8a} :catchall_88

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
