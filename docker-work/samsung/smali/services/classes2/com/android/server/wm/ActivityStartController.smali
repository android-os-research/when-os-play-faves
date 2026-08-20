.class public Lcom/android/server/wm/ActivityStartController;
.super Ljava/lang/Object;
.source "ActivityStartController.java"


# static fields
.field public static final DO_PENDING_ACTIVITY_LAUNCHES_MSG:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field public mCheckedForSetup:Z

.field public final mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

.field public final mHandler:Landroid/os/Handler;

.field public mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

.field public mLastHomeActivityStartResult:I

.field public mLastStarter:Lcom/android/server/wm/ActivityStarter;

.field public final mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public static synthetic $r8$lambda$SoFznEIv2FsXLloxIZ4Vw1JcaEY(I)[Landroid/content/Intent;
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/ActivityStartController;->lambda$startActivities$0(I)[Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 5

    .line 134
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    new-instance v1, Lcom/android/server/wm/ActivityStarter$DefaultFactory;

    new-instance v2, Lcom/android/server/wm/ActivityStartInterceptor;

    invoke-direct {v2, p1, v0}, Lcom/android/server/wm/ActivityStartInterceptor;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;)V

    invoke-direct {v1, p1, v0, v2}, Lcom/android/server/wm/ActivityStarter$DefaultFactory;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityStartInterceptor;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityStartController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityStarter$Factory;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityStarter$Factory;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/android/server/wm/ActivityRecord;

    .line 111
    iput-object v1, p0, Lcom/android/server/wm/ActivityStartController;->tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    .line 124
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStartController;->mCheckedForSetup:Z

    .line 142
    iput-object p1, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 143
    iput-object p2, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 146
    new-instance p2, Landroid/os/Handler;

    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p2, v1, v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object p2, p0, Lcom/android/server/wm/ActivityStartController;->mHandler:Landroid/os/Handler;

    .line 149
    iput-object p3, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    .line 150
    invoke-interface {p3, p0}, Lcom/android/server/wm/ActivityStarter$Factory;->setController(Lcom/android/server/wm/ActivityStartController;)V

    .line 151
    new-instance p2, Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    iget-object p3, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {p2, p3, p1}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;-><init>(Lcom/android/server/wm/WindowManagerGlobalLock;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/wm/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    return-void
.end method

.method public static synthetic lambda$startActivities$0(I)[Landroid/content/Intent;
    .registers 1

    .line 525
    new-array p0, p0, [Landroid/content/Intent;

    return-object p0
.end method


# virtual methods
.method public checkTargetUser(IZIILjava/lang/String;)I
    .registers 6

    if-eqz p2, :cond_9

    .line 286
    iget-object p0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p3, p4, p1, p5}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p0

    return p0

    .line 289
    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, p1}, Landroid/app/ActivityManagerInternal;->ensureNotSpecialUser(I)V

    return p1
.end method

.method public final doPendingActivityLaunches(Lcom/android/server/wm/PendingActivityLaunch;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;)V
    .registers 16

    const/4 v0, 0x0

    const-string/jumbo v1, "pendingActivityLaunch-for-process-kill"

    .line 707
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 710
    :try_start_8
    iget-object v3, p1, Lcom/android/server/wm/PendingActivityLaunch;->r:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, p1, Lcom/android/server/wm/PendingActivityLaunch;->sourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p1, Lcom/android/server/wm/PendingActivityLaunch;->startFlags:I

    const/4 v8, 0x1

    iget-object v11, p1, Lcom/android/server/wm/PendingActivityLaunch;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    move-object v9, p3

    move-object v10, p2

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/wm/ActivityStarter;->startResolvedActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_18} :catch_19

    goto :goto_30

    :catch_19
    move-exception p0

    .line 713
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception during pending activity launch for process kill. pal="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityTaskManager"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_30
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    .line 738
    :goto_7
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    const-string v4, "  "

    if-eqz v3, :cond_38

    if-eqz v2, :cond_17

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 739
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 741
    :cond_17
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityStartController;->dumpLastHomeActivityStartResult(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 742
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mLastHomeActivityStartRecord:"

    .line 743
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 744
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p1, v5, v1}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    move v3, v1

    goto :goto_39

    :cond_38
    move v3, v0

    .line 747
    :goto_39
    iget-object v5, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    if-eqz v5, :cond_7b

    if-eqz v2, :cond_51

    .line 749
    invoke-virtual {v5, p3}, Lcom/android/server/wm/ActivityStarter;->relatedToPackage(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_51

    iget-object v5, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_52

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 751
    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_52

    :cond_51
    move v0, v1

    :cond_52
    if-eqz v0, :cond_7b

    if-nez v3, :cond_5a

    .line 756
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityStartController;->dumpLastHomeActivityStartResult(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_5b

    :cond_5a
    move v1, v3

    .line 758
    :goto_5b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mLastStarter:"

    .line 759
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 760
    iget-object p0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/ActivityStarter;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    if-eqz v2, :cond_7a

    return-void

    :cond_7a
    move v3, v1

    :cond_7b
    if-nez v3, :cond_85

    .line 769
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "(nothing)"

    .line 770
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_85
    return-void
.end method

.method public dumpLastHomeActivityStartResult(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    .line 728
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mLastHomeActivityStartResult="

    .line 729
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 730
    iget p0, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartResult:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public getPendingRemoteAnimationRegistry()Lcom/android/server/wm/PendingRemoteAnimationRegistry;
    .registers 1

    .line 724
    iget-object p0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    return-object p0
.end method

.method public obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 161
    iget-object p0, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    invoke-interface {p0}, Lcom/android/server/wm/ActivityStarter$Factory;->obtain()Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityStarter;->setReason(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    return-object p0
.end method

.method public onExecutionComplete(Lcom/android/server/wm/ActivityStarter;)V
    .registers 3

    .line 165
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    if-nez v0, :cond_c

    .line 166
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    invoke-interface {v0}, Lcom/android/server/wm/ActivityStarter$Factory;->obtain()Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    .line 169
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStarter;->set(Lcom/android/server/wm/ActivityStarter;)V

    .line 170
    iget-object p0, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    invoke-interface {p0, p1}, Lcom/android/server/wm/ActivityStarter$Factory;->recycle(Lcom/android/server/wm/ActivityStarter;)V

    return-void
.end method

.method public postStartActivityProcessingForLastStarter(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;)V
    .registers 4

    .line 179
    iget-object p0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    if-nez p0, :cond_5

    return-void

    .line 183
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityStarter;->postStartActivityProcessing(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;)V

    return-void
.end method

.method public registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;)V
    .registers 4

    .line 720
    iget-object p0, p0, Lcom/android/server/wm/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->addPendingAnimation(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;)V

    return-void
.end method

.method public startActivities(Landroid/app/IApplicationThread;IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;ILjava/lang/String;Lcom/android/server/am/PendingIntentRecord;Z)I
    .registers 42

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p10

    if-eqz v3, :cond_2f3

    if-eqz v4, :cond_2ea

    .line 481
    array-length v6, v3

    array-length v7, v4

    if-ne v6, v7, :cond_2e2

    if-eqz v5, :cond_41

    .line 488
    iget-object v7, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v5, v7}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v7

    if-eqz v7, :cond_41

    .line 490
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v8

    .line 492
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_2e

    .line 493
    invoke-virtual {v8, v10}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 495
    :cond_2e
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v9

    if-eqz v9, :cond_3b

    .line 496
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    .line 499
    :cond_3b
    new-instance v7, Lcom/android/server/wm/SafeActivityOptions;

    invoke-direct {v7, v8}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    goto :goto_42

    :cond_41
    const/4 v7, 0x0

    :goto_42
    if-eqz p3, :cond_47

    move/from16 v8, p3

    goto :goto_4b

    .line 506
    :cond_47
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    :goto_4b
    const/4 v9, -0x1

    move/from16 v10, p4

    if-eq v10, v9, :cond_51

    goto :goto_55

    .line 509
    :cond_51
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    :goto_55
    if-ltz p2, :cond_5b

    move/from16 v11, p2

    move v12, v9

    goto :goto_62

    :cond_5b
    if-nez v0, :cond_60

    move v12, v8

    move v11, v10

    goto :goto_62

    :cond_60
    move v11, v9

    move v12, v11

    :goto_62
    const/16 v13, -0x2710

    .line 520
    invoke-static {v11, v10, v13}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v13

    .line 522
    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    .line 523
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v21

    .line 525
    :try_start_71
    new-instance v14, Lcom/android/server/wm/ActivityStartController$$ExternalSyntheticLambda0;

    invoke-direct {v14}, Lcom/android/server/wm/ActivityStartController$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v3, v14}, Lcom/android/internal/util/ArrayUtils;->filterNotNull([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/Intent;

    .line 526
    array-length v14, v3

    new-array v6, v14, [Lcom/android/server/wm/ActivityStarter;

    const/16 v23, 0x0

    move-object/from16 v24, v7

    move/from16 v9, v23

    .line 529
    :goto_85
    array-length v7, v3

    if-ge v9, v7, :cond_18b

    .line 530
    aget-object v7, v3, v9

    .line 534
    invoke-virtual {v7}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v16

    if-nez v16, :cond_183

    .line 539
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    if-eqz v16, :cond_99

    const/16 v25, 0x1

    goto :goto_9b

    :cond_99
    move/from16 v25, v23

    .line 541
    :goto_9b
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 544
    iget-object v7, v1, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    aget-object v16, v4, v9

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v26, v14

    move-object v14, v7

    move-object v7, v15

    move-object v15, v5

    move/from16 v19, p11

    move/from16 v20, v13

    invoke-virtual/range {v14 .. v20}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;

    move-result-object v14

    .line 546
    iget-object v15, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v15, v15, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    move-object/from16 v16, v6

    move/from16 v6, p11

    invoke-virtual {v15, v14, v6}, Landroid/app/ActivityManagerInternal;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v14
    :try_end_c1
    .catchall {:try_start_71 .. :try_end_c1} :catchall_2dd

    if-eqz v14, :cond_fe

    .line 551
    :try_start_c3
    iget-object v15, v1, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v15, v15, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v15, v15, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v6, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v17, v10

    iget-object v10, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 554
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 552
    invoke-interface {v15, v5, v13, v10, v6}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v6
    :try_end_d9
    .catch Ljava/lang/SecurityException; {:try_start_c3 .. :try_end_d9} :catch_f1
    .catchall {:try_start_c3 .. :try_end_d9} :catchall_2dd

    .line 560
    :try_start_d9
    iget-object v10, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v10, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v15, v15, 0x2

    if-nez v15, :cond_e9

    .line 565
    iget v15, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v15, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_101

    .line 562
    :cond_e9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FLAG_CANT_SAVE_STATE not supported here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_f1
    const-string v0, "ActivityTaskManager"

    const-string v1, "Not allowed to start activity since no uri permission."

    .line 556
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f8
    .catchall {:try_start_d9 .. :try_end_f8} :catchall_2dd

    const/16 v0, -0x60

    .line 668
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :cond_fe
    move/from16 v17, v10

    const/4 v6, 0x0

    .line 569
    :goto_101
    :try_start_101
    array-length v10, v3

    const/4 v15, 0x1

    sub-int/2addr v10, v15

    if-ne v9, v10, :cond_108

    const/4 v10, 0x1

    goto :goto_10a

    :cond_108
    move/from16 v10, v23

    :goto_10a
    if-eqz v10, :cond_10f

    move-object/from16 v15, p10

    goto :goto_110

    :cond_10f
    const/4 v15, 0x0

    :goto_110
    if-nez v15, :cond_11e

    if-nez v9, :cond_116

    const/4 v15, 0x1

    goto :goto_118

    :cond_116
    move/from16 v15, v23

    :goto_118
    if-eqz v15, :cond_11d

    move-object/from16 v15, v24

    goto :goto_11e

    :cond_11d
    const/4 v15, 0x0

    :cond_11e
    :goto_11e
    move-object/from16 p4, v3

    move-object/from16 v3, p12

    .line 582
    invoke-virtual {v1, v5, v3}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 583
    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityStarter;->setIntentGrants(Lcom/android/server/uri/NeededUriGrants;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 584
    invoke-virtual {v5, v0}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    aget-object v6, v4, v9

    .line 585
    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 586
    invoke-virtual {v5, v14}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    const/4 v6, -0x1

    .line 587
    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 588
    invoke-virtual {v5, v12}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 589
    invoke-virtual {v5, v11}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 590
    invoke-virtual {v5, v2}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    move-object/from16 v14, p6

    .line 591
    invoke-virtual {v5, v14}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 592
    invoke-virtual {v5, v8}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    move/from16 v6, v17

    .line 593
    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 594
    invoke-virtual {v5, v15}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    move/from16 v15, v25

    .line 595
    invoke-virtual {v5, v15}, Lcom/android/server/wm/ActivityStarter;->setComponentSpecified(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 599
    invoke-virtual {v5, v10}, Lcom/android/server/wm/ActivityStarter;->setAllowPendingRemoteAnimationRegistryLookup(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    move-object/from16 v10, p13

    .line 600
    invoke-virtual {v5, v10}, Lcom/android/server/wm/ActivityStarter;->setOriginatingPendingIntent(Lcom/android/server/am/PendingIntentRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    move/from16 v15, p14

    .line 601
    invoke-virtual {v5, v15}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    aput-object v5, v16, v9

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, p4

    move-object/from16 v5, p10

    move v10, v6

    move-object v15, v7

    move-object/from16 v6, v16

    move/from16 v14, v26

    goto/16 :goto_85

    .line 535
    :cond_183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File descriptors passed in Intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18b
    move-object/from16 v16, v6

    move/from16 v26, v14

    move-object v7, v15

    .line 604
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_1d2

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startActivities: different apps ["

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 606
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v3

    move/from16 v4, v23

    :goto_1a5
    if-ge v4, v3, :cond_1bf

    .line 608
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, -0x1

    if-ne v4, v5, :cond_1b7

    const-string v5, "]"

    goto :goto_1b9

    :cond_1b7
    const-string v5, ", "

    :goto_1b9
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a5

    :cond_1bf
    const-string v3, " from "

    .line 610
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ActivityTaskManager"

    .line 611
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_1d3

    :cond_1d2
    move v0, v3

    :goto_1d3
    new-array v2, v0, [Lcom/android/server/wm/ActivityRecord;

    .line 617
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_1da
    .catchall {:try_start_101 .. :try_end_1da} :catchall_2dd

    :try_start_1da
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 618
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 622
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    invoke-virtual {v0}, Lcom/android/server/wm/StartingSurfaceController;->beginDeferAddStartingWindow()V
    :try_end_1eb
    .catchall {:try_start_1da .. :try_end_1eb} :catchall_2d7

    move-object/from16 v4, p9

    move/from16 v0, v23

    :goto_1ef
    move/from16 v5, v26

    if-ge v0, v5, :cond_2a0

    .line 625
    :try_start_1f3
    aget-object v6, v16, v0

    invoke-virtual {v6, v4}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    .line 626
    invoke-virtual {v4, v2}, Lcom/android/server/wm/ActivityStarter;->setOutActivity([Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v4

    if-gez v4, :cond_248

    const/4 v6, 0x1

    add-int/2addr v0, v6

    :goto_205
    if-ge v0, v5, :cond_211

    .line 630
    iget-object v2, v1, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    aget-object v6, v16, v0

    invoke-interface {v2, v6}, Lcom/android/server/wm/ActivityStarter$Factory;->recycle(Lcom/android/server/wm/ActivityStarter;)V
    :try_end_20e
    .catchall {:try_start_1f3 .. :try_end_20e} :catchall_26f

    add-int/lit8 v0, v0, 0x1

    goto :goto_205

    .line 651
    :cond_211
    :try_start_211
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    if-eqz p10, :cond_21e

    .line 652
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/wm/SafeActivityOptions;->getOriginalOptions()Landroid/app/ActivityOptions;

    move-result-object v6

    goto :goto_21f

    :cond_21e
    const/4 v6, 0x0

    .line 651
    :goto_21f
    invoke-virtual {v0, v6}, Lcom/android/server/wm/StartingSurfaceController;->endDeferAddStartingWindow(Landroid/app/ActivityOptions;)V
    :try_end_222
    .catchall {:try_start_211 .. :try_end_222} :catchall_238

    .line 659
    :try_start_222
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    .line 660
    invoke-virtual {v0}, Lcom/android/server/wm/StartingSurfaceController;->cleanupDeferAddStartingWindow()V

    .line 663
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 664
    monitor-exit v3
    :try_end_231
    .catchall {:try_start_222 .. :try_end_231} :catchall_2d7

    .line 668
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_238
    move-exception v0

    .line 659
    :try_start_239
    iget-object v2, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    .line 660
    invoke-virtual {v2}, Lcom/android/server/wm/StartingSurfaceController;->cleanupDeferAddStartingWindow()V

    .line 663
    iget-object v1, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 664
    throw v0
    :try_end_248
    .catchall {:try_start_239 .. :try_end_248} :catchall_2d7

    :cond_248
    const/4 v4, 0x1

    :try_start_249
    aget-object v6, v2, v23

    if-eqz v6, :cond_256

    .line 635
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v7

    if-ne v7, v13, :cond_256

    .line 638
    iget-object v6, v6, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    goto :goto_269

    :cond_256
    add-int/lit8 v14, v5, -0x1

    if-ge v0, v14, :cond_267

    add-int/lit8 v6, v0, 0x1

    .line 643
    aget-object v6, v16, v6

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStarter;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const/high16 v7, 0x10000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_267
    .catchall {:try_start_249 .. :try_end_267} :catchall_26f

    :cond_267
    move-object/from16 v6, p9

    :goto_269
    add-int/lit8 v0, v0, 0x1

    move/from16 v26, v5

    move-object v4, v6

    goto :goto_1ef

    :catchall_26f
    move-exception v0

    .line 651
    :try_start_270
    iget-object v2, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    if-eqz p10, :cond_27d

    .line 652
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/wm/SafeActivityOptions;->getOriginalOptions()Landroid/app/ActivityOptions;

    move-result-object v6

    goto :goto_27e

    :cond_27d
    const/4 v6, 0x0

    .line 651
    :goto_27e
    invoke-virtual {v2, v6}, Lcom/android/server/wm/StartingSurfaceController;->endDeferAddStartingWindow(Landroid/app/ActivityOptions;)V
    :try_end_281
    .catchall {:try_start_270 .. :try_end_281} :catchall_290

    .line 659
    :try_start_281
    iget-object v2, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    .line 660
    invoke-virtual {v2}, Lcom/android/server/wm/StartingSurfaceController;->cleanupDeferAddStartingWindow()V

    .line 663
    iget-object v1, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 665
    throw v0

    :catchall_290
    move-exception v0

    .line 659
    iget-object v2, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    .line 660
    invoke-virtual {v2}, Lcom/android/server/wm/StartingSurfaceController;->cleanupDeferAddStartingWindow()V

    .line 663
    iget-object v1, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 664
    throw v0
    :try_end_2a0
    .catchall {:try_start_281 .. :try_end_2a0} :catchall_2d7

    .line 651
    :cond_2a0
    :try_start_2a0
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    if-eqz p10, :cond_2ad

    .line 652
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/wm/SafeActivityOptions;->getOriginalOptions()Landroid/app/ActivityOptions;

    move-result-object v6

    goto :goto_2ae

    :cond_2ad
    const/4 v6, 0x0

    .line 651
    :goto_2ae
    invoke-virtual {v0, v6}, Lcom/android/server/wm/StartingSurfaceController;->endDeferAddStartingWindow(Landroid/app/ActivityOptions;)V
    :try_end_2b1
    .catchall {:try_start_2a0 .. :try_end_2b1} :catchall_2c7

    .line 659
    :try_start_2b1
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    .line 660
    invoke-virtual {v0}, Lcom/android/server/wm/StartingSurfaceController;->cleanupDeferAddStartingWindow()V

    .line 663
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 666
    monitor-exit v3
    :try_end_2c0
    .catchall {:try_start_2b1 .. :try_end_2c0} :catchall_2d7

    :try_start_2c0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2c3
    .catchall {:try_start_2c0 .. :try_end_2c3} :catchall_2dd

    .line 668
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v23

    :catchall_2c7
    move-exception v0

    .line 659
    :try_start_2c8
    iget-object v2, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    .line 660
    invoke-virtual {v2}, Lcom/android/server/wm/StartingSurfaceController;->cleanupDeferAddStartingWindow()V

    .line 663
    iget-object v1, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 664
    throw v0

    :catchall_2d7
    move-exception v0

    .line 666
    monitor-exit v3
    :try_end_2d9
    .catchall {:try_start_2c8 .. :try_end_2d9} :catchall_2d7

    :try_start_2d9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_2dd
    .catchall {:try_start_2d9 .. :try_end_2dd} :catchall_2dd

    :catchall_2dd
    move-exception v0

    .line 668
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 669
    throw v0

    .line 482
    :cond_2e2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "intents are length different than resolvedTypes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_2ea
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "resolvedTypes is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_2f3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "intents is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final startActivitiesInPackage(IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I
    .registers 35

    .line 461
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 462
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const-string/jumbo v5, "startActivityInPackage"

    move-object/from16 v0, p0

    move/from16 v1, p10

    move/from16 v2, p11

    .line 461
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStartController;->checkTargetUser(IZIILjava/lang/String;)I

    move-result v17

    const/4 v7, 0x0

    const-string/jumbo v18, "startActivityInPackage"

    move-object/from16 v6, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    move-object/from16 v19, p12

    move/from16 v20, p13

    .line 465
    invoke-virtual/range {v6 .. v20}, Lcom/android/server/wm/ActivityStartController;->startActivities(Landroid/app/IApplicationThread;IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;ILjava/lang/String;Lcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0

    return v0
.end method

.method public final startActivitiesInPackage(ILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I
    .registers 26

    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object v0, p0

    move v1, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    .line 435
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/wm/ActivityStartController;->startActivitiesInPackage(IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0

    return v0
.end method

.method public final startActivityInPackage(IIILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/Task;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I
    .registers 32

    move-object v6, p0

    move v7, p1

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    move-object/from16 v11, p12

    .line 303
    iget-object v0, v6, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSIOPLevel:I

    const/4 v2, 0x6

    if-ge v1, v2, :cond_15

    iget v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mBatteryOverheatLevel:I

    if-lez v1, :cond_2e

    :cond_15
    invoke-virtual {v0, v10}, Lcom/android/server/wm/ActivityTaskManagerService;->isPossibleToStart(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 304
    iget-object v0, v6, Lcom/android/server/wm/ActivityStartController;->mHandler:Landroid/os/Handler;

    iget-object v1, v6, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 305
    iget-object v1, v6, Lcom/android/server/wm/ActivityStartController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/16 v0, -0x66

    return v0

    :cond_2e
    move-object v0, p0

    move/from16 v1, p13

    move/from16 v2, p16

    move v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p15

    .line 311
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStartController;->checkTargetUser(IZIILjava/lang/String;)I

    move-result v0

    .line 315
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v1, :cond_ff

    if-eqz v9, :cond_ff

    .line 318
    iget-object v1, v6, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 320
    invoke-virtual {v1, v9}, Landroid/hardware/display/DisplayManager;->getHiddenDisplayId(Ljava/lang/String;)I

    move-result v2

    const-string v3, "Application ("

    const/4 v4, -0x1

    const/16 v5, 0x66

    const-string v12, "SPEG"

    if-eq v2, v4, :cond_d6

    .line 329
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_bc

    .line 330
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8a

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") is trying to startActivityInPackage from another package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_8a
    if-nez v11, :cond_91

    .line 341
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    goto :goto_97

    .line 342
    :cond_91
    iget-object v3, v6, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v11, v3}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v3

    .line 343
    :goto_97
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reuse old hidden display #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-virtual {v3, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 347
    new-instance v1, Lcom/android/server/wm/SafeActivityOptions;

    invoke-direct {v1, v3}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    goto :goto_100

    .line 349
    :cond_bc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intent launched from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has no component"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 354
    :cond_d6
    invoke-virtual {v1, v8}, Landroid/hardware/display/DisplayManager;->getHiddenDisplayId(I)I

    move-result v1

    if-eq v1, v4, :cond_ff

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") is trying to startActivityInPackage under another uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_ff
    move-object v1, v11

    .line 368
    :goto_100
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-eqz v2, :cond_172

    if-eqz v10, :cond_172

    .line 369
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_172

    .line 370
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.tencent.mm"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_132

    .line 371
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.tencent.mobileqq"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_172

    :cond_132
    const/16 v2, 0x3e8

    if-eq v8, v2, :cond_172

    .line 373
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 374
    invoke-static {v10, v2, v0, v9, v8}, Lcom/android/server/DualAppManagerService;->startDAChooserActivity(Landroid/content/Intent;IILjava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_142

    const/4 v4, 0x0

    goto :goto_145

    :cond_142
    move-object/from16 v4, p7

    move-object v3, v10

    .line 382
    :goto_145
    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-eqz v2, :cond_16f

    .line 384
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_15a

    .line 385
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_15e

    .line 387
    :cond_15a
    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    :goto_15e
    if-eqz v9, :cond_16f

    if-eqz v2, :cond_16f

    .line 389
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16f

    .line 390
    invoke-static {v2}, Lcom/android/server/DualAppManagerService;->shouldForwardToOwner(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16f

    const/4 v0, 0x0

    :cond_16f
    move-object/from16 v2, p15

    goto :goto_177

    :cond_172
    move-object/from16 v4, p7

    move-object/from16 v2, p15

    move-object v3, v10

    .line 400
    :goto_177
    invoke-virtual {p0, v3, v2}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 401
    invoke-virtual {v2, p1}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    move v3, p2

    .line 402
    invoke-virtual {v2, p2}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 403
    invoke-virtual {v2, v8}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 404
    invoke-virtual {v2, v9}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    move-object/from16 v3, p5

    .line 405
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 406
    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    move-object/from16 v3, p8

    .line 407
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    move-object/from16 v3, p9

    .line 408
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    move/from16 v3, p10

    .line 409
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    move/from16 v3, p11

    .line 410
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 411
    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 412
    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    move-object/from16 v1, p14

    .line 413
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setInTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    move-object/from16 v1, p17

    .line 414
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setOriginatingPendingIntent(Lcom/android/server/am/PendingIntentRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    move/from16 v1, p18

    .line 415
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v0

    return v0
.end method

.method public startActivityInTaskFragment(Lcom/android/server/wm/TaskFragment;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/IBinder;IILandroid/os/IBinder;)I
    .registers 10

    if-eqz p4, :cond_7

    .line 689
    invoke-static {p4}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string/jumbo v1, "startActivityInTaskFragment"

    .line 690
    invoke-virtual {p0, p2, v1}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p2

    .line 691
    invoke-virtual {p2, p3}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p2

    .line 692
    invoke-virtual {p2, p1}, Lcom/android/server/wm/ActivityStarter;->setInTaskFragment(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 693
    invoke-virtual {p1, p4}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    const/4 p2, -0x1

    .line 694
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 695
    invoke-virtual {p1, p5}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 696
    invoke-virtual {p1, p6}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 697
    invoke-virtual {p1, p5}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 698
    invoke-virtual {p1, p6}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    if-eqz v0, :cond_35

    .line 699
    iget p0, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    goto :goto_3b

    :cond_35
    iget-object p0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result p0

    :goto_3b
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 700
    invoke-virtual {p0, p7}, Lcom/android/server/wm/ActivityStarter;->setErrorCallbackToken(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 701
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result p0

    return p0
.end method

.method public startHomeActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)V
    .registers 8

    .line 188
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v1, 0x1

    .line 189
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 190
    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/wm/ActivityRecord;->isResolverActivity(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v2, 0x2

    .line 194
    invoke-virtual {v0, v2}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    .line 196
    :cond_14
    invoke-virtual {p4}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v2

    .line 197
    invoke-virtual {v0, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 198
    iget-object v2, p4, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 199
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v2

    .line 198
    invoke-virtual {v0, v2}, Landroid/app/ActivityOptions;->setLaunchTaskDisplayArea(Landroid/window/WindowContainerToken;)Landroid/app/ActivityOptions;

    .line 203
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    .line 207
    :try_start_29
    invoke-virtual {p4, v1}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask(Z)Lcom/android/server/wm/Task;

    move-result-object p4
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_75

    .line 209
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startHomeActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/wm/ActivityStartController;->tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;

    .line 213
    invoke-virtual {p1, p3}, Lcom/android/server/wm/ActivityStarter;->setOutActivity([Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    const/4 p3, 0x0

    .line 214
    invoke-virtual {p1, p3}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 215
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 216
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 217
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartResult:I

    .line 218
    iget-object p1, p0, Lcom/android/server/wm/ActivityStartController;->tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;

    aget-object p1, p1, p3

    iput-object p1, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    .line 219
    iget-boolean p1, p4, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    if-eqz p1, :cond_74

    .line 223
    iget-object p0, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleResumeTopActivities()V

    :cond_74
    return-void

    :catchall_75
    move-exception p1

    .line 209
    iget-object p0, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 210
    throw p1
.end method

.method public startSetupActivity()V
    .registers 8

    .line 232
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStartController;->mCheckedForSetup:Z

    if-eqz v0, :cond_5

    return-void

    .line 239
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_92

    const-string v1, "device_provisioned"

    const/4 v3, 0x0

    .line 241
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_92

    .line 242
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStartController;->mCheckedForSetup:Z

    .line 245
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UPGRADE_SETUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    iget-object v2, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 247
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const v4, 0x100480

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 250
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_92

    .line 251
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 252
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "android.SETUP_VERSION"

    if-eqz v4, :cond_4e

    .line 253
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4f

    :cond_4e
    const/4 v4, 0x0

    :goto_4f
    if-nez v4, :cond_5d

    .line 255
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_5d

    .line 256
    invoke-virtual {v6, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_5d
    const-string v5, "last_setup_shown"

    .line 259
    invoke-static {v0, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v4, :cond_92

    .line 261
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    const/high16 v0, 0x10000000

    .line 262
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 263
    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v5, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v0, "startSetupActivity"

    .line 265
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 266
    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 267
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 268
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    :cond_92
    return-void
.end method
