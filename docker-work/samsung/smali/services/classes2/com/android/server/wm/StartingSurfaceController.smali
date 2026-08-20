.class public Lcom/android/server/wm/StartingSurfaceController;
.super Ljava/lang/Object;
.source "StartingSurfaceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/StartingSurfaceController$StartingSurface;,
        Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;
    }
.end annotation


# static fields
.field public static final ALLOW_COPY_SOLID_COLOR_VIEW:J = 0xc45e600L

.field public static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field public final mDeferringAddStartActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mDeferringAddStartingWindow:Z

.field public mInitNewTask:Z

.field public mInitProcessRunning:Z

.field public mInitTaskSwitch:Z

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mSplashScreenExceptionsList:Lcom/android/server/wm/SplashScreenExceptionList;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/StartingSurfaceController;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/StartingSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartActivities:Ljava/util/ArrayList;

    .line 81
    iput-object p1, p0, Lcom/android/server/wm/StartingSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 82
    new-instance v0, Lcom/android/server/wm/SplashScreenExceptionList;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/server/wm/SplashScreenExceptionList;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mSplashScreenExceptionsList:Lcom/android/server/wm/SplashScreenExceptionList;

    return-void
.end method

.method public static makeStartingWindowTypeParameter(ZZZZZZZZILjava/lang/String;I)I
    .registers 11

    if-eqz p1, :cond_4

    or-int/lit8 p0, p0, 0x2

    :cond_4
    if-eqz p2, :cond_8

    or-int/lit8 p0, p0, 0x4

    :cond_8
    if-eqz p3, :cond_c

    or-int/lit8 p0, p0, 0x8

    :cond_c
    if-nez p4, :cond_11

    const/4 p1, 0x1

    if-ne p8, p1, :cond_13

    :cond_11
    or-int/lit8 p0, p0, 0x10

    :cond_13
    if-eqz p5, :cond_17

    or-int/lit8 p0, p0, 0x20

    :cond_17
    if-eqz p6, :cond_1c

    const/high16 p1, -0x80000000

    or-int/2addr p0, p1

    :cond_1c
    if-eqz p7, :cond_20

    or-int/lit8 p0, p0, 0x40

    :cond_20
    const/4 p1, 0x2

    if-ne p8, p1, :cond_32

    const-wide/32 p1, 0xc45e600

    .line 136
    invoke-static {p10}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    .line 135
    invoke-static {p1, p2, p9, p3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_32

    or-int/lit16 p0, p0, 0x80

    :cond_32
    return p0
.end method


# virtual methods
.method public final addDeferringRecord(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZZLcom/android/server/wm/ActivityRecord;)V
    .registers 7

    .line 224
    iget-object v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 225
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isProcessRunning()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mInitProcessRunning:Z

    .line 226
    iput-boolean p3, p0, Lcom/android/server/wm/StartingSurfaceController;->mInitNewTask:Z

    .line 227
    iput-boolean p4, p0, Lcom/android/server/wm/StartingSurfaceController;->mInitTaskSwitch:Z

    .line 229
    :cond_12
    iget-object p0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartActivities:Ljava/util/ArrayList;

    new-instance p3, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;

    invoke-direct {p3, p1, p2, p5}, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public beginDeferAddStartingWindow()V
    .registers 2

    const/4 v0, 0x1

    .line 255
    iput-boolean v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartingWindow:Z

    return-void
.end method

.method public cleanupDeferAddStartingWindow()V
    .registers 2

    const/4 v0, 0x0

    .line 268
    iput-boolean v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartingWindow:Z

    .line 269
    iget-object p0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartActivities:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public createSplashScreenStartingSurface(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/StartingSurfaceController$StartingSurface;
    .registers 7

    .line 87
    iget-object v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 88
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    .line 89
    iget-object v3, p0, Lcom/android/server/wm/StartingSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v3, v1, p1, p2, v2}, Lcom/android/server/wm/TaskOrganizerController;->addStartingWindow(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;ILandroid/window/TaskSnapshot;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 91
    new-instance p1, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    invoke-direct {p1, p0, v1}, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;-><init>(Lcom/android/server/wm/StartingSurfaceController;Lcom/android/server/wm/Task;)V

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p1

    .line 93
    :cond_25
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    :catchall_2a
    move-exception p0

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public createTaskSnapshotSurface(Lcom/android/server/wm/ActivityRecord;Landroid/window/TaskSnapshot;)Lcom/android/server/wm/StartingSurfaceController$StartingSurface;
    .registers 8

    .line 145
    iget-object v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 146
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2a

    .line 148
    sget-object p0, Lcom/android/server/wm/StartingSurfaceController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskSnapshotSurface.create: Failed to find task for activity="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_95

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 153
    :cond_2a
    :try_start_2a
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTopFullscreenActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_4f

    .line 155
    sget-object p0, Lcom/android/server/wm/StartingSurfaceController;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "TaskSnapshotSurface.create: Failed to find top fullscreen for task="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_2a .. :try_end_4b} :catchall_95

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 159
    :cond_4f
    :try_start_4f
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-nez v4, :cond_70

    .line 161
    sget-object p0, Lcom/android/server/wm/StartingSurfaceController;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "TaskSnapshotSurface.create: no opaque window in "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_4f .. :try_end_6c} :catchall_95

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 165
    :cond_70
    :try_start_70
    iget-object v2, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v2

    invoke-virtual {p2}, Landroid/window/TaskSnapshot;->getRotation()I

    move-result v3

    const/4 v4, 0x0

    if-eq v2, v3, :cond_82

    .line 170
    iget-object v2, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, p1, v4}, Lcom/android/server/wm/DisplayContent;->handleTopActivityLaunchingInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;Z)Z

    .line 173
    :cond_82
    iget-object v2, p0, Lcom/android/server/wm/StartingSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v2, v1, p1, v4, p2}, Lcom/android/server/wm/TaskOrganizerController;->addStartingWindow(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;ILandroid/window/TaskSnapshot;)Z

    .line 175
    new-instance p1, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    invoke-direct {p1, p0, v1}, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;-><init>(Lcom/android/server/wm/StartingSurfaceController;Lcom/android/server/wm/Task;)V

    monitor-exit v0
    :try_end_91
    .catchall {:try_start_70 .. :try_end_91} :catchall_95

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p1

    :catchall_95
    move-exception p0

    .line 176
    :try_start_96
    monitor-exit v0
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public endDeferAddStartingWindow(Landroid/app/ActivityOptions;)V
    .registers 3

    const/4 v0, 0x0

    .line 262
    iput-boolean v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartingWindow:Z

    .line 263
    invoke-virtual {p0, p1}, Lcom/android/server/wm/StartingSurfaceController;->showStartingWindowFromDeferringActivities(Landroid/app/ActivityOptions;)V

    return-void
.end method

.method public isExceptionApp(Ljava/lang/String;ILjava/util/function/Supplier;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Supplier<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)Z"
        }
    .end annotation

    .line 102
    iget-object p0, p0, Lcom/android/server/wm/StartingSurfaceController;->mSplashScreenExceptionsList:Lcom/android/server/wm/SplashScreenExceptionList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/SplashScreenExceptionList;->isException(Ljava/lang/String;ILjava/util/function/Supplier;)Z

    move-result p0

    return p0
.end method

.method public showStartingWindow(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZZLcom/android/server/wm/ActivityRecord;Z)V
    .registers 22

    move-object v0, p0

    .line 201
    iget-boolean v1, v0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartingWindow:Z

    if-eqz v1, :cond_9

    .line 202
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/StartingSurfaceController;->addDeferringRecord(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZZLcom/android/server/wm/ActivityRecord;)V

    goto :goto_2e

    :cond_9
    if-eqz p6, :cond_20

    .line 206
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isProcessRunning()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZZZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)V

    goto :goto_2e

    :cond_20
    const/4 v13, 0x1

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v14, p5

    .line 210
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZZLcom/android/server/wm/ActivityRecord;)V

    :goto_2e
    return-void
.end method

.method public final showStartingWindowFromDeferringActivities(Landroid/app/ActivityOptions;)V
    .registers 12

    .line 235
    iget-object v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_2d

    .line 236
    iget-object v1, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;

    .line 237
    iget-object v2, v1, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;->mDeferring:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v1, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;->mPrev:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v4, p0, Lcom/android/server/wm/StartingSurfaceController;->mInitNewTask:Z

    iget-boolean v5, p0, Lcom/android/server/wm/StartingSurfaceController;->mInitTaskSwitch:Z

    iget-boolean v6, p0, Lcom/android/server/wm/StartingSurfaceController;->mInitProcessRunning:Z

    const/4 v7, 0x1

    iget-object v8, v1, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;->mSource:Lcom/android/server/wm/ActivityRecord;

    move-object v9, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZZZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    .line 240
    iget-object v1, v1, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;->mDeferring:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v1, :cond_2a

    goto :goto_2d

    :cond_2a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 244
    :cond_2d
    :goto_2d
    iget-object p0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartActivities:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
