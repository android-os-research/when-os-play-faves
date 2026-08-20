.class public Lcom/android/server/statusbar/StatusBarManagerService;
.super Lcom/android/internal/statusbar/IStatusBarService$Stub;
.source "StatusBarManagerService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/statusbar/StatusBarManagerService$UiState;,
        Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    }
.end annotation


# static fields
.field public static DEBUG_SAFEMODE:Z = false

.field public static final EXPAND_STATUS_BAR:I = 0x1

.field public static final FORMAT:Ljava/text/SimpleDateFormat;

.field public static final LOCK_DOWN_COLLAPSE_STATUS_BAR:J = 0xa503ff5L

.field public static final REQUEST_LISTENING_MUST_MATCH_PACKAGE:J = 0xa445ae6L

.field public static final REQUEST_TIME_OUT:J

.field public static final SPEW:Z = false

.field public static final STATUS_BAR:I = 0x0

.field public static final STATUS_BAR_SERVICE:I = 0x2

.field public static final TAG:Ljava/lang/String; = "StatusBarManagerService"


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public volatile mBar:Lcom/android/internal/statusbar/IStatusBar;

.field public final mBarLock:Ljava/lang/Object;

.field public volatile mBarMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/statusbar/IStatusBar;",
            ">;"
        }
    .end annotation
.end field

.field public mBiometricContextListener:Landroid/hardware/biometrics/IBiometricContextListener;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public volatile mCarLifeBar:Lcom/android/internal/carlife/IStatusBarCarLife;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentRequestAddTilePackages:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCurrentRequestAddTilePackages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mCurrentUserId:I

.field public mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

.field public mDisableHistoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mDisableRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mDisplayUiState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/statusbar/StatusBarManagerService$UiState;",
            ">;"
        }
    .end annotation
.end field

.field public mDisplayUiStateDex:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/statusbar/StatusBarManagerService$UiState;",
            ">;"
        }
    .end annotation
.end field

.field public mEdgeInternal:Lcom/samsung/android/edge/EdgeManagerInternal;

.field public mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

.field public final mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

.field public final mGrantedPackageForIndicatorBG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public final mIcons:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/statusbar/StatusBarIcon;",
            ">;"
        }
    .end annotation
.end field

.field public mIndicatorBgHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mInternalService:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field public mIsSecCustomTileMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

.field public mOverlayManager:Landroid/content/om/IOverlayManager;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mPanelExpandStateMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mQsPanelExpandStateMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field public final mSessionMonitor:Lcom/android/server/statusbar/SessionMonitor;

.field public mStatusBarHistoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSysUiSafeMode:Z

.field public final mSysUiVisToken:Landroid/os/IBinder;

.field public final mTileRequestTracker:Lcom/android/server/statusbar/TileRequestTracker;

.field public mTracingEnabled:Z

.field public mUdfpsHbmListener:Landroid/hardware/fingerprint/IUdfpsHbmListener;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$2ndFA8HNezCsgX2sySFgr4QHJWQ(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->lambda$shutdown$4(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Hu7mPC6EWDdyhjAVYjY1H83XDsk(Z)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->lambda$rebootByBixby$8(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$OwBHc8REiqmJuTXfrcUSjpBgn3s(ZLjava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->lambda$reboot$5(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q1WY23pmi8hefnPqUAGflGYk1Es(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->lambda$notifyBarAttachChanged$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$XWlNEmayVNZk6H1ofnHgfaTz4CA(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->lambda$notifyBarAttachChanged$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$YtRdcv3RLLjrdHJseslyNV1q5Ck()V
    .registers 0

    invoke-static {}, Lcom/android/server/statusbar/StatusBarManagerService;->lambda$shutdownByBixby$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$aaKMp1V76gx6z3RD8wFE9Qs5sPk(Lcom/android/server/statusbar/StatusBarManagerService;ILandroid/os/IBinder;IIZ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/statusbar/StatusBarManagerService;->lambda$setImeWindowStatus$1(ILandroid/os/IBinder;IIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$b-0BlA-CZdPGqW_WvD8hJ_9cTV4(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->lambda$restart$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$zxtONZ_7L1fIeLZ0XZff5htwjII(Lcom/android/server/statusbar/StatusBarManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->lambda$disableLocked$0(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;
    .registers 1

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBarLock(Lcom/android/server/statusbar/StatusBarManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBarMap(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCarLifeBar(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/carlife/IStatusBarCarLife;
    .registers 1

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCarLifeBar:Lcom/android/internal/carlife/IStatusBarCarLife;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisableRecords(Lcom/android/server/statusbar/StatusBarManagerService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayUiState(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGlobalActionListener(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/statusbar/StatusBarManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTileRequestTracker(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/server/statusbar/TileRequestTracker;
    .registers 1

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mTileRequestTracker:Lcom/android/server/statusbar/TileRequestTracker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBar(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/internal/statusbar/IStatusBar;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCarLifeBar(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/internal/carlife/IStatusBarCarLife;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCarLifeBar:Lcom/android/internal/carlife/IStatusBarCarLife;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentUserId(Lcom/android/server/statusbar/StatusBarManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmGlobalActionListener(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNotificationDelegate(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/notification/NotificationDelegate;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSysUiSafeMode(Lcom/android/server/statusbar/StatusBarManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSysUiSafeMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUdfpsHbmListener(Lcom/android/server/statusbar/StatusBarManagerService;Landroid/hardware/fingerprint/IUdfpsHbmListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mUdfpsHbmListener:Landroid/hardware/fingerprint/IUdfpsHbmListener;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckBarMapState(Lcom/android/server/statusbar/StatusBarManagerService;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->checkBarMapState(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mclearTileAddRequest(Lcom/android/server/statusbar/StatusBarManagerService;Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->clearTileAddRequest(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$menforceStatusBarService(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetUiState(Lcom/android/server/statusbar/StatusBarManagerService;II)Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiState(II)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyBarAttachChanged(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->notifyBarAttachChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDisableFlags(Lcom/android/server/statusbar/StatusBarManagerService;IILjava/lang/String;I)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/statusbar/StatusBarManagerService;->setDisableFlags(IILjava/lang/String;I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 201
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/statusbar/StatusBarManagerService;->REQUEST_TIME_OUT:J

    .line 3271
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/statusbar/StatusBarManagerService;->FORMAT:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x1

    .line 3324
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "debug.sysui.safemode"

    const-string v2, "0"

    .line 3325
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/statusbar/StatusBarManagerService;->DEBUG_SAFEMODE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    .line 347
    invoke-direct {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;-><init>()V

    .line 172
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    .line 175
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    .line 178
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    .line 180
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSysUiVisToken:Landroid/os/IBinder;

    .line 182
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    .line 193
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    .line 199
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentRequestAddTilePackages:Landroid/util/ArrayMap;

    const/4 v2, 0x0

    .line 206
    iput-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mEdgeInternal:Lcom/samsung/android/edge/EdgeManagerInternal;

    .line 209
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarLock:Ljava/lang/Object;

    .line 210
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    .line 211
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiStateDex:Landroid/util/SparseArray;

    .line 212
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mPanelExpandStateMap:Landroid/util/ArrayMap;

    .line 213
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mQsPanelExpandStateMap:Landroid/util/ArrayMap;

    .line 236
    new-instance v3, Lcom/android/server/statusbar/StatusBarManagerService$1;

    invoke-direct {v3, p0}, Lcom/android/server/statusbar/StatusBarManagerService$1;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    iput-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    .line 410
    new-instance v3, Lcom/android/server/statusbar/StatusBarManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/statusbar/StatusBarManagerService$2;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    iput-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mInternalService:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1081
    new-instance v4, Lcom/android/server/statusbar/StatusBarManagerService$3;

    invoke-direct {v4, p0}, Lcom/android/server/statusbar/StatusBarManagerService$3;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    iput-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

    .line 1883
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIndicatorBgHistory:Ljava/util/ArrayList;

    const-string v5, "com.sds.mysinglesquare"

    const-string v6, "com.sds.squaremessenger"

    const-string v7, "com.sds.teams"

    .line 1884
    invoke-static {v5, v6, v7}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGrantedPackageForIndicatorBG:Ljava/util/List;

    .line 2599
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIsSecCustomTileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3231
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableHistoryList:Ljava/util/ArrayList;

    .line 3277
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mStatusBarHistoryList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    .line 3326
    iput-boolean v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSysUiSafeMode:Z

    .line 348
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 350
    const-class v6, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v6, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 351
    const-class v3, Lcom/android/server/policy/GlobalActionsProvider;

    invoke-static {v3, v4}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 354
    new-instance v3, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    invoke-direct {v3, v2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;-><init>(Lcom/android/server/statusbar/StatusBarManagerService$UiState-IA;)V

    .line 355
    invoke-virtual {v1, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 358
    new-instance v1, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    invoke-direct {v1, v2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;-><init>(Lcom/android/server/statusbar/StatusBarManagerService$UiState-IA;)V

    .line 359
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiStateDex:Landroid/util/SparseArray;

    invoke-virtual {v2, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v1, "desktopmode"

    .line 360
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v1, :cond_c9

    .line 363
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    :cond_c9
    const-string v1, "display"

    .line 368
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 369
    invoke-virtual {v1, p0, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 370
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 371
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 372
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 374
    new-instance v0, Lcom/android/server/statusbar/TileRequestTracker;

    invoke-direct {v0, p1}, Lcom/android/server/statusbar/TileRequestTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mTileRequestTracker:Lcom/android/server/statusbar/TileRequestTracker;

    .line 375
    new-instance v0, Lcom/android/server/statusbar/SessionMonitor;

    invoke-direct {v0, p1}, Lcom/android/server/statusbar/SessionMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSessionMonitor:Lcom/android/server/statusbar/SessionMonitor;

    .line 378
    const-class p1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerInternal;

    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-void
.end method

.method public static final getUiContext()Landroid/content/Context;
    .registers 1

    .line 3320
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$disableLocked$0(I)V
    .registers 2

    .line 1443
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {p0, p1}, Lcom/android/server/notification/NotificationDelegate;->onSetDisabled(I)V

    return-void
.end method

.method private synthetic lambda$notifyBarAttachChanged$2()V
    .registers 2

    .line 2141
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

    if-nez v0, :cond_5

    return-void

    .line 2142
    :cond_5
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    invoke-interface {v0, p0}, Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;->onGlobalActionsAvailableChanged(Z)V

    return-void
.end method

.method private synthetic lambda$notifyBarAttachChanged$3()V
    .registers 3

    .line 2148
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2149
    :try_start_3
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mUdfpsHbmListener:Landroid/hardware/fingerprint/IUdfpsHbmListener;

    invoke-virtual {p0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->setUdfpsHbmListener(Landroid/hardware/fingerprint/IUdfpsHbmListener;)V

    .line 2150
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBiometricContextListener:Landroid/hardware/biometrics/IBiometricContextListener;

    invoke-virtual {p0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V

    .line 2151
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public static synthetic lambda$reboot$5(ZLjava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_b

    .line 2232
    invoke-static {}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->rebootSafeMode(Landroid/content/Context;Z)V

    goto :goto_13

    .line 2234
    :cond_b
    invoke-static {}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/power/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_13
    return-void
.end method

.method public static synthetic lambda$rebootByBixby$8(Z)V
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    .line 3372
    invoke-static {}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/server/power/ShutdownThread;->rebootSafeMode(Landroid/content/Context;Z)V

    goto :goto_14

    .line 3374
    :cond_b
    invoke-static {}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "bixbyrequest"

    invoke-static {p0, v1, v0}, Lcom/android/server/power/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_14
    return-void
.end method

.method private synthetic lambda$restart$6()V
    .registers 1

    .line 2251
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->restart()V

    return-void
.end method

.method private synthetic lambda$setImeWindowStatus$1(ILandroid/os/IBinder;IIZ)V
    .registers 13

    .line 1633
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-nez v0, :cond_5

    return-void

    .line 1635
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/statusbar/IStatusBar;->setImeWindowStatus(ILandroid/os/IBinder;IIZ)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_f

    :catch_f
    return-void
.end method

.method public static synthetic lambda$shutdown$4(Ljava/lang/String;)V
    .registers 3

    .line 2210
    invoke-static {}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic lambda$shutdownByBixby$7()V
    .registers 3

    .line 3358
    invoke-static {}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bixbyrequest"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public addTile(Landroid/content/ComponentName;)V
    .registers 3

    .line 1190
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarOrShell()V

    .line 1192
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_c

    .line 1194
    :try_start_7
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->addQsTile(Landroid/content/ComponentName;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_c

    :catch_c
    :cond_c
    return-void
.end method

.method public cancelRequestAddTile(Ljava/lang/String;)V
    .registers 2

    .line 2806
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 2807
    invoke-virtual {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->cancelRequestAddTileInternal(Ljava/lang/String;)V

    return-void
.end method

.method public final cancelRequestAddTileInternal(Ljava/lang/String;)V
    .registers 3

    .line 2811
    invoke-virtual {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->clearTileAddRequest(Ljava/lang/String;)Z

    .line 2812
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_16

    .line 2814
    :try_start_7
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->cancelRequestAddTile(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_16

    :catch_d
    move-exception p0

    const-string p1, "StatusBarManagerService"

    const-string/jumbo v0, "requestAddTile"

    .line 2816
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_16
    :goto_16
    return-void
.end method

.method public final checkBarMapState(I)Z
    .registers 6

    const-string v0, "checkBarMapState barType ="

    const-string v1, "StatusBarManagerService"

    const/4 v2, 0x0

    .line 261
    :try_start_5
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_f} :catch_27
    .catch Ljava/util/ConcurrentModificationException; {:try_start_5 .. :try_end_f} :catch_13

    if-eqz p0, :cond_12

    const/4 v2, 0x1

    :cond_12
    return v2

    :catch_13
    move-exception p0

    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :catch_27
    move-exception p0

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public final checkCallingUidPackage(Ljava/lang/String;II)V
    .registers 6

    .line 2563
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    .line 2564
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p3

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    if-ne p3, p0, :cond_13

    return-void

    .line 2565
    :cond_13
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Package "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not belong to the calling uid "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkCanCollapseStatusBar(Ljava/lang/String;)Z
    .registers 6

    .line 2069
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2070
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-wide/32 v2, 0xa503ff5

    .line 2071
    invoke-static {v2, v3, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2072
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    goto :goto_4f

    .line 2074
    :cond_15
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.STATUS_BAR"

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_4f

    .line 2076
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 2077
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->canCloseSystemDialogs(II)Z

    move-result p0

    if-nez p0, :cond_4f

    .line 2078
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permission Denial: Method "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "() requires permission "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ignoring call."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StatusBarManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_4f
    :goto_4f
    const/4 p0, 0x1

    return p0
.end method

.method public clearInlineReplyUriPermissions(Ljava/lang/String;)V
    .registers 5

    .line 2500
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2501
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2502
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2504
    :try_start_b
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {p0, p1, v0}, Lcom/android/server/notification/NotificationDelegate;->clearInlineReplyUriPermissions(Ljava/lang/String;I)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_14

    .line 2506
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_14
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2507
    throw p0
.end method

.method public clearNotificationEffects()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2177
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2178
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2180
    :try_start_7
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {p0}, Lcom/android/server/notification/NotificationDelegate;->clearEffects()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 2182
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2183
    throw p0
.end method

.method public final clearTileAddRequest(Ljava/lang/String;)Z
    .registers 3

    .line 2822
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentRequestAddTilePackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2823
    :try_start_3
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentRequestAddTilePackages:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 2824
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public clickTile(Landroid/content/ComponentName;)V
    .registers 3

    .line 1212
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarOrShell()V

    .line 1214
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_c

    .line 1216
    :try_start_7
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->clickQsTile(Landroid/content/ComponentName;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_c

    :catch_c
    :cond_c
    return-void
.end method

.method public collapsePanels()V
    .registers 2

    const-string v0, "collapsePanels"

    .line 1147
    invoke-virtual {p0, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->checkCanCollapseStatusBar(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 1151
    :cond_9
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_12

    .line 1153
    :try_start_d
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->animateCollapsePanels()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_12

    :catch_12
    :cond_12
    return-void
.end method

.method public collapsePanelsToType(I)V
    .registers 5

    const-string v0, "collapsePanelsToType"

    .line 1813
    invoke-virtual {p0, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->checkCanCollapseStatusBar(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 1817
    :cond_9
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1818
    :try_start_c
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_29

    if-eqz v1, :cond_27

    .line 1820
    :try_start_18
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->animateCollapsePanels()V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_27
    .catchall {:try_start_18 .. :try_end_27} :catchall_29

    .line 1824
    :catch_27
    :cond_27
    :try_start_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 5

    .line 1370
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public disable2(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 5

    .line 1393
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    .registers 14

    .line 1405
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 1407
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v2, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v1, p0

    move v3, p4

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 1408
    :try_start_e
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IIILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 1410
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_13

    throw p0
.end method

.method public disable2ForUserToType(ILandroid/os/IBinder;Ljava/lang/String;II)V
    .registers 15

    .line 1743
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 1745
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v2, 0x0

    const/4 v7, 0x2

    move-object v1, p0

    move v3, p4

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v8, p5

    .line 1746
    :try_start_e
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IIILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 1747
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_13

    throw p0
.end method

.method public disable2ToType(ILandroid/os/IBinder;Ljava/lang/String;I)V
    .registers 11

    .line 1738
    iget v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService;->disable2ForUserToType(ILandroid/os/IBinder;Ljava/lang/String;II)V

    return-void
.end method

.method public disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    .registers 14

    .line 1376
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 1378
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move v3, p4

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 1379
    :try_start_e
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IIILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 1381
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_13

    throw p0
.end method

.method public disableForUserToType(ILandroid/os/IBinder;Ljava/lang/String;II)V
    .registers 15

    .line 1729
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 1731
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v2, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move v3, p4

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v8, p5

    .line 1732
    :try_start_e
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IIILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 1733
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_13

    throw p0
.end method

.method public final disableLocked(IIILandroid/os/IBinder;Ljava/lang/String;II)V
    .registers 15

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    .line 1419
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/statusbar/StatusBarManagerService;->manageDisableListLocked(IILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 1423
    iget p2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 p3, 0x1

    invoke-virtual {p0, p2, p3, p7}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(III)I

    move-result p2

    .line 1425
    iget p3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 p4, 0x2

    invoke-virtual {p0, p3, p4, p7}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(III)I

    move-result p3

    .line 1427
    invoke-virtual {p0, p1, p7}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiState(II)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    move-result-object p4

    .line 1441
    invoke-static {p4, p2, p3}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$mdisableEquals(Lcom/android/server/statusbar/StatusBarManagerService$UiState;II)Z

    move-result p5

    if-nez p5, :cond_6a

    .line 1442
    invoke-static {p4, p2, p3}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$msetDisabled(Lcom/android/server/statusbar/StatusBarManagerService$UiState;II)V

    .line 1443
    iget-object p4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance p5, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda4;

    invoke-direct {p5, p0, p2}, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;I)V

    invoke-virtual {p4, p5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1444
    iget-object p4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarLock:Ljava/lang/Object;

    monitor-enter p4

    .line 1445
    :try_start_32
    iget-object p5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p5, p6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_67

    if-eqz p5, :cond_65

    .line 1447
    :try_start_3e
    iget-object p5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p5, p6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p5, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBar;->disable(III)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_4d} :catch_4e
    .catchall {:try_start_3e .. :try_end_4d} :catchall_67

    goto :goto_65

    :catch_4e
    move-exception p1

    :try_start_4f
    const-string p5, "StatusBarManagerService"

    .line 1449
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "disable Exception = "

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    :cond_65
    :goto_65
    monitor-exit p4

    goto :goto_6a

    :catchall_67
    move-exception p0

    monitor-exit p4
    :try_end_69
    .catchall {:try_start_4f .. :try_end_69} :catchall_67

    throw p0

    .line 1457
    :cond_6a
    :goto_6a
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mEdgeInternal:Lcom/samsung/android/edge/EdgeManagerInternal;

    if-nez p1, :cond_78

    .line 1458
    const-class p1, Lcom/samsung/android/edge/EdgeManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/edge/EdgeManagerInternal;

    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mEdgeInternal:Lcom/samsung/android/edge/EdgeManagerInternal;

    .line 1460
    :cond_78
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mEdgeInternal:Lcom/samsung/android/edge/EdgeManagerInternal;

    if-eqz p0, :cond_7f

    .line 1461
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/edge/EdgeManagerInternal;->statusBarDisabled(II)V

    :cond_7f
    return-void
.end method

.method public disableToType(ILandroid/os/IBinder;Ljava/lang/String;I)V
    .registers 11

    .line 1724
    iget v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService;->disableForUserToType(ILandroid/os/IBinder;Ljava/lang/String;II)V

    return-void
.end method

.method public dismissInattentiveSleepWarning(Z)V
    .registers 3

    .line 2542
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2543
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_c

    .line 2545
    :try_start_7
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->dismissInattentiveSleepWarning(Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_c

    :catch_c
    :cond_c
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    .line 3137
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "StatusBarManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 3139
    :cond_b
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 3140
    :goto_10
    :try_start_10
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_75

    .line 3141
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 3142
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 3143
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  displayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    mDisabled1=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$mgetDisabled1(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    mDisabled2=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$mgetDisabled2(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_75
    move v2, v1

    .line 3148
    :goto_76
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiStateDex:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_db

    .line 3149
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiStateDex:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 3150
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiStateDex:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 3151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  DexdisplayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    mDexDisabled1=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$mgetDisabled1(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    mDexDisabled2=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$mgetDisabled2(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_76

    .line 3156
    :cond_db
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mDisableRecords.size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v1

    :goto_f6
    if-ge v3, v2, :cond_11f

    .line 3159
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 3160
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_f6

    .line 3162
    :cond_11f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mCurrentUserId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  mIcons="

    .line 3163
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3164
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_144
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_183

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "    "

    .line 3165
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3166
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " -> "

    .line 3167
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3168
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 3169
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3170
    iget-object v4, v3, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_17f

    const-string v4, " \""

    .line 3171
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3172
    iget-object v3, v3, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v3, "\""

    .line 3173
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3175
    :cond_17f
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_144

    .line 3178
    :cond_183
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentRequestAddTilePackages:Landroid/util/ArrayMap;

    monitor-enter v2
    :try_end_186
    .catchall {:try_start_10 .. :try_end_186} :catchall_2f4

    .line 3179
    :try_start_186
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentRequestAddTilePackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3180
    monitor-exit v2
    :try_end_192
    .catchall {:try_start_186 .. :try_end_192} :catchall_2f1

    :try_start_192
    const-string v2, "  mCurrentRequestAddTilePackages=["

    .line 3181
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3182
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v1

    :goto_19c
    if-ge v4, v2, :cond_1c0

    .line 3184
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_19c

    :cond_1c0
    const-string v2, "  ]"

    .line 3186
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3187
    new-instance v2, Landroid/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v2, p2, v3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3188
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mTileRequestTracker:Lcom/android/server/statusbar/TileRequestTracker;

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move-result-object v2

    invoke-virtual {v3, p1, v2, p3}, Lcom/android/server/statusbar/TileRequestTracker;->dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 3189
    monitor-exit v0
    :try_end_1d6
    .catchall {:try_start_192 .. :try_end_1d6} :catchall_2f4

    .line 3191
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableHistoryList:Ljava/util/ArrayList;

    monitor-enter p1

    .line 3192
    :try_start_1d9
    iget-object p3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableHistoryList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 3193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisableHistoryList.size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, v1

    :goto_1f4
    if-ge v0, p3, :cond_21d

    .line 3195
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f4

    .line 3198
    :cond_21d
    monitor-exit p1
    :try_end_21e
    .catchall {:try_start_1d9 .. :try_end_21e} :catchall_2ee

    .line 3200
    iget-object p3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mStatusBarHistoryList:Ljava/util/ArrayList;

    monitor-enter p3

    .line 3201
    :try_start_221
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mStatusBarHistoryList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 3202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStatusBarHistoryList.size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, v1

    :goto_23c
    if-ge v0, p1, :cond_265

    .line 3204
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mStatusBarHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_23c

    .line 3207
    :cond_265
    monitor-exit p3
    :try_end_266
    .catchall {:try_start_221 .. :try_end_266} :catchall_2eb

    .line 3211
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIndicatorBgHistory:Ljava/util/ArrayList;

    monitor-enter p1

    .line 3212
    :try_start_269
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mIndicatorBgHistory.size="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIndicatorBgHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3213
    :goto_283
    iget-object p3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIndicatorBgHistory:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge v1, p3, :cond_2b2

    .line 3214
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    ["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIndicatorBgHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_283

    .line 3216
    :cond_2b2
    monitor-exit p1
    :try_end_2b3
    .catchall {:try_start_269 .. :try_end_2b3} :catchall_2e8

    .line 3220
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mSysUiSafeMode="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSysUiSafeMode:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3224
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIsSecCustomTileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2e7

    .line 3225
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mIsSecCustomTileMap="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIsSecCustomTileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2e7
    return-void

    :catchall_2e8
    move-exception p0

    .line 3216
    :try_start_2e9
    monitor-exit p1
    :try_end_2ea
    .catchall {:try_start_2e9 .. :try_end_2ea} :catchall_2e8

    throw p0

    :catchall_2eb
    move-exception p0

    .line 3207
    :try_start_2ec
    monitor-exit p3
    :try_end_2ed
    .catchall {:try_start_2ec .. :try_end_2ed} :catchall_2eb

    throw p0

    :catchall_2ee
    move-exception p0

    .line 3198
    :try_start_2ef
    monitor-exit p1
    :try_end_2f0
    .catchall {:try_start_2ef .. :try_end_2f0} :catchall_2ee

    throw p0

    :catchall_2f1
    move-exception p0

    .line 3180
    :try_start_2f2
    monitor-exit v2
    :try_end_2f3
    .catchall {:try_start_2f2 .. :try_end_2f3} :catchall_2f1

    :try_start_2f3
    throw p0

    :catchall_2f4
    move-exception p0

    .line 3189
    monitor-exit v0
    :try_end_2f6
    .catchall {:try_start_2f3 .. :try_end_2f6} :catchall_2f4

    throw p0
.end method

.method public final enforceBiometricDialog()V
    .registers 3

    .line 2053
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.MANAGE_BIOMETRIC_DIALOG"

    const-string v1, "StatusBarManagerService"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceExpandStatusBar()V
    .registers 4

    .line 2037
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.EXPAND_STATUS_BAR"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "null"

    .line 2040
    invoke-virtual {p0, v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->makeStatusBarHistory(ILjava/lang/String;)V

    return-void
.end method

.method public final enforceMediaContentControl()V
    .registers 3

    .line 2059
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.MEDIA_CONTENT_CONTROL"

    const-string v1, "StatusBarManagerService"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceStatusBar()V
    .registers 4

    .line 2029
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "null"

    .line 2032
    invoke-virtual {p0, v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->makeStatusBarHistory(ILjava/lang/String;)V

    return-void
.end method

.method public final enforceStatusBarOrShell()V
    .registers 3

    .line 2022
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_9

    return-void

    .line 2025
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    return-void
.end method

.method public final enforceStatusBarService()V
    .registers 4

    .line 2045
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    const-string v1, "null"

    .line 2048
    invoke-virtual {p0, v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->makeStatusBarHistory(ILjava/lang/String;)V

    return-void
.end method

.method public expandNotificationsPanel()V
    .registers 2

    .line 1131
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    const/4 v0, 0x4

    .line 1133
    invoke-virtual {p0, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->isDisable2FlagSet(I)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 1137
    :cond_b
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_14

    .line 1139
    :try_start_f
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->animateExpandNotificationsPanel()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_14

    :catch_14
    :cond_14
    return-void
.end method

.method public expandNotificationsPanelToType(I)V
    .registers 5

    .line 1799
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 1801
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1802
    :try_start_6
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_23

    if-eqz v1, :cond_21

    .line 1804
    :try_start_12
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->animateExpandNotificationsPanel()V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_21} :catch_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_23

    .line 1808
    :catch_21
    :cond_21
    :try_start_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public expandSettingsPanel(Ljava/lang/String;)V
    .registers 3

    .line 1179
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 1181
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_c

    .line 1183
    :try_start_7
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->animateExpandSettingsPanel(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_c

    :catch_c
    :cond_c
    return-void
.end method

.method public expandSettingsPanelToType(Ljava/lang/String;I)V
    .registers 6

    .line 1829
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 1831
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1832
    :try_start_6
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_23

    if-eqz v1, :cond_21

    .line 1834
    :try_start_12
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->animateExpandSettingsPanel(Ljava/lang/String;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_21} :catch_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_23

    .line 1838
    :catch_21
    :cond_21
    :try_start_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public final findMatchingRecordLocked(Landroid/os/IBinder;II)Landroid/util/Pair;
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;",
            ">;"
        }
    .end annotation

    .line 3103
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_21

    .line 3107
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 3108
    iget-object v3, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    if-ne v3, p1, :cond_1e

    iget v3, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    if-ne v3, p2, :cond_1e

    iget v3, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->barType:I

    if-ne v3, p3, :cond_1e

    goto :goto_22

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_21
    const/4 v2, 0x0

    .line 3115
    :goto_22
    new-instance p0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public gatherDisableActionsLocked(III)I
    .registers 9

    .line 3120
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v1, v0, :cond_22

    .line 3124
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 3125
    iget v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    if-ne v4, p1, :cond_1f

    iget v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->barType:I

    if-ne v4, p3, :cond_1f

    .line 3126
    invoke-virtual {v3, p2}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->getFlags(I)I

    move-result v3

    or-int/2addr v2, v3

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_22
    return v2
.end method

.method public getDisableFlags(Landroid/os/IBinder;I)[I
    .registers 8

    .line 1474
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 1478
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_15

    const/4 v3, -0x1

    if-ne p2, v3, :cond_15

    .line 1483
    :try_start_d
    iget p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(III)I

    move-result p0

    move p1, v2

    goto :goto_29

    .line 1490
    :cond_15
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->findMatchingRecordLocked(Landroid/os/IBinder;II)Landroid/util/Pair;

    move-result-object p0

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    if-eqz p0, :cond_27

    .line 1493
    iget p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what1:I

    .line 1494
    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what2:I

    move v4, p1

    move p1, p0

    move p0, v4

    goto :goto_29

    :cond_27
    move p0, v2

    move p1, p0

    .line 1497
    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_d .. :try_end_2a} :catchall_32

    const/4 p2, 0x2

    new-array p2, p2, [I

    aput p0, p2, v2

    aput p1, p2, v1

    return-object p2

    :catchall_32
    move-exception p0

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public getDisableFlagsToType(Landroid/os/IBinder;II)[I
    .registers 9

    .line 1752
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 1756
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_15

    const/4 v3, -0x1

    if-ne p2, v3, :cond_15

    .line 1758
    :try_start_d
    iget p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(III)I

    move-result p0

    move p1, v2

    goto :goto_29

    .line 1761
    :cond_15
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/statusbar/StatusBarManagerService;->findMatchingRecordLocked(Landroid/os/IBinder;II)Landroid/util/Pair;

    move-result-object p0

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    if-eqz p0, :cond_27

    .line 1763
    iget p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what1:I

    .line 1764
    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what2:I

    move v4, p1

    move p1, p0

    move p0, v4

    goto :goto_29

    :cond_27
    move p0, v2

    move p1, p0

    .line 1767
    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_d .. :try_end_2a} :catchall_32

    const/4 p2, 0x2

    new-array p2, p2, [I

    aput p0, p2, v2

    aput p1, p2, v1

    return-object p2

    :catchall_32
    move-exception p0

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public getNavBarMode()I
    .registers 5

    .line 2890
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 2893
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    .line 2894
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2896
    :try_start_9
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "nav_bar_kids_mode"

    invoke-static {p0, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_15
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_9 .. :try_end_15} :catch_1e
    .catchall {:try_start_9 .. :try_end_15} :catchall_19

    .line 2901
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_19
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2902
    throw p0

    .line 2901
    :catch_1e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getOverlayManager()Landroid/content/om/IOverlayManager;
    .registers 3

    .line 384
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mOverlayManager:Landroid/content/om/IOverlayManager;

    if-nez v0, :cond_1b

    const-string/jumbo v0, "overlay"

    .line 386
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 385
    invoke-static {v0}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mOverlayManager:Landroid/content/om/IOverlayManager;

    if-nez v0, :cond_1b

    const-string v0, "StatusBarManager"

    const-string/jumbo v1, "warning: no OVERLAY_SERVICE"

    .line 388
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_1b
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mOverlayManager:Landroid/content/om/IOverlayManager;

    return-object p0
.end method

.method public getPanelExpandState()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getPanelExpandStateToType(I)Z
    .registers 4

    .line 1781
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mPanelExpandStateMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 1782
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mPanelExpandStateMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public getQuickSettingPanelExpandState()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getQuickSettingPanelExpandStateToType(I)Z
    .registers 4

    .line 1790
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mQsPanelExpandStateMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 1791
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mQsPanelExpandStateMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public getStatusBarIcons()[Ljava/lang/String;
    .registers 2

    .line 2850
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1070121

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getUiState(II)Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_19

    .line 1939
    iget-object p2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiStateDex:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    if-nez p2, :cond_18

    .line 1941
    new-instance p2, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    invoke-direct {p2, v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;-><init>(Lcom/android/server/statusbar/StatusBarManagerService$UiState-IA;)V

    .line 1942
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiStateDex:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_18
    return-object p2

    .line 1946
    :cond_19
    iget-object p2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    if-nez p2, :cond_2d

    .line 1948
    new-instance p2, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    invoke-direct {p2, v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;-><init>(Lcom/android/server/statusbar/StatusBarManagerService$UiState-IA;)V

    .line 1949
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2d
    return-object p2
.end method

.method public grantInlineReplyUriPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 13

    .line 2487
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2488
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2489
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2491
    :try_start_b
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/server/notification/NotificationDelegate;->grantInlineReplyUriPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/UserHandle;Ljava/lang/String;I)V
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_18

    .line 2494
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_18
    move-exception p0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2495
    throw p0
.end method

.method public handleSystemKey(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "handleSystemKey"

    .line 1224
    invoke-virtual {p0, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->checkCanCollapseStatusBar(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 1228
    :cond_9
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_12

    .line 1230
    :try_start_d
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->handleSystemKey(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_12

    :catch_12
    :cond_12
    return-void
.end method

.method public hideAuthenticationDialog(J)V
    .registers 4

    .line 1307
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceBiometricDialog()V

    .line 1308
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_c

    .line 1310
    :try_start_7
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->hideAuthenticationDialog(J)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_c

    :catch_c
    :cond_c
    return-void
.end method

.method public hideCurrentInputMethodForBubbles()V
    .registers 4

    .line 2474
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2475
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2477
    :try_start_7
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object p0

    const/16 v2, 0x13

    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod(I)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_14

    .line 2480
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_14
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2481
    throw p0
.end method

.method public final isComponentValidTileService(Landroid/content/ComponentName;I)Landroid/content/pm/ResolveInfo;
    .registers 10

    .line 2571
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.service.quicksettings.action.QS_TILE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2572
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2573
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 2574
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 2575
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    const-wide/16 v3, 0x0

    move v5, p2

    .line 2573
    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/PackageManagerInternal;->resolveService(Landroid/content/Intent;Ljava/lang/String;JII)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 2576
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2577
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 2576
    invoke-virtual {v1, p1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getComponentEnabledSetting(Landroid/content/ComponentName;II)I

    move-result p1

    if-eqz v0, :cond_46

    .line 2578
    iget-object p2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz p2, :cond_46

    iget-boolean p2, p2, Landroid/content/pm/ServiceInfo;->enabled:Z

    .line 2580
    invoke-virtual {p0, p2, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->resolveEnabledComponent(ZI)Z

    move-result p0

    if-eqz p0, :cond_46

    iget-object p0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string p1, "android.permission.BIND_QUICK_SETTINGS_TILE"

    .line 2581
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_46

    return-object v0

    :cond_46
    const/4 p0, 0x0

    return-object p0
.end method

.method public final isDisable2FlagSet(I)Z
    .registers 3

    .line 1121
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    invoke-static {p0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$mgetDisabled2(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result p0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public isFOTAAvailableForGlobalActions()Z
    .registers 4

    .line 2284
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2287
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2289
    :try_start_7
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->isFOTAAvailable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_18

    const-string p0, "StatusBarManagerService"

    const-string v2, "FOTA update available when asking recovery system"

    .line 2290
    invoke-static {p0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_1d

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    .line 2294
    :goto_19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2295
    throw p0
.end method

.method public final isPackageSupported(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 2911
    :cond_4
    :try_start_4
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-wide/16 v1, 0x0

    .line 2912
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v1

    .line 2911
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_14} :catch_17

    if-eqz p0, :cond_17

    const/4 v0, 0x1

    :catch_17
    :cond_17
    return v0
.end method

.method public isSecCustomTile(Landroid/content/ComponentName;)Z
    .registers 8

    const-string v0, ""

    .line 2601
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIsSecCustomTileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_11

    .line 2603
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_11
    const/4 v1, 0x0

    .line 2606
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2610
    :try_start_16
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const v5, 0xc0280

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v4

    if-eqz v4, :cond_3d

    .line 2613
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_3d

    const-string v5, "android.service.quicksettings.SEM_DEFAULT_TILE_NAME"

    .line 2614
    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2615
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_33
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_33} :catch_3d
    .catchall {:try_start_16 .. :try_end_33} :catchall_38

    if-nez v0, :cond_3d

    const/4 v0, 0x1

    move v1, v0

    goto :goto_3d

    :catchall_38
    move-exception p0

    .line 2622
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2623
    throw p0

    .line 2622
    :catch_3d
    :cond_3d
    :goto_3d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2624
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIsSecCustomTileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1
.end method

.method public isSysUiSafeModeEnabled()Z
    .registers 1

    .line 3330
    iget-boolean p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSysUiSafeMode:Z

    if-nez p0, :cond_b

    sget-boolean p0, Lcom/android/server/statusbar/StatusBarManagerService;->DEBUG_SAFEMODE:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public isTracing()Z
    .registers 1

    .line 1364
    iget-boolean p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mTracingEnabled:Z

    return p0
.end method

.method public final makeDisableHistory(IILandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 11

    .line 3234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    const-string v2, ""

    if-ne p6, v1, :cond_8a

    if-nez p2, :cond_13

    const-string p2, "CLEAR"

    .line 3238
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_ca

    :cond_13
    const/high16 p6, 0x10000

    and-int/2addr p6, p2

    if-eqz p6, :cond_1b

    const-string p6, "EXPAND "

    goto :goto_1c

    :cond_1b
    move-object p6, v2

    .line 3240
    :goto_1c
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 p6, 0x20000

    and-int/2addr p6, p2

    if-eqz p6, :cond_27

    const-string p6, "ICONS "

    goto :goto_28

    :cond_27
    move-object p6, v2

    .line 3241
    :goto_28
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 p6, 0x40000

    and-int/2addr p6, p2

    if-eqz p6, :cond_33

    const-string p6, "ALERTS "

    goto :goto_34

    :cond_33
    move-object p6, v2

    .line 3242
    :goto_34
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 p6, 0x80000

    and-int/2addr p6, p2

    if-eqz p6, :cond_3f

    const-string p6, "TICKER "

    goto :goto_40

    :cond_3f
    move-object p6, v2

    .line 3243
    :goto_40
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 p6, 0x100000

    and-int/2addr p6, p2

    if-eqz p6, :cond_4b

    const-string p6, "SYSTEM_INFO "

    goto :goto_4c

    :cond_4b
    move-object p6, v2

    .line 3244
    :goto_4c
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 p6, 0x400000

    and-int/2addr p6, p2

    if-eqz p6, :cond_57

    const-string p6, "BACK "

    goto :goto_58

    :cond_57
    move-object p6, v2

    .line 3245
    :goto_58
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 p6, 0x200000

    and-int/2addr p6, p2

    if-eqz p6, :cond_63

    const-string p6, "HOME "

    goto :goto_64

    :cond_63
    move-object p6, v2

    .line 3246
    :goto_64
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 p6, 0x1000000

    and-int/2addr p6, p2

    if-eqz p6, :cond_6f

    const-string p6, "RECENT "

    goto :goto_70

    :cond_6f
    move-object p6, v2

    .line 3247
    :goto_70
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 p6, 0x800000

    and-int/2addr p6, p2

    if-eqz p6, :cond_7b

    const-string p6, "CLOCK "

    goto :goto_7c

    :cond_7b
    move-object p6, v2

    .line 3248
    :goto_7c
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 p6, 0x2000000

    and-int/2addr p2, p6

    if-eqz p2, :cond_86

    const-string v2, "SEARCH "

    .line 3249
    :cond_86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ca

    :cond_8a
    const/4 v1, 0x2

    if-ne p6, v1, :cond_124

    if-nez p2, :cond_95

    const-string p2, "CLEAR2"

    .line 3253
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ca

    :cond_95
    and-int/lit8 p6, p2, 0x1

    if-eqz p6, :cond_9c

    const-string p6, "QS "

    goto :goto_9d

    :cond_9c
    move-object p6, v2

    .line 3255
    :goto_9d
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 p6, p2, 0x2

    if-eqz p6, :cond_a7

    const-string p6, "SYSTEM_ICONS "

    goto :goto_a8

    :cond_a7
    move-object p6, v2

    .line 3256
    :goto_a8
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 p6, p2, 0x4

    if-eqz p6, :cond_b2

    const-string p6, "SHADE "

    goto :goto_b3

    :cond_b2
    move-object p6, v2

    .line 3257
    :goto_b3
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 p6, p2, 0x8

    if-eqz p6, :cond_bd

    const-string p6, "GA "

    goto :goto_be

    :cond_bd
    move-object p6, v2

    .line 3258
    :goto_be
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 p2, p2, 0x10

    if-eqz p2, :cond_c7

    const-string v2, "ROTATE "

    .line 3259
    :cond_c7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3266
    :goto_ca
    iget-object p2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableHistoryList:Ljava/util/ArrayList;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->makeTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " barType="

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p7, " pkg="

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " tag="

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " userId="

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " what="

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " token="

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3267
    :goto_113
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableHistoryList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p2, 0x64

    if-le p1, p2, :cond_124

    .line 3268
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableHistoryList:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_113

    :cond_124
    return-void
.end method

.method public final makeStatusBarHistory(ILjava/lang/String;)V
    .registers 8

    const/4 v0, 0x3

    .line 3284
    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_8

    return-void

    :cond_8
    const/4 v1, 0x1

    if-ne p1, v1, :cond_88

    const-string p1, "expandSettingsPanel"

    .line 3292
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "collapsePanels"

    const-string v3, "expandNotificationsPanel"

    const-string/jumbo v4, "togglePanel"

    if-eqz v1, :cond_1b

    goto :goto_32

    .line 3294
    :cond_1b
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_23

    move-object p1, v4

    goto :goto_32

    .line 3296
    :cond_23
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2b

    move-object p1, v3

    goto :goto_32

    .line 3298
    :cond_2b
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_88

    move-object p1, v2

    .line 3310
    :goto_32
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 3311
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mStatusBarHistoryList:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->makeTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " category = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "EXPAND_STATUS_BAR"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", API = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", pkg = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", tag = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3313
    :goto_77
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mStatusBarHistoryList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p2, 0x64

    if-le p1, p2, :cond_88

    .line 3314
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mStatusBarHistoryList:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_77

    :cond_88
    return-void
.end method

.method public final makeTime()Ljava/lang/String;
    .registers 4

    .line 3273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3274
    sget-object p0, Lcom/android/server/statusbar/StatusBarManagerService;->FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public manageDisableListLocked(IILandroid/os/IBinder;Ljava/lang/String;II)V
    .registers 22

    move-object v8, p0

    move/from16 v1, p1

    move/from16 v9, p2

    move-object/from16 v3, p3

    move-object/from16 v0, p4

    move/from16 v10, p5

    move/from16 v7, p6

    const/4 v11, 0x0

    if-eqz v0, :cond_24

    const-string v2, ";"

    .line 3051
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 3052
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3053
    aget-object v2, v0, v11

    const/4 v4, 0x1

    .line 3054
    aget-object v0, v0, v4

    move-object v5, v0

    move-object v12, v2

    goto :goto_27

    :cond_24
    const/4 v2, 0x0

    move-object v12, v0

    move-object v5, v2

    .line 3059
    :goto_27
    invoke-virtual {p0, v3, v1, v7}, Lcom/android/server/statusbar/StatusBarManagerService;->findMatchingRecordLocked(Landroid/os/IBinder;II)Landroid/util/Pair;

    move-result-object v0

    .line 3061
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 3062
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 3065
    invoke-interface/range {p3 .. p3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_4b

    if-eqz v14, :cond_4a

    .line 3067
    iget-object v0, v8, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3068
    iget-object v0, v14, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {v0, v14, v11}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_4a
    return-void

    :cond_4b
    if-eqz v14, :cond_76

    .line 3076
    invoke-virtual {v14, v10}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->getFlags(I)I

    move-result v0

    if-eq v0, v9, :cond_62

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v12

    move/from16 v6, p5

    move/from16 v7, p6

    .line 3077
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/statusbar/StatusBarManagerService;->makeDisableHistory(IILandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V

    .line 3080
    :cond_62
    invoke-virtual {v14, v9, v10, v12}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->setFlags(IILjava/lang/String;)V

    .line 3081
    invoke-virtual {v14}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 3082
    iget-object v0, v8, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3083
    iget-object v0, v14, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {v0, v14, v11}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_75
    return-void

    .line 3089
    :cond_76
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    invoke-direct {v0, p0, v1, v3, v7}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;ILandroid/os/IBinder;I)V

    .line 3090
    invoke-virtual {v0, v9, v10, v12}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->setFlags(IILjava/lang/String;)V

    .line 3091
    iget-object v2, v8, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v9, :cond_94

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v12

    move/from16 v6, p5

    move/from16 v7, p6

    .line 3094
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/statusbar/StatusBarManagerService;->makeDisableHistory(IILandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_94
    return-void
.end method

.method public final notifyBarAttachChanged()V
    .registers 3

    .line 2140
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2147
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBiometricAuthenticated(I)V
    .registers 3

    .line 1274
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceBiometricDialog()V

    .line 1275
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_c

    .line 1277
    :try_start_7
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->onBiometricAuthenticated(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_c

    :catch_c
    :cond_c
    return-void
.end method

.method public onBiometricError(III)V
    .registers 5

    .line 1296
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceBiometricDialog()V

    .line 1297
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_c

    .line 1299
    :try_start_7
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBar;->onBiometricError(III)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_c

    :catch_c
    :cond_c
    return-void
.end method

.method public onBiometricHelp(ILjava/lang/String;)V
    .registers 4

    .line 1285
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceBiometricDialog()V

    .line 1286
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_c

    .line 1288
    :try_start_7
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->onBiometricHelp(ILjava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_c

    :catch_c
    :cond_c
    return-void
.end method

.method public onBubbleMetadataFlagChanged(Ljava/lang/String;I)V
    .registers 5

    .line 2463
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2464
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2466
    :try_start_7
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {p0, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onBubbleMetadataFlagChanged(Ljava/lang/String;I)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 2468
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2469
    throw p0
.end method

.method public onClearAllNotifications(I)V
    .registers 6

    .line 2439
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2440
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2441
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2442
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2444
    :try_start_f
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {p0, v0, v1, p1}, Lcom/android/server/notification/NotificationDelegate;->onClearAll(III)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_18

    .line 2446
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_18
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2447
    throw p0
.end method

.method public onDisplayAdded(I)V
    .registers 2

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 2

    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 3

    .line 399
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 400
    :try_start_3
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 401
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public onGlobalActionsHidden()V
    .registers 3

    .line 2272
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2273
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2275
    :try_start_7
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_16

    if-nez p0, :cond_f

    .line 2278
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2276
    :cond_f
    :try_start_f
    invoke-interface {p0}, Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;->onGlobalActionsDismissed()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_16

    .line 2278
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_16
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2279
    throw p0
.end method

.method public onGlobalActionsShown()V
    .registers 3

    .line 2260
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2261
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2263
    :try_start_7
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_16

    if-nez p0, :cond_f

    .line 2266
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2264
    :cond_f
    :try_start_f
    invoke-interface {p0}, Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;->onGlobalActionsShown()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_16

    .line 2266
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_16
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2267
    throw p0
.end method

.method public onNotificationActionClick(Ljava/lang/String;ILandroid/app/Notification$Action;Lcom/android/internal/statusbar/NotificationVisibility;Z)V
    .registers 16

    .line 2316
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2317
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2318
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 2319
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2321
    :try_start_f
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/server/notification/NotificationDelegate;->onNotificationActionClick(IILjava/lang/String;ILandroid/app/Notification$Action;Lcom/android/internal/statusbar/NotificationVisibility;Z)V
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_1d

    .line 2324
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1d
    move-exception p0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2325
    throw p0
.end method

.method public onNotificationBubbleChanged(Ljava/lang/String;ZI)V
    .registers 6

    .line 2452
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2453
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2455
    :try_start_7
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationDelegate;->onNotificationBubbleChanged(Ljava/lang/String;ZI)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 2457
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2458
    throw p0
.end method

.method public onNotificationClear(Ljava/lang/String;ILjava/lang/String;IILcom/android/internal/statusbar/NotificationVisibility;)V
    .registers 19

    .line 2349
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2350
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2351
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 2352
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    move-object v0, p0

    .line 2354
    :try_start_10
    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v1 .. v9}, Lcom/android/server/notification/NotificationDelegate;->onNotificationClear(IILjava/lang/String;ILjava/lang/String;IILcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_22

    .line 2357
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_22
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2358
    throw v0
.end method

.method public onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    .registers 7

    .line 2301
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2302
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2303
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2304
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2306
    :try_start_f
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onNotificationClick(IILjava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_18

    .line 2308
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_18
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2309
    throw p0
.end method

.method public onNotificationDirectReplied(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2390
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2391
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2393
    :try_start_7
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {p0, p1}, Lcom/android/server/notification/NotificationDelegate;->onNotificationDirectReplied(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 2395
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2396
    throw p0
.end method

.method public onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .registers 21

    .line 2331
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2332
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2333
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 2334
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    move-object v0, p0

    .line 2337
    :try_start_10
    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move-object v4, p1

    move-object v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v1 .. v10}, Lcom/android/server/notification/NotificationDelegate;->onNotificationError(IILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_25

    .line 2340
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_25
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2341
    throw v0
.end method

.method public onNotificationExpansionChanged(Ljava/lang/String;ZZI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2378
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2379
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2381
    :try_start_7
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationDelegate;->onNotificationExpansionChanged(Ljava/lang/String;ZZI)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 2384
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2385
    throw p0
.end method

.method public onNotificationFeedbackReceived(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 2512
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2513
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2515
    :try_start_7
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {p0, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onNotificationFeedbackReceived(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 2517
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2518
    throw p0
.end method

.method public onNotificationSettingsViewed(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2428
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2429
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2431
    :try_start_7
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {p0, p1}, Lcom/android/server/notification/NotificationDelegate;->onNotificationSettingsViewed(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 2433
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2434
    throw p0
.end method

.method public onNotificationSmartReplySent(Ljava/lang/String;ILjava/lang/CharSequence;IZ)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2416
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2417
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2419
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/server/notification/NotificationDelegate;->onNotificationSmartReplySent(Ljava/lang/String;ILjava/lang/CharSequence;IZ)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_15

    .line 2422
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_15
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2423
    throw p0
.end method

.method public onNotificationSmartSuggestionsAdded(Ljava/lang/String;IIZZ)V
    .registers 14

    .line 2402
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2403
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2405
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/server/notification/NotificationDelegate;->onNotificationSmartSuggestionsAdded(Ljava/lang/String;IIZZ)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_15

    .line 2408
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_15
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2409
    throw p0
.end method

.method public onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2365
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2366
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2368
    :try_start_7
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {p0, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 2371
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2372
    throw p0
.end method

.method public onPanelHidden()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2188
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2189
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2191
    :try_start_7
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {p0}, Lcom/android/server/notification/NotificationDelegate;->onPanelHidden()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 2193
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2194
    throw p0
.end method

.method public onPanelRevealed(ZI)V
    .registers 5

    .line 2166
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2167
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2169
    :try_start_7
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {p0, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onPanelRevealed(ZI)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 2171
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2172
    throw p0
.end method

.method public onSessionEnded(ILcom/android/internal/logging/InstanceId;)V
    .registers 3

    .line 2834
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSessionMonitor:Lcom/android/server/statusbar/SessionMonitor;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/statusbar/SessionMonitor;->onSessionEnded(ILcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public onSessionStarted(ILcom/android/internal/logging/InstanceId;)V
    .registers 3

    .line 2829
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSessionMonitor:Lcom/android/server/statusbar/SessionMonitor;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/statusbar/SessionMonitor;->onSessionStarted(ILcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 2525
    new-instance v0, Lcom/android/server/statusbar/StatusBarShellCommand;

    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/statusbar/StatusBarShellCommand;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;Landroid/content/Context;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public passThroughShellCommand([Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .registers 5

    .line 3023
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarOrShell()V

    .line 3024
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-nez v0, :cond_8

    return-void

    .line 3026
    :cond_8
    :try_start_8
    new-instance v0, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v0}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_2c

    :try_start_d
    const-string v1, "  "

    .line 3029
    invoke-virtual {v0, v1}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    .line 3030
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Lcom/android/internal/statusbar/IStatusBar;->passThroughShellCommand([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 3032
    invoke-virtual {v0, p2}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;)V
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_22

    .line 3033
    :try_start_1e
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_2c

    goto :goto_34

    :catchall_22
    move-exception p0

    .line 3026
    :try_start_23
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_2b

    :catchall_27
    move-exception p1

    :try_start_28
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2b
    throw p0
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception p0

    const-string p1, "StatusBarManagerService"

    const-string p2, "Error sending command to IStatusBar"

    .line 3034
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_34
    return-void
.end method

.method public reboot(Z)V
    .registers 6

    .line 2221
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    if-eqz p1, :cond_9

    const-string/jumbo v0, "safemode"

    goto :goto_c

    :cond_9
    const-string/jumbo v0, "userrequested"

    .line 2225
    :goto_c
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v1, v0}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPoint(ILjava/lang/String;)V

    .line 2226
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2228
    :try_start_17
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v3}, Lcom/android/server/notification/NotificationDelegate;->prepareForPossibleShutdown()V

    .line 2229
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v3, p1, v0}, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda5;-><init>(ZLjava/lang/String;)V

    invoke-virtual {p0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_2a

    .line 2238
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2a
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2239
    throw p0
.end method

.method public rebootByBixby(Z)V
    .registers 5

    .line 3367
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 3368
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3370
    :try_start_7
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v2, p1}, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda6;-><init>(Z)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_15

    .line 3379
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_15
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3380
    throw p0
.end method

.method public registerNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V
    .registers 3

    .line 2986
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceMediaContentControl()V

    .line 2987
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_16

    .line 2989
    :try_start_7
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->registerNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_16

    :catch_d
    move-exception p0

    const-string p1, "StatusBarManagerService"

    const-string/jumbo v0, "registerNearbyMediaDevicesProvider"

    .line 2991
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_16
    :goto_16
    return-void
.end method

.method public registerOverlayManager(Landroid/content/om/IOverlayManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2157
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mOverlayManager:Landroid/content/om/IOverlayManager;

    return-void
.end method

.method public registerSessionListener(ILcom/android/internal/statusbar/ISessionListener;)V
    .registers 3

    .line 2840
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSessionMonitor:Lcom/android/server/statusbar/SessionMonitor;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/statusbar/SessionMonitor;->registerSessionListener(ILcom/android/internal/statusbar/ISessionListener;)V

    return-void
.end method

.method public registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;)Lcom/android/internal/statusbar/RegisterStatusBarResult;
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 2093
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    const-string v2, "StatusBarManagerService"

    .line 2095
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerStatusBar bar="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    iput-object v0, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 2099
    iget-object v2, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2101
    :try_start_2a
    iget-object v0, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v2, Lcom/android/server/statusbar/StatusBarManagerService$5;

    invoke-direct {v2, v1}, Lcom/android/server/statusbar/StatusBarManagerService$5;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_38} :catch_39

    goto :goto_41

    :catch_39
    move-exception v0

    const-string v2, "StatusBarManagerService"

    const-string v4, "Unable to register Death Recipient for status bar"

    .line 2112
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2115
    :goto_41
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/statusbar/StatusBarManagerService;->notifyBarAttachChanged()V

    .line 2117
    iget-object v2, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 2118
    :try_start_47
    new-instance v5, Landroid/util/ArrayMap;

    iget-object v0, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-direct {v5, v0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 2119
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_47 .. :try_end_4f} :catchall_c0

    .line 2120
    iget-object v2, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2123
    :try_start_52
    iget-object v0, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 2124
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmTransientBarTypes(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    new-array v15, v4, [I

    move v6, v3

    :goto_65
    if-ge v6, v4, :cond_7a

    .line 2126
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmTransientBarTypes(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/util/ArraySet;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v15, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_65

    .line 2128
    :cond_7a
    new-instance v19, Lcom/android/internal/statusbar/RegisterStatusBarResult;

    iget v4, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v6, v3}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(III)I

    move-result v6

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmAppearance(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v7

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmAppearanceRegions(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)[Lcom/android/internal/view/AppearanceRegion;

    move-result-object v8

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmImeWindowVis(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v9

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmImeBackDisposition(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v10

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmShowImeSwitcher(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z

    move-result v11

    iget v4, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 v12, 0x2

    .line 2132
    invoke-virtual {v1, v4, v12, v3}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(III)I

    move-result v12

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmImeToken(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmNavbarColorManagedByIme(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z

    move-result v14

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmBehavior(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v1

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmRequestedVisibilities(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/view/InsetsVisibilities;

    move-result-object v16

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmPackageName(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v4, v19

    move-object v0, v15

    move v15, v1

    move-object/from16 v18, v0

    invoke-direct/range {v4 .. v18}, Lcom/android/internal/statusbar/RegisterStatusBarResult;-><init>(Landroid/util/ArrayMap;II[Lcom/android/internal/view/AppearanceRegion;IIZILandroid/os/IBinder;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;[I)V

    monitor-exit v2

    return-object v19

    :catchall_bd
    move-exception v0

    .line 2136
    monitor-exit v2
    :try_end_bf
    .catchall {:try_start_52 .. :try_end_bf} :catchall_bd

    throw v0

    :catchall_c0
    move-exception v0

    .line 2119
    :try_start_c1
    monitor-exit v2
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c0

    throw v0
.end method

.method public registerStatusBarAsType(Lcom/android/internal/statusbar/IStatusBar;I)Lcom/android/internal/statusbar/RegisterStatusBarResult;
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1683
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    const-string v2, "StatusBarManagerService"

    .line 1684
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start!! registerStatusBarAsType bar="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    iget-object v2, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1687
    :try_start_28
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/statusbar/IStatusBar;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v3, Lcom/android/server/statusbar/StatusBarManagerService$4;

    move/from16 v4, p2

    invoke-direct {v3, v1, v4}, Lcom/android/server/statusbar/StatusBarManagerService$4;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;I)V

    invoke-interface {v0, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_36} :catch_37

    goto :goto_3f

    :catch_37
    move-exception v0

    const-string v3, "StatusBarManagerService"

    const-string v4, "Unable to register Death Recipient for DEX status bar"

    .line 1697
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1699
    :goto_3f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/statusbar/StatusBarManagerService;->notifyBarAttachChanged()V

    .line 1701
    iget-object v3, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1702
    :try_start_45
    new-instance v5, Landroid/util/ArrayMap;

    iget-object v0, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-direct {v5, v0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 1703
    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_c8

    .line 1704
    iget-object v3, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1707
    :try_start_50
    iget-object v0, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiStateDex:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 1708
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmTransientBarTypes(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    new-array v15, v4, [I

    :goto_62
    if-ge v2, v4, :cond_77

    .line 1710
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmTransientBarTypes(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/util/ArraySet;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v15, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    .line 1712
    :cond_77
    new-instance v2, Lcom/android/internal/statusbar/RegisterStatusBarResult;

    iget v4, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v6, v6}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(III)I

    move-result v7

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmAppearance(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v8

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmAppearanceRegions(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)[Lcom/android/internal/view/AppearanceRegion;

    move-result-object v9

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmImeWindowVis(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v10

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmImeBackDisposition(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v11

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmShowImeSwitcher(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z

    move-result v12

    iget v4, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 v13, 0x2

    .line 1716
    invoke-virtual {v1, v4, v13, v6}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(III)I

    move-result v1

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmImeToken(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmNavbarColorManagedByIme(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z

    move-result v14

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmBehavior(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v16

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmRequestedVisibilities(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/view/InsetsVisibilities;

    move-result-object v17

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$fgetmPackageName(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v2

    move v6, v7

    move v7, v8

    move-object v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v1

    move-object v1, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    invoke-direct/range {v4 .. v18}, Lcom/android/internal/statusbar/RegisterStatusBarResult;-><init>(Landroid/util/ArrayMap;II[Lcom/android/internal/view/AppearanceRegion;IIZILandroid/os/IBinder;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;[I)V

    monitor-exit v3

    return-object v2

    :catchall_c5
    move-exception v0

    .line 1719
    monitor-exit v3
    :try_end_c7
    .catchall {:try_start_50 .. :try_end_c7} :catchall_c5

    throw v0

    :catchall_c8
    move-exception v0

    .line 1703
    :try_start_c9
    monitor-exit v3
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_c8

    throw v0
.end method

.method public registerStatusBarForCarLife(Lcom/android/internal/carlife/IStatusBarCarLife;)V
    .registers 4

    .line 3388
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 3390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerStatusBarForCarLife bar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBarManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3391
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCarLifeBar:Lcom/android/internal/carlife/IStatusBarCarLife;

    .line 3392
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCarLifeBar:Lcom/android/internal/carlife/IStatusBarCarLife;

    if-nez p1, :cond_21

    return-void

    .line 3396
    :cond_21
    :try_start_21
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCarLifeBar:Lcom/android/internal/carlife/IStatusBarCarLife;

    invoke-interface {p1}, Lcom/android/internal/carlife/IStatusBarCarLife;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService$7;

    invoke-direct {v0, p0}, Lcom/android/server/statusbar/StatusBarManagerService$7;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    const/4 p0, 0x0

    invoke-interface {p1, v0, p0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_30} :catch_31

    goto :goto_37

    :catch_31
    move-exception p0

    const-string p1, "Unable to register Death Recipient for status bar"

    .line 3403
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_37
    return-void
.end method

.method public remTile(Landroid/content/ComponentName;)V
    .registers 3

    .line 1201
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarOrShell()V

    .line 1203
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_c

    .line 1205
    :try_start_7
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->remQsTile(Landroid/content/ComponentName;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_c

    :catch_c
    :cond_c
    return-void
.end method

.method public removeIcon(Ljava/lang/String;)V
    .registers 4

    .line 1589
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 1591
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1592
    :try_start_6
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1603
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_15
    :cond_15
    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1604
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/IStatusBar;
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_2f

    if-eqz v1, :cond_15

    .line 1608
    :try_start_29
    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBar;->removeIcon(Ljava/lang/String;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2c} :catch_15
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2f

    goto :goto_15

    .line 1614
    :cond_2d
    :try_start_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public requestAddTile(Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;ILcom/android/internal/statusbar/IAddTileResultCallback;)V
    .registers 16

    .line 2690
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 2691
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 2694
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const-string/jumbo v6, "requestAddTile"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, v8

    move v3, p4

    move-object v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    .line 2698
    invoke-virtual {p0, v9, v8, p4}, Lcom/android/server/statusbar/StatusBarManagerService;->checkCallingUidPackage(Ljava/lang/String;II)V

    .line 2700
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    if-eq p4, v0, :cond_34

    const/16 p0, 0x3eb

    .line 2705
    :try_start_26
    invoke-interface {p5, p0}, Lcom/android/internal/statusbar/IAddTileResultCallback;->onTileRequest(I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_33

    :catch_2a
    move-exception p0

    const-string p1, "StatusBarManagerService"

    const-string/jumbo p2, "requestAddTile"

    .line 2707
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_33
    return-void

    .line 2713
    :cond_34
    invoke-virtual {p0, p1, p4}, Lcom/android/server/statusbar/StatusBarManagerService;->isComponentValidTileService(Landroid/content/ComponentName;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-eqz v6, :cond_100

    .line 2714
    iget-object v0, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->exported:Z

    if-nez v0, :cond_42

    goto/16 :goto_100

    .line 2723
    :cond_42
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, v8}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v0

    .line 2724
    invoke-static {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_60

    const/16 p0, 0x3ec

    .line 2727
    :try_start_52
    invoke-interface {p5, p0}, Lcom/android/internal/statusbar/IAddTileResultCallback;->onTileRequest(I)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_5f

    :catch_56
    move-exception p0

    const-string p1, "StatusBarManagerService"

    const-string/jumbo p2, "requestAddTile"

    .line 2730
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5f
    return-void

    .line 2735
    :cond_60
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentRequestAddTilePackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2736
    :try_start_63
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentRequestAddTilePackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 2737
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    if-eqz v1, :cond_8e

    .line 2738
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v2, v4

    sget-wide v7, Lcom/android/server/statusbar/StatusBarManagerService;->REQUEST_TIME_OUT:J
    :try_end_79
    .catchall {:try_start_63 .. :try_end_79} :catchall_fd

    cmp-long v4, v4, v7

    if-gez v4, :cond_8e

    const/16 p0, 0x3e9

    .line 2740
    :try_start_7f
    invoke-interface {p5, p0}, Lcom/android/internal/statusbar/IAddTileResultCallback;->onTileRequest(I)V
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_82} :catch_83
    .catchall {:try_start_7f .. :try_end_82} :catchall_fd

    goto :goto_8c

    :catch_83
    move-exception p0

    :try_start_84
    const-string p1, "StatusBarManagerService"

    const-string/jumbo p2, "requestAddTile"

    .line 2743
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2745
    :goto_8c
    monitor-exit v0

    return-void

    :cond_8e
    if-eqz v1, :cond_93

    .line 2748
    invoke-virtual {p0, v9}, Lcom/android/server/statusbar/StatusBarManagerService;->cancelRequestAddTileInternal(Ljava/lang/String;)V

    .line 2752
    :cond_93
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentRequestAddTilePackages:Landroid/util/ArrayMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2753
    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_84 .. :try_end_9d} :catchall_fd

    .line 2755
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mTileRequestTracker:Lcom/android/server/statusbar/TileRequestTracker;

    invoke-virtual {v0, p4, p1}, Lcom/android/server/statusbar/TileRequestTracker;->shouldBeDenied(ILandroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 2756
    invoke-virtual {p0, v9}, Lcom/android/server/statusbar/StatusBarManagerService;->clearTileAddRequest(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b9

    const/4 p0, 0x0

    .line 2758
    :try_start_ac
    invoke-interface {p5, p0}, Lcom/android/internal/statusbar/IAddTileResultCallback;->onTileRequest(I)V
    :try_end_af
    .catch Landroid/os/RemoteException; {:try_start_ac .. :try_end_af} :catch_b0

    goto :goto_b9

    :catch_b0
    move-exception p0

    const-string p1, "StatusBarManagerService"

    const-string/jumbo p2, "requestAddTile - callback"

    .line 2760
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b9
    :goto_b9
    return-void

    .line 2766
    :cond_ba
    new-instance v7, Lcom/android/server/statusbar/StatusBarManagerService$6;

    move-object v0, v7

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move-object v4, v9

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService$6;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;ILandroid/content/ComponentName;Ljava/lang/String;Lcom/android/internal/statusbar/IAddTileResultCallback;)V

    .line 2786
    iget-object p4, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p4, p4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 2787
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2788
    iget-object p4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz p4, :cond_ea

    .line 2790
    :try_start_d7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v7

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBar;->requestAddTile(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Lcom/android/internal/statusbar/IAddTileResultCallback;)V
    :try_end_e0
    .catch Landroid/os/RemoteException; {:try_start_d7 .. :try_end_e0} :catch_e1

    return-void

    :catch_e1
    move-exception p1

    const-string p2, "StatusBarManagerService"

    const-string/jumbo p3, "requestAddTile"

    .line 2793
    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2796
    :cond_ea
    invoke-virtual {p0, v9}, Lcom/android/server/statusbar/StatusBarManagerService;->clearTileAddRequest(Ljava/lang/String;)Z

    const/16 p0, 0x3ed

    .line 2798
    :try_start_ef
    invoke-interface {p5, p0}, Lcom/android/internal/statusbar/IAddTileResultCallback;->onTileRequest(I)V
    :try_end_f2
    .catch Landroid/os/RemoteException; {:try_start_ef .. :try_end_f2} :catch_f3

    goto :goto_fc

    :catch_f3
    move-exception p0

    const-string p1, "StatusBarManagerService"

    const-string/jumbo p2, "requestAddTile"

    .line 2800
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_fc
    return-void

    :catchall_fd
    move-exception p0

    .line 2753
    :try_start_fe
    monitor-exit v0
    :try_end_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_fd

    throw p0

    :cond_100
    :goto_100
    const/16 p0, 0x3ea

    .line 2716
    :try_start_102
    invoke-interface {p5, p0}, Lcom/android/internal/statusbar/IAddTileResultCallback;->onTileRequest(I)V
    :try_end_105
    .catch Landroid/os/RemoteException; {:try_start_102 .. :try_end_105} :catch_106

    goto :goto_10f

    :catch_106
    move-exception p0

    const-string p1, "StatusBarManagerService"

    const-string/jumbo p2, "requestAddTile"

    .line 2718
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10f
    return-void
.end method

.method public requestTileServiceListeningState(Landroid/content/ComponentName;I)V
    .registers 14

    .line 2636
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 2637
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-wide/32 v0, 0xa445ae6

    .line 2639
    invoke-static {v0, v1, v8}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    .line 2643
    invoke-virtual {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->isSecCustomTile(Landroid/content/ComponentName;)Z

    move-result v1

    const-string v10, "StatusBarManagerService"

    if-eqz v1, :cond_2c

    const/4 v0, 0x0

    .line 2645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSecCustomTile : componentName ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    if-eqz v0, :cond_70

    .line 2651
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "requestTileServiceListeningState"

    move v2, v8

    move v3, p2

    move-object v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2656
    invoke-virtual {p0, v9, v8, p2}, Lcom/android/server/statusbar/StatusBarManagerService;->checkCallingUidPackage(Ljava/lang/String;II)V

    .line 2658
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    .line 2667
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v1

    if-eq p2, v0, :cond_70

    if-ne v1, v0, :cond_54

    goto :goto_70

    .line 2669
    :cond_54
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is not the current user."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2673
    :cond_70
    :goto_70
    iget-object p2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz p2, :cond_81

    .line 2675
    :try_start_74
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->requestTileServiceListeningState(Landroid/content/ComponentName;)V
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_79} :catch_7a

    goto :goto_81

    :catch_7a
    move-exception p0

    const-string/jumbo p1, "requestTileServiceListeningState"

    .line 2677
    invoke-static {v10, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_81
    :goto_81
    return-void
.end method

.method public resetScheduleAutoHide()V
    .registers 2

    .line 1874
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_9

    .line 1876
    :try_start_4
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->resetScheduleAutoHide()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_9

    :catch_9
    :cond_9
    return-void
.end method

.method public final resolveEnabledComponent(ZI)Z
    .registers 3

    const/4 p0, 0x1

    if-ne p2, p0, :cond_4

    return p0

    :cond_4
    if-nez p2, :cond_7

    return p1

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public restart()V
    .registers 5

    .line 2247
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2248
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2250
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_15

    .line 2254
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_15
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2255
    throw p0
.end method

.method public runGcForTest()V
    .registers 2

    .line 1503
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_11

    .line 1508
    invoke-static {}, Lcom/android/internal/util/GcUtils;->runGcAndFinalizersSync()V

    .line 1510
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_10

    .line 1512
    :try_start_b
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->runGcForTest()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_10

    :catch_10
    :cond_10
    return-void

    .line 1504
    :cond_11
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "runGcForTest requires a debuggable build"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public sendKeyEventToDesktopTaskbar(Landroid/view/KeyEvent;)V
    .registers 3

    .line 1845
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1846
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_c

    .line 1848
    :try_start_7
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->sendKeyEventToDesktopTaskbar(Landroid/view/KeyEvent;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_c

    :catch_c
    :cond_c
    return-void
.end method

.method public setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V
    .registers 3

    .line 1318
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1319
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1320
    :try_start_6
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBiometricContextListener:Landroid/hardware/biometrics/IBiometricContextListener;

    .line 1321
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_13

    .line 1322
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_12

    .line 1324
    :try_start_d
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_12

    :catch_12
    :cond_12
    return-void

    :catchall_13
    move-exception p0

    .line 1321
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public setBlueLightFilter(ZI)V
    .registers 4

    .line 3337
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 3339
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_d
    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3340
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_d

    .line 3344
    :try_start_21
    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->setBlueLightFilter(ZI)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_24} :catch_d

    goto :goto_d

    :cond_25
    return-void
.end method

.method public final setDisableFlags(IILjava/lang/String;I)V
    .registers 14

    .line 1645
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    const v0, -0x7ff0001

    and-int/2addr v0, p2

    if-eqz v0, :cond_28

    const-string v1, "StatusBarManagerService"

    .line 1649
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown disable flags: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v1, v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1655
    :cond_28
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1656
    :try_start_2b
    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    iget-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSysUiVisToken:Landroid/os/IBinder;

    const/4 v7, 0x1

    move-object v1, p0

    move v2, p1

    move v4, p2

    move-object v6, p3

    move v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IIILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 1658
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_2b .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 15

    .line 1521
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 1523
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1524
    :try_start_6
    new-instance v8, Lcom/android/internal/statusbar/StatusBarIcon;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v6, 0x0

    move-object v1, v8

    move-object v2, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 1527
    iget-object p2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1538
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_22
    :cond_22
    :goto_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 1539
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/statusbar/IStatusBar;
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_3c

    if-eqz p2, :cond_22

    .line 1542
    :try_start_36
    invoke-interface {p2, p1, v8}, Lcom/android/internal/statusbar/IStatusBar;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_39} :catch_22
    .catchall {:try_start_36 .. :try_end_39} :catchall_3c

    goto :goto_22

    .line 1548
    :cond_3a
    :try_start_3a
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p0

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public setIconVisibility(Ljava/lang/String;Z)V
    .registers 6

    .line 1553
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 1555
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1556
    :try_start_6
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/StatusBarIcon;

    if-nez v1, :cond_12

    .line 1558
    monitor-exit v0

    return-void

    .line 1560
    :cond_12
    iget-boolean v2, v1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-eq v2, p2, :cond_3a

    .line 1561
    iput-boolean p2, v1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 1572
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_22
    :cond_22
    :goto_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 1573
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/statusbar/IStatusBar;
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_3c

    if-eqz p2, :cond_22

    .line 1577
    :try_start_36
    invoke-interface {p2, p1, v1}, Lcom/android/internal/statusbar/IStatusBar;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_39} :catch_22
    .catchall {:try_start_36 .. :try_end_39} :catchall_3c

    goto :goto_22

    .line 1584
    :cond_3a
    :try_start_3a
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p0

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public setImeWindowStatus(ILandroid/os/IBinder;IIZ)V
    .registers 16

    .line 1620
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 1626
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1630
    :try_start_7
    invoke-virtual {p0, p1, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiState(II)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    move-result-object v1

    invoke-static {v1, p3, p4, p5, p2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->-$$Nest$msetImeWindowState(Lcom/android/server/statusbar/StatusBarManagerService$UiState;IIZLandroid/os/IBinder;)V

    .line 1632
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda3;

    move-object v2, v9

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;ILandroid/os/IBinder;IIZ)V

    invoke-virtual {v1, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1639
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public setIndicatorBgColor(I)V
    .registers 5

    .line 1891
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1892
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIndicatorBgColor: caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", color="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StatusBarManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3d

    .line 1894
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGrantedPackageForIndicatorBG:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    const-string v1, "Skip permission check since it\'s in allowed list"

    .line 1895
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 1897
    :cond_3d
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 1899
    :goto_40
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_87

    .line 1901
    :try_start_44
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBar;->setIndicatorBgColor(I)V

    .line 1904
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIndicatorBgHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_58

    .line 1905
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIndicatorBgHistory:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1907
    :cond_58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->makeTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " color="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1908
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1909
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIndicatorBgHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_81} :catch_87
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_44 .. :try_end_81} :catch_82

    goto :goto_87

    .line 1912
    :catch_82
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIndicatorBgHistory:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :catch_87
    :cond_87
    :goto_87
    return-void
.end method

.method public setNavBarMode(I)V
    .registers 9

    const-string v0, "com.android.internal.systemui.navbar.threebutton"

    .line 2859
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    const/4 v1, 0x1

    if-eqz p1, :cond_22

    if-ne p1, v1, :cond_b

    goto :goto_22

    .line 2861
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Supplied navBarMode not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2864
    :cond_22
    :goto_22
    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    .line 2865
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2867
    :try_start_28
    iget-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "nav_bar_kids_mode"

    invoke-static {v5, v6, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2869
    iget-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "nav_bar_force_visible"

    invoke-static {v5, v6, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2872
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->getOverlayManager()Landroid/content/om/IOverlayManager;

    move-result-object v5

    if-eqz v5, :cond_4f

    if-ne p1, v1, :cond_4f

    .line 2874
    invoke-virtual {p0, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->isPackageSupported(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4f

    .line 2875
    invoke-interface {v5, v0, v2}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_4f} :catch_55
    .catchall {:try_start_28 .. :try_end_4f} :catchall_53

    .line 2880
    :cond_4f
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_53
    move-exception p0

    goto :goto_5b

    :catch_55
    move-exception p0

    .line 2878
    :try_start_56
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
    :try_end_5b
    .catchall {:try_start_56 .. :try_end_5b} :catchall_53

    .line 2880
    :goto_5b
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2881
    throw p0
.end method

.method public setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;II)V
    .registers 6

    .line 1861
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_9

    .line 1863
    :try_start_4
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/statusbar/IStatusBar;->setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_9

    :catch_9
    :cond_9
    return-void
.end method

.method public setPanelExpandState(Z)V
    .registers 2

    return-void
.end method

.method public setPanelExpandStateToType(ZI)V
    .registers 6

    .line 1773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  setPanelExpandStateToType : state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", barType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBarManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mPanelExpandStateMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mQsPanelExpandStateMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setUdfpsHbmListener(Landroid/hardware/fingerprint/IUdfpsHbmListener;)V
    .registers 3

    .line 1332
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1333
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_c

    .line 1335
    :try_start_7
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->setUdfpsHbmListener(Landroid/hardware/fingerprint/IUdfpsHbmListener;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_c

    :catch_c
    :cond_c
    return-void
.end method

.method public showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;JI)V
    .registers 28

    move-object v0, p0

    .line 1261
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceBiometricDialog()V

    .line 1262
    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_21

    .line 1264
    :try_start_8
    iget-object v2, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    move-object/from16 v11, p9

    move-wide/from16 v12, p10

    move/from16 v14, p12

    invoke-interface/range {v2 .. v14}, Lcom/android/internal/statusbar/IStatusBar;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;JI)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_21} :catch_21

    :catch_21
    :cond_21
    return-void
.end method

.method public showInattentiveSleepWarning()V
    .registers 2

    .line 2531
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2532
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_c

    .line 2534
    :try_start_7
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->showInattentiveSleepWarning()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_c

    :catch_c
    :cond_c
    return-void
.end method

.method public showPinningEnterExitToast(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1238
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_9

    .line 1240
    :try_start_4
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->showPinningEnterExitToast(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_9

    :catch_9
    :cond_9
    return-void
.end method

.method public showPinningEscapeToast()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1248
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_9

    .line 1250
    :try_start_4
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->showPinningEscapeToast()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_9

    :catch_9
    :cond_9
    return-void
.end method

.method public shutdown()V
    .registers 5

    .line 2202
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2204
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string/jumbo v1, "userrequested"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPoint(ILjava/lang/String;)V

    .line 2205
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2207
    :try_start_11
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v0}, Lcom/android/server/notification/NotificationDelegate;->prepareForPossibleShutdown()V

    .line 2209
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_20
    .catchall {:try_start_11 .. :try_end_20} :catchall_24

    .line 2212
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_24
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2213
    throw p0
.end method

.method public shutdownByBixby()V
    .registers 4

    .line 3354
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 3355
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3357
    :try_start_7
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_15

    .line 3361
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_15
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3362
    throw p0
.end method

.method public startTracing()V
    .registers 2

    .line 1343
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_c

    .line 1345
    :try_start_4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->startTracing()V

    const/4 v0, 0x1

    .line 1346
    iput-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mTracingEnabled:Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_c

    :catch_c
    :cond_c
    return-void
.end method

.method public stopTracing()V
    .registers 2

    .line 1354
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 1356
    :try_start_5
    iput-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mTracingEnabled:Z

    .line 1357
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->stopTracing()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_c

    :catch_c
    :cond_c
    return-void
.end method

.method public suppressAmbientDisplay(Z)V
    .registers 3

    .line 2553
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 2554
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_c

    .line 2556
    :try_start_7
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->suppressAmbientDisplay(Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_c

    :catch_c
    :cond_c
    return-void
.end method

.method public togglePanel()V
    .registers 2

    const-string/jumbo v0, "togglePanel"

    .line 1161
    invoke-virtual {p0, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->checkCanCollapseStatusBar(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    const/4 v0, 0x4

    .line 1165
    invoke-virtual {p0, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->isDisable2FlagSet(I)Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 1169
    :cond_12
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_1b

    .line 1171
    :try_start_16
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->togglePanel()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1b

    :catch_1b
    :cond_1b
    return-void
.end method

.method public unregisterNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V
    .registers 3

    .line 3011
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceMediaContentControl()V

    .line 3012
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_16

    .line 3014
    :try_start_7
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->unregisterNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_16

    :catch_d
    move-exception p0

    const-string p1, "StatusBarManagerService"

    const-string/jumbo v0, "unregisterNearbyMediaDevicesProvider"

    .line 3016
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_16
    :goto_16
    return-void
.end method

.method public unregisterSessionListener(ILcom/android/internal/statusbar/ISessionListener;)V
    .registers 3

    .line 2846
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSessionMonitor:Lcom/android/server/statusbar/SessionMonitor;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/statusbar/SessionMonitor;->unregisterSessionListener(ILcom/android/internal/statusbar/ISessionListener;)V

    return-void
.end method

.method public updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V
    .registers 6

    .line 2960
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceMediaContentControl()V

    .line 2961
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_16

    .line 2963
    :try_start_7
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/statusbar/IStatusBar;->updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_16

    :catch_d
    move-exception p0

    const-string p1, "StatusBarManagerService"

    const-string/jumbo p2, "updateMediaTapToTransferReceiverDisplay"

    .line 2966
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_16
    :goto_16
    return-void
.end method

.method public updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V
    .registers 5

    .line 2937
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceMediaContentControl()V

    .line 2938
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_16

    .line 2940
    :try_start_7
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBar;->updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_16

    :catch_d
    move-exception p0

    const-string p1, "StatusBarManagerService"

    const-string/jumbo p2, "updateMediaTapToTransferSenderDisplay"

    .line 2942
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_16
    :goto_16
    return-void
.end method
