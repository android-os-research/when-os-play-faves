.class public Lcom/android/server/wm/TransitionController;
.super Ljava/lang/Object;
.source "TransitionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TransitionController$Lock;,
        Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;
    }
.end annotation


# static fields
.field public static final CHANGE_TIMEOUT_MS:I = 0x7d0

.field public static final DEFAULT_TIMEOUT_MS:I = 0x1388

.field public static final LEGACY_STATE_IDLE:I = 0x0

.field public static final LEGACY_STATE_READY:I = 0x1

.field public static final LEGACY_STATE_RUNNING:I = 0x2

.field public static final SHELL_TRANSITIONS_ROTATION:Z

.field public static final TAG:Ljava/lang/String; = "TransitionController"


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mCollectingTransition:Lcom/android/server/wm/Transition;

.field public final mLegacyListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mPlayingTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Transition;",
            ">;"
        }
    .end annotation
.end field

.field public final mRunningLock:Lcom/android/server/wm/TransitionController$Lock;

.field public final mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field public final mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

.field public final mTransitionMetricsReporter:Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;

.field public mTransitionPlayer:Landroid/window/ITransitionPlayer;

.field public final mTransitionPlayerDeath:Landroid/os/IBinder$DeathRecipient;

.field public mTransitionPlayerThread:Landroid/app/IApplicationThread;


# direct methods
.method public static synthetic $r8$lambda$YJMzYGvDalxOyxVZDC3sIlplTx8(Lcom/android/server/wm/TransitionController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/TransitionController;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$dt7_WyY2R9K_PmgovbX1mlWGjKM(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TransitionController;->lambda$collectForDisplayChange$1(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$szEmWhoHEOVJUlobQnwi8ru8y98(Lcom/android/server/wm/TransitionController;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Transition;Lcom/android/server/wm/WindowState;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/TransitionController;->lambda$collectForDisplayChange$2(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Transition;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "persist.wm.debug.shell_transit_rotate"

    const/4 v1, 0x0

    .line 74
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/TransitionController;->SHELL_TRANSITIONS_ROTATION:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/TaskSnapshotController;)V
    .registers 4

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;

    invoke-direct {v0}, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionMetricsReporter:Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Lcom/android/server/wm/TransitionController$Lock;

    invoke-direct {v0, p0}, Lcom/android/server/wm/TransitionController$Lock;-><init>(Lcom/android/server/wm/TransitionController;)V

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mRunningLock:Lcom/android/server/wm/TransitionController$Lock;

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 114
    iput-object p1, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 115
    const-class p1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object p1, p0, Lcom/android/server/wm/TransitionController;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 116
    iput-object p2, p0, Lcom/android/server/wm/TransitionController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 117
    new-instance p1, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TransitionController;)V

    iput-object p1, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayerDeath:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method public static isExistenceType(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v1, 0x2

    if-ne p0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method

.method public static synthetic lambda$collectForDisplayChange$1(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;)V
    .registers 3

    .line 486
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 487
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    :cond_9
    return-void
.end method

.method private synthetic lambda$collectForDisplayChange$2(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Transition;Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 492
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_1d

    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    if-nez p0, :cond_1d

    .line 493
    invoke-virtual {p1, p3}, Lcom/android/server/wm/DisplayContent;->shouldSyncRotationChange(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 494
    iget-object p0, p3, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p2, p0}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    :cond_1d
    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 4

    .line 118
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x0

    .line 120
    :goto_9
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 121
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition;

    invoke-virtual {v2}, Lcom/android/server/wm/Transition;->cleanUpOnFailure()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 123
    :cond_1f
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    .line 124
    iput-object v1, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayer:Landroid/window/ITransitionPlayer;

    .line 125
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mRunningLock:Lcom/android/server/wm/TransitionController$Lock;

    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController$Lock;->doNotifyLocked()V

    .line 126
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_31
    move-exception p0

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method


# virtual methods
.method public abort(Lcom/android/server/wm/Transition;)V
    .registers 3

    .line 559
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-ne p1, v0, :cond_b

    .line 562
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->abort()V

    const/4 p1, 0x0

    .line 563
    iput-object p1, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    return-void

    .line 560
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Too late to abort."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public collect(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 466
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez p0, :cond_5

    return-void

    .line 467
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method public collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 472
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez p0, :cond_5

    return-void

    .line 473
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method public collectForDisplayChange(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Transition;)V
    .registers 5

    if-nez p2, :cond_4

    .line 481
    iget-object p2, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    :cond_4
    if-nez p2, :cond_7

    return-void

    .line 485
    :cond_7
    new-instance v0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/Transition;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 491
    new-instance v0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/TransitionController;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Transition;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public createTransition(I)Lcom/android/server/wm/Transition;
    .registers 3

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    move-result-object p0

    return-object p0
.end method

.method public final createTransition(II)Lcom/android/server/wm/Transition;
    .registers 8

    .line 142
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayer:Landroid/window/ITransitionPlayer;

    if-eqz v0, :cond_43

    .line 145
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez v0, :cond_3b

    .line 149
    new-instance v0, Lcom/android/server/wm/Transition;

    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    .line 153
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz p1, :cond_37

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    invoke-static {p2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0x3811002

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object p2, v3, p1

    const-string p1, "Creating Transition: %s, caller=%s"

    invoke-static {v1, v2, v4, p1, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 160
    :cond_37
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TransitionController;->moveToCollecting(Lcom/android/server/wm/Transition;)V

    return-object v0

    .line 146
    :cond_3b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Simultaneous transition collection not supported yet. Use {@link #createPendingTransition} for explicit queueing."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 143
    :cond_43
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Shell Transitions not enabled"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dispatchLegacyAppTransitionCancelled()V
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 628
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 629
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionCancelledLocked(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_18
    return-void
.end method

.method public dispatchLegacyAppTransitionFinished(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    const/4 v0, 0x0

    .line 622
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 623
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    iget-object v2, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method public dispatchLegacyAppTransitionPending()V
    .registers 3

    const/4 v0, 0x0

    .line 606
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 607
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionPendingLocked()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public dispatchLegacyAppTransitionStarting(Landroid/window/TransitionInfo;)V
    .registers 12

    .line 612
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->isKeyguardGoingAway()Z

    move-result p1

    const/4 v0, 0x0

    move v9, v0

    .line 613
    :goto_6
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_26

    .line 615
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    .line 617
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x78

    move v1, p1

    .line 615
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionStartingLocked(ZZJJJ)I

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_26
    return-void
.end method

.method public dumpDebugLegacy(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 6

    .line 635
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 637
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p0, 0x2

    goto :goto_27

    .line 639
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->getLegacyIsReady()Z

    move-result v0

    if-nez v0, :cond_24

    :cond_18
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 640
    invoke-virtual {p0}, Lcom/android/server/wm/BLASTSyncEngine;->hasPendingSyncSets()Z

    move-result p0

    if-eqz p0, :cond_26

    :cond_24
    const/4 p0, 0x1

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    :goto_27
    const-wide v0, 0x10e00000001L

    .line 646
    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 647
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public finishTransition(Landroid/os/IBinder;)V
    .registers 7

    .line 520
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionMetricsReporter:Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;->reportAnimationStart(Landroid/os/IBinder;J)V

    .line 522
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->endLaunchPowerMode(I)V

    .line 523
    invoke-static {p1}, Lcom/android/server/wm/Transition;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/Transition;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 524
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_4d

    .line 528
    :cond_1c
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_34

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x25133a8c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    const-string p1, "Finish Transition: %s"

    invoke-static {v2, v3, v1, p1, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 529
    :cond_34
    iget-object p1, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 530
    iget-object p1, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_44

    .line 531
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TransitionController;->setAnimationRunning(Z)V

    .line 533
    :cond_44
    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->finishTransition()V

    .line 534
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mRunningLock:Lcom/android/server/wm/TransitionController$Lock;

    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController$Lock;->doNotifyLocked()V

    return-void

    .line 525
    :cond_4d
    :goto_4d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Trying to finish a non-playing transition "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TransitionController"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public forceChange(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 453
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez p0, :cond_5

    return-void

    .line 457
    :cond_5
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Transition$ChangeInfo;

    if-eqz p0, :cond_12

    const/4 p1, 0x1

    .line 459
    iput-boolean p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mForceChange:Z

    :cond_12
    return-void
.end method

.method public getCollectingTransitionType()I
    .registers 1

    .line 319
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz p0, :cond_7

    iget p0, p0, Lcom/android/server/wm/Transition;->mType:I

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public getTransitionPlayer()Landroid/window/ITransitionPlayer;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayer:Landroid/window/ITransitionPlayer;

    return-object p0
.end method

.method public getWindowingModeAtStart(Lcom/android/server/wm/WindowContainer;)I
    .registers 2
    .annotation build Landroid/app/WindowConfiguration$WindowingMode;
    .end annotation

    .line 308
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez p0, :cond_9

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    return p0

    .line 309
    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Transition$ChangeInfo;

    if-nez p0, :cond_18

    .line 312
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    return p0

    .line 314
    :cond_18
    iget p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    return p0
.end method

.method public inRecentsTransition(Lcom/android/server/wm/WindowContainer;)Z
    .registers 6

    move-object v0, p1

    :goto_1
    const/4 v1, 0x1

    if-eqz v0, :cond_21

    .line 262
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez v2, :cond_9

    goto :goto_21

    .line 263
    :cond_9
    invoke-virtual {v2}, Lcom/android/server/wm/Transition;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    iget-object v2, v2, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 264
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return v1

    .line 260
    :cond_1c
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_1

    .line 269
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_28
    if-ltz v0, :cond_56

    move-object v2, p1

    :goto_2b
    if-eqz v2, :cond_53

    .line 272
    iget-object v3, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition;

    invoke-virtual {v3}, Lcom/android/server/wm/Transition;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 273
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition;

    iget-object v3, v3, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    return v1

    .line 270
    :cond_4e
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    goto :goto_2b

    :cond_53
    add-int/lit8 v0, v0, -0x1

    goto :goto_28

    :cond_56
    const/4 p0, 0x0

    return p0
.end method

.method public inTransition()Z
    .registers 2

    .line 239
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public inTransition(Lcom/android/server/wm/WindowContainer;)Z
    .registers 6

    .line 244
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    move-object v0, p1

    :goto_8
    if-eqz v0, :cond_16

    .line 246
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_11

    return v1

    .line 245
    :cond_11
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_8

    .line 249
    :cond_16
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_1d
    if-ltz v0, :cond_3b

    move-object v2, p1

    :goto_20
    if-eqz v2, :cond_38

    .line 251
    iget-object v3, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition;

    iget-object v3, v3, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    return v1

    .line 250
    :cond_33
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    goto :goto_20

    :cond_38
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    :cond_3b
    const/4 p0, 0x0

    return p0
.end method

.method public isCollecting()Z
    .registers 1

    .line 217
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isCollecting(Lcom/android/server/wm/WindowContainer;)Z
    .registers 2

    .line 225
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz p0, :cond_e

    iget-object p0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isPlaying()Z
    .registers 1

    .line 233
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isShellTransitionsEnabled()Z
    .registers 1

    .line 204
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayer:Landroid/window/ITransitionPlayer;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5

    .line 297
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Transition;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    .line 300
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_13
    if-ltz v0, :cond_27

    .line 301
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/Transition;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_24

    return v1

    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method public isTransitionOnDisplay(Lcom/android/server/wm/DisplayContent;)Z
    .registers 5

    .line 283
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Transition;->isOnDisplay(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    .line 286
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_13
    if-ltz v0, :cond_27

    .line 287
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/Transition;->isOnDisplay(Lcom/android/server/wm/DisplayContent;)Z

    move-result v2

    if-eqz v2, :cond_24

    return v1

    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method public legacyDetachNavigationBarFromApp(Landroid/os/IBinder;)V
    .registers 3

    .line 589
    invoke-static {p1}, Lcom/android/server/wm/Transition;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/Transition;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 590
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_13

    .line 594
    :cond_f
    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->legacyRestoreNavigationBarFromApp()V

    return-void

    .line 591
    :cond_13
    :goto_13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Transition isn\'t playing: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TransitionController"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public moveToCollecting(Lcom/android/server/wm/Transition;)V
    .registers 6

    .line 166
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez v0, :cond_31

    .line 169
    iput-object p1, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 172
    iget v0, p1, Lcom/android/server/wm/Transition;->mType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_e

    const-wide/16 v0, 0x7d0

    goto :goto_10

    :cond_e
    const-wide/16 v0, 0x1388

    .line 173
    :goto_10
    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/Transition;->startCollecting(J)V

    .line 174
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, -0x69309a00

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Start collecting in Transition: %s"

    invoke-static {v0, v1, v3, p1, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 176
    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->dispatchLegacyAppTransitionPending()V

    return-void

    .line 167
    :cond_31
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Simultaneous transition collection not supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public moveToPlaying(Lcom/android/server/wm/Transition;)V
    .registers 3

    .line 538
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-ne p1, v0, :cond_19

    const/4 v0, 0x0

    .line 541
    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 542
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    .line 543
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TransitionController;->setAnimationRunning(Z)V

    .line 545
    :cond_13
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 539
    :cond_19
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to move non-collecting transition to playing"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V
    .registers 2

    .line 598
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerTransitionPlayer(Landroid/window/ITransitionPlayer;Landroid/app/IApplicationThread;)V
    .registers 6

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayer:Landroid/window/ITransitionPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 184
    invoke-interface {v0}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 185
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayer:Landroid/window/ITransitionPlayer;

    invoke-interface {v0}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayerDeath:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_16
    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayer:Landroid/window/ITransitionPlayer;

    .line 189
    :cond_19
    invoke-interface {p1}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 190
    invoke-interface {p1}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayerDeath:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 192
    :cond_28
    iput-object p1, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayer:Landroid/window/ITransitionPlayer;

    .line 193
    iput-object p2, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayerThread:Landroid/app/IApplicationThread;
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2c} :catch_2d

    return-void

    .line 195
    :catch_2d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unable to set transition player"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestCloseTransitionIfNeeded(Lcom/android/server/wm/WindowContainer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;)V"
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayer:Landroid/window/ITransitionPlayer;

    if-nez v0, :cond_5

    return-void

    .line 420
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 421
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 422
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    move-result-object v0

    .line 423
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v2, 0x0

    .line 422
    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 425
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_26

    .line 429
    :cond_23
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    :goto_26
    return-void
.end method

.method public requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;
    .registers 12

    .line 394
    :try_start_0
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_24

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x5d83f7ec

    const-string v4, "Requesting StartTransition: %s, caller=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_24
    const/4 v0, 0x0

    if-eqz p2, :cond_2f

    .line 405
    new-instance v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    .line 406
    invoke-virtual {p2, v0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;)V

    .line 408
    :cond_2f
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayer:Landroid/window/ITransitionPlayer;

    new-instance p2, Landroid/window/TransitionRequestInfo;

    iget v1, p1, Lcom/android/server/wm/Transition;->mType:I

    invoke-direct {p2, v1, v0, p3, p4}, Landroid/window/TransitionRequestInfo;-><init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)V

    invoke-interface {p0, p1, p2}, Landroid/window/ITransitionPlayer;->requestStartTransition(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3b} :catch_3c

    goto :goto_47

    :catch_3c
    move-exception p0

    const-string p2, "TransitionController"

    const-string p3, "Error requesting transition"

    .line 411
    invoke-static {p2, p3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 412
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->start()V

    :goto_47
    return-object p1
.end method

.method public requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;
    .registers 12

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 338
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    move-result-object p0

    return-object p0
.end method

.method public requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;
    .registers 9

    .line 358
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayer:Landroid/window/ITransitionPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 362
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v0

    if-eqz v0, :cond_26

    if-nez p6, :cond_1e

    .line 367
    iget-object p5, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    const/4 p6, 0x0

    invoke-virtual {p5, p4, p6}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    and-int/lit16 p4, p2, 0x100

    if-eqz p4, :cond_34

    .line 370
    iget-object p4, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {p4, p2}, Lcom/android/server/wm/Transition;->addFlag(I)V

    goto :goto_34

    .line 364
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Provided displayChange for a non-new request"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 373
    :cond_26
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    move-result-object p2

    if-eqz p3, :cond_30

    .line 374
    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 373
    :cond_30
    invoke-virtual {p0, p2, v1, p5, p6}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    move-result-object v1

    :cond_34
    :goto_34
    if-eqz p3, :cond_43

    .line 377
    invoke-static {p1}, Lcom/android/server/wm/TransitionController;->isExistenceType(I)Z

    move-result p1

    if-eqz p1, :cond_40

    .line 378
    invoke-virtual {p0, p3}, Lcom/android/server/wm/TransitionController;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_43

    .line 380
    :cond_40
    invoke-virtual {p0, p3}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    :cond_43
    :goto_43
    return-object v1
.end method

.method public requestTransitionIfNeeded(ILcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;
    .registers 4

    const/4 v0, 0x0

    .line 328
    invoke-virtual {p0, p1, v0, p2, p2}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    move-result-object p0

    return-object p0
.end method

.method public final setAnimationRunning(Z)V
    .registers 4

    .line 549
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayerThread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_5

    return-void

    .line 550
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    if-nez v0, :cond_26

    .line 552
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to find process for player thread="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayerThread:Landroid/app/IApplicationThread;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TransitionController"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 555
    :cond_26
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setRunningRemoteAnimation(Z)V

    return-void
.end method

.method public setOverrideAnimation(Landroid/window/TransitionInfo$AnimationOptions;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)V
    .registers 4

    .line 502
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez p0, :cond_5

    return-void

    .line 503
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/Transition;->setOverrideAnimation(Landroid/window/TransitionInfo$AnimationOptions;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method public setReady(Lcom/android/server/wm/WindowContainer;)V
    .registers 3

    const/4 v0, 0x1

    .line 514
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TransitionController;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    return-void
.end method

.method public setReady(Lcom/android/server/wm/WindowContainer;Z)V
    .registers 3

    .line 508
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez p0, :cond_5

    return-void

    .line 509
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    return-void
.end method

.method public setTransientLaunch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V
    .registers 4

    .line 573
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez v0, :cond_5

    return-void

    .line 574
    :cond_5
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/Transition;->setTransientLaunch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V

    .line 578
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 579
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    const/16 p2, 0x80

    invoke-virtual {p0, p2}, Lcom/android/server/wm/Transition;->addFlag(I)V

    .line 584
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setCanAffectSystemUiFlags(Z)V

    :cond_1d
    return-void
.end method

.method public unregisterLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V
    .registers 2

    .line 602
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateChangeInfo(Lcom/android/server/wm/WindowContainer;IILandroid/graphics/Rect;)Z
    .registers 6

    .line 436
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 440
    :cond_6
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Transition$ChangeInfo;

    if-eqz p0, :cond_1d

    .line 442
    iput p2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitMode:I

    .line 443
    iget-object p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz p3, :cond_1b

    .line 445
    iput p3, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    :cond_1b
    const/4 p0, 0x1

    return p0

    :cond_1d
    return v0
.end method

.method public useShellTransitionsRotation()Z
    .registers 1

    .line 209
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result p0

    if-eqz p0, :cond_c

    sget-boolean p0, Lcom/android/server/wm/TransitionController;->SHELL_TRANSITIONS_ROTATION:Z

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method
