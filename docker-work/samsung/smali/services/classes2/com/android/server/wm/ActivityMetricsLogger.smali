.class public Lcom/android/server/wm/ActivityMetricsLogger;
.super Ljava/lang/Object;
.source "ActivityMetricsLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;,
        Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;,
        Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;,
        Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    }
.end annotation


# static fields
.field public static final BASE_TRON:I = 0xc8

.field public static final BASE_TYPE:I = 0x64

.field public static final IGNORE_CALLER:I = -0x1

.field public static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field public static final TRON_COMPILATION_FILTER_ASSUMED_VERIFIED:I = 0x2

.field public static final TRON_COMPILATION_FILTER_ERROR:I = 0x0

.field public static final TRON_COMPILATION_FILTER_EVERYTHING:I = 0xb

.field public static final TRON_COMPILATION_FILTER_EVERYTHING_PROFILE:I = 0xa

.field public static final TRON_COMPILATION_FILTER_EXTRACT:I = 0x3

.field public static final TRON_COMPILATION_FILTER_FAKE_RUN_FROM_APK:I = 0xc

.field public static final TRON_COMPILATION_FILTER_FAKE_RUN_FROM_APK_FALLBACK:I = 0xd

.field public static final TRON_COMPILATION_FILTER_FAKE_RUN_FROM_VDEX_FALLBACK:I = 0xe

.field public static final TRON_COMPILATION_FILTER_QUICKEN:I = 0x5

.field public static final TRON_COMPILATION_FILTER_SPACE:I = 0x7

.field public static final TRON_COMPILATION_FILTER_SPACE_PROFILE:I = 0x6

.field public static final TRON_COMPILATION_FILTER_SPEED:I = 0x9

.field public static final TRON_COMPILATION_FILTER_SPEED_PROFILE:I = 0x8

.field public static final TRON_COMPILATION_FILTER_UNKNOWN:I = 0x1

.field public static final TRON_COMPILATION_FILTER_VERIFY:I = 0x4

.field public static final TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

.field public static final UNKNOWN_VISIBILITY_CHECK_DELAY_MS:J = 0xbb8L

.field public static final WINDOW_STATE_ASSISTANT:I = 0x3

.field public static final WINDOW_STATE_FREEFORM:I = 0x2

.field public static final WINDOW_STATE_INVALID:I = -0x1

.field public static final WINDOW_STATE_MULTI_WINDOW:I = 0x4

.field public static final WINDOW_STATE_SIDE_BY_SIDE:I = 0x1

.field public static final WINDOW_STATE_STANDARD:I


# instance fields
.field public mAppHibernationManagerInternal:Lcom/android/server/apphibernation/AppHibernationManagerInternal;

.field public mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

.field public mConvertInt2Str:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mKillPolicyManager:Lcom/android/server/am/KillPolicyManager;

.field public final mLastHibernationStates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mLastLogTimeSecs:J

.field public final mLastTransitionInfo:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/ActivityRecord;",
            "Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

.field public final mLoggerHandler:Landroid/os/Handler;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mPackageUidToCompatStateInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mStringBuilder:Ljava/lang/StringBuilder;

.field public final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final mTransitionInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mWindowState:I


# direct methods
.method public static synthetic $r8$lambda$3_ndX4o6ziHcA8AB_FGyJpZGnuA(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->lambda$logAppTransitionFinished$2(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AN4R4fpXOBu1AJB7opiOXc-EqZ8(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->lambda$checkActivityToBeDrawn$0(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Bewa_GosC-HFfrJTUUS53ZpdQu8(Lcom/android/server/wm/ActivityMetricsLogger;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->logWindowState(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$EziafybCbl7j2MuL8FOIpJsTplc(Lcom/android/server/wm/ActivityMetricsLogger;JJILcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;Z)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/wm/ActivityMetricsLogger;->lambda$logAppTransitionFinished$1(JJILcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$FXgmTIvwnBdpRpzhrZgUqTp_718(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityMetricsLogger;->lambda$logAppTransitionReportedDrawn$3(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y-VvuFx-8MkfjZxfjPXeluqfLy8(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->lambda$logAppTransitionReportedDrawn$4(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y-LfVlbtmHw1BsHT2TB54plhBRc(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->checkActivityToBeDrawn(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 5

    const-string/jumbo v0, "window_time_0"

    const-string/jumbo v1, "window_time_1"

    const-string/jumbo v2, "window_time_2"

    const-string/jumbo v3, "window_time_3"

    const-string/jumbo v4, "window_time_4"

    .line 204
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityMetricsLogger;->TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/os/Looper;)V
    .registers 7

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 207
    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    .line 210
    new-instance v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 211
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLoggerHandler:Landroid/os/Handler;

    .line 214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    .line 216
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionInfo:Landroid/util/ArrayMap;

    .line 218
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mPackageUidToCompatStateInfo:Landroid/util/SparseArray;

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 225
    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mKillPolicyManager:Lcom/android/server/am/KillPolicyManager;

    .line 233
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastHibernationStates:Landroid/util/ArrayMap;

    .line 239
    new-instance v0, Lcom/android/server/wm/ActivityMetricsLogger$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ActivityMetricsLogger$1;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mConvertInt2Str:Ljava/util/HashMap;

    .line 574
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastLogTimeSecs:J

    .line 575
    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 576
    new-instance p1, Lcom/android/server/wm/LaunchObserverRegistryImpl;

    invoke-direct {p1, p2}, Lcom/android/server/wm/LaunchObserverRegistryImpl;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    .line 578
    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->getInstance()Lcom/android/server/am/KillPolicyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mKillPolicyManager:Lcom/android/server/am/KillPolicyManager;

    return-void
.end method

.method public static convertTransitionTypeToLaunchObserverTemperature(I)I
    .registers 2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_11

    const/16 v0, 0x8

    if-eq p0, v0, :cond_f

    const/16 v0, 0x9

    if-eq p0, v0, :cond_d

    const/4 p0, -0x1

    return p0

    :cond_d
    const/4 p0, 0x3

    return p0

    :cond_f
    const/4 p0, 0x2

    return p0

    :cond_11
    const/4 p0, 0x1

    return p0
.end method

.method public static getAppStartTransitionType(IZ)I
    .registers 3

    const/4 v0, 0x7

    if-ne p0, v0, :cond_5

    const/4 p0, 0x3

    return p0

    :cond_5
    const/16 v0, 0x8

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/16 v0, 0x9

    if-ne p0, v0, :cond_15

    if-eqz p1, :cond_13

    const/4 p0, 0x4

    goto :goto_14

    :cond_13
    const/4 p0, 0x2

    :goto_14
    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$checkActivityToBeDrawn$0(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 970
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isReportedDrawn()Z

    move-result v0

    if-nez v0, :cond_10

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private synthetic lambda$logAppTransitionFinished$1(JJILcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;Z)V
    .registers 8

    .line 1089
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppTransition(JJILcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;Z)V

    return-void
.end method

.method private synthetic lambda$logAppTransitionFinished$2(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V
    .registers 2

    .line 1092
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppDisplayed(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V

    return-void
.end method

.method private synthetic lambda$logAppTransitionReportedDrawn$3(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .registers 4

    .line 1347
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppTransitionReportedDrawn(Lcom/android/server/wm/ActivityRecord;Z)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    const/4 p0, 0x0

    .line 1348
    iput-object p0, p3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingFullyDrawn:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$logAppTransitionReportedDrawn$4(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V
    .registers 2

    .line 1359
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppFullyDrawn(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V

    return-void
.end method


# virtual methods
.method public final abort(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;Ljava/lang/String;)V
    .registers 5

    .line 1018
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->-$$Nest$fgetmAssociatedTransitionInfo(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1019
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->-$$Nest$fgetmAssociatedTransitionInfo(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->abort(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Ljava/lang/String;)V

    return-void

    .line 1022
    :cond_e
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "abort launch cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 1023
    invoke-virtual {p1, p2, v0}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->stopTrace(ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    .line 1024
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->-$$Nest$fgetmCurrentTransitionStartTimeNs(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyIntentFailed(J)V

    return-void
.end method

.method public final abort(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Ljava/lang/String;)V
    .registers 9

    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 1029
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityMetricsLogger;->done(ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Ljava/lang/String;J)V

    return-void
.end method

.method public final checkActivityToBeDrawn(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .registers 7

    .line 953
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 954
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->getActiveTransitionInfo(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object v1

    if-nez v1, :cond_15

    .line 962
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_4e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_15
    if-eqz p1, :cond_27

    .line 969
    :try_start_17
    new-instance v2, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 971
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_4e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 974
    :cond_27
    :try_start_27
    sget-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz p1, :cond_41

    const-string p1, "ActivityTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkActivityToBeDrawn cancels activity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_41
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppTransitionCancel(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    const-string p1, "checkActivityToBeDrawn (invisible or drawn already)"

    .line 976
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->abort(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Ljava/lang/String;)V

    .line 977
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_27 .. :try_end_4a} :catchall_4e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_4e
    move-exception p0

    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final convertFilter(I)Ljava/lang/String;
    .registers 3

    .line 1284
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mConvertInt2Str:Ljava/util/HashMap;

    add-int/lit16 v0, p1, 0xc8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_13

    const-string/jumbo p0, "unknown"

    .line 1290
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final convertReason(I)Ljava/lang/String;
    .registers 3

    .line 1260
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mConvertInt2Str:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_12

    .line 1263
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 1266
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final convertTRtype(I)Ljava/lang/String;
    .registers 3

    .line 1272
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mConvertInt2Str:Ljava/util/HashMap;

    add-int/lit8 v0, p1, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_12

    const-string p0, "UNKNOWN"

    .line 1278
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final done(ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Ljava/lang/String;J)V
    .registers 8

    .line 1035
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v0, :cond_32

    .line 1036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "done abort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " timestamp="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " info="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    :cond_32
    iget-object p3, p2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->stopTrace(ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    .line 1040
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->stopLaunchTrace(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    .line 1041
    iget-object p3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastHibernationStates:Landroid/util/ArrayMap;

    iget-object v0, p2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1042
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    if-eqz p1, :cond_5a

    .line 1044
    iget-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionInfo:Landroid/util/ArrayMap;

    iget-object p3, p2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    iget-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p3, p2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, p3}, Lcom/android/server/wm/ActivityTaskSupervisor;->stopWaitingForActivityVisible(Lcom/android/server/wm/ActivityRecord;)V

    .line 1046
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyActivityLaunchCancelled(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    goto :goto_6e

    .line 1048
    :cond_5a
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->isInterestingToLoggerAndObserver()Z

    move-result p1

    if-eqz p1, :cond_63

    .line 1049
    invoke-virtual {p0, p2, p4, p5}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyActivityLaunchFinished(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;J)V

    :cond_63
    if-eqz p3, :cond_6a

    .line 1051
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_6b

    :cond_6a
    const/4 p1, 0x0

    :goto_6b
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppTransitionFinished(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Z)V

    .line 1053
    :goto_6e
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final findAppCompatStateToLog(Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;I)V
    .registers 12

    .line 1600
    iget-object v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mVisibleActivities:Ljava/util/ArrayList;

    .line 1601
    iget v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mLastLoggedState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v2

    .line 1605
    :goto_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_42

    .line 1606
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    .line 1607
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getAppCompatState()I

    move-result v7

    if-ne v7, v1, :cond_1d

    .line 1610
    iput-object v6, p1, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mLastLoggedActivity:Lcom/android/server/wm/ActivityRecord;

    return-void

    :cond_1d
    if-ne v7, v2, :cond_36

    .line 1615
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Visible activity with NOT_VISIBLE App Compat state for package UID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ActivityTaskManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    :cond_36
    if-eq v5, v2, :cond_3d

    const/4 v8, 0x2

    if-ne v5, v8, :cond_3f

    if-eq v7, v8, :cond_3f

    :cond_3d
    move-object v3, v6

    move v5, v7

    :cond_3f
    :goto_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_42
    if-eqz v3, :cond_49

    if-eq v5, v2, :cond_49

    .line 1627
    invoke-virtual {p0, v3, v5, p2, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppCompatStateInternal(Lcom/android/server/wm/ActivityRecord;IILcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;)V

    :cond_49
    return-void
.end method

.method public final getActiveTransitionInfo(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
    .registers 5

    .line 628
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    .line 629
    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 630
    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->contains(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_19

    return-object v1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getAppHibernationManagerInternal()Lcom/android/server/apphibernation/AppHibernationManagerInternal;
    .registers 2

    .line 982
    invoke-static {}, Lcom/android/server/apphibernation/AppHibernationService;->isAppHibernationEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 983
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mAppHibernationManagerInternal:Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    if-nez v0, :cond_16

    .line 984
    const-class v0, Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    .line 985
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mAppHibernationManagerInternal:Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    .line 987
    :cond_16
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mAppHibernationManagerInternal:Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    return-object p0
.end method

.method public final getArtManagerInternal()Landroid/content/pm/dex/ArtManagerInternal;
    .registers 2

    .line 1708
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    if-nez v0, :cond_e

    .line 1712
    const-class v0, Landroid/content/pm/dex/ArtManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/dex/ArtManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    .line 1714
    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    return-object p0
.end method

.method public getLaunchObserverRegistry()Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;
    .registers 1

    .line 1742
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    return-object p0
.end method

.method public final isIncrementalLoading(Ljava/lang/String;I)Z
    .registers 4

    .line 1253
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    const/4 v0, 0x0

    .line 1254
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManagerInternal;->getIncrementalStatesInfo(Ljava/lang/String;II)Landroid/content/pm/IncrementalStatesInfo;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 1255
    invoke-virtual {p0}, Landroid/content/pm/IncrementalStatesInfo;->isLoading()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0
.end method

.method public final launchObserverNotifyActivityLaunchCancelled(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .registers 6

    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:launchObserverNotifyActivityLaunchCancelled"

    .line 1803
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1806
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    iget-wide v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionStartTimeNs:J

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onActivityLaunchCancelled(J)V

    .line 1808
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final launchObserverNotifyActivityLaunchFinished(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;J)V
    .registers 13

    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:launchObserverNotifyActivityLaunchFinished"

    .line 1816
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1819
    iget-object v3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    iget-wide v4, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionStartTimeNs:J

    iget-object p0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    move-wide v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onActivityLaunchFinished(JLandroid/content/ComponentName;J)V

    .line 1822
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final launchObserverNotifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .registers 7

    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:launchObserverNotifyActivityLaunched"

    .line 1775
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1778
    iget v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionType:I

    .line 1779
    invoke-static {v2}, Lcom/android/server/wm/ActivityMetricsLogger;->convertTransitionTypeToLaunchObserverTemperature(I)I

    move-result v2

    .line 1782
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    iget-wide v3, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionStartTimeNs:J

    iget-object p1, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, v3, v4, p1, v2}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onActivityLaunched(JLandroid/content/ComponentName;I)V

    .line 1785
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final launchObserverNotifyIntentFailed(J)V
    .registers 6

    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:launchObserverNotifyIntentFailed"

    .line 1762
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1765
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onIntentFailed(J)V

    .line 1767
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final launchObserverNotifyIntentStarted(Landroid/content/Intent;J)V
    .registers 7

    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:launchObserverNotifyIntentStarted"

    .line 1747
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1751
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onIntentStarted(Landroid/content/Intent;J)V

    .line 1753
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final launchObserverNotifyReportFullyDrawn(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;J)V
    .registers 8

    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:launchObserverNotifyReportFullyDrawn"

    .line 1792
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1794
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    iget-wide v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionStartTimeNs:J

    invoke-virtual {p0, v2, v3, p2, p3}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onReportFullyDrawn(JJ)V

    .line 1795
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public logAbortedBgActivityStart(Landroid/content/Intent;Lcom/android/server/wm/WindowProcessController;ILjava/lang/String;IZIIZZ)V
    .registers 23

    move-object v0, p2

    .line 1441
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1442
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1443
    new-instance v5, Landroid/metrics/LogMaker;

    const/16 v6, 0x5e9

    invoke-direct {v5, v6}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->setTimestamp(J)Landroid/metrics/LogMaker;

    .line 1445
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x5ea

    invoke-virtual {v5, v7, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v6, 0x5eb

    move-object/from16 v7, p4

    .line 1446
    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1448
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x5ec

    .line 1447
    invoke-virtual {v5, v7, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1450
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x5ed

    .line 1449
    invoke-virtual {v5, v7, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v6, 0x5ee

    .line 1451
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v6, 0x5ef

    .line 1453
    invoke-static/range {p8 .. p8}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1452
    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v6, 0x5f0

    .line 1455
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1454
    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v6, 0x5f7

    .line 1456
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    if-eqz p1, :cond_7f

    const/16 v6, 0x5f8

    .line 1458
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1459
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_7f

    const/16 v7, 0x5f6

    .line 1462
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    .line 1461
    invoke-virtual {v5, v7, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_7f
    if-eqz v0, :cond_12c

    const/16 v6, 0x5f9

    .line 1466
    iget-object v7, v0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v6, 0x5fa

    .line 1468
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getCurrentProcState()I

    move-result v7

    invoke-static {v7}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1467
    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v6, 0x5fb

    .line 1470
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasClientActivities()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1469
    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v6, 0x5fc

    .line 1472
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasForegroundServices()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1471
    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v6, 0x5fd

    .line 1474
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasForegroundActivities()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1473
    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v6, 0x5fe

    .line 1475
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasTopUi()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v6, 0x5ff

    .line 1477
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasOverlayUi()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1476
    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v6, 0x600

    .line 1479
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasPendingUiClean()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1478
    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1480
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getInteractionEventTime()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_100

    const/16 v6, 0x601

    .line 1482
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getInteractionEventTime()J

    move-result-wide v10

    sub-long v10, v1, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 1481
    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1484
    :cond_100
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getFgInteractionTime()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-eqz v6, :cond_116

    const/16 v6, 0x602

    .line 1486
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getFgInteractionTime()J

    move-result-wide v10

    sub-long/2addr v1, v10

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1485
    invoke-virtual {v5, v6, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1488
    :cond_116
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getWhenUnimportant()J

    move-result-wide v1

    cmp-long v1, v1, v8

    if-eqz v1, :cond_12c

    const/16 v1, 0x603

    .line 1490
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getWhenUnimportant()J

    move-result-wide v6

    sub-long/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1489
    invoke-virtual {v5, v1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_12c
    move-object v0, p0

    .line 1493
    iget-object v0, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v0, v5}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public logAppCompatState(Lcom/android/server/wm/ActivityRecord;)V
    .registers 11

    .line 1543
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1544
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getAppCompatState()I

    move-result v1

    .line 1546
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mPackageUidToCompatStateInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1547
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mPackageUidToCompatStateInfo:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;-><init>(Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo-IA;)V

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1549
    :cond_1d
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mPackageUidToCompatStateInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;

    .line 1550
    iget v3, v2, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mLastLoggedState:I

    .line 1551
    iget-object v4, v2, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mLastLoggedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v5, 0x1

    if-eq v1, v5, :cond_2e

    move v6, v5

    goto :goto_2f

    :cond_2e
    const/4 v6, 0x0

    .line 1554
    :goto_2f
    iget-object v7, v2, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mVisibleActivities:Ljava/util/ArrayList;

    if-eqz v6, :cond_3d

    .line 1555
    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3d

    .line 1556
    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    :cond_3d
    if-nez v6, :cond_4d

    .line 1558
    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1559
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4d

    .line 1561
    iget-object v8, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mPackageUidToCompatStateInfo:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_4d
    :goto_4d
    if-ne v1, v3, :cond_50

    return-void

    :cond_50
    if-nez v6, :cond_60

    .line 1571
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_60

    if-eqz v4, :cond_5c

    if-ne p1, v4, :cond_5f

    .line 1575
    :cond_5c
    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/ActivityMetricsLogger;->findAppCompatStateToLog(Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;I)V

    :cond_5f
    return-void

    :cond_60
    if-eqz v4, :cond_6a

    if-eq p1, v4, :cond_6a

    if-eq v3, v5, :cond_6a

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6a

    return-void

    .line 1587
    :cond_6a
    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppCompatStateInternal(Lcom/android/server/wm/ActivityRecord;IILcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;)V

    return-void
.end method

.method public final logAppCompatStateInternal(Lcom/android/server/wm/ActivityRecord;IILcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;)V
    .registers 5

    .line 1633
    iput p2, p4, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mLastLoggedState:I

    .line 1634
    iput-object p1, p4, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mLastLoggedActivity:Lcom/android/server/wm/ActivityRecord;

    const/16 p0, 0x182

    .line 1635
    invoke-static {p0, p3, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1637
    sget-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz p0, :cond_29

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    .line 1638
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p0, p1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, p1

    const-string p1, "APP_COMPAT_STATE_CHANGED(%s, %s)"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return-void
.end method

.method public final logAppDisplayed(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V
    .registers 7

    .line 1297
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_a

    const/4 v1, 0x7

    if-eq v0, v1, :cond_a

    return-void

    :cond_a
    const/16 v0, 0x7539

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 1301
    iget v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->userId:I

    .line 1302
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget v4, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->activityRecordIdHashCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x2

    iget-object v4, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    aput-object v4, v1, v2

    const/4 v2, 0x3

    iget v4, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    .line 1303
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    .line 1301
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1305
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 1306
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v0, "Displayed "

    .line 1307
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
    iget-object v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    .line 1309
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1310
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    int-to-long v0, v0

    invoke-static {v0, v1, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1311
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetprocessRecord(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    if-eqz p0, :cond_64

    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetprocessRecord(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result p0

    goto :goto_65

    :cond_64
    const/4 p0, -0x1

    .line 1316
    :goto_65
    iget-object v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    invoke-static {v0, p1, p0}, Lcom/android/server/am/Pageboost;->gatherLaunchTime(Ljava/lang/String;II)V

    return-void
.end method

.method public final logAppFullyDrawn(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V
    .registers 4

    .line 1421
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_a

    const/4 v1, 0x7

    if-eq v0, v1, :cond_a

    return-void

    .line 1425
    :cond_a
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 1426
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v0, "Fully drawn "

    .line 1427
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1428
    iget-object v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    .line 1429
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1430
    iget p1, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsFullyDrawnDelayMs:I

    int-to-long v0, p1

    invoke-static {v0, v1, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1431
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final logAppStartMemoryStateCapture(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V
    .registers 19

    .line 1497
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetprocessRecord(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    if-nez v0, :cond_12

    .line 1498
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v0, :cond_11

    const-string v0, "logAppStartMemoryStateCapture processRecord null"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return-void

    .line 1502
    :cond_12
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetprocessRecord(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v0

    .line 1503
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetapplicationInfo(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1504
    invoke-static {v4, v0}, Lcom/android/server/am/MemoryStatUtil;->readMemoryStatFromFilesystem(II)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    move-result-object v0

    if-nez v0, :cond_30

    .line 1506
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v0, :cond_2f

    const-string v0, "logAppStartMemoryStateCapture memoryStat null"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    return-void

    :cond_30
    const/16 v3, 0x37

    .line 1510
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetprocessName(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v1, p1

    iget-object v6, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    iget-wide v7, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgfault:J

    iget-wide v9, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgmajfault:J

    iget-wide v11, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->rssInBytes:J

    iget-wide v13, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->cacheInBytes:J

    iget-wide v0, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->swapInBytes:J

    move-wide v15, v0

    invoke-static/range {v3 .. v16}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;JJJJJ)V

    return-void
.end method

.method public final logAppTransition(JJILcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;Z)V
    .registers 40

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    .line 1103
    new-instance v2, Landroid/metrics/LogMaker;

    const/16 v3, 0x2f9

    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1104
    iget-object v3, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 1105
    iget v3, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 1106
    iget-object v3, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    const/16 v4, 0x367

    invoke-virtual {v2, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1107
    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetapplicationInfo(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v10

    .line 1108
    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetlaunchedActivityLaunchedFromPackage(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_33

    const/16 v3, 0x388

    .line 1109
    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetlaunchedActivityLaunchedFromPackage(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1112
    :cond_33
    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetlaunchedActivityLaunchToken(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3e

    const/16 v4, 0x387

    .line 1114
    invoke-virtual {v2, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_3e
    const/16 v4, 0x389

    .line 1116
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v4, 0x145

    .line 1117
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v6, p3

    .line 1118
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 1117
    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v4, 0x13f

    .line 1119
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1120
    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetreason(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 1121
    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetstartingWindowDelayMs(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_7c

    const/16 v4, 0x141

    .line 1122
    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetstartingWindowDelayMs(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v6

    .line 1123
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1122
    invoke-virtual {v2, v4, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1125
    :cond_7c
    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetbindApplicationDelayMs(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v4

    if-eq v4, v5, :cond_8f

    const/16 v4, 0x3b1

    .line 1126
    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetbindApplicationDelayMs(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v5

    .line 1127
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1126
    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_8f
    const/16 v4, 0x142

    .line 1129
    iget v5, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1131
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityMetricsLogger;->getArtManagerInternal()Landroid/content/pm/dex/ArtManagerInternal;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->getPackageOptimizationInfo(Landroid/content/pm/dex/ArtManagerInternal;)Landroid/content/pm/dex/PackageOptimizationInfo;

    move-result-object v29

    const/16 v4, 0x529

    .line 1133
    invoke-virtual/range {v29 .. v29}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationReason()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1132
    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v4, 0x528

    .line 1135
    invoke-virtual/range {v29 .. v29}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationFilter()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1134
    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1136
    iget-object v4, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v4, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1140
    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetapplicationInfo(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v2

    const/16 v30, 0x1

    const/16 v31, 0x0

    if-eqz v2, :cond_e2

    .line 1141
    invoke-static {v2}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e2

    .line 1143
    iget-object v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->userId:I

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wm/ActivityMetricsLogger;->isIncrementalLoading(Ljava/lang/String;I)Z

    move-result v2

    move/from16 v25, v2

    move/from16 v24, v30

    goto :goto_e6

    :cond_e2
    move/from16 v24, v31

    move/from16 v25, v24

    :goto_e6
    const/16 v4, 0x30

    .line 1145
    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetapplicationInfo(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    iget v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    iget-boolean v7, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->relaunched:Z

    .line 1149
    invoke-static {v2, v7}, Lcom/android/server/wm/ActivityMetricsLogger;->getAppStartTransitionType(IZ)I

    move-result v7

    iget-object v8, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetlaunchedActivityLaunchedFromPackage(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v9

    const-wide/16 v11, 0x0

    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetreason(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v13

    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetstartingWindowDelayMs(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v15

    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetbindApplicationDelayMs(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v16

    iget v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    move/from16 v17, v2

    .line 1160
    invoke-virtual/range {v29 .. v29}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationReason()I

    move-result v19

    .line 1161
    invoke-virtual/range {v29 .. v29}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationFilter()I

    move-result v20

    iget v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->sourceType:I

    move/from16 v21, v2

    iget v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->sourceEventDelayMs:I

    move/from16 v22, v2

    iget-object v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    .line 1167
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v26

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move/from16 p4, v5

    move-wide/from16 v4, p1

    .line 1168
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v27

    move/from16 v14, p5

    move-object/from16 v18, v3

    move/from16 v23, p7

    move/from16 v5, p4

    const/16 v4, 0x30

    .line 1145
    invoke-static/range {v4 .. v28}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZJIIIIILjava/lang/String;IIIIZZZIJ)V

    .line 1170
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-eqz v2, :cond_17a

    new-array v2, v3, [Ljava/lang/Object;

    .line 1171
    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetapplicationInfo(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1172
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v31

    iget-object v7, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    aput-object v7, v2, v30

    iget v7, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    iget-boolean v8, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->relaunched:Z

    .line 1174
    invoke-static {v7, v8}, Lcom/android/server/wm/ActivityMetricsLogger;->getAppStartTransitionType(IZ)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v5

    iget-object v7, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    aput-object v7, v2, v4

    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetlaunchedActivityLaunchedFromPackage(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    const-string v7, "APP_START_OCCURRED(%s, %s, %s, %s, %s)"

    .line 1171
    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "ActivityTaskManager"

    invoke-static {v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17a
    const v2, 0x13d684

    const/16 v7, 0x9

    new-array v7, v7, [Ljava/lang/Object;

    .line 1181
    iget-object v8, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    aput-object v8, v7, v31

    iget-object v8, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    aput-object v8, v7, v30

    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetreason(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v8

    .line 1184
    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivityMetricsLogger;->convertReason(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    .line 1185
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetstartingWindowDelayMs(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v4

    .line 1186
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v6

    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetbindApplicationDelayMs(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v4

    .line 1187
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v3

    const/4 v3, 0x6

    iget v4, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    .line 1188
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v3

    const/4 v3, 0x7

    iget v4, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    .line 1189
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityMetricsLogger;->convertTRtype(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    const/16 v3, 0x8

    .line 1190
    invoke-virtual/range {v29 .. v29}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationFilter()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityMetricsLogger;->convertFilter(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    .line 1181
    invoke-static {v2, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    .line 1198
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    .line 1199
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1200
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetreason(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityMetricsLogger;->convertReason(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1202
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetstartingWindowDelayMs(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1203
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetbindApplicationDelayMs(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1204
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1205
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityMetricsLogger;->convertTRtype(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1206
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v29 .. v29}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationFilter()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->convertFilter(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1208
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/PerfLog;->d(ILjava/lang/String;)V

    .line 1214
    iget-object v2, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-string v3, "PkgPredictorService"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/samsung/android/ipm/SecIpmManager;

    if-eqz v3, :cond_267

    const-string v2, "[secipm]"

    const-string v4, "mSecIpmManager report to nap"

    .line 1216
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetapplicationInfo(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    iget v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    int-to-long v7, v2

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/ipm/SecIpmManager;->reportToNAP(ILjava/lang/String;Ljava/lang/String;J)V

    .line 1224
    :cond_267
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getSlotCount()I

    move-result v2

    if-lez v2, :cond_274

    .line 1225
    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetprocessName(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/PerProcessNandswap;->notifyEntryAppToPPR(Ljava/lang/String;)V

    .line 1230
    :cond_274
    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->isKPMEnabled()Z

    move-result v2

    if-eqz v2, :cond_29d

    .line 1231
    iget-object v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_29d

    iget-object v3, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mKillPolicyManager:Lcom/android/server/am/KillPolicyManager;

    invoke-virtual {v3, v2}, Lcom/android/server/am/KillPolicyManager;->isSkipPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29d

    iget-object v2, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mKillPolicyManager:Lcom/android/server/am/KillPolicyManager;

    iget-object v3, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/am/KillPolicyManager;->isKpmSafe(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29d

    .line 1232
    iget-object v2, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mKillPolicyManager:Lcom/android/server/am/KillPolicyManager;

    iget-object v3, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetprocessName(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/KillPolicyManager;->calculateKpmStats(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1236
    :cond_29d
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SYSPERF_SLUGGISH_BIGDATA_REPORT:Z

    if-eqz v2, :cond_2e5

    .line 1237
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.intent.action.SG_ENTRY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.sec.android.sdhms"

    .line 1238
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1239
    iget-object v3, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    const-string/jumbo v4, "pkg"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1240
    iget-object v3, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    const-string v4, "cname"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1241
    iget v3, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    int-to-long v3, v3

    const-string v5, "ltime"

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1242
    iget v3, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    const-string/jumbo v4, "type"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1243
    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->-$$Nest$fgetreason(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->convertReason(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "reason"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1244
    iget-object v3, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1249
    :cond_2e5
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppStartMemoryStateCapture(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V

    return-void
.end method

.method public final logAppTransitionCancel(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .registers 8

    .line 1057
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionType:I

    .line 1058
    iget-object v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1059
    new-instance v2, Landroid/metrics/LogMaker;

    const/16 v3, 0x478

    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1060
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 1061
    invoke-virtual {v2, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 1062
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const/16 v4, 0x367

    invoke-virtual {v2, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1063
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1064
    iget-object p0, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mRelaunched:Z

    .line 1068
    invoke-static {v0, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->getAppStartTransitionType(IZ)I

    move-result v3

    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const/16 v5, 0x31

    .line 1064
    invoke-static {v5, p0, v2, v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;)V

    .line 1070
    sget-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz p0, :cond_70

    const/4 p0, 0x4

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1071
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1072
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p0, v2

    const/4 v2, 0x1

    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    aput-object v3, p0, v2

    const/4 v2, 0x2

    iget-boolean p1, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mRelaunched:Z

    .line 1074
    invoke-static {v0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->getAppStartTransitionType(IZ)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v2

    const/4 p1, 0x3

    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aput-object v0, p0, p1

    const-string p1, "APP_START_CANCELED(%s, %s, %s, %s)"

    .line 1071
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    return-void
.end method

.method public final logAppTransitionFinished(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Z)V
    .registers 16

    .line 1080
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logging finished transition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    :cond_1a
    new-instance v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot-IA;)V

    .line 1085
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->isInterestingToLoggerAndObserver()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1086
    iget-wide v4, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionStartTimeNs:J

    .line 1087
    iget-wide v6, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionDeviceUptimeMs:J

    .line 1088
    iget v8, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mCurrentTransitionDelayMs:I

    .line 1089
    iget-object v11, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLoggerHandler:Landroid/os/Handler;

    new-instance v12, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda4;

    move-object v2, v12

    move-object v3, p0

    move-object v9, v0

    move v10, p2

    invoke-direct/range {v2 .. v10}, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;JJILcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;Z)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1092
    :cond_3a
    iget-object p2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLoggerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1093
    iget-object p0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingFullyDrawn:Ljava/lang/Runnable;

    if-eqz p0, :cond_4b

    .line 1094
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 1097
    :cond_4b
    iget-object p0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object v1, p0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    return-void
.end method

.method public logAppTransitionReportedDrawn(Lcom/android/server/wm/ActivityRecord;Z)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1339
    iget-object v3, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionInfo:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    const/4 v4, 0x0

    if-nez v3, :cond_12

    return-object v4

    .line 1343
    :cond_12
    iget-boolean v5, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mIsDrawn:Z

    if-nez v5, :cond_22

    iget-object v5, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingFullyDrawn:Ljava/lang/Runnable;

    if-nez v5, :cond_22

    .line 1346
    new-instance v5, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    iput-object v5, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingFullyDrawn:Ljava/lang/Runnable;

    return-object v4

    .line 1353
    :cond_22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    .line 1354
    iget-object v7, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingFullyDrawn:Ljava/lang/Runnable;

    if-eqz v7, :cond_2e

    .line 1355
    iget v7, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mWindowsDrawnDelayMs:I

    int-to-long v7, v7

    goto :goto_38

    .line 1356
    :cond_2e
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v8, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionStartTimeNs:J

    sub-long v8, v5, v8

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    .line 1357
    :goto_38
    new-instance v15, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    long-to-int v9, v7

    invoke-direct {v15, v3, v1, v9, v4}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot-IA;)V

    .line 1359
    iget-object v4, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mLoggerHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;

    invoke-direct {v9, v0, v15}, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V

    invoke-virtual {v4, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1360
    iget-object v4, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionInfo:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1362
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->isInterestingToLoggerAndObserver()Z

    move-result v4

    if-nez v4, :cond_54

    return-object v15

    .line 1369
    :cond_54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ActivityManager:ReportingFullyDrawn "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v9, v9, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v13, 0x40

    invoke-static {v13, v14, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1372
    new-instance v4, Landroid/metrics/LogMaker;

    const/16 v9, 0x442

    invoke-direct {v4, v9}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1373
    iget-object v9, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v9}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    const/16 v9, 0x367

    .line 1374
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v9, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v1, 0x443

    .line 1375
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v1, v9}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    if-eqz v2, :cond_91

    const/16 v1, 0xd

    goto :goto_93

    :cond_91
    const/16 v1, 0xc

    .line 1376
    :goto_93
    invoke-virtual {v4, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    const/16 v1, 0x144

    .line 1380
    iget-boolean v9, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessRunning:Z

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1379
    invoke-virtual {v4, v1, v9}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1381
    iget-object v1, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v4}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1383
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityMetricsLogger;->getArtManagerInternal()Landroid/content/pm/dex/ArtManagerInternal;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->getPackageOptimizationInfo(Landroid/content/pm/dex/ArtManagerInternal;)Landroid/content/pm/dex/PackageOptimizationInfo;

    move-result-object v1

    .line 1386
    iget-object v4, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v4, :cond_d1

    .line 1387
    invoke-static {v4}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d1

    .line 1389
    iget-object v4, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v10, v4, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v4, v4, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, v10, v4}, Lcom/android/server/wm/ActivityMetricsLogger;->isIncrementalLoading(Ljava/lang/String;I)Z

    move-result v4

    move/from16 v22, v4

    move/from16 v21, v9

    goto :goto_d5

    :cond_d1
    move/from16 v21, v10

    move/from16 v22, v21

    .line 1392
    :goto_d5
    iget-object v10, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v11, v10, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v12, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v10, v10, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_e3

    move v2, v9

    goto :goto_e4

    :cond_e3
    const/4 v2, 0x2

    .line 1398
    :goto_e4
    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-boolean v9, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessRunning:Z

    .line 1402
    invoke-virtual {v1}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationReason()I

    move-result v17

    .line 1403
    invoke-virtual {v1}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationFilter()I

    move-result v18

    iget v1, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mSourceType:I

    iget v4, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mSourceEventDelayMs:I

    iget-object v13, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v13, v13, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1408
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v23

    move v14, v9

    const/16 v9, 0x32

    move-object v13, v10

    move v10, v12

    move-object/from16 v16, v11

    move-object v11, v13

    move v12, v2

    const-wide/16 v24, 0x40

    move-object/from16 v13, v16

    move-object v2, v15

    move-wide v15, v7

    move/from16 v19, v1

    move/from16 v20, v4

    .line 1392
    invoke-static/range {v9 .. v23}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;ZJIIIIZZI)V

    .line 1412
    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V

    .line 1415
    invoke-virtual {v0, v3, v5, v6}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyReportFullyDrawn(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;J)V

    return-object v2
.end method

.method public logCameraCompatControlAppearedEventReported(II)V
    .registers 4

    if-eqz p1, :cond_26

    const/4 v0, 0x1

    if-eq p1, v0, :cond_23

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1f

    .line 1663
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected state in logCameraCompatControlAppearedEventReported: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 1655
    :cond_1f
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->logCameraCompatControlEventReported(II)V

    goto :goto_26

    .line 1650
    :cond_23
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->logCameraCompatControlEventReported(II)V

    :cond_26
    :goto_26
    return-void
.end method

.method public logCameraCompatControlClickedEventReported(II)V
    .registers 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_29

    const/4 v0, 0x2

    const/4 v1, 0x3

    if-eq p1, v0, :cond_25

    if-eq p1, v1, :cond_20

    .line 1692
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected state in logCameraCompatControlAppearedEventReported: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    :cond_20
    const/4 p1, 0x5

    .line 1687
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->logCameraCompatControlEventReported(II)V

    goto :goto_2d

    .line 1677
    :cond_25
    invoke-virtual {p0, v1, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->logCameraCompatControlEventReported(II)V

    goto :goto_2d

    :cond_29
    const/4 p1, 0x4

    .line 1682
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->logCameraCompatControlEventReported(II)V

    :goto_2d
    return-void
.end method

.method public final logCameraCompatControlEventReported(II)V
    .registers 4

    const/16 p0, 0x19b

    .line 1699
    invoke-static {p0, p2, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1701
    sget-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz p0, :cond_25

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1702
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, v0

    const/4 p2, 0x1

    .line 1703
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, p2

    const-string p1, "CAMERA_COMPAT_CONTROL_EVENT_REPORTED(%s, %s)"

    .line 1702
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return-void
.end method

.method public logWindowState()V
    .registers 9

    .line 587
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 588
    iget v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_29

    .line 592
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLoggerHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda1;-><init>()V

    sget-object v5, Lcom/android/server/wm/ActivityMetricsLogger;->TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

    iget v6, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    aget-object v5, v5, v6

    iget-wide v6, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastLogTimeSecs:J

    sub-long v6, v0, v6

    long-to-int v6, v6

    .line 594
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 592
    invoke-static {v4, p0, v5, v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 596
    :cond_29
    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastLogTimeSecs:J

    .line 598
    iput v3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    .line 599
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_38

    return-void

    .line 601
    :cond_38
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeAssistant()Z

    move-result v1

    if-eqz v1, :cond_42

    const/4 v0, 0x3

    .line 602
    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    return-void

    .line 606
    :cond_42
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_78

    const/4 v2, 0x5

    if-eq v1, v2, :cond_74

    const/4 v2, 0x6

    if-eq v1, v2, :cond_70

    if-eqz v1, :cond_7b

    .line 619
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown windowing mode for task="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " windowingMode="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    :cond_70
    const/4 v0, 0x4

    .line 615
    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    goto :goto_7b

    :cond_74
    const/4 v0, 0x2

    .line 612
    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    goto :goto_7b

    :cond_78
    const/4 v0, 0x0

    .line 609
    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    :cond_7b
    :goto_7b
    return-void
.end method

.method public final logWindowState(Ljava/lang/String;I)V
    .registers 3

    .line 583
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    return-void
.end method

.method public notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;IZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V
    .registers 19

    move-object v0, p0

    move-object v8, p1

    move-object/from16 v9, p4

    if-nez v9, :cond_c

    const-string v1, "nothing launched"

    .line 704
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->abort(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;Ljava/lang/String;)V

    return-void

    .line 708
    :cond_c
    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v1, :cond_11

    goto :goto_21

    .line 710
    :cond_11
    iget-object v1, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v9, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v3, v9, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    :goto_21
    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v1, :cond_27

    move v4, v11

    goto :goto_28

    :cond_27
    move v4, v10

    :goto_28
    if-eqz v4, :cond_33

    .line 719
    invoke-virtual {v1, v9}, Lcom/android/server/wm/WindowProcessController;->hasStartedActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-nez v1, :cond_31

    goto :goto_33

    :cond_31
    move v5, v10

    goto :goto_34

    :cond_33
    :goto_33
    move v5, v11

    .line 721
    :goto_34
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->-$$Nest$fgetmAssociatedTransitionInfo(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object v1

    .line 722
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    const-string v12, "ActivityTaskManager"

    if-eqz v2, :cond_7e

    .line 723
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyActivityLaunched resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v7, p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " launchedActivity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " processRunning="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " processSwitch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " newActivityCreated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p3

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81

    :cond_7e
    move v7, p2

    move/from16 v6, p3

    .line 729
    :goto_81
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->isReportedDrawn()Z

    move-result v2

    if-eqz v2, :cond_93

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_93

    const-string v1, "launched activity already visible"

    .line 731
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->abort(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;Ljava/lang/String;)V

    return-void

    :cond_93
    if-eqz v1, :cond_cc

    .line 737
    invoke-virtual {v1, v9}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->canCoalesce(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 738
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v2, :cond_a4

    const-string v2, "notifyActivityLaunched consecutive launch"

    invoke-static {v12, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_a4
    iget-object v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v3, v9, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 741
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v11

    if-eqz v2, :cond_b4

    .line 744
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->stopLaunchTrace(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    .line 747
    :cond_b4
    iget-object v3, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionInfo:Landroid/util/ArrayMap;

    iget-object v4, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    invoke-virtual {v1, v9}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->setLatestLaunchedActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 751
    iget-object v3, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionInfo:Landroid/util/ArrayMap;

    invoke-virtual {v3, v9, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_c8

    .line 754
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->startLaunchTrace(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    .line 756
    :cond_c8
    invoke-virtual {p0, v9}, Lcom/android/server/wm/ActivityMetricsLogger;->scheduleCheckActivityToBeDrawnIfSleeping(Lcom/android/server/wm/ActivityRecord;)V

    return-void

    :cond_cc
    move-object/from16 v1, p4

    move-object v2, p1

    move-object/from16 v3, p5

    move/from16 v6, p3

    move v7, p2

    .line 760
    invoke-static/range {v1 .. v7}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->create(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;Landroid/app/ActivityOptions;ZZZI)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object v1

    if-nez v1, :cond_e1

    const-string/jumbo v1, "unrecognized launch"

    .line 763
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->abort(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;Ljava/lang/String;)V

    return-void

    .line 767
    :cond_e1
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v2, :cond_ea

    const-string v2, "notifyActivityLaunched successful"

    invoke-static {v12, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :cond_ea
    iget-object v2, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    iget-object v2, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionInfo:Landroid/util/ArrayMap;

    invoke-virtual {v2, v9, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->startLaunchTrace(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    .line 772
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->isInterestingToLoggerAndObserver()Z

    move-result v2

    if-eqz v2, :cond_11e

    .line 774
    iget-object v2, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-eqz v2, :cond_11a

    .line 775
    iget v3, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionType:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_117

    const/16 v4, 0x8

    if-eq v3, v4, :cond_117

    const/16 v4, 0x9

    if-eq v3, v4, :cond_113

    goto :goto_11a

    .line 781
    :cond_113
    invoke-virtual {v2, v9, v11}, Lcom/android/server/wm/ActivityManagerPerformance;->onAppLaunch(Lcom/android/server/wm/ActivityRecord;Z)V

    goto :goto_11a

    .line 778
    :cond_117
    invoke-virtual {v2, v9, v10}, Lcom/android/server/wm/ActivityManagerPerformance;->onAppLaunch(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 786
    :cond_11a
    :goto_11a
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    goto :goto_123

    .line 789
    :cond_11e
    iget-wide v1, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionStartTimeNs:J

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyIntentFailed(J)V

    .line 791
    :goto_123
    invoke-virtual {p0, v9}, Lcom/android/server/wm/ActivityMetricsLogger;->scheduleCheckActivityToBeDrawnIfSleeping(Lcom/android/server/wm/ActivityRecord;)V

    .line 797
    iget-object v1, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    :goto_12e
    if-ltz v1, :cond_14c

    .line 798
    iget-object v2, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 799
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mIsDrawn:Z

    if-nez v3, :cond_142

    iget-object v3, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v3, :cond_149

    .line 800
    :cond_142
    iget-object v2, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/wm/ActivityMetricsLogger;->scheduleCheckActivityToBeDrawn(Lcom/android/server/wm/ActivityRecord;J)V

    :cond_149
    add-int/lit8 v1, v1, -0x1

    goto :goto_12e

    :cond_14c
    return-void
.end method

.method public notifyActivityLaunching(Landroid/content/Intent;)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 644
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    move-result-object p0

    return-object p0
.end method

.method public notifyActivityLaunching(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .registers 10

    .line 655
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq p3, v2, :cond_32

    .line 660
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_10
    if-ltz v2, :cond_32

    .line 661
    iget-object v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    if-eqz p2, :cond_24

    .line 662
    invoke-virtual {v4, p2}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->contains(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_24

    move-object v3, v4

    goto :goto_32

    :cond_24
    if-nez v3, :cond_2f

    .line 666
    iget-object v5, v4, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v5

    if-ne p3, v5, :cond_2f

    move-object v3, v4

    :cond_2f
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 673
    :cond_32
    :goto_32
    sget-boolean p2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz p2, :cond_54

    .line 674
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "notifyActivityLaunching intent="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " existingInfo="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ActivityTaskManager"

    invoke-static {p3, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    if-nez v3, :cond_62

    .line 679
    new-instance p2, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    invoke-direct {p2}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;-><init>()V

    .line 680
    invoke-static {p2, v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->-$$Nest$fputmCurrentTransitionStartTimeNs(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;J)V

    .line 682
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyIntentStarted(Landroid/content/Intent;J)V

    return-object p2

    .line 685
    :cond_62
    iget-object p0, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    invoke-static {p0, v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->-$$Nest$fputmCurrentTransitionStartTimeNs(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;J)V

    .line 686
    iget-object p0, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    return-object p0
.end method

.method public notifyActivityRelaunched(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 891
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->getActiveTransitionInfo(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object p0

    if-eqz p0, :cond_9

    const/4 p1, 0x1

    .line 893
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mRelaunched:Z

    :cond_9
    return-void
.end method

.method public notifyActivityRemoved(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 899
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionInfo:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->getActiveTransitionInfo(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string/jumbo v1, "removed"

    .line 902
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->abort(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Ljava/lang/String;)V

    .line 905
    :cond_11
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 906
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mPackageUidToCompatStateInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;

    if-nez p0, :cond_22

    return-void

    .line 911
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 912
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mLastLoggedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_2e

    const/4 p1, 0x0

    .line 913
    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mLastLoggedActivity:Lcom/android/server/wm/ActivityRecord;

    :cond_2e
    return-void
.end method

.method public notifyBeforePackageUnstopped(Ljava/lang/String;)V
    .registers 3

    .line 995
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->getAppHibernationManagerInternal()Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 997
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastHibernationStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/apphibernation/AppHibernationManagerInternal;->isHibernatingGlobally(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    return-void
.end method

.method public notifyBindApplication(Landroid/content/pm/ApplicationInfo;)V
    .registers 5

    .line 1007
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_23

    .line 1008
    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 1011
    iget-object v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-ne v2, p1, :cond_20

    .line 1012
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->calculateCurrentDelay()I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mBindApplicationDelayMs:I

    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_23
    return-void
.end method

.method public notifyStartingWindowDrawn(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 848
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->getActiveTransitionInfo(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object p0

    if-eqz p0, :cond_32

    .line 849
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLoggedStartingWindowDrawn:Z

    if-eqz v0, :cond_b

    goto :goto_32

    .line 852
    :cond_b
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyStartingWindowDrawn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    const/4 p1, 0x1

    .line 853
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLoggedStartingWindowDrawn:Z

    .line 854
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->calculateDelay(J)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mStartingWindowDelayMs:I

    :cond_32
    :goto_32
    return-void
.end method

.method public notifyTransitionStarting(Landroid/util/ArrayMap;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 864
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyTransitionStarting "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :cond_1a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    .line 867
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v10, 0x1

    sub-int/2addr v0, v10

    :goto_24
    if-ltz v0, :cond_86

    .line 868
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 869
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_33

    goto :goto_38

    :cond_33
    const/4 v3, 0x0

    .line 871
    invoke-virtual {v2, v3, v10}, Lcom/android/server/wm/WindowContainer;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 872
    :goto_38
    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->getActiveTransitionInfo(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object v4

    if-eqz v4, :cond_83

    .line 873
    iget-boolean v3, v4, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLoggedTransitionStarting:Z

    if-eqz v3, :cond_43

    goto :goto_83

    .line 877
    :cond_43
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v3, :cond_63

    .line 878
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyTransitionStarting activity="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " info="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_63
    invoke-virtual {v4, v8, v9}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->calculateDelay(J)I

    move-result v2

    iput v2, v4, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mCurrentTransitionDelayMs:I

    .line 882
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v4, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mReason:I

    .line 883
    iput-boolean v10, v4, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLoggedTransitionStarting:Z

    .line 884
    iget-boolean v2, v4, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mIsDrawn:Z

    if-eqz v2, :cond_83

    const/4 v3, 0x0

    const-string v5, "notifyTransitionStarting drawn"

    move-object v2, p0

    move-wide v6, v8

    .line 885
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityMetricsLogger;->done(ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Ljava/lang/String;J)V

    :cond_83
    :goto_83
    add-int/lit8 v0, v0, -0x1

    goto :goto_24

    :cond_86
    return-void
.end method

.method public notifyVisibilityChanged(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 923
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->getActiveTransitionInfo(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 927
    :cond_7
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v0, :cond_41

    .line 928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyVisibilityChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " finishing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    .line 928
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_41
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v0

    if-eqz v0, :cond_52

    return-void

    .line 937
    :cond_52
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_5a

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_5f

    :cond_5a
    const-wide/16 v0, 0x0

    .line 940
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->scheduleCheckActivityToBeDrawn(Lcom/android/server/wm/ActivityRecord;J)V

    :cond_5f
    return-void
.end method

.method public notifyWindowsDrawn(Lcom/android/server/wm/ActivityRecord;J)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;
    .registers 12

    .line 823
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyWindowsDrawn "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->getActiveTransitionInfo(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_58

    .line 826
    iget-boolean v3, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mIsDrawn:Z

    if-eqz v3, :cond_26

    goto :goto_58

    .line 831
    :cond_26
    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->calculateDelay(J)I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mWindowsDrawnDelayMs:I

    const/4 v1, 0x1

    .line 832
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mIsDrawn:Z

    .line 833
    new-instance v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    invoke-direct {v1, v0, v2}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot-IA;)V

    .line 834
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLoggedTransitionStarting:Z

    if-eqz v2, :cond_41

    const/4 v3, 0x0

    const-string v5, "notifyWindowsDrawn"

    move-object v2, p0

    move-object v4, v0

    move-wide v6, p2

    .line 835
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityMetricsLogger;->done(ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Ljava/lang/String;J)V

    .line 837
    :cond_41
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->isRecentsAnimationTarget(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_57

    .line 838
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object p0

    iget p1, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mSourceEventDelayMs:I

    iget p2, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mWindowsDrawnDelayMs:I

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentsAnimationController;->logRecentsAnimationStartTime(I)V

    :cond_57
    return-object v1

    .line 827
    :cond_58
    :goto_58
    sget-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz p0, :cond_70

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "notifyWindowsDrawn not pending drawn "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    return-object v2
.end method

.method public final scheduleCheckActivityToBeDrawn(Lcom/android/server/wm/ActivityRecord;J)V
    .registers 7

    .line 947
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda6;-><init>()V

    .line 948
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 947
    invoke-static {v1, p0, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final scheduleCheckActivityToBeDrawnIfSleeping(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 806
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v0

    if-eqz v0, :cond_d

    const-wide/16 v0, 0xbb8

    .line 811
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->scheduleCheckActivityToBeDrawn(Lcom/android/server/wm/ActivityRecord;J)V

    :cond_d
    return-void
.end method

.method public final startLaunchTrace(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .registers 6

    .line 1719
    iget-object p0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->notifyAppLaunchStarted(Ljava/lang/String;)V

    .line 1720
    sget-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz p0, :cond_22

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "startLaunchTrace "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    :cond_22
    iget-object p0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mTraceName:Ljava/lang/String;

    if-nez p0, :cond_29

    return-void

    .line 1724
    :cond_29
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "launching: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchTraceName:Ljava/lang/String;

    const-wide/16 v0, 0x40

    .line 1725
    iget-wide v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionStartTimeNs:J

    long-to-int p1, v2

    invoke-static {v0, v1, p0, p1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    return-void
.end method

.method public final stopLaunchTrace(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .registers 6

    .line 1731
    iget-object p0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->notifyAppLaunchFinished(Ljava/lang/String;)V

    .line 1732
    sget-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz p0, :cond_22

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "stopLaunchTrace "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    :cond_22
    iget-object p0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchTraceName:Ljava/lang/String;

    if-nez p0, :cond_27

    return-void

    :cond_27
    const-wide/16 v0, 0x40

    .line 1736
    iget-wide v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionStartTimeNs:J

    long-to-int v2, v2

    invoke-static {v0, v1, p0, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    const/4 p0, 0x0

    .line 1738
    iput-object p0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchTraceName:Ljava/lang/String;

    return-void
.end method
