.class public final Lcom/android/server/app/GameServiceProviderInstanceImpl;
.super Ljava/lang/Object;
.source "GameServiceProviderInstanceImpl.java"

# interfaces
.implements Lcom/android/server/app/GameServiceProviderInstance;


# static fields
.field public static final CREATE_GAME_SESSION_TIMEOUT_MS:I = 0x2710

.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "GameServiceProviderInstance"


# instance fields
.field public final mActivityManager:Landroid/app/IActivityManager;

.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field public final mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mContext:Landroid/content/Context;

.field public final mGameServiceConnector:Lcom/android/internal/infra/ServiceConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/infra/ServiceConnector<",
            "Landroid/service/games/IGameService;",
            ">;"
        }
    .end annotation
.end field

.field public final mGameServiceController:Landroid/service/games/IGameServiceController;

.field public final mGameServiceLifecycleCallbacks:Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks<",
            "Landroid/service/games/IGameService;",
            ">;"
        }
    .end annotation
.end field

.field public final mGameSessionController:Landroid/service/games/IGameSessionController;

.field public final mGameSessionServiceConnector:Lcom/android/internal/infra/ServiceConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/infra/ServiceConnector<",
            "Landroid/service/games/IGameSessionService;",
            ">;"
        }
    .end annotation
.end field

.field public final mGameSessionServiceLifecycleCallbacks:Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks<",
            "Landroid/service/games/IGameSessionService;",
            ">;"
        }
    .end annotation
.end field

.field public final mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/app/GameSessionRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mGameTaskInfoProvider:Lcom/android/server/app/GameTaskInfoProvider;

.field public volatile mIsRunning:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mPackageNameToProcessCountMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mPidToPackageMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mProcessObserver:Landroid/app/IProcessObserver;

.field public final mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

.field public final mTaskStackListener:Landroid/app/TaskStackListener;

.field public final mTaskSystemBarsVisibilityListener:Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;

.field public final mUserHandle:Landroid/os/UserHandle;

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field public final mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$1C0CJwZV84ZNaw4OJbOVwpN279k(Lcom/android/server/app/GameTaskInfo;Landroid/service/games/IGameService;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->lambda$gameTaskStartedLocked$1(Lcom/android/server/app/GameTaskInfo;Landroid/service/games/IGameService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$475ZuF2CizfzaYT4oTaY6VimgG0(Lcom/android/server/app/GameServiceProviderInstanceImpl;ILcom/android/server/app/GameSessionRecord;Landroid/service/games/GameSessionViewHostConfiguration;Lcom/android/internal/infra/AndroidFuture;Landroid/service/games/IGameSessionService;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->lambda$createGameSessionLocked$3(ILcom/android/server/app/GameSessionRecord;Landroid/service/games/GameSessionViewHostConfiguration;Lcom/android/internal/infra/AndroidFuture;Landroid/service/games/IGameSessionService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T4B-KHB6KrYxVyjX2LYnCUR1IuE(Lcom/android/server/app/GameServiceProviderInstanceImpl;Lcom/android/server/app/GameSessionRecord;ILandroid/service/games/CreateGameSessionResult;Ljava/lang/Throwable;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->lambda$createGameSessionLocked$2(Lcom/android/server/app/GameSessionRecord;ILandroid/service/games/CreateGameSessionResult;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a_V3vRos4_WB0TKLR0mfmsSrNew(Lcom/android/server/app/GameServiceProviderInstanceImpl;Ljava/lang/Void;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->lambda$stopLocked$0(Ljava/lang/Void;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g7vm8ldv3rVfjCZilufknJFJCds(Lcom/android/server/app/GameServiceProviderInstanceImpl;Landroid/view/SurfaceControl;ILcom/android/internal/infra/AndroidFuture;Lcom/android/server/app/GameSessionRecord;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->lambda$takeScreenshot$5(Landroid/view/SurfaceControl;ILcom/android/internal/infra/AndroidFuture;Lcom/android/server/app/GameSessionRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s5SrBxOmhhqLVW6ngDfDXnbDhbQ(Lcom/android/internal/infra/AndroidFuture;Landroid/net/Uri;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->lambda$takeScreenshot$4(Lcom/android/internal/infra/AndroidFuture;Landroid/net/Uri;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBackgroundExecutor(Lcom/android/server/app/GameServiceProviderInstanceImpl;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/app/GameServiceProviderInstanceImpl;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGameServiceController(Lcom/android/server/app/GameServiceProviderInstanceImpl;)Landroid/service/games/IGameServiceController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceController:Landroid/service/games/IGameServiceController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/app/GameServiceProviderInstanceImpl;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcreateGameSession(Lcom/android/server/app/GameServiceProviderInstanceImpl;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->createGameSession(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdestroyAndClearAllGameSessionsLocked(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->destroyAndClearAllGameSessionsLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monForegroundActivitiesChanged(Lcom/android/server/app/GameServiceProviderInstanceImpl;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->onForegroundActivitiesChanged(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monProcessDied(Lcom/android/server/app/GameServiceProviderInstanceImpl;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->onProcessDied(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monTaskCreated(Lcom/android/server/app/GameServiceProviderInstanceImpl;ILandroid/content/ComponentName;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->onTaskCreated(ILandroid/content/ComponentName;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monTaskFocusChanged(Lcom/android/server/app/GameServiceProviderInstanceImpl;IZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->onTaskFocusChanged(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monTaskRemoved(Lcom/android/server/app/GameServiceProviderInstanceImpl;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->onTaskRemoved(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monTransientSystemBarsVisibilityChanged(Lcom/android/server/app/GameServiceProviderInstanceImpl;IZZ)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->onTransientSystemBarsVisibilityChanged(IZZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrestartGame(Lcom/android/server/app/GameServiceProviderInstanceImpl;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->restartGame(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Landroid/content/Context;Lcom/android/server/app/GameTaskInfoProvider;Landroid/app/IActivityManager;Landroid/app/ActivityManagerInternal;Landroid/app/IActivityTaskManager;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/wm/ActivityTaskManagerInternal;Lcom/android/internal/infra/ServiceConnector;Lcom/android/internal/infra/ServiceConnector;Lcom/android/internal/util/ScreenshotHelper;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/content/Context;",
            "Lcom/android/server/app/GameTaskInfoProvider;",
            "Landroid/app/IActivityManager;",
            "Landroid/app/ActivityManagerInternal;",
            "Landroid/app/IActivityTaskManager;",
            "Lcom/android/server/wm/WindowManagerService;",
            "Lcom/android/server/wm/WindowManagerInternal;",
            "Lcom/android/server/wm/ActivityTaskManagerInternal;",
            "Lcom/android/internal/infra/ServiceConnector<",
            "Landroid/service/games/IGameService;",
            ">;",
            "Lcom/android/internal/infra/ServiceConnector<",
            "Landroid/service/games/IGameSessionService;",
            ">;",
            "Lcom/android/internal/util/ScreenshotHelper;",
            ")V"
        }
    .end annotation

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$1;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceLifecycleCallbacks:Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;

    .line 89
    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$2;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceLifecycleCallbacks:Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;

    .line 105
    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$3;

    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$3;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mTaskSystemBarsVisibilityListener:Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;

    .line 117
    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4;

    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$4;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mTaskStackListener:Landroid/app/TaskStackListener;

    .line 158
    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5;

    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$5;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 181
    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$6;

    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$6;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceController:Landroid/service/games/IGameServiceController;

    .line 194
    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$7;

    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$7;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionController:Landroid/service/games/IGameSessionController;

    .line 219
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    .line 234
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 237
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPidToPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 239
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPackageNameToProcessCountMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 260
    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mUserHandle:Landroid/os/UserHandle;

    .line 261
    iput-object p2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 262
    iput-object p3, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mContext:Landroid/content/Context;

    .line 263
    iput-object p4, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameTaskInfoProvider:Lcom/android/server/app/GameTaskInfoProvider;

    .line 264
    iput-object p5, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityManager:Landroid/app/IActivityManager;

    .line 265
    iput-object p6, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 266
    iput-object p7, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 267
    iput-object p8, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 268
    iput-object p9, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 269
    iput-object p10, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 270
    iput-object p11, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    .line 271
    iput-object p12, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    .line 272
    iput-object p13, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    return-void
.end method

.method private synthetic lambda$createGameSessionLocked$2(Lcom/android/server/app/GameSessionRecord;ILandroid/service/games/CreateGameSessionResult;Ljava/lang/Throwable;)V
    .registers 7

    if-nez p4, :cond_17

    if-nez p3, :cond_5

    goto :goto_17

    .line 549
    :cond_5
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 550
    :try_start_8
    invoke-virtual {p0, p2, p3}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->attachGameSessionLocked(ILandroid/service/games/CreateGameSessionResult;)V

    .line 551
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_14

    .line 557
    invoke-virtual {p3}, Landroid/service/games/CreateGameSessionResult;->getGameSession()Landroid/service/games/IGameSession;

    move-result-object p1

    .line 556
    invoke-virtual {p0, p2, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->setGameSessionFocusedIfNecessary(ILandroid/service/games/IGameSession;)V

    return-void

    :catchall_14
    move-exception p0

    .line 551
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    const-string p3, "GameServiceProviderInstance"

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create GameSession: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 543
    iget-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 544
    :try_start_30
    invoke-virtual {p0, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->removeAndDestroyGameSessionIfNecessaryLocked(I)V

    .line 545
    monitor-exit p1

    return-void

    :catchall_35
    move-exception p0

    monitor-exit p1
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_35

    throw p0
.end method

.method private synthetic lambda$createGameSessionLocked$3(ILcom/android/server/app/GameSessionRecord;Landroid/service/games/GameSessionViewHostConfiguration;Lcom/android/internal/infra/AndroidFuture;Landroid/service/games/IGameSessionService;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 562
    new-instance v0, Landroid/service/games/CreateGameSessionRequest;

    .line 565
    invoke-virtual {p2}, Lcom/android/server/app/GameSessionRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/service/games/CreateGameSessionRequest;-><init>(ILjava/lang/String;)V

    .line 566
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionController:Landroid/service/games/IGameSessionController;

    invoke-interface {p5, p0, v0, p3, p4}, Landroid/service/games/IGameSessionService;->create(Landroid/service/games/IGameSessionController;Landroid/service/games/CreateGameSessionRequest;Landroid/service/games/GameSessionViewHostConfiguration;Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method public static synthetic lambda$gameTaskStartedLocked$1(Lcom/android/server/app/GameTaskInfo;Landroid/service/games/IGameService;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 439
    new-instance v0, Landroid/service/games/GameStartedEvent;

    iget v1, p0, Lcom/android/server/app/GameTaskInfo;->mTaskId:I

    iget-object p0, p0, Lcom/android/server/app/GameTaskInfo;->mComponentName:Landroid/content/ComponentName;

    .line 441
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/service/games/GameStartedEvent;-><init>(ILjava/lang/String;)V

    .line 439
    invoke-interface {p1, v0}, Landroid/service/games/IGameService;->gameStarted(Landroid/service/games/GameStartedEvent;)V

    return-void
.end method

.method private synthetic lambda$stopLocked$0(Ljava/lang/Void;Ljava/lang/Throwable;)V
    .registers 3

    .line 342
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    invoke-interface {p0}, Lcom/android/internal/infra/ServiceConnector;->unbind()V

    return-void
.end method

.method public static synthetic lambda$takeScreenshot$4(Lcom/android/internal/infra/AndroidFuture;Landroid/net/Uri;)V
    .registers 2

    if-nez p1, :cond_a

    .line 875
    invoke-static {}, Landroid/service/games/GameScreenshotResult;->createInternalErrorResult()Landroid/service/games/GameScreenshotResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_11

    .line 877
    :cond_a
    invoke-static {}, Landroid/service/games/GameScreenshotResult;->createSuccessResult()Landroid/service/games/GameScreenshotResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    :goto_11
    return-void
.end method

.method private synthetic lambda$takeScreenshot$5(Landroid/view/SurfaceControl;ILcom/android/internal/infra/AndroidFuture;Lcom/android/server/app/GameSessionRecord;)V
    .registers 15

    .line 851
    new-instance v0, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    if-eqz p1, :cond_11

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 856
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setExcludeLayers([Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    .line 858
    :cond_11
    iget-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, p2, v0}, Lcom/android/server/wm/WindowManagerService;->captureTaskBitmap(ILandroid/view/SurfaceControl$LayerCaptureArgs$Builder;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "GameServiceProviderInstance"

    if-nez p1, :cond_37

    .line 861
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Could not get bitmap for id: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    invoke-static {}, Landroid/service/games/GameScreenshotResult;->createInternalErrorResult()Landroid/service/games/GameScreenshotResult;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_82

    .line 864
    :cond_37
    invoke-static {p1}, Lcom/android/internal/util/ScreenshotHelper$HardwareBitmapBundler;->hardwareBitmapToBundle(Landroid/graphics/Bitmap;)Landroid/os/Bundle;

    move-result-object v1

    .line 866
    iget-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameTaskInfoProvider:Lcom/android/server/app/GameTaskInfoProvider;

    .line 867
    invoke-virtual {p1, p2}, Lcom/android/server/app/GameTaskInfoProvider;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    if-nez p1, :cond_5e

    .line 869
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get running task info for id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    invoke-static {}, Landroid/service/games/GameScreenshotResult;->createInternalErrorResult()Landroid/service/games/GameScreenshotResult;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 872
    :cond_5e
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 873
    new-instance v9, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda5;

    invoke-direct {v9, p3}, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    .line 880
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    sget-object v3, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mUserHandle:Landroid/os/UserHandle;

    .line 881
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {p4}, Lcom/android/server/app/GameSessionRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    const/4 v7, 0x5

    .line 883
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v8

    move v4, p2

    .line 880
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/util/ScreenshotHelper;->provideScreenshot(Landroid/os/Bundle;Landroid/graphics/Rect;Landroid/graphics/Insets;IILandroid/content/ComponentName;ILandroid/os/Handler;Ljava/util/function/Consumer;)V

    :goto_82
    return-void
.end method


# virtual methods
.method public final attachGameSessionLocked(ILandroid/service/games/CreateGameSessionResult;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 594
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/app/GameSessionRecord;

    const-string v1, "GameServiceProviderInstance"

    if-nez v0, :cond_28

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No associated game session record. Destroying id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->destroyGameSessionDuringAttach(ILandroid/service/games/CreateGameSessionResult;)V

    return-void

    .line 602
    :cond_28
    invoke-virtual {v0}, Lcom/android/server/app/GameSessionRecord;->isGameSessionRequested()Z

    move-result v2

    if-nez v2, :cond_32

    .line 603
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->destroyGameSessionDuringAttach(ILandroid/service/games/CreateGameSessionResult;)V

    return-void

    .line 608
    :cond_32
    :try_start_32
    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 610
    invoke-virtual {p2}, Landroid/service/games/CreateGameSessionResult;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v3

    .line 608
    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/WindowManagerInternal;->addTrustedTaskOverlay(ILandroid/view/SurfaceControlViewHost$SurfacePackage;)V
    :try_end_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_3b} :catch_51

    .line 617
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 619
    invoke-virtual {p2}, Landroid/service/games/CreateGameSessionResult;->getGameSession()Landroid/service/games/IGameSession;

    move-result-object v1

    .line 620
    invoke-virtual {p2}, Landroid/service/games/CreateGameSessionResult;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object p2

    .line 618
    invoke-virtual {v0, v1, p2}, Lcom/android/server/app/GameSessionRecord;->withGameSession(Landroid/service/games/IGameSession;Landroid/view/SurfaceControlViewHost$SurfacePackage;)Lcom/android/server/app/GameSessionRecord;

    move-result-object p2

    .line 617
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 612
    :catch_51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to add task overlay. Destroying id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->destroyGameSessionDuringAttach(ILandroid/service/games/CreateGameSessionResult;)V

    return-void
.end method

.method public final createGameSession(I)V
    .registers 3

    .line 493
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 494
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->createGameSessionLocked(I)V

    .line 495
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final createGameSessionLocked(I)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 504
    iget-boolean v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mIsRunning:Z

    if-nez v0, :cond_5

    return-void

    .line 508
    :cond_5
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/app/GameSessionRecord;

    const-string v0, ") creation. Ignoring."

    const-string v1, "GameServiceProviderInstance"

    if-nez v4, :cond_30

    .line 510
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No existing game session record found for task (id: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 514
    :cond_30
    invoke-virtual {v4}, Lcom/android/server/app/GameSessionRecord;->isAwaitingGameSessionRequest()Z

    move-result v2

    if-nez v2, :cond_50

    .line 515
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Existing game session for task (id: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is not awaiting game session request. Ignoring."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 521
    :cond_50
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->createViewHostConfigurationForTask(I)Landroid/service/games/GameSessionViewHostConfiguration;

    move-result-object v5

    if-nez v5, :cond_6e

    .line 523
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create view host configuration for task (id"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 533
    :cond_6e
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4}, Lcom/android/server/app/GameSessionRecord;->withGameSessionRequested()Lcom/android/server/app/GameSessionRecord;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    const-wide/16 v1, 0x2710

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 537
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v4, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;Lcom/android/server/app/GameSessionRecord;I)V

    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 538
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v6

    .line 560
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    new-instance v7, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda3;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;ILcom/android/server/app/GameSessionRecord;Landroid/service/games/GameSessionViewHostConfiguration;Lcom/android/internal/infra/AndroidFuture;)V

    .line 561
    invoke-interface {v0, v7}, Lcom/android/internal/infra/ServiceConnector;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public final createViewHostConfigurationForTask(I)Landroid/service/games/GameSessionViewHostConfiguration;
    .registers 4

    .line 823
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameTaskInfoProvider:Lcom/android/server/app/GameTaskInfoProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/app/GameTaskInfoProvider;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 828
    :cond_a
    iget-object p1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 829
    new-instance v0, Landroid/service/games/GameSessionViewHostConfiguration;

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 831
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 832
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {v0, p0, v1, p1}, Landroid/service/games/GameSessionViewHostConfiguration;-><init>(III)V

    return-object v0
.end method

.method public final destroyAndClearAllGameSessionsLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 625
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameSessionRecord;

    .line 626
    invoke-virtual {p0, v1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->destroyGameSessionFromRecordLocked(Lcom/android/server/app/GameSessionRecord;)V

    goto :goto_a

    .line 628
    :cond_1a
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public final destroyGameSessionDuringAttach(ILandroid/service/games/CreateGameSessionResult;)V
    .registers 3

    .line 635
    :try_start_0
    invoke-virtual {p2}, Landroid/service/games/CreateGameSessionResult;->getGameSession()Landroid/service/games/IGameSession;

    move-result-object p0

    invoke-interface {p0}, Landroid/service/games/IGameSession;->onDestroyed()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_1e

    .line 637
    :catch_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to destroy session: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GameServiceProviderInstance"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e
    return-void
.end method

.method public final destroyGameSessionFromRecordLocked(Lcom/android/server/app/GameSessionRecord;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 659
    invoke-virtual {p1}, Lcom/android/server/app/GameSessionRecord;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v0

    const-string v1, "GameServiceProviderInstance"

    if-eqz v0, :cond_26

    .line 662
    :try_start_8
    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 663
    invoke-virtual {p1}, Lcom/android/server/app/GameSessionRecord;->getTaskId()I

    move-result v3

    .line 662
    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/WindowManagerInternal;->removeTrustedTaskOverlay(ILandroid/view/SurfaceControlViewHost$SurfacePackage;)V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_11} :catch_12

    goto :goto_26

    .line 666
    :catch_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to remove task overlay. This is expected if the task is already destroyed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_26
    :goto_26
    invoke-virtual {p1}, Lcom/android/server/app/GameSessionRecord;->getGameSession()Landroid/service/games/IGameSession;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 676
    :try_start_2c
    invoke-interface {v0}, Landroid/service/games/IGameSession;->onDestroyed()V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_45

    :catch_30
    move-exception v0

    .line 678
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to destroy session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 682
    :cond_45
    :goto_45
    iget-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_52

    .line 687
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    invoke-interface {p0}, Lcom/android/internal/infra/ServiceConnector;->unbind()V

    :cond_52
    return-void
.end method

.method public final endGameSessionsForPackageLocked(Ljava/lang/String;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 785
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameSessionRecord;

    .line 786
    invoke-virtual {v1}, Lcom/android/server/app/GameSessionRecord;->getGameSession()Landroid/service/games/IGameSession;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 787
    invoke-virtual {v1}, Lcom/android/server/app/GameSessionRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 786
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 794
    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameTaskInfoProvider:Lcom/android/server/app/GameTaskInfoProvider;

    .line 795
    invoke-virtual {v1}, Lcom/android/server/app/GameSessionRecord;->getTaskId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/app/GameTaskInfoProvider;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 796
    iget-boolean v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v2, :cond_3b

    goto :goto_a

    .line 803
    :cond_3b
    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/android/server/app/GameSessionRecord;->getTaskId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 804
    invoke-virtual {v1}, Lcom/android/server/app/GameSessionRecord;->withGameSessionEndedOnProcessDeath()Lcom/android/server/app/GameSessionRecord;

    move-result-object v4

    .line 803
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    invoke-virtual {p0, v1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->destroyGameSessionFromRecordLocked(Lcom/android/server/app/GameSessionRecord;)V

    goto :goto_a

    :cond_50
    return-void
.end method

.method public final gameSessionExistsForPackageNameLocked(Ljava/lang/String;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 812
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/app/GameSessionRecord;

    .line 813
    invoke-virtual {v0}, Lcom/android/server/app/GameSessionRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method public final gameTaskStartedLocked(Lcom/android/server/app/GameTaskInfo;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 422
    iget-boolean v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mIsRunning:Z

    if-nez v0, :cond_5

    return-void

    .line 426
    :cond_5
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lcom/android/server/app/GameTaskInfo;->mTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/app/GameSessionRecord;

    if-eqz v0, :cond_33

    .line 428
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Existing game session found for task (id: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/app/GameTaskInfo;->mTaskId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") creation. Ignoring."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GameServiceProviderInstance"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 433
    :cond_33
    iget v0, p1, Lcom/android/server/app/GameTaskInfo;->mTaskId:I

    iget-object v1, p1, Lcom/android/server/app/GameTaskInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/android/server/app/GameSessionRecord;->awaitingGameSessionRequest(ILandroid/content/ComponentName;)Lcom/android/server/app/GameSessionRecord;

    move-result-object v0

    .line 435
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p1, Lcom/android/server/app/GameTaskInfo;->mTaskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/app/GameTaskInfo;)V

    invoke-interface {p0, v0}, Lcom/android/internal/infra/ServiceConnector;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public final maybeCreateGameSessionForFocusedTaskLocked(I)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameTaskInfoProvider:Lcom/android/server/app/GameTaskInfoProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/app/GameTaskInfoProvider;->get(I)Lcom/android/server/app/GameTaskInfo;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 405
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No task info for focused task: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GameServiceProviderInstance"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 409
    :cond_1f
    iget-boolean p1, v0, Lcom/android/server/app/GameTaskInfo;->mIsGameTask:Z

    if-nez p1, :cond_24

    return-void

    .line 413
    :cond_24
    invoke-virtual {p0, v0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->gameTaskStartedLocked(Lcom/android/server/app/GameTaskInfo;)V

    return-void
.end method

.method public final onForegroundActivitiesChanged(I)V
    .registers 3

    .line 692
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 693
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->onForegroundActivitiesChangedLocked(I)V

    .line 694
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final onForegroundActivitiesChangedLocked(I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 699
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPidToPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 704
    :cond_d
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0

    .line 705
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    return-void

    .line 710
    :cond_1a
    invoke-virtual {p0, v0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->gameSessionExistsForPackageNameLocked(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    return-void

    .line 715
    :cond_21
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPidToPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    iget-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPackageNameToProcessCountMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    .line 717
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 716
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 718
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPackageNameToProcessCountMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lez p1, :cond_4b

    .line 728
    invoke-virtual {p0, v0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->recreateEndedGameSessionsLocked(Ljava/lang/String;)V

    :cond_4b
    return-void
.end method

.method public final onProcessDied(I)V
    .registers 3

    .line 753
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 754
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->onProcessDiedLocked(I)V

    .line 755
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final onProcessDiedLocked(I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 760
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPidToPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_f

    return-void

    .line 766
    :cond_f
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPackageNameToProcessCountMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_22

    const-string p0, "GameServiceProviderInstance"

    const-string/jumbo p1, "onProcessDiedLocked(): Missing process count for package"

    .line 769
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 773
    :cond_22
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 774
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPackageNameToProcessCountMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-gtz v0, :cond_36

    .line 779
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->endGameSessionsForPackageLocked(Ljava/lang/String;)V

    :cond_36
    return-void
.end method

.method public final onTaskCreated(ILandroid/content/ComponentName;)V
    .registers 4

    .line 352
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameTaskInfoProvider:Lcom/android/server/app/GameTaskInfoProvider;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/app/GameTaskInfoProvider;->get(ILandroid/content/ComponentName;)Lcom/android/server/app/GameTaskInfo;

    move-result-object p1

    .line 354
    iget-boolean p2, p1, Lcom/android/server/app/GameTaskInfo;->mIsGameTask:Z

    if-nez p2, :cond_b

    return-void

    .line 358
    :cond_b
    iget-object p2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 359
    :try_start_e
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->gameTaskStartedLocked(Lcom/android/server/app/GameTaskInfo;)V

    .line 360
    monitor-exit p2

    return-void

    :catchall_13
    move-exception p0

    monitor-exit p2
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_13

    throw p0
.end method

.method public final onTaskFocusChanged(IZ)V
    .registers 4

    .line 364
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->onTaskFocusChangedLocked(IZ)V

    .line 366
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final onTaskFocusChangedLocked(IZ)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/app/GameSessionRecord;

    if-nez v0, :cond_14

    if-eqz p2, :cond_13

    .line 383
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->maybeCreateGameSessionForFocusedTaskLocked(I)V

    :cond_13
    return-void

    .line 386
    :cond_14
    invoke-virtual {v0}, Lcom/android/server/app/GameSessionRecord;->getGameSession()Landroid/service/games/IGameSession;

    move-result-object p0

    if-nez p0, :cond_1b

    return-void

    .line 391
    :cond_1b
    :try_start_1b
    invoke-virtual {v0}, Lcom/android/server/app/GameSessionRecord;->getGameSession()Landroid/service/games/IGameSession;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/service/games/IGameSession;->onTaskFocusChanged(Z)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_22} :catch_23

    goto :goto_39

    .line 393
    :catch_23
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to notify session of task focus change: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GameServiceProviderInstance"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_39
    return-void
.end method

.method public final onTaskRemoved(I)V
    .registers 5

    .line 446
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 447
    :try_start_3
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 449
    monitor-exit v0

    return-void

    .line 457
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->removeAndDestroyGameSessionIfNecessaryLocked(I)V

    .line 458
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public final onTransientSystemBarsVisibilityChanged(IZZ)V
    .registers 5

    if-eqz p2, :cond_5

    if-nez p3, :cond_5

    return-void

    .line 470
    :cond_5
    iget-object p3, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 471
    :try_start_8
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/app/GameSessionRecord;

    .line 472
    monitor-exit p3
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_3a

    if-nez p0, :cond_18

    return-void

    .line 478
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/app/GameSessionRecord;->getGameSession()Landroid/service/games/IGameSession;

    move-result-object p0

    if-nez p0, :cond_1f

    return-void

    .line 484
    :cond_1f
    :try_start_1f
    invoke-interface {p0, p2}, Landroid/service/games/IGameSession;->onTransientSystemBarVisibilityFromRevealGestureChanged(Z)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_39

    :catch_23
    const-string p0, "GameServiceProviderInstance"

    .line 486
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to send transient system bars visibility from reveal gesture for task: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_39
    return-void

    :catchall_3a
    move-exception p0

    .line 472
    :try_start_3b
    monitor-exit p3
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public final recreateEndedGameSessionsLocked(Ljava/lang/String;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 734
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameSessionRecord;

    .line 735
    invoke-virtual {v1}, Lcom/android/server/app/GameSessionRecord;->isGameSessionEndedForProcessDeath()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 736
    invoke-virtual {v1}, Lcom/android/server/app/GameSessionRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 735
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 744
    invoke-virtual {v1}, Lcom/android/server/app/GameSessionRecord;->getTaskId()I

    move-result v2

    .line 745
    iget-object v3, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 746
    invoke-virtual {v1}, Lcom/android/server/app/GameSessionRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    .line 745
    invoke-static {v2, v5}, Lcom/android/server/app/GameSessionRecord;->awaitingGameSessionRequest(ILandroid/content/ComponentName;)Lcom/android/server/app/GameSessionRecord;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    invoke-virtual {v1}, Lcom/android/server/app/GameSessionRecord;->getTaskId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->createGameSessionLocked(I)V

    goto :goto_a

    :cond_47
    return-void
.end method

.method public final removeAndDestroyGameSessionIfNecessaryLocked(I)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 647
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/app/GameSessionRecord;

    if-nez p1, :cond_f

    return-void

    .line 654
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->destroyGameSessionFromRecordLocked(Lcom/android/server/app/GameSessionRecord;)V

    return-void
.end method

.method public final restartGame(I)V
    .registers 5

    .line 891
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 892
    :try_start_3
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameSessionRecord;

    if-nez v1, :cond_13

    .line 894
    monitor-exit v0

    return-void

    .line 896
    :cond_13
    invoke-virtual {v1}, Lcom/android/server/app/GameSessionRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 897
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_25

    if-nez v1, :cond_1f

    return-void

    .line 903
    :cond_1f
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->restartTaskActivityProcessIfVisible(ILjava/lang/String;)V

    return-void

    :catchall_25
    move-exception p0

    .line 897
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public final setGameSessionFocusedIfNecessary(ILandroid/service/games/IGameSession;)V
    .registers 3

    .line 576
    :try_start_0
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 577
    invoke-interface {p0}, Landroid/app/IActivityTaskManager;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object p0

    if-eqz p0, :cond_27

    .line 578
    iget p0, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->taskId:I

    if-ne p0, p1, :cond_27

    const/4 p0, 0x1

    .line 579
    invoke-interface {p2, p0}, Landroid/service/games/IGameSession;->onTaskFocusChanged(Z)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_27

    .line 582
    :catch_11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to set task focused for ID: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GameServiceProviderInstance"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    :goto_27
    return-void
.end method

.method public start()V
    .registers 2

    .line 277
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->startLocked()V

    .line 279
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final startLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const-string v0, "GameServiceProviderInstance"

    .line 291
    iget-boolean v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mIsRunning:Z

    if-eqz v1, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x1

    .line 294
    iput-boolean v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mIsRunning:Z

    .line 296
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceLifecycleCallbacks:Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;

    invoke-interface {v1, v2}, Lcom/android/internal/infra/ServiceConnector;->setServiceLifecycleCallbacks(Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;)V

    .line 297
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceLifecycleCallbacks:Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;

    invoke-interface {v1, v2}, Lcom/android/internal/infra/ServiceConnector;->setServiceLifecycleCallbacks(Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;)V

    .line 300
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    invoke-interface {v1}, Lcom/android/internal/infra/ServiceConnector;->connect()Lcom/android/internal/infra/AndroidFuture;

    .line 303
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mTaskStackListener:Landroid/app/TaskStackListener;

    invoke-interface {v1, v2}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_24} :catch_25

    goto :goto_2b

    :catch_25
    move-exception v1

    const-string v2, "Failed to register task stack listener"

    .line 305
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    :goto_2b
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_32} :catch_33

    goto :goto_39

    :catch_33
    move-exception v1

    const-string v2, "Failed to register process observer"

    .line 311
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    :goto_39
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mTaskSystemBarsVisibilityListener:Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerInternal;->registerTaskSystemBarsListener(Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;)V

    return-void
.end method

.method public stop()V
    .registers 2

    .line 284
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 285
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->stopLocked()V

    .line 286
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final stopLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const-string v0, "GameServiceProviderInstance"

    .line 319
    iget-boolean v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mIsRunning:Z

    if-nez v1, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x0

    .line 322
    iput-boolean v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mIsRunning:Z

    .line 325
    :try_start_a
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    goto :goto_18

    :catch_12
    move-exception v1

    const-string v2, "Failed to unregister process observer"

    .line 327
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    :goto_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mTaskStackListener:Landroid/app/TaskStackListener;

    invoke-interface {v1, v2}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1f} :catch_20

    goto :goto_26

    :catch_20
    move-exception v1

    const-string v2, "Failed to unregister task stack listener"

    .line 333
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    :goto_26
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mTaskSystemBarsVisibilityListener:Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->unregisterTaskSystemBarsListener(Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;)V

    .line 339
    invoke-virtual {p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->destroyAndClearAllGameSessionsLocked()V

    .line 341
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 344
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    invoke-interface {v0}, Lcom/android/internal/infra/ServiceConnector;->unbind()V

    .line 346
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->setServiceLifecycleCallbacks(Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;)V

    .line 347
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    invoke-interface {p0, v1}, Lcom/android/internal/infra/ServiceConnector;->setServiceLifecycleCallbacks(Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;)V

    return-void
.end method

.method public takeScreenshot(ILcom/android/internal/infra/AndroidFuture;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 838
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 839
    :try_start_3
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/server/app/GameSessionRecord;

    if-nez v7, :cond_31

    const-string p0, "GameServiceProviderInstance"

    .line 841
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No game session found for id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    invoke-static {}, Landroid/service/games/GameScreenshotResult;->createInternalErrorResult()Landroid/service/games/GameScreenshotResult;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 843
    monitor-exit v0

    return-void

    .line 845
    :cond_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_4e

    .line 847
    invoke-virtual {v7}, Lcom/android/server/app/GameSessionRecord;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 849
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    goto :goto_3e

    :cond_3d
    const/4 v0, 0x0

    :goto_3e
    move-object v4, v0

    .line 850
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;

    move-object v2, v1

    move-object v3, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;Landroid/view/SurfaceControl;ILcom/android/internal/infra/AndroidFuture;Lcom/android/server/app/GameSessionRecord;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_4e
    move-exception p0

    .line 845
    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw p0
.end method
