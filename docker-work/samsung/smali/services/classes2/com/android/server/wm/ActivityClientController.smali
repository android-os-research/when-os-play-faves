.class public Lcom/android/server/wm/ActivityClientController;
.super Landroid/app/IActivityClientController$Stub;
.source "ActivityClientController.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field public mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

.field public mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field public final mContext:Landroid/content/Context;

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;


# direct methods
.method public static synthetic $r8$lambda$7UrVTGj64DR1lIQOIGjdfnhvdL4(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityClientController;->lambda$finishActivityAffinity$0(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$GZytgvx4lINKrkeoYIVK0Mmed1k(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/ActivityClientController;->lambda$getActivityTokenBelow$2(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$hCt2qWoVpnBm6CUvrRaFXJHsykQ(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ILcom/android/server/wm/ActivityRecord;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityClientController;->lambda$finishSubActivity$1(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ILcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 121
    invoke-direct {p0}, Landroid/app/IActivityClientController$Stub;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 123
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 124
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 125
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/wm/ActivityClientController;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getCallingRecord(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .registers 1

    .line 674
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 675
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public static synthetic lambda$finishActivityAffinity$0(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 553
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->finishIfSameAffinity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$finishSubActivity$1(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ILcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 574
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->finishIfSubActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$getActivityTokenBelow$2(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    .line 645
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public activityDestroyed(Landroid/os/IBinder;)V
    .registers 7

    .line 289
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_1a

    const-string v0, "ActivityTaskManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTIVITY DESTROYED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_1a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 291
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const-string v2, "activityDestroyed"

    const-wide/16 v3, 0x20

    .line 292
    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_49

    .line 294
    :try_start_2b
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_36

    const-string v2, "activityDestroyed"

    .line 296
    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->destroyed(Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_2b .. :try_end_36} :catchall_41

    .line 299
    :cond_36
    :try_start_36
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 300
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 302
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_41
    move-exception p1

    .line 299
    :try_start_42
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 300
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 301
    throw p1

    :catchall_49
    move-exception p1

    .line 302
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_42 .. :try_end_4b} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V
    .registers 12

    .line 145
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    .line 147
    :try_start_6
    iget-object v4, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_51

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const-string v5, "activityIdle"

    .line 148
    invoke-static {v2, v3, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 149
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_22

    .line 151
    monitor-exit v4
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_4b

    .line 166
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 167
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 155
    :cond_22
    :try_start_22
    iget v5, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    iget-object v7, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/android/server/wm/EventLogTags;->writeWmIdleActivity(IILjava/lang/String;)V

    .line 159
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v5, v5, p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->activityIdleInternal(Lcom/android/server/wm/ActivityRecord;ZZLandroid/content/res/Configuration;)V

    if-eqz p3, :cond_40

    .line 161
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result p0

    if-eqz p0, :cond_40

    .line 162
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->clearProfilerIfNeeded()V

    .line 164
    :cond_40
    monitor-exit v4
    :try_end_41
    .catchall {:try_start_22 .. :try_end_41} :catchall_4b

    :try_start_41
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_51

    .line 166
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 167
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_4b
    move-exception p0

    .line 164
    :try_start_4c
    monitor-exit v4
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    :try_start_4d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_51

    :catchall_51
    move-exception p0

    .line 166
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 167
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 168
    throw p0
.end method

.method public activityLocalRelaunch(Landroid/os/IBinder;)V
    .registers 4

    .line 307
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 308
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 309
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 311
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->startRelaunching()V

    .line 313
    :cond_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 314
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception p1

    .line 313
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public activityPaused(Landroid/os/IBinder;)V
    .registers 7

    .line 221
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 222
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const-string v2, "activityPaused"

    const-wide/16 v3, 0x20

    .line 223
    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 224
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_1b

    const/4 v2, 0x0

    .line 226
    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->activityPaused(Z)V

    .line 228
    :cond_1b
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 229
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 230
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_26
    move-exception p1

    .line 229
    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public activityRelaunched(Landroid/os/IBinder;)V
    .registers 4

    .line 319
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 320
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 321
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 323
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->finishRelaunching()V

    .line 325
    :cond_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 326
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception p1

    .line 325
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public activityResumed(Landroid/os/IBinder;Z)V
    .registers 9

    .line 173
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 174
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 193
    invoke-static {p1, p2}, Lcom/android/server/wm/ActivityRecord;->activityResumedLocked(Landroid/os/IBinder;Z)V

    .line 195
    iget-object p2, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->isOccluding()Z

    move-result p2

    if-eqz p2, :cond_4e

    .line 196
    iget-object p2, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4, v4}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 198
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p2, :cond_49

    .line 199
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    const-string p2, "ActivityTaskManager"

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activityResumed, mOccluding is set to false, r="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", caller="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    .line 201
    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 200
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_49
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->setOccluding(Z)V

    .line 206
    :cond_4e
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_7 .. :try_end_4f} :catchall_56

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 207
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_56
    move-exception p0

    .line 206
    :try_start_57
    monitor-exit v2
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    .registers 14

    if-eqz p2, :cond_11

    .line 239
    invoke-virtual {p2}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_11

    .line 240
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "File descriptors passed in Bundle"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 243
    :cond_11
    :goto_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 248
    iget-object v4, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4

    :try_start_1a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const-string v5, "activityStopped"

    const-wide/16 v6, 0x20

    .line 249
    invoke-static {v6, v7, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 250
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_44

    .line 252
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v5

    if-eqz v5, :cond_41

    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 255
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v3, v2, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 256
    iget v2, v2, Lcom/android/server/wm/WindowProcessController;->mUid:I

    move-object v8, v3

    move v3, v2

    move-object v2, v8

    .line 258
    :cond_41
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/wm/ActivityRecord;->activityStopped(Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V

    .line 260
    :cond_44
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 261
    monitor-exit v4
    :try_end_48
    .catchall {:try_start_1a .. :try_end_48} :catchall_74

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 267
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_PACKAGE_ENABLED:Z

    if-eqz p2, :cond_58

    if-eqz p1, :cond_58

    .line 268
    iget-object p2, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/MultiTaskingController;->removeWaitingEmbedActivityTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    :cond_58
    if-eqz v2, :cond_69

    .line 278
    iget-object p2, p0, Lcom/android/server/wm/ActivityClientController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRestartTimeouts(Lcom/android/server/wm/ActivityRecord;)V

    .line 279
    iget-object p1, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string/jumbo p2, "restartActivityProcess"

    invoke-virtual {p1, v2, v3, p2}, Landroid/app/ActivityManagerInternal;->killProcess(Ljava/lang/String;ILjava/lang/String;)V

    .line 282
    :cond_69
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->trimApplications()V

    .line 284
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_74
    move-exception p0

    .line 261
    :try_start_75
    monitor-exit v4
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public activityTopResumedStateLost()V
    .registers 5

    .line 212
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 213
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 214
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleTopResumedStateReleased(Z)V

    .line 215
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 216
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_18
    move-exception p0

    .line 215
    :try_start_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final canGetLaunchedFrom()Z
    .registers 6

    .line 702
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 703
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_e

    return v2

    .line 706
    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 707
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_1c

    return v3

    .line 711
    :cond_1c
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSignedWithPlatformKey()Z

    move-result v4

    if-eqz v4, :cond_23

    return v2

    :cond_23
    const/4 v4, 0x2

    .line 715
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 714
    invoke-virtual {p0, v4, v0}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object p0

    .line 716
    array-length v0, p0

    if-lez v0, :cond_3c

    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    aget-object p0, p0, v3

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3c

    goto :goto_3d

    :cond_3c
    move v2, v3

    :goto_3d
    return v2
.end method

.method public convertFromTranslucent(Landroid/os/IBinder;)Z
    .registers 3

    const/4 v0, 0x0

    .line 746
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityClientController;->convertFromTranslucentOp(Landroid/os/IBinder;Z)Z

    move-result p0

    return p0
.end method

.method public convertFromTranslucentOp(Landroid/os/IBinder;Z)Z
    .registers 6

    .line 752
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 754
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_27

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 755
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    const/4 v2, 0x1

    if-eqz p1, :cond_18

    .line 758
    invoke-virtual {p1, v2, p2}, Lcom/android/server/wm/ActivityRecord;->setOccludesParent(ZZ)Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_21

    .line 765
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_21
    move-exception p1

    .line 763
    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    :try_start_23
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_27

    :catchall_27
    move-exception p0

    .line 765
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 766
    throw p0
.end method

.method public convertToTranslucent(Landroid/os/IBinder;Landroid/os/Bundle;)Z
    .registers 9

    .line 771
    invoke-static {p2}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object p2

    .line 772
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 774
    :try_start_8
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_78

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 775
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p1, :cond_1d

    .line 777
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_72

    .line 793
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 779
    :cond_1d
    :try_start_1d
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_66

    if-eqz p2, :cond_2e

    .line 781
    invoke-virtual {p2, p1}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityRecord;)Landroid/app/ActivityOptions;

    move-result-object p2

    goto :goto_2f

    :cond_2e
    const/4 p2, 0x0

    :goto_2f
    iput-object p2, v3, Lcom/android/server/wm/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    const-string p2, "ActivityTaskManager"

    .line 784
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "convertToTranslucent, r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", under="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", under.returningOptions="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", caller="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    .line 786
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 784
    invoke-static {p2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_66
    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->setOccludesParent(Z)Z

    move-result p1

    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_1d .. :try_end_6b} :catchall_72

    .line 793
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_72
    move-exception p1

    .line 791
    :try_start_73
    monitor-exit p0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    :try_start_74
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_78
    .catchall {:try_start_74 .. :try_end_78} :catchall_78

    :catchall_78
    move-exception p0

    .line 793
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 794
    throw p0
.end method

.method public dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .registers 7

    if-eqz p3, :cond_d

    .line 1395
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.SHOW_KEYGUARD_MESSAGE"

    const-string v2, "dismissKeyguard"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1400
    :try_start_11
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_2c

    :try_start_14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1401
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/KeyguardController;->dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 1402
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_26

    :try_start_1f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_2c

    .line 1404
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_26
    move-exception p0

    .line 1402
    :try_start_27
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    :try_start_28
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception p0

    .line 1404
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1405
    throw p0
.end method

.method public final ensureValidPictureInPictureActivityParams(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Lcom/android/server/wm/ActivityRecord;
    .registers 12

    .line 902
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v0, :cond_f0

    .line 907
    invoke-static {p2}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_d6

    .line 913
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->supportsPictureInPicture()Z

    move-result p2

    if-eqz p2, :cond_bf

    .line 918
    iget-object p2, p0, Lcom/android/server/wm/ActivityClientController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x10500c8

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p2

    .line 920
    iget-object v1, p0, Lcom/android/server/wm/ActivityClientController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    .line 923
    invoke-virtual {p3}, Landroid/app/PictureInPictureParams;->hasSetAspectRatio()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_6f

    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 925
    invoke-virtual {p3}, Landroid/app/PictureInPictureParams;->getAspectRatioFloat()F

    move-result v7

    .line 924
    invoke-virtual {v2, v6, v7}, Lcom/android/server/wm/WindowManagerService;->isValidPictureInPictureAspectRatio(Lcom/android/server/wm/DisplayContent;F)Z

    move-result v2

    if-eqz v2, :cond_46

    goto :goto_6f

    .line 926
    :cond_46
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Aspect ratio is too extreme (must be between %f and %f)."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p3, v5, [Ljava/lang/Object;

    .line 928
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, p3, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, p3, v3

    .line 926
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 931
    :cond_6f
    :goto_6f
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsExpandedPictureInPicture:Z

    if-eqz v2, :cond_b5

    invoke-virtual {p3}, Landroid/app/PictureInPictureParams;->hasSetExpandedAspectRatio()Z

    move-result v2

    if-eqz v2, :cond_b5

    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 933
    invoke-virtual {p3}, Landroid/app/PictureInPictureParams;->getExpandedAspectRatioFloat()F

    move-result v7

    .line 932
    invoke-virtual {v2, v6, v7}, Lcom/android/server/wm/WindowManagerService;->isValidExpandedPictureInPictureAspectRatio(Lcom/android/server/wm/DisplayContent;F)Z

    move-result v2

    if-eqz v2, :cond_8c

    goto :goto_b5

    .line 934
    :cond_8c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Expanded aspect ratio is not extreme enough (must not be between %f and %f)."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p3, v5, [Ljava/lang/Object;

    .line 937
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, p3, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, p3, v3

    .line 934
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 941
    :cond_b5
    :goto_b5
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/ActivityTaskManager;->getMaxNumPictureInPictureActions(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/app/PictureInPictureParams;->truncateActions(I)V

    return-object v0

    .line 914
    :cond_bf
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Current activity does not support picture-in-picture."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 909
    :cond_d6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Can\'t find activity for token="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 903
    :cond_f0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Device doesn\'t support picture-in-picture mode."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enterPictureInPictureMode(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Z
    .registers 7

    .line 827
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 829
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_24

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const-string v3, "enterPictureInPictureMode"

    .line 830
    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/wm/ActivityClientController;->ensureValidPictureInPictureActivityParams(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 832
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->enterPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;)Z

    move-result p0

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1e

    .line 835
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1e
    move-exception p0

    .line 833
    :try_start_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    :try_start_20
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p0

    .line 835
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 836
    throw p0
.end method

.method public finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move/from16 v1, p4

    if-eqz v2, :cond_17

    .line 441
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_17

    .line 442
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File descriptors passed in Intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_17
    :goto_17
    iget-object v3, v0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_1a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 447
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    const/4 v4, 0x1

    if-nez v6, :cond_29

    .line 449
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_fe

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 451
    :cond_29
    :try_start_29
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_fe

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 454
    iget-object v3, v0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v6, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v2, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->collectGrants(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v3

    .line 456
    iget-object v7, v0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v7

    :try_start_38
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 458
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isInHistory()Z

    move-result v5

    if-nez v5, :cond_46

    .line 459
    monitor-exit v7
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_f8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 463
    :cond_46
    :try_start_46
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 464
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    if-nez v8, :cond_57

    const-string v9, "ActivityTaskManager"

    const-string v10, "Finishing task with all activities already finished"

    .line 466
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_57
    iget-object v9, v0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/server/wm/LockTaskController;->activityBlockedFromFinish(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_69

    .line 471
    monitor-exit v7
    :try_end_65
    .catchall {:try_start_46 .. :try_end_65} :catchall_f8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v10

    .line 476
    :cond_69
    :try_start_69
    iget-object v9, v0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v9, :cond_a2

    .line 479
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v9

    const/4 v11, -0x1

    move-object/from16 v12, p1

    invoke-virtual {v9, v12, v11}, Lcom/android/server/wm/Task;->topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v9
    :try_end_7a
    .catchall {:try_start_69 .. :try_end_7a} :catchall_f8

    if-eqz v9, :cond_a2

    .line 484
    :try_start_7c
    iget-object v11, v0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v11, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    iget-object v9, v9, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v11, v9}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result v9
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_86} :catch_87
    .catchall {:try_start_7c .. :try_end_86} :catchall_f8

    goto :goto_94

    .line 486
    :catch_87
    :try_start_87
    iget-object v9, v0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v11, 0x0

    iput-object v11, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 487
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v9

    invoke-virtual {v9, v11}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    move v9, v4

    :goto_94
    if-nez v9, :cond_a2

    const-string v0, "ActivityTaskManager"

    const-string v1, "Not finishing activity because controller resumed"

    .line 491
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    monitor-exit v7
    :try_end_9e
    .catchall {:try_start_87 .. :try_end_9e} :catchall_f8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v10

    .line 499
    :cond_a2
    :try_start_a2
    iget-object v9, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v9, :cond_ad

    .line 500
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-virtual {v9, v11, v12}, Lcom/android/server/wm/WindowProcessController;->setLastActivityFinishTimeIfNeeded(J)V

    .line 503
    :cond_ad
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    const-string v9, "finishActivity"

    const-wide/16 v13, 0x20

    .line 504
    invoke-static {v13, v14, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_b8
    .catchall {:try_start_a2 .. :try_end_b8} :catchall_f8

    if-ne v1, v4, :cond_bc

    move v9, v4

    goto :goto_bd

    :cond_bc
    move v9, v10

    :goto_bd
    const/4 v15, 0x2

    if-eq v1, v15, :cond_dc

    if-eqz v9, :cond_c5

    if-ne v6, v8, :cond_c5

    goto :goto_dc

    :cond_c5
    :try_start_c5
    const-string v4, "app-request"

    const/4 v5, 0x1

    move-object v0, v6

    move/from16 v1, p2

    move-object/from16 v2, p3

    .line 522
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I

    .line 524
    iget-boolean v4, v6, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v4, :cond_e5

    const-string v0, "ActivityTaskManager"

    const-string v1, "Failed to finish by app-request"

    .line 526
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e5

    .line 516
    :cond_dc
    :goto_dc
    iget-object v0, v0, Lcom/android/server/wm/ActivityClientController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string v1, "finish-activity"

    invoke-virtual {v0, v5, v10, v9, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    .line 520
    iput v10, v6, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I
    :try_end_e5
    .catchall {:try_start_c5 .. :try_end_e5} :catchall_f0

    .line 531
    :cond_e5
    :goto_e5
    :try_start_e5
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    .line 532
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v7
    :try_end_ec
    .catchall {:try_start_e5 .. :try_end_ec} :catchall_f8

    .line 529
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    :catchall_f0
    move-exception v0

    .line 531
    :try_start_f1
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    .line 532
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 533
    throw v0

    :catchall_f8
    move-exception v0

    .line 534
    monitor-exit v7
    :try_end_fa
    .catchall {:try_start_f1 .. :try_end_fa} :catchall_f8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_fe
    move-exception v0

    .line 451
    :try_start_ff
    monitor-exit v3
    :try_end_100
    .catchall {:try_start_ff .. :try_end_100} :catchall_fe

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public finishActivityAffinity(Landroid/os/IBinder;)Z
    .registers 7

    .line 539
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 541
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_42

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 542
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    const/4 v3, 0x0

    if-nez p1, :cond_19

    .line 544
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_3c

    .line 559
    :goto_12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    .line 549
    :cond_19
    :try_start_19
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->activityBlockedFromFinish(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_27

    .line 550
    monitor-exit v2

    goto :goto_12

    .line 553
    :cond_27
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    new-instance v3, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    const/4 v4, 0x1

    invoke-virtual {p0, v3, p1, v4, v4}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Z

    .line 556
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_19 .. :try_end_35} :catchall_3c

    .line 559
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_3c
    move-exception p0

    .line 557
    :try_start_3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    :try_start_3e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_42

    :catchall_42
    move-exception p0

    .line 559
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 560
    throw p0
.end method

.method public finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 9

    .line 565
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 567
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_38

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 568
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_18

    .line 569
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_32

    .line 580
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 573
    :cond_18
    :try_start_18
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    new-instance v4, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda2;

    invoke-direct {v4, p1, p2, p3}, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V

    const/4 p1, 0x1

    invoke-virtual {v3, v4, p1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;Z)V

    .line 577
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateOomAdj()V

    .line 578
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_18 .. :try_end_2b} :catchall_32

    :try_start_2b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_38

    .line 580
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_32
    move-exception p0

    .line 578
    :try_start_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    :try_start_34
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_38

    :catchall_38
    move-exception p0

    .line 580
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 581
    throw p0
.end method

.method public getActivityTokenBelow(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 9

    .line 637
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 639
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_4c

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 640
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInAnyTask(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p1, :cond_19

    .line 642
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_46

    .line 652
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    .line 645
    :cond_19
    :try_start_19
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    new-instance v4, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda1;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v4, p1, v5, v6}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_3e

    .line 647
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result p1

    if-ne v4, p1, :cond_3e

    .line 648
    iget-object p1, v3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_19 .. :try_end_37} :catchall_46

    .line 652
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    .line 650
    :cond_3e
    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_46

    :try_start_3f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4c

    .line 652
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_46
    move-exception p1

    .line 650
    :try_start_47
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    :try_start_48
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception p0

    .line 652
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 653
    throw p0
.end method

.method public getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;
    .registers 2

    .line 659
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 660
    invoke-static {p1}, Lcom/android/server/wm/ActivityClientController;->getCallingRecord(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 661
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p1

    :catchall_19
    move-exception p1

    .line 662
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .registers 2

    .line 667
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 668
    invoke-static {p1}, Lcom/android/server/wm/ActivityClientController;->getCallingRecord(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 669
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p1

    :catchall_17
    move-exception p1

    .line 670
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getDisplayId(Landroid/os/IBinder;)I
    .registers 4

    .line 602
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 603
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask(Landroid/os/IBinder;)Lcom/android/server/wm/Task;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1a

    .line 605
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_15

    move v0, p1

    .line 606
    :cond_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 608
    :cond_1a
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_1f
    move-exception p1

    .line 609
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .registers 4

    .line 691
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityClientController;->canGetLaunchedFrom()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 694
    :cond_8
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 695
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 696
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    :cond_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    :catchall_1b
    move-exception p1

    .line 697
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getLaunchedFromUid(Landroid/os/IBinder;)I
    .registers 4

    .line 680
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityClientController;->canGetLaunchedFrom()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    return v1

    .line 683
    :cond_8
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 684
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 685
    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    :cond_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_1b
    move-exception p1

    .line 686
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getRequestedOrientation(Landroid/os/IBinder;)I
    .registers 2

    .line 736
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 737
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 739
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result p1

    goto :goto_12

    :cond_11
    const/4 p1, -0x1

    :goto_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_17

    .line 738
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    :catchall_17
    move-exception p1

    .line 740
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getTaskForActivity(Landroid/os/IBinder;Z)I
    .registers 3

    .line 614
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 615
    invoke-static {p1, p2}, Lcom/android/server/wm/ActivityRecord;->getTaskForActivityLocked(Landroid/os/IBinder;Z)I

    move-result p1

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    :catchall_f
    move-exception p1

    .line 616
    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getTaskWindowingMode(Landroid/os/IBinder;)I
    .registers 2

    .line 625
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 626
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInAnyTask(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_12

    const/4 p1, -0x1

    .line 628
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 630
    :cond_12
    :try_start_12
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    :catchall_1f
    move-exception p1

    .line 631
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public invalidateHomeTaskSnapshot(Landroid/os/IBinder;)V
    .registers 4

    if-nez p1, :cond_7

    const-string v0, "invalidateHomeTaskSnapshot"

    .line 1371
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 1374
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    if-nez p1, :cond_24

    .line 1377
    iget-object p1, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1378
    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 1379
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    goto :goto_28

    :cond_22
    const/4 p1, 0x0

    goto :goto_28

    .line 1381
    :cond_24
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    :goto_28
    if-eqz p1, :cond_3f

    .line 1384
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1385
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 1386
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 1385
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->removeSnapshotCache(I)V

    .line 1388
    :cond_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_a .. :try_end_40} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_44
    move-exception p0

    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public isImmersive(Landroid/os/IBinder;)Z
    .registers 2

    .line 799
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 800
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 804
    iget-boolean p1, p1, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 802
    :cond_13
    :try_start_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :catchall_19
    move-exception p1

    .line 805
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public final isLauncherActivity(Landroid/content/ComponentName;)Z
    .registers 9

    .line 1503
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.LAUNCHER"

    .line 1504
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1505
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v6, 0x0

    .line 1507
    :try_start_14
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1508
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mContext:Landroid/content/Context;

    .line 1509
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v5

    .line 1508
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    if-nez p0, :cond_2a

    return v6

    .line 1511
    :cond_2a
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_32
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1512
    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_4a} :catch_4e

    if-eqz v0, :cond_32

    const/4 p0, 0x1

    return p0

    :catch_4e
    move-exception p0

    const-string p1, "ActivityTaskManager"

    const-string v0, "Failed to query intent activities"

    .line 1517
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_56
    return v6
.end method

.method public isRootVoiceInteraction(Landroid/os/IBinder;)Z
    .registers 2

    .line 1155
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1156
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 1157
    iget-boolean p1, p1, Lcom/android/server/wm/ActivityRecord;->rootVoiceInteraction:Z

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    :catchall_18
    move-exception p1

    .line 1158
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public isTopOfTask(Landroid/os/IBinder;)Z
    .registers 3

    .line 586
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 587
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 588
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne v0, p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    :catchall_1e
    move-exception p1

    .line 589
    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public moveActivityTaskToBack(Landroid/os/IBinder;Z)Z
    .registers 7

    const-string v0, "moveActivityTaskToBack"

    .line 363
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 364
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 366
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_41

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v3, 0x0

    if-nez p2, :cond_14

    const/4 p2, 0x1

    goto :goto_15

    :cond_14
    move p2, v3

    .line 367
    :goto_15
    invoke-static {p1, p2}, Lcom/android/server/wm/ActivityRecord;->getTaskForActivityLocked(Landroid/os/IBinder;Z)I

    move-result p2

    .line 368
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 370
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask(Landroid/os/IBinder;)Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->moveTaskToBack(Lcom/android/server/wm/Task;)Z

    move-result p0

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_3b

    .line 374
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 372
    :cond_33
    :try_start_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_3b

    :try_start_34
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_41

    .line 374
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_3b
    move-exception p0

    .line 372
    :try_start_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    :try_start_3d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_41

    :catchall_41
    move-exception p0

    .line 374
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 375
    throw p0
.end method

.method public navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z
    .registers 13

    .line 394
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 395
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_12

    const/4 p0, 0x0

    .line 397
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_40

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    .line 399
    :cond_12
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_40

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 402
    iget-object p1, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1, p2, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->collectGrants(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v4

    .line 403
    iget-object p1, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, p4, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->collectGrants(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v7

    .line 405
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_27
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 406
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    move-object v3, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/Task;->navigateUpTo(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)Z

    move-result p1

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_27 .. :try_end_36} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    :catchall_3a
    move-exception p1

    .line 408
    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    :catchall_40
    move-exception p0

    .line 399
    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onBackPressedOnTaskRoot(Landroid/os/IBinder;Landroid/app/IRequestFinishCallback;)V
    .registers 11

    .line 1445
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1450
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_82

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1451
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_18

    .line 1452
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_7c

    .line 1493
    :goto_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1454
    :cond_18
    :try_start_18
    iget-object v4, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v4, v4, Lcom/android/server/wm/WindowOrganizerController;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 1455
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskOrganizerController;->handleInterceptBackPressedOnTaskRoot(Lcom/android/server/wm/Task;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 1458
    monitor-exit v2

    goto :goto_11

    .line 1461
    :cond_2a
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 1462
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    const/4 v6, 0x0

    if-ne v5, v3, :cond_37

    const/4 v5, 0x1

    goto :goto_38

    :cond_37
    move v5, v6

    .line 1464
    :goto_38
    iget-object v7, v3, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v4, v4, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v7, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 1465
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    goto :goto_46

    :cond_45
    const/4 v4, 0x0

    :goto_46
    const/4 v7, 0x2

    .line 1467
    invoke-virtual {v3, v7}, Lcom/android/server/wm/ActivityRecord;->isLaunchSourceType(I)Z

    move-result v3

    .line 1468
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_18 .. :try_end_4c} :catchall_7c

    :try_start_4c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v4, :cond_6c

    if-eqz v5, :cond_6c

    if-eqz v3, :cond_5b

    .line 1480
    invoke-static {v4}, Lcom/android/server/wm/ActivityRecord;->isMainIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_65

    .line 1481
    :cond_5b
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityClientController;->isLauncherActivity(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 1482
    :cond_65
    invoke-virtual {p0, p1, v6}, Lcom/android/server/wm/ActivityClientController;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z
    :try_end_68
    .catchall {:try_start_4c .. :try_end_68} :catchall_82

    .line 1493
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1488
    :cond_6c
    :try_start_6c
    invoke-interface {p2}, Landroid/app/IRequestFinishCallback;->requestFinish()V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_6f} :catch_70
    .catchall {:try_start_6c .. :try_end_6f} :catchall_82

    goto :goto_78

    :catch_70
    move-exception p0

    :try_start_71
    const-string p1, "ActivityTaskManager"

    const-string p2, "Failed to invoke request finish callback"

    .line 1490
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_78
    .catchall {:try_start_71 .. :try_end_78} :catchall_82

    .line 1493
    :goto_78
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_7c
    move-exception p0

    .line 1468
    :try_start_7d
    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    :try_start_7e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_82
    .catchall {:try_start_7e .. :try_end_82} :catchall_82

    :catchall_82
    move-exception p0

    .line 1493
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1494
    throw p0
.end method

.method public onPictureInPictureStateChanged(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureUiState;)V
    .registers 5

    .line 982
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 987
    :try_start_6
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 988
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 987
    invoke-static {v0, v1}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v0

    .line 989
    invoke-static {p2}, Landroid/app/servertransaction/PipStateTransactionItem;->obtain(Landroid/app/PictureInPictureUiState;)Landroid/app/servertransaction/PipStateTransactionItem;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 990
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_22} :catch_23

    goto :goto_40

    :catch_23
    move-exception p0

    .line 992
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to send pip state transaction item: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 993
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityTaskManager"

    .line 992
    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_40
    return-void

    .line 983
    :cond_41
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Activity is not in PIP mode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onSystemReady()V
    .registers 3

    .line 129
    new-instance v0, Lcom/android/internal/app/AssistUtils;

    iget-object v1, p0, Lcom/android/server/wm/ActivityClientController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/IActivityClientController$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    const-string p1, "ActivityClientController"

    .line 138
    invoke-static {p1, p0}, Lcom/android/server/wm/ActivityTaskManagerService;->logAndRethrowRuntimeExceptionOnTransact(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public overridePendingTaskTransition(Landroid/os/IBinder;Ljava/lang/String;II)V
    .registers 15

    .line 1282
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1283
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1284
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 1285
    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, v2, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1286
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransition(Ljava/lang/String;IIILandroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    .line 1290
    :cond_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1291
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_30
    move-exception p1

    .line 1290
    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;III)V
    .registers 19

    .line 1261
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-object v2, p0

    .line 1262
    iget-object v2, v2, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1263
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 1264
    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 1265
    iget-object v4, v3, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v4, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-boolean v12, v3, Lcom/android/server/wm/ActivityRecord;->mOverrideTaskTransition:Z

    move-object v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransition(Ljava/lang/String;IIILandroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    .line 1268
    iget-object v4, v3, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityRecord;->mOverrideTaskTransition:Z

    move-object v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    .line 1269
    invoke-static {p2, v6, v7, v8, v3}, Landroid/window/TransitionInfo$AnimationOptions;->makeCustomAnimOptions(Ljava/lang/String;IIIZ)Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v3

    const/4 v5, 0x0

    .line 1268
    invoke-virtual {v4, v3, v5, v5}, Lcom/android/server/wm/TransitionController;->setOverrideAnimation(Landroid/window/TransitionInfo$AnimationOptions;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)V

    .line 1273
    :cond_40
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_8 .. :try_end_41} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1274
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_48
    move-exception v0

    .line 1273
    :try_start_49
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public registerRemoteAnimations(Landroid/os/IBinder;Landroid/view/RemoteAnimationDefinition;)V
    .registers 6

    .line 1410
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    const-string/jumbo v2, "registerRemoteAnimations"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/RemoteAnimationDefinition;->setCallingPidUid(II)V

    .line 1413
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1415
    :try_start_1b
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_38

    :try_start_1e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1416
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 1418
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V

    .line 1420
    :cond_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_32

    :try_start_2b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_38

    .line 1422
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_32
    move-exception p1

    .line 1420
    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    :try_start_34
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_38

    :catchall_38
    move-exception p0

    .line 1422
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1423
    throw p0
.end method

.method public releaseActivityInstance(Landroid/os/IBinder;)Z
    .registers 6

    .line 413
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 415
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_35

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 416
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_2c

    .line 417
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isDestroyable()Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_2c

    :cond_17
    const-string v2, "app-req"

    .line 420
    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(Ljava/lang/String;)Z

    .line 421
    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->DESTROYING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, v2, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p1

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_2f

    .line 424
    :goto_25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :cond_2c
    :goto_2c
    const/4 p1, 0x0

    .line 418
    :try_start_2d
    monitor-exit p0

    goto :goto_25

    :catchall_2f
    move-exception p1

    .line 422
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_2f

    :try_start_31
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_35
    .catchall {:try_start_31 .. :try_end_35} :catchall_35

    :catchall_35
    move-exception p0

    .line 424
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 425
    throw p0
.end method

.method public reportActivityFullyDrawn(Landroid/os/IBinder;Z)V
    .registers 5

    .line 1245
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1247
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_21

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1248
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 1250
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->reportFullyDrawnLocked(Z)V

    .line 1252
    :cond_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_1b

    :try_start_14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_21

    .line 1254
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception p1

    .line 1252
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_21

    :catchall_21
    move-exception p0

    .line 1254
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1255
    throw p0
.end method

.method public reportSizeConfigurations(Landroid/os/IBinder;Landroid/window/SizeConfigurationBuckets;)V
    .registers 10

    .line 332
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    if-eqz v0, :cond_1e

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x4dcf03d2    # 4.3414176E8f

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 334
    :cond_1e
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 335
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 337
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->setSizeConfigurations(Landroid/window/SizeConfigurationBuckets;)V

    .line 339
    :cond_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_32
    move-exception p1

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public requestCompatCameraControl(Landroid/os/IBinder;ZZLandroid/app/ICompatCameraControlCallback;)V
    .registers 7

    .line 881
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 883
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_21

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 884
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 886
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/wm/ActivityRecord;->updateCameraCompatState(ZZLandroid/app/ICompatCameraControlCallback;)V

    .line 888
    :cond_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_1b

    :try_start_14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_21

    .line 890
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception p1

    .line 888
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_21

    :catchall_21
    move-exception p0

    .line 890
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 891
    throw p0
.end method

.method public requestPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 950
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_63

    const/4 v0, 0x0

    const-string/jumbo v1, "requestPictureInPictureMode"

    .line 954
    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 961
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v0}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 962
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enterPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;)Z

    return-void

    .line 967
    :cond_20
    :try_start_20
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 968
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 967
    invoke-static {v0, v1}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v0

    .line 969
    invoke-static {}, Landroid/app/servertransaction/EnterPipRequestedItem;->obtain()Landroid/app/servertransaction/EnterPipRequestedItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 970
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_3c} :catch_3d

    goto :goto_5a

    :catch_3d
    move-exception p0

    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to send enter pip requested item: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 973
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityTaskManager"

    .line 972
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5a
    return-void

    .line 957
    :cond_5b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Requested PIP on an activity that doesn\'t support it"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 951
    :cond_63
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Activity is already in PIP mode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public restartActivityProcessIfVisible(Landroid/os/IBinder;)V
    .registers 4

    const-string/jumbo v0, "restartActivityProcess"

    .line 1347
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 1348
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1350
    :try_start_a
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_27

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1351
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 1353
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->restartProcessIfVisible()V

    .line 1355
    :cond_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_21

    :try_start_1a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_27

    .line 1357
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_21
    move-exception p1

    .line 1355
    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    :try_start_23
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_27

    :catchall_27
    move-exception p0

    .line 1357
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1358
    throw p0
.end method

.method public setImmersive(Landroid/os/IBinder;Z)V
    .registers 9

    .line 810
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 811
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 815
    iput-boolean p2, p1, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    .line 818
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isFocusedActivityOnDisplay()Z

    move-result p2

    if-eqz p2, :cond_30

    .line 819
    sget-boolean p2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IMMERSIVE_enabled:Z

    if-eqz p2, :cond_2b

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IMMERSIVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, -0x270c1967

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 820
    :cond_2b
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->applyUpdateLockStateLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 822
    :cond_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 813
    :cond_35
    :try_start_35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :catchall_3b
    move-exception p0

    .line 822
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setInheritShowWhenLocked(Landroid/os/IBinder;Z)V
    .registers 5

    .line 1215
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1217
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_21

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1218
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 1220
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->setInheritShowWhenLocked(Z)V

    .line 1222
    :cond_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_1b

    :try_start_14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_21

    .line 1224
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception p1

    .line 1222
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_21

    :catchall_21
    move-exception p0

    .line 1224
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1225
    throw p0
.end method

.method public setPictureInPictureParams(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)V
    .registers 7

    .line 841
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 843
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_22

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const-string/jumbo v3, "setPictureInPictureParams"

    .line 844
    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/wm/ActivityClientController;->ensureValidPictureInPictureActivityParams(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    .line 846
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityRecord;->setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V

    .line 847
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_1c

    :try_start_15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_22

    .line 849
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1c
    move-exception p0

    .line 847
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

    .line 849
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 850
    throw p0
.end method

.method public setRecentsScreenshotEnabled(Landroid/os/IBinder;Z)V
    .registers 5

    .line 1333
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1335
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_21

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1336
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 1338
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->setRecentsScreenshotEnabled(Z)V

    .line 1340
    :cond_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_1b

    :try_start_14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_21

    .line 1342
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception p1

    .line 1340
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_21

    :catchall_21
    move-exception p0

    .line 1342
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1343
    throw p0
.end method

.method public setRequestedOrientation(Landroid/os/IBinder;I)V
    .registers 5

    .line 721
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 723
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_21

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 724
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 726
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->setRequestedOrientation(I)V

    .line 728
    :cond_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_1b

    :try_start_14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_21

    .line 730
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception p1

    .line 728
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_21

    :catchall_21
    move-exception p0

    .line 730
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 731
    throw p0
.end method

.method public setShouldDockBigOverlays(Landroid/os/IBinder;Z)V
    .registers 5

    .line 855
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 857
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_1f

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 858
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 859
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->setShouldDockBigOverlays(Z)V

    .line 860
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_19

    :try_start_12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1f

    .line 862
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_19
    move-exception p1

    .line 860
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    :try_start_1b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception p0

    .line 862
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 863
    throw p0
.end method

.method public setShowWhenLocked(Landroid/os/IBinder;Z)V
    .registers 9

    .line 1194
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1196
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_31

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1197
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 1201
    iget v2, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    if-eqz p2, :cond_1c

    const/4 v5, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v5, 0x0

    :goto_1d
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/wm/EventLogTags;->writeWmSetShowWhenLocked(IILjava/lang/String;I)V

    .line 1205
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->setShowWhenLocked(Z)V

    .line 1207
    :cond_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_2b

    :try_start_24
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_31

    .line 1209
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2b
    move-exception p1

    .line 1207
    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    :try_start_2d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_31

    :catchall_31
    move-exception p0

    .line 1209
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1210
    throw p0
.end method

.method public setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V
    .registers 3

    .line 1118
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1119
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 1121
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 1123
    :cond_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_14
    move-exception p1

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setTurnScreenOn(Landroid/os/IBinder;Z)V
    .registers 5

    .line 1230
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1232
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_21

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1233
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 1235
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->setTurnScreenOn(Z)V

    .line 1237
    :cond_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_1b

    :try_start_14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_21

    .line 1239
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception p1

    .line 1237
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_21

    :catchall_21
    move-exception p0

    .line 1239
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1240
    throw p0
.end method

.method public setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I
    .registers 7

    .line 1298
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceSystemHasVrFeature()V

    .line 1300
    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/VrManagerInternal;

    .line 1302
    iget-object v1, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1303
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 1304
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_5b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz p1, :cond_55

    .line 1310
    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, p3, v1}, Lcom/android/server/vr/VrManagerInternal;->hasVrPackage(Landroid/content/ComponentName;I)I

    move-result v0

    if-eqz v0, :cond_26

    return v0

    .line 1315
    :cond_26
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1317
    :try_start_2a
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_50

    :try_start_2d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    if-eqz p2, :cond_33

    goto :goto_34

    :cond_33
    const/4 p3, 0x0

    .line 1318
    :goto_34
    iput-object p3, p1, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    .line 1321
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isFocusedActivityOnDisplay()Z

    move-result p2

    if-eqz p2, :cond_41

    .line 1322
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->applyUpdateVrModeLocked(Lcom/android/server/wm/ActivityRecord;)V

    :cond_41
    const/4 p0, 0x0

    .line 1324
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_2d .. :try_end_43} :catchall_4a

    .line 1327
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_4a
    move-exception p0

    .line 1325
    :try_start_4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    :try_start_4c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_50

    :catchall_50
    move-exception p0

    .line 1327
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1328
    throw p0

    .line 1306
    :cond_55
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :catchall_5b
    move-exception p0

    .line 1304
    :try_start_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z
    .registers 4

    .line 381
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 382
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 384
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/Task;->shouldUpRecreateTaskLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result p1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 386
    :cond_19
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return p0

    :catchall_1f
    move-exception p1

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z
    .registers 10

    .line 1128
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1130
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_7f

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1131
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1132
    iget-object v4, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1c

    .line 1134
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    goto :goto_1d

    :cond_1c
    move-object v4, v5

    :goto_1d
    const/4 v6, 0x0

    if-eq v4, v3, :cond_47

    const-string p0, "ActivityTaskManager"

    .line 1136
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "showAssistFromActivity failed: caller "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not current top "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_7 .. :try_end_40} :catchall_79

    .line 1149
    :goto_40
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    .line 1140
    :cond_47
    :try_start_47
    iget-boolean v4, v4, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-nez v4, :cond_69

    const-string p0, "ActivityTaskManager"

    .line 1141
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "showAssistFromActivity failed: caller "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not visible"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    monitor-exit v2

    goto :goto_40

    .line 1145
    :cond_69
    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_47 .. :try_end_6a} :catchall_79

    :try_start_6a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1146
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    const/16 v2, 0x8

    invoke-virtual {p0, p2, v2, v5, p1}, Lcom/android/internal/app/AssistUtils;->showSessionForActiveService(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    move-result p0
    :try_end_75
    .catchall {:try_start_6a .. :try_end_75} :catchall_7f

    .line 1149
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_79
    move-exception p0

    .line 1145
    :try_start_7a
    monitor-exit v2
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    :try_start_7b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_7f
    .catchall {:try_start_7b .. :try_end_7f} :catchall_7f

    :catchall_7f
    move-exception p0

    .line 1149
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1150
    throw p0
.end method

.method public showLockTaskEscapeMessage(Landroid/os/IBinder;)V
    .registers 3

    .line 1109
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1110
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 1111
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    .line 1113
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1a
    move-exception p0

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public splashScreenAttached(Landroid/os/IBinder;)V
    .registers 4

    .line 871
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 872
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 873
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->splashScreenAttachedLocked(Landroid/os/IBinder;)V

    .line 874
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 875
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_15
    move-exception p1

    .line 874
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 6

    const-string v0, "ActivityTaskManager"

    const-string v1, "Activity tried to startLocalVoiceInteraction"

    .line 1163
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1165
    iget-object v1, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 1167
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    .line 1168
    :goto_1b
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-ne v2, v1, :cond_63

    .line 1171
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-nez p0, :cond_57

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez p0, :cond_57

    iget-object p0, v1, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz p0, :cond_34

    goto :goto_57

    .line 1176
    :cond_34
    iget-boolean p0, v1, Lcom/android/server/wm/ActivityRecord;->pendingVoiceInteractionStart:Z

    if-eqz p0, :cond_44

    const-string p0, "ActivityTaskManager"

    const-string p1, "Pending start of voice interaction already."

    .line 1177
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_a .. :try_end_40} :catchall_6b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_44
    const/4 p0, 0x1

    .line 1180
    :try_start_45
    iput-boolean p0, v1, Lcom/android/server/wm/ActivityRecord;->pendingVoiceInteractionStart:Z

    .line 1181
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_6b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1182
    const-class p0, Landroid/service/voice/VoiceInteractionManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 1183
    invoke-virtual {p0, p1, p2}, Landroid/service/voice/VoiceInteractionManagerInternal;->startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V

    return-void

    :cond_57
    :goto_57
    :try_start_57
    const-string p0, "ActivityTaskManager"

    const-string p1, "Already in a voice interaction, cannot start new voice interaction"

    .line 1173
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_57 .. :try_end_5f} :catchall_6b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1169
    :cond_63
    :try_start_63
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only focused activity can call startVoiceInteraction"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_6b
    move-exception p0

    .line 1181
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_63 .. :try_end_6d} :catchall_6b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public startLockTaskModeByToken(Landroid/os/IBinder;)V
    .registers 4

    .line 1094
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1095
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 1097
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->startLockTaskMode(Lcom/android/server/wm/Task;Z)V

    .line 1099
    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1b
    move-exception p0

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public stopLocalVoiceInteraction(Landroid/os/IBinder;)V
    .registers 2

    .line 1188
    const-class p0, Landroid/service/voice/VoiceInteractionManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 1189
    invoke-virtual {p0, p1}, Landroid/service/voice/VoiceInteractionManagerInternal;->stopLocalVoiceInteraction(Landroid/os/IBinder;)V

    return-void
.end method

.method public stopLockTaskModeByToken(Landroid/os/IBinder;)V
    .registers 3

    .line 1104
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->stopLockTaskModeInternal(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public toggleFreeformWindowingMode(Landroid/os/IBinder;)V
    .registers 10

    .line 999
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1001
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_cd

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1002
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_af

    .line 1011
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    const/4 p1, 0x1

    if-eqz p0, :cond_18

    .line 1012
    invoke-virtual {p0, v3, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->onActivityRelaunchLocked(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 1016
    :cond_18
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_a6

    .line 1022
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v4

    if-nez v4, :cond_34

    .line 1023
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    if-ne v4, p1, :cond_2b

    goto :goto_34

    .line 1024
    :cond_2b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "toggleFreeformWindowingMode: You can only toggle between fullscreen and freeform."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1035
    :cond_34
    :goto_34
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_74

    .line 1037
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz v4, :cond_4d

    .line 1040
    invoke-virtual {v4, p1}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInWindowingMode(I)Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_4d

    .line 1041
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    goto :goto_4e

    :cond_4d
    move-object v4, v6

    .line 1044
    :goto_4e
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    if-eqz v4, :cond_6d

    .line 1047
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v7

    if-eqz v7, :cond_6d

    .line 1048
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 1049
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    .line 1050
    invoke-virtual {v4, p0}, Lcom/android/server/wm/TaskFragment;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v7

    if-ne v7, p1, :cond_6d

    const-string/jumbo p1, "toggleFreeform"

    .line 1052
    invoke-virtual {v4, v5, v5, p0, p1}, Lcom/android/server/wm/TaskFragment;->startPausing(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    .line 1058
    :cond_6d
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    iput-object v6, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    goto :goto_9e

    .line 1061
    :cond_74
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->supportsFreeform()Z

    move-result p1

    if-nez p1, :cond_89

    .line 1064
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result p1

    if-eqz p1, :cond_81

    goto :goto_89

    .line 1066
    :cond_81
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This activity is currently not freeform-enabled"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1068
    :cond_89
    :goto_89
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_9a

    .line 1072
    invoke-virtual {p0, v5}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 1074
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    goto :goto_9e

    :cond_9a
    const/4 p1, 0x5

    .line 1084
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 1086
    :goto_9e
    monitor-exit v2
    :try_end_9f
    .catchall {:try_start_7 .. :try_end_9f} :catchall_c7

    :try_start_9f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_cd

    .line 1088
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1018
    :cond_a6
    :try_start_a6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "toggleFreeformWindowingMode: the activity doesn\'t have a root task"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1004
    :cond_af
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "toggleFreeformWindowingMode: No activity record matching token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_c7
    move-exception p0

    .line 1086
    monitor-exit v2
    :try_end_c9
    .catchall {:try_start_a6 .. :try_end_c9} :catchall_c7

    :try_start_c9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_cd
    .catchall {:try_start_c9 .. :try_end_cd} :catchall_cd

    :catchall_cd
    move-exception p0

    .line 1088
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1089
    throw p0
.end method

.method public unregisterRemoteAnimations(Landroid/os/IBinder;)V
    .registers 5

    .line 1428
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    const-string/jumbo v2, "unregisterRemoteAnimations"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1432
    :try_start_10
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_2d

    :try_start_13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1433
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 1435
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->unregisterRemoteAnimations()V

    .line 1437
    :cond_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_27

    :try_start_20
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_2d

    .line 1439
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_27
    move-exception p1

    .line 1437
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    :try_start_29
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 1439
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1440
    throw p0
.end method

.method public willActivityBeVisible(Landroid/os/IBinder;)Z
    .registers 3

    .line 594
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 595
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask(Landroid/os/IBinder;)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 596
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    :catchall_1a
    move-exception p1

    .line 597
    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method
