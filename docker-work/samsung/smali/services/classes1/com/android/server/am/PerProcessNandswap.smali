.class public final Lcom/android/server/am/PerProcessNandswap;
.super Ljava/lang/Object;
.source "PerProcessNandswap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PerProcessNandswap$NandswapLogger;,
        Lcom/android/server/am/PerProcessNandswap$ZramInfo;,
        Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;,
        Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;,
        Lcom/android/server/am/PerProcessNandswap$NandswapSlot;,
        Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;,
        Lcom/android/server/am/PerProcessNandswap$NandswapHandler;,
        Lcom/android/server/am/PerProcessNandswap$LastNandswapStats;,
        Lcom/android/server/am/PerProcessNandswap$MemoryItem;
    }
.end annotation


# static fields
.field public static final AM_APP_LAUNCH_PATH:Ljava/lang/String; = "/sys/kernel/mm/vmscan/am_app_launch"

.field public static final FEATURE_DISABLED:Z = false

.field public static INSTANCE:Lcom/android/server/am/PerProcessNandswap; = null

.field public static final IS_DEBUG_LEVEL_LOW:Z

.field public static final IS_SHIP_BUILD:Z

.field public static final NANDSWAP_ACTION_BFGS:I = 0x8

.field public static final NANDSWAP_ACTION_CACHED:I = 0x9

.field public static final NANDSWAP_ACTION_MAX:I = 0xa

.field public static final NANDSWAP_ACTION_NONE:I = 0x0

.field public static final NANDSWAP_ACTION_PERCEPTIBLE_APP:I = 0x5

.field public static final NANDSWAP_ACTION_PERCEPTIBLE_LOW_APP:I = 0x3

.field public static final NANDSWAP_ACTION_PERCEPTIBLE_MEDIUM_APP:I = 0x4

.field public static final NANDSWAP_ACTION_PERSISTENT:I = 0x7

.field public static final NANDSWAP_ACTION_SERVICE:I = 0x2

.field public static final NANDSWAP_ACTION_SERVICE_B:I = 0x1

.field public static final NANDSWAP_ACTION_VISIBLE_APP:I = 0x6

.field public static final NANDSWAP_ACTIVITY_APP_DELAYED_MS:J = 0x3e8L

.field public static final NANDSWAP_ACTIVITY_APP_DELAYED_MSG:I = 0x3

.field public static final NANDSWAP_ACTIVITY_APP_MSG:I = 0x2

.field public static final NANDSWAP_ACTIVITY_APP_TIMEOUT_MS:J = 0xea60L

.field public static final NANDSWAP_APP_DIED_MSG:I = 0x4

.field public static final NANDSWAP_APP_ENTRY_MSG:I = 0x5

.field public static final NANDSWAP_APP_PREFETCH_MSG:I = 0x3

.field public static final NANDSWAP_CHANGE_PPR_STATE_MSG:I = 0x2

.field public static final NANDSWAP_EXCEPTION_PKGNAMES:[Ljava/lang/String;

.field public static final NANDSWAP_EXTRA_ACTION_NONE:I = 0x0

.field public static final NANDSWAP_EXTRA_ACTION_REMOVE_SLOT:I = 0x1

.field public static final NANDSWAP_MAX_NON_ACTIVITY_APP_COUNT:J = 0x14L

.field public static final NANDSWAP_MAX_PENDING_CHECK_APPS_COUNT:J = 0x64L

.field public static final NANDSWAP_MAX_PENDING_RECLAIM_APPS_COUNT:J = 0x14L

.field public static final NANDSWAP_NON_ACTIVITY_APP_DELAYED_MS:J = 0x1388L

.field public static final NANDSWAP_NON_ACTIVITY_APP_DELAYED_MSG:I = 0x1

.field public static final NANDSWAP_NON_ACTIVITY_APP_DELTA_RSS_THROTTLE_KB:J = 0x4e20L

.field public static final NANDSWAP_NON_ACTIVITY_APP_DELTA_SWAP_THROTTLE_KB:J = 0x2710L

.field public static final NANDSWAP_NON_ACTIVITY_APP_EXPAND_THROTTLE_MS:J = 0x1b7740L

.field public static final NANDSWAP_NON_ACTIVITY_APP_MSG:I = 0x0

.field public static final NANDSWAP_NON_ACTIVITY_APP_RSS_THROTTLE_KB:J = 0x4e20L

.field public static final NANDSWAP_NON_ACTIVITY_APP_SWAP_THROTTLE_KB:J = 0x2710L

.field public static final NANDSWAP_NON_ACTIVITY_APP_THROTTLE_MS:J = 0x927c0L

.field public static final NANDSWAP_STATE_RECLAIMED:I = 0x2

.field public static final NANDSWAP_STATE_RECLAIMED_NO_SLOT:I = 0x4

.field public static final NANDSWAP_STATE_RECLAIM_READY:I = 0x0

.field public static final NANDSWAP_STATE_UNDER_RECLAIM:I = 0x1

.field public static final NANDSWAP_TRY_TO_NANDSWAP_BY_BG_EVENT_MSG:I = 0x7

.field public static final NANDSWAP_TRY_TO_NANDSWAP_BY_EXTERNAL_MSG:I = 0x1

.field public static final NANDSWAP_TRY_TO_NANDSWAP_BY_PSI_EVENT_MSG:I = 0x6

.field public static final TAG:Ljava/lang/String; = "PerProcessNandswap"

.field public static __DebugEnabled:Ljava/lang/Boolean;

.field public static __ExpandActionEnabled:Ljava/lang/Boolean;

.field public static __ForcedPrefetch:Ljava/lang/Integer;

.field public static __MinSwapFreePercentage:Ljava/lang/Integer;

.field public static __PrefetchActionEnabled:Ljava/lang/Boolean;

.field public static __PsiEnabled:Ljava/lang/Boolean;

.field public static __PsiHighStallUS:Ljava/lang/Integer;

.field public static __PsiLowStallUS:Ljava/lang/Integer;

.field public static __PsiThrottlingMS:Ljava/lang/Integer;

.field public static __Random:Ljava/util/Random;

.field public static __SlotCount:I

.field public static __SlotCountMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static __StorageClockBoostEnabled:Ljava/lang/Boolean;

.field public static __WritebackOnBGEnabled:Ljava/lang/Boolean;

.field public static final kSlotCountDefaultValue:I


# instance fields
.field public WRITEBACK_ENABLED:Z

.field public final mAm:Lcom/android/server/am/ActivityManagerService;

.field public mLastNandswapStats:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/PerProcessNandswap$LastNandswapStats;",
            ">;"
        }
    .end annotation
.end field

.field public mMemoryPressureDetector:Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;

.field public mMsgHandler:Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;

.field public mMsgThread:Lcom/android/server/ServiceThread;

.field public mNandswapHandler:Landroid/os/Handler;

.field public mNandswapSlotManager:Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;

.field public mNandswapThread:Lcom/android/server/ServiceThread;

.field public final mPendingNandswapActivityApp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mPendingNandswapActivityAppDelayed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mPendingNandswapNonActivityApp:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mPendingNandswapNonActivityAppDelayed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mPendingTryToPPRProcessesCount:I

.field public mPendingTryToPPRProcessesCountLock:Ljava/lang/Object;

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;


# direct methods
.method public static synthetic $r8$lambda$cT5iEXoC0CfZz-gjYckfRHcN6fc(Landroid/util/SparseArray;[J[Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker$Stats;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/PerProcessNandswap;->lambda$dumpProcessList$0(Landroid/util/SparseArray;[J[Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker$Stats;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetWRITEBACK_ENABLED(Lcom/android/server/am/PerProcessNandswap;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/am/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAm(Lcom/android/server/am/PerProcessNandswap;)Lcom/android/server/am/ActivityManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap;->mAm:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMsgHandler(Lcom/android/server/am/PerProcessNandswap;)Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap;->mMsgHandler:Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMsgThread(Lcom/android/server/am/PerProcessNandswap;)Lcom/android/server/ServiceThread;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap;->mMsgThread:Lcom/android/server/ServiceThread;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNandswapHandler(Lcom/android/server/am/PerProcessNandswap;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap;->mNandswapHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNandswapSlotManager(Lcom/android/server/am/PerProcessNandswap;)Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap;->mNandswapSlotManager:Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNandswapThread(Lcom/android/server/am/PerProcessNandswap;)Lcom/android/server/ServiceThread;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap;->mNandswapThread:Lcom/android/server/ServiceThread;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingNandswapActivityApp(Lcom/android/server/am/PerProcessNandswap;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap;->mPendingNandswapActivityApp:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingNandswapActivityAppDelayed(Lcom/android/server/am/PerProcessNandswap;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap;->mPendingNandswapActivityAppDelayed:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingNandswapNonActivityApp(Lcom/android/server/am/PerProcessNandswap;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap;->mPendingNandswapNonActivityApp:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingNandswapNonActivityAppDelayed(Lcom/android/server/am/PerProcessNandswap;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap;->mPendingNandswapNonActivityAppDelayed:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingTryToPPRProcessesCount(Lcom/android/server/am/PerProcessNandswap;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/PerProcessNandswap;->mPendingTryToPPRProcessesCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingTryToPPRProcessesCountLock(Lcom/android/server/am/PerProcessNandswap;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap;->mPendingTryToPPRProcessesCountLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcLock(Lcom/android/server/am/PerProcessNandswap;)Lcom/android/server/am/ActivityManagerGlobalLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmPendingTryToPPRProcessesCount(Lcom/android/server/am/PerProcessNandswap;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/PerProcessNandswap;->mPendingTryToPPRProcessesCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetProcessRecord(Lcom/android/server/am/PerProcessNandswap;Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/PerProcessNandswap;->getProcessRecord(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSwapFreePercentage(Lcom/android/server/am/PerProcessNandswap;Lcom/android/internal/util/MemInfoReader;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/PerProcessNandswap;->getSwapFreePercentage(Lcom/android/internal/util/MemInfoReader;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$minitMemoryPressureDetectorNative(Lcom/android/server/am/PerProcessNandswap;II)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/PerProcessNandswap;->initMemoryPressureDetectorNative(II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misAppLaunch(Lcom/android/server/am/PerProcessNandswap;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/PerProcessNandswap;->isAppLaunch()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misExpandAction(Lcom/android/server/am/PerProcessNandswap;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/PerProcessNandswap;->isExpandAction(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mnandswapActivityAppDelayed(Lcom/android/server/am/PerProcessNandswap;Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/PerProcessNandswap;->nandswapActivityAppDelayed(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrequestChangePPRState(Lcom/android/server/am/PerProcessNandswap;Lcom/android/server/am/ProcessRecord;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/PerProcessNandswap;->requestChangePPRState(Lcom/android/server/am/ProcessRecord;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrequestChangePPRState(Lcom/android/server/am/PerProcessNandswap;Lcom/android/server/am/ProcessRecord;II)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/PerProcessNandswap;->requestChangePPRState(Lcom/android/server/am/ProcessRecord;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtryToPerProcessNandswapByPsi(Lcom/android/server/am/PerProcessNandswap;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/PerProcessNandswap;->tryToPerProcessNandswapByPsi(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateLastNandswapStats(Lcom/android/server/am/PerProcessNandswap;ILjava/lang/String;[J)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/PerProcessNandswap;->updateLastNandswapStats(ILjava/lang/String;[J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwaitForMemoryPressure(Lcom/android/server/am/PerProcessNandswap;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/PerProcessNandswap;->waitForMemoryPressure()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetNANDSWAP_EXCEPTION_PKGNAMES()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/am/PerProcessNandswap;->NANDSWAP_EXCEPTION_PKGNAMES:[Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/am/PerProcessNandswap;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smcompactProcessForWriteback(II)J
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/PerProcessNandswap;->compactProcessForWriteback(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$smprefetchProcess(I)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/am/PerProcessNandswap;->prefetchProcess(I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 4

    const-string/jumbo v0, "ro.product_ship"

    const-string v1, "false"

    .line 81
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/PerProcessNandswap;->IS_SHIP_BUILD:Z

    const-string/jumbo v0, "ro.boot.debug_level"

    const-string v1, "0x4f4c"

    .line 83
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/PerProcessNandswap;->IS_DEBUG_LEVEL_LOW:Z

    const/4 v0, 0x0

    .line 87
    sput-object v0, Lcom/android/server/am/PerProcessNandswap;->__DebugEnabled:Ljava/lang/Boolean;

    .line 88
    sput-object v0, Lcom/android/server/am/PerProcessNandswap;->__MinSwapFreePercentage:Ljava/lang/Integer;

    .line 89
    sput-object v0, Lcom/android/server/am/PerProcessNandswap;->__ExpandActionEnabled:Ljava/lang/Boolean;

    .line 90
    sput-object v0, Lcom/android/server/am/PerProcessNandswap;->__PrefetchActionEnabled:Ljava/lang/Boolean;

    .line 91
    sput-object v0, Lcom/android/server/am/PerProcessNandswap;->__WritebackOnBGEnabled:Ljava/lang/Boolean;

    .line 92
    sput-object v0, Lcom/android/server/am/PerProcessNandswap;->__StorageClockBoostEnabled:Ljava/lang/Boolean;

    const/4 v1, 0x0

    .line 135
    sput v1, Lcom/android/server/am/PerProcessNandswap;->__SlotCount:I

    .line 136
    sput-object v0, Lcom/android/server/am/PerProcessNandswap;->__SlotCountMap:Ljava/util/ArrayList;

    .line 276
    sput-object v0, Lcom/android/server/am/PerProcessNandswap;->__ForcedPrefetch:Ljava/lang/Integer;

    .line 277
    sput-object v0, Lcom/android/server/am/PerProcessNandswap;->__Random:Ljava/util/Random;

    .line 302
    sput-object v0, Lcom/android/server/am/PerProcessNandswap;->__PsiEnabled:Ljava/lang/Boolean;

    .line 303
    sput-object v0, Lcom/android/server/am/PerProcessNandswap;->__PsiThrottlingMS:Ljava/lang/Integer;

    .line 304
    sput-object v0, Lcom/android/server/am/PerProcessNandswap;->__PsiLowStallUS:Ljava/lang/Integer;

    .line 305
    sput-object v0, Lcom/android/server/am/PerProcessNandswap;->__PsiHighStallUS:Ljava/lang/Integer;

    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.gallery3d"

    const-string v3, "com.samsung.android.messaging"

    .line 335
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/PerProcessNandswap;->NANDSWAP_EXCEPTION_PKGNAMES:[Ljava/lang/String;

    .line 341
    sput-object v0, Lcom/android/server/am/PerProcessNandswap;->INSTANCE:Lcom/android/server/am/PerProcessNandswap;

    .line 433
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->staticInitialize()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 5

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/android/server/am/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    .line 395
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/PerProcessNandswap;->mPendingNandswapNonActivityApp:Ljava/util/ArrayList;

    .line 399
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/PerProcessNandswap;->mPendingNandswapNonActivityAppDelayed:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 402
    iput-object v1, p0, Lcom/android/server/am/PerProcessNandswap;->mNandswapThread:Lcom/android/server/ServiceThread;

    .line 403
    iput-object v1, p0, Lcom/android/server/am/PerProcessNandswap;->mMsgThread:Lcom/android/server/ServiceThread;

    .line 404
    iput-object v1, p0, Lcom/android/server/am/PerProcessNandswap;->mMemoryPressureDetector:Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;

    .line 406
    iput-object v1, p0, Lcom/android/server/am/PerProcessNandswap;->mNandswapHandler:Landroid/os/Handler;

    .line 407
    iput-object v1, p0, Lcom/android/server/am/PerProcessNandswap;->mMsgHandler:Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;

    .line 409
    new-instance v2, Lcom/android/server/am/PerProcessNandswap$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/PerProcessNandswap$1;-><init>(Lcom/android/server/am/PerProcessNandswap;)V

    iput-object v2, p0, Lcom/android/server/am/PerProcessNandswap;->mLastNandswapStats:Ljava/util/LinkedHashMap;

    .line 423
    iput-object v1, p0, Lcom/android/server/am/PerProcessNandswap;->mNandswapSlotManager:Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;

    .line 425
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/PerProcessNandswap;->mPendingNandswapActivityApp:Ljava/util/ArrayList;

    .line 427
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/PerProcessNandswap;->mPendingNandswapActivityAppDelayed:Ljava/util/ArrayList;

    .line 429
    iput v0, p0, Lcom/android/server/am/PerProcessNandswap;->mPendingTryToPPRProcessesCount:I

    .line 430
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PerProcessNandswap;->mPendingTryToPPRProcessesCountLock:Ljava/lang/Object;

    .line 446
    iput-object p1, p0, Lcom/android/server/am/PerProcessNandswap;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 447
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object p1, p0, Lcom/android/server/am/PerProcessNandswap;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    return-void
.end method

.method private static native __compactProcessForWriteback(II)J
.end method

.method private static native __enableStorageClockScaling(Z)Z
.end method

.method public static compactProcessForWriteback(II)J
    .registers 6

    .line 552
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getInstance()Lcom/android/server/am/PerProcessNandswap;

    move-result-object v0

    .line 553
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isStorageClockBoostEnabled()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1c

    const/4 v1, 0x2

    if-eq p1, v1, :cond_12

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1c

    :cond_12
    if-eqz v0, :cond_1c

    .line 556
    invoke-virtual {v0}, Lcom/android/server/am/PerProcessNandswap;->isAppLaunch()Z

    move-result v1

    if-nez v1, :cond_1c

    move v1, v2

    goto :goto_1d

    :cond_1c
    move v1, v3

    :goto_1d
    if-eqz v1, :cond_22

    .line 560
    invoke-static {v3}, Lcom/android/server/am/PerProcessNandswap;->__enableStorageClockScaling(Z)Z

    .line 562
    :cond_22
    invoke-static {p0, p1}, Lcom/android/server/am/PerProcessNandswap;->__compactProcessForWriteback(II)J

    move-result-wide p0

    if-eqz v1, :cond_33

    if-eqz v0, :cond_33

    .line 565
    invoke-virtual {v0}, Lcom/android/server/am/PerProcessNandswap;->isAppLaunch()Z

    move-result v0

    if-nez v0, :cond_33

    .line 566
    invoke-static {v2}, Lcom/android/server/am/PerProcessNandswap;->__enableStorageClockScaling(Z)Z

    :cond_33
    return-wide p0
.end method

.method public static declared-synchronized createInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/PerProcessNandswap;
    .registers 4

    const-class v0, Lcom/android/server/am/PerProcessNandswap;

    monitor-enter v0

    .line 451
    :try_start_3
    sget-object v1, Lcom/android/server/am/PerProcessNandswap;->TAG:Ljava/lang/String;

    const-string v2, "createInstance start"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    sget-object v1, Lcom/android/server/am/PerProcessNandswap;->INSTANCE:Lcom/android/server/am/PerProcessNandswap;

    if-nez v1, :cond_15

    .line 453
    new-instance v1, Lcom/android/server/am/PerProcessNandswap;

    invoke-direct {v1, p0}, Lcom/android/server/am/PerProcessNandswap;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v1, Lcom/android/server/am/PerProcessNandswap;->INSTANCE:Lcom/android/server/am/PerProcessNandswap;

    .line 455
    :cond_15
    sget-object p0, Lcom/android/server/am/PerProcessNandswap;->INSTANCE:Lcom/android/server/am/PerProcessNandswap;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    monitor-exit v0

    return-object p0

    :catchall_19
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final decideSlotCount()Z
    .registers 7

    .line 141
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 147
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 148
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    const-wide/16 v2, 0x7f

    add-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43000000    # 128.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/lit16 v0, v0, 0x80

    .line 150
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getSlotCountMap()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_85

    .line 151
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_26

    goto :goto_85

    :cond_26
    const/4 v2, 0x0

    .line 154
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcom/android/server/am/PerProcessNandswap;->__SlotCount:I

    move v3, v2

    .line 155
    :goto_38
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_8d

    .line 156
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    if-nez v4, :cond_6c

    .line 158
    sget-object v4, Lcom/android/server/am/PerProcessNandswap;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "invalid slotCountMap item: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sput v2, Lcom/android/server/am/PerProcessNandswap;->__SlotCount:I

    goto :goto_8d

    .line 162
    :cond_6c
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 163
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit16 v5, v5, 0x400

    if-lt v0, v5, :cond_82

    .line 165
    sput v4, Lcom/android/server/am/PerProcessNandswap;->__SlotCount:I

    :cond_82
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 152
    :cond_85
    :goto_85
    sget-object v1, Lcom/android/server/am/PerProcessNandswap;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "invalid slotCountMap"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_8d
    :goto_8d
    sget-object v1, Lcom/android/server/am/PerProcessNandswap;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "swap_total: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", slot_count: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/server/am/PerProcessNandswap;->__SlotCount:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public static dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    const-string v0, " "

    :try_start_2
    const-string v1, "== PerProcessNandswap dump start =="

    .line 757
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "Configurations"

    .line 758
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  feature enable: true"

    .line 759
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 760
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  debug: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 761
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  min_swap_free_percentage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getMinSwapFreePercentage()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  slot_count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getSlotCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 763
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  slot_count_map: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getSlotCountMapString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  slot_lifetime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getSlotLifetime()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 765
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  writeback_on_bg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isWritebackOnBGEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 766
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  psi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isPsiEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 767
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isPsiEnabled()Z

    move-result v1

    if-eqz v1, :cond_107

    .line 768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  psi_throttling_ms: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getPsiThrottlingMS()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 769
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  psi_low_stall_us: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getPsiLowStallUS()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 770
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  psi_high_stall_us: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getPsiHighStallUS()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 773
    :cond_107
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getInstance()Lcom/android/server/am/PerProcessNandswap;

    move-result-object v1

    if-nez v1, :cond_10e

    return-void

    .line 777
    :cond_10e
    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_37f

    const-string/jumbo v2, "writeback"

    .line 778
    aget-object v4, p1, v3

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz v2, :cond_1b2

    .line 779
    sget-boolean v2, Lcom/android/server/am/PerProcessNandswap;->IS_SHIP_BUILD:Z

    if-nez v2, :cond_1aa

    .line 780
    iget-boolean v2, v1, Lcom/android/server/am/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    if-eqz v2, :cond_498

    array-length v2, p1

    if-lt v2, v5, :cond_498

    .line 781
    aget-object v2, p1, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 782
    array-length v3, p1

    const/4 v6, 0x4

    if-ne v3, v6, :cond_13b

    aget-object p1, p1, v5

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_13c

    :cond_13b
    move p1, v5

    :goto_13c
    if-lez p1, :cond_142

    if-le p1, v5, :cond_141

    goto :goto_142

    :cond_141
    move v5, p1

    .line 787
    :cond_142
    :goto_142
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeback start "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 788
    invoke-static {v2, v5}, Lcom/android/server/am/PerProcessNandswap;->compactProcessForWriteback(II)J

    move-result-wide v6

    .line 789
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeback end "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ret:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    and-int/lit8 p1, v5, 0x2

    if-eqz p1, :cond_498

    .line 792
    iget-object p1, v1, Lcom/android/server/am/PerProcessNandswap;->mAm:Lcom/android/server/am/ActivityManagerService;

    if-eqz p1, :cond_498

    .line 793
    invoke-virtual {p1, v2}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordFromPidLocked(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    if-eqz p1, :cond_498

    .line 795
    iput v4, p1, Lcom/android/server/am/ProcessRecord;->ppnState:I

    .line 796
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "changed ppnState "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_498

    :cond_1aa
    const-string/jumbo p1, "writeback cmd is not supported with ship build"

    .line 801
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_498

    :cond_1b2
    const-string/jumbo v0, "prefetch"

    .line 803
    aget-object v2, p1, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20b

    .line 804
    sget-boolean v0, Lcom/android/server/am/PerProcessNandswap;->IS_SHIP_BUILD:Z

    if-nez v0, :cond_203

    .line 805
    iget-boolean v0, v1, Lcom/android/server/am/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    if-eqz v0, :cond_498

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isPrefetchActionEnabled()Z

    move-result v0

    if-eqz v0, :cond_498

    array-length v0, p1

    if-ne v0, v5, :cond_498

    .line 806
    aget-object p1, p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "prefetch start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 808
    invoke-static {p1}, Lcom/android/server/am/PerProcessNandswap;->prefetchProcess(I)V

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "prefetch end "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_498

    :cond_203
    const-string/jumbo p1, "prefetch cmd is not supported with ship build"

    .line 812
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_498

    :cond_20b
    const-string/jumbo v0, "setprop"

    .line 814
    aget-object v2, p1, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_214
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_214} :catch_493

    const-string v2, " done"

    const-string v6, "="

    if-eqz v0, :cond_330

    .line 815
    :try_start_21a
    sget-boolean v0, Lcom/android/server/am/PerProcessNandswap;->IS_SHIP_BUILD:Z

    if-nez v0, :cond_328

    .line 816
    array-length v0, p1

    if-lt v0, v5, :cond_320

    .line 817
    aget-object v0, p1, v4

    .line 818
    aget-object p1, p1, v5

    const-string v3, "debug"

    .line 819
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_239

    .line 820
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/PerProcessNandswap;->__DebugEnabled:Ljava/lang/Boolean;

    goto/16 :goto_2ea

    :cond_239
    const-string/jumbo v3, "slot_count_map"

    .line 821
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_262

    .line 822
    invoke-static {p1}, Lcom/android/server/am/PerProcessNandswap;->stringToSlotCountMap(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    sput-object v3, Lcom/android/server/am/PerProcessNandswap;->__SlotCountMap:Ljava/util/ArrayList;

    .line 824
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->decideSlotCount()Z

    move-result v3

    if-eqz v3, :cond_257

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getSlotCount()I

    move-result v3

    if-lez v3, :cond_257

    .line 825
    invoke-virtual {v1}, Lcom/android/server/am/PerProcessNandswap;->initThreadAndHandler()V

    .line 826
    :cond_257
    iget-object v1, v1, Lcom/android/server/am/PerProcessNandswap;->mNandswapSlotManager:Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getSlotCount()I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;->-$$Nest$msetMaxSlots(Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;I)V

    goto/16 :goto_2ea

    :cond_262
    const-string/jumbo v3, "psi"

    .line 827
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27f

    .line 828
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/android/server/am/PerProcessNandswap;->__PsiEnabled:Ljava/lang/Boolean;

    .line 829
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isPsiEnabled()Z

    move-result v3

    if-eqz v3, :cond_2ea

    .line 830
    invoke-virtual {v1}, Lcom/android/server/am/PerProcessNandswap;->initThreadAndHandler()V

    goto :goto_2ea

    :cond_27f
    const-string/jumbo v3, "psi_throttling_ms"

    .line 831
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29c

    .line 832
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lcom/android/server/am/PerProcessNandswap;->__PsiThrottlingMS:Ljava/lang/Integer;

    .line 833
    iget-object v1, v1, Lcom/android/server/am/PerProcessNandswap;->mMemoryPressureDetector:Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getPsiThrottlingMS()I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;->-$$Nest$msetTrialThrottlingMS(Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;I)V

    goto :goto_2ea

    :cond_29c
    const-string v1, "expand_action"

    .line 834
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2af

    .line 835
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/PerProcessNandswap;->__ExpandActionEnabled:Ljava/lang/Boolean;

    goto :goto_2ea

    :cond_2af
    const-string/jumbo v1, "storage_clock_boost"

    .line 836
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c3

    .line 837
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/PerProcessNandswap;->__StorageClockBoostEnabled:Ljava/lang/Boolean;

    goto :goto_2ea

    :cond_2c3
    const-string/jumbo v1, "prefetch_action"

    .line 838
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d7

    .line 839
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/PerProcessNandswap;->__PrefetchActionEnabled:Ljava/lang/Boolean;

    goto :goto_2ea

    :cond_2d7
    const-string/jumbo v1, "writeback_on_bg"

    .line 840
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30a

    .line 841
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/PerProcessNandswap;->__WritebackOnBGEnabled:Ljava/lang/Boolean;

    .line 846
    :cond_2ea
    :goto_2ea
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set property "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_498

    .line 843
    :cond_30a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalid key for ppnandswap setprop: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_320
    const-string/jumbo p1, "usage: dumpsys activity ppnandswap setprop <key> <value>"

    .line 848
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_498

    :cond_328
    const-string/jumbo p1, "setprop cmd is not supported with ship build"

    .line 851
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_498

    :cond_330
    const-string/jumbo v0, "vtest"

    .line 853
    aget-object v1, p1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_339
    .catch Ljava/lang/Exception; {:try_start_21a .. :try_end_339} :catch_493

    const-string v1, "Invalid command!"

    if-eqz v0, :cond_37a

    .line 854
    :try_start_33d
    array-length v0, p1

    if-lt v0, v5, :cond_498

    .line 855
    aget-object v0, p1, v4

    .line 856
    aget-object p1, p1, v5

    const-string v3, "forced_prefetch"

    .line 857
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_376

    .line 858
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/PerProcessNandswap;->__ForcedPrefetch:Ljava/lang/Integer;

    .line 859
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set vtest property "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_498

    .line 861
    :cond_376
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 866
    :cond_37a
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_498

    .line 869
    :cond_37f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  writeback enable: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v1, Lcom/android/server/am/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 870
    iget-boolean p1, v1, Lcom/android/server/am/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    if-eqz p1, :cond_498

    .line 871
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  writeback limit enable: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->-$$Nest$smisWritebackLimitEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 872
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  expand_action: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isExpandActionEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 873
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  prefetch_action: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isPrefetchActionEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 874
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  storage_clock_boost: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isStorageClockBoostEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 875
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  quota: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->-$$Nest$smreadZramWritebackLimit()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 876
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    pending cached apps to be checked for PPR count="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/android/server/am/PerProcessNandswap;->mPendingTryToPPRProcessesCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 878
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    pending cached apps to be PPR count="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/am/PerProcessNandswap;->mPendingNandswapActivityApp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 879
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    pending & delayed cached apps to be PPR count="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/am/PerProcessNandswap;->mPendingNandswapActivityAppDelayed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 883
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isForcedPrefetchEnabled()Z

    move-result p1

    if-eqz p1, :cond_479

    .line 884
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  forced_prefetch: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getForcedPrefetch()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 886
    :cond_479
    invoke-static {p0, v1}, Lcom/android/server/am/PerProcessNandswap;->dumpProcessList(Ljava/io/PrintWriter;Lcom/android/server/am/PerProcessNandswap;)V

    .line 888
    iget-object p1, v1, Lcom/android/server/am/PerProcessNandswap;->mNandswapSlotManager:Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;

    if-eqz p1, :cond_48a

    const-string p1, "\nSlot state"

    .line 889
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 890
    iget-object p1, v1, Lcom/android/server/am/PerProcessNandswap;->mNandswapSlotManager:Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;

    invoke-virtual {p1, p0}, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;->dumpApps(Ljava/io/PrintWriter;)V

    :cond_48a
    const-string p1, "\nPPNandswap history"

    .line 893
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 894
    invoke-static {p0}, Lcom/android/server/am/PerProcessNandswap$NandswapLogger;->print(Ljava/io/PrintWriter;)V
    :try_end_492
    .catch Ljava/lang/Exception; {:try_start_33d .. :try_end_492} :catch_493

    goto :goto_498

    :catch_493
    const-string p1, "failed to dumpInfo"

    .line 898
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_498
    :goto_498
    const-string p1, "\n== PerProcessNandswap dump end =="

    .line 900
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static dumpMemoryItems(Ljava/io/PrintWriter;Ljava/util/ArrayList;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/PerProcessNandswap$MemoryItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 638
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8d

    .line 639
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PerProcessNandswap$MemoryItem;

    .line 640
    iget-wide v3, v2, Lcom/android/server/am/PerProcessNandswap$MemoryItem;->writeback:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_89

    .line 641
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/PerProcessNandswap$MemoryItem;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v2, Lcom/android/server/am/PerProcessNandswap$MemoryItem;->writeback:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 643
    iget-object v3, v2, Lcom/android/server/am/PerProcessNandswap$MemoryItem;->subitems:Ljava/util/ArrayList;

    if-eqz v3, :cond_89

    .line 644
    invoke-static {v3}, Lcom/android/server/am/PerProcessNandswap;->sortMemoryItems(Ljava/util/List;)V

    move v3, v0

    .line 645
    :goto_3e
    iget-object v5, v2, Lcom/android/server/am/PerProcessNandswap$MemoryItem;->subitems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_89

    .line 646
    iget-object v5, v2, Lcom/android/server/am/PerProcessNandswap$MemoryItem;->subitems:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/PerProcessNandswap$MemoryItem;

    const-string v6, "        "

    .line 647
    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 648
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v5, Lcom/android/server/am/PerProcessNandswap$MemoryItem;->label:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lcom/android/server/am/PerProcessNandswap$MemoryItem;->writeback:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v5, Lcom/android/server/am/PerProcessNandswap$MemoryItem;->swap:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/server/am/PerProcessNandswap$MemoryItem;->ppnState:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lcom/android/server/am/PerProcessNandswap$MemoryItem;->lastNandswapTimeDiff:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    :cond_89
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_8d
    return-void
.end method

.method public static dumpProcessList(Ljava/io/PrintWriter;Lcom/android/server/am/PerProcessNandswap;)V
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 658
    sget-boolean v2, Lcom/android/server/am/PerProcessNandswap;->IS_SHIP_BUILD:Z

    if-eqz v2, :cond_d

    sget-boolean v2, Lcom/android/server/am/PerProcessNandswap;->IS_DEBUG_LEVEL_LOW:Z

    if-eqz v2, :cond_d

    return-void

    :cond_d
    const-string v2, "\nProcessList state"

    .line 661
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 662
    iget-object v2, v1, Lcom/android/server/am/PerProcessNandswap;->mAm:Lcom/android/server/am/ActivityManagerService;

    if-nez v2, :cond_17

    return-void

    :cond_17
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 665
    invoke-virtual {v2, v0, v4, v4, v3}, Lcom/android/server/am/ActivityManagerService;->collectProcesses(Ljava/io/PrintWriter;IZ[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_20

    return-void

    .line 669
    :cond_20
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 670
    sget-object v5, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_LABEL:[Ljava/lang/String;

    array-length v6, v5

    new-array v7, v6, [J

    .line 671
    array-length v5, v5

    new-array v5, v5, [Ljava/util/ArrayList;

    .line 673
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 675
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    move v11, v4

    :goto_36
    if-ge v11, v3, :cond_e4

    .line 678
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ProcessRecord;

    .line 679
    iget-object v15, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 685
    iget-object v4, v1, Lcom/android/server/am/PerProcessNandswap;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v4

    :try_start_43
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 686
    invoke-virtual {v14}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v12

    .line 687
    iget-object v13, v14, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetAdjWithServices()I

    move-result v13

    move-object/from16 v28, v2

    .line 688
    iget v2, v14, Lcom/android/server/am/ProcessRecord;->ppnState:I

    .line 689
    iget-wide v0, v14, Lcom/android/server/am/ProcessRecord;->lastNandswapTime:J

    sub-long v26, v9, v0

    .line 690
    monitor-exit v4
    :try_end_59
    .catchall {:try_start_43 .. :try_end_59} :catchall_de

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    if-nez v12, :cond_61

    :cond_5e
    :goto_5e
    const/4 v14, 0x0

    goto/16 :goto_d3

    :cond_61
    const-string v0, "Swap:"

    const-string v1, "Writeback:"

    .line 695
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 696
    invoke-static {v12, v0}, Lcom/android/server/am/PerProcessNandswap;->getWritebackSizePid(I[Ljava/lang/String;)[J

    move-result-object v0

    if-nez v0, :cond_70

    goto :goto_5e

    :cond_70
    const/4 v1, 0x1

    .line 701
    aget-wide v19, v0, v1

    const-wide/16 v17, 0x0

    cmp-long v4, v19, v17

    if-nez v4, :cond_7b

    if-eqz v2, :cond_5e

    .line 702
    :cond_7b
    new-instance v4, Lcom/android/server/am/PerProcessNandswap$MemoryItem;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " (pid "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/4 v14, 0x0

    aget-wide v21, v0, v14

    aget-wide v23, v0, v1

    move-object/from16 v19, v4

    move/from16 v25, v2

    invoke-direct/range {v19 .. v27}, Lcom/android/server/am/PerProcessNandswap$MemoryItem;-><init>(Ljava/lang/String;JJIJ)V

    .line 704
    invoke-virtual {v8, v12, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v2, v14

    :goto_a6
    if-ge v2, v6, :cond_d3

    add-int/lit8 v12, v6, -0x1

    if-eq v2, v12, :cond_bc

    .line 707
    sget-object v12, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    aget v15, v12, v2

    if-lt v13, v15, :cond_b9

    add-int/lit8 v15, v2, 0x1

    aget v12, v12, v15

    if-ge v13, v12, :cond_b9

    goto :goto_bc

    :cond_b9
    add-int/lit8 v2, v2, 0x1

    goto :goto_a6

    .line 710
    :cond_bc
    :goto_bc
    aget-wide v12, v7, v2

    aget-wide v0, v0, v1

    add-long/2addr v12, v0

    aput-wide v12, v7, v2

    .line 711
    aget-object v0, v5, v2

    if-nez v0, :cond_ce

    .line 712
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    aput-object v0, v5, v2

    .line 714
    :cond_ce
    aget-object v0, v5, v2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d3
    :goto_d3
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v14

    move-object/from16 v2, v28

    goto/16 :goto_36

    :catchall_de
    move-exception v0

    .line 690
    :try_start_df
    monitor-exit v4
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_de

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :cond_e4
    move-object v0, v1

    move v14, v4

    .line 722
    iget-object v0, v0, Lcom/android/server/am/PerProcessNandswap;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    new-instance v1, Lcom/android/server/am/PerProcessNandswap$$ExternalSyntheticLambda0;

    invoke-direct {v1, v8, v7, v5}, Lcom/android/server/am/PerProcessNandswap$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;[J[Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppProfiler;->forAllCpuStats(Ljava/util/function/Consumer;)V

    .line 741
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_f7
    if-ge v4, v6, :cond_11a

    .line 743
    aget-wide v12, v7, v4

    const-wide/16 v1, 0x0

    cmp-long v3, v12, v1

    if-eqz v3, :cond_117

    .line 744
    sget-object v3, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_LABEL:[Ljava/lang/String;

    aget-object v9, v3, v4

    .line 745
    new-instance v3, Lcom/android/server/am/PerProcessNandswap$MemoryItem;

    const-wide/16 v10, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, -0x1

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lcom/android/server/am/PerProcessNandswap$MemoryItem;-><init>(Ljava/lang/String;JJIJ)V

    .line 746
    aget-object v8, v5, v4

    iput-object v8, v3, Lcom/android/server/am/PerProcessNandswap$MemoryItem;->subitems:Ljava/util/ArrayList;

    .line 747
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_117
    add-int/lit8 v4, v4, 0x1

    goto :goto_f7

    :cond_11a
    move-object/from16 v3, p0

    .line 751
    invoke-static {v3, v0}, Lcom/android/server/am/PerProcessNandswap;->dumpMemoryItems(Ljava/io/PrintWriter;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static final getForcedPrefetch()I
    .registers 2

    .line 281
    sget-object v0, Lcom/android/server/am/PerProcessNandswap;->__ForcedPrefetch:Ljava/lang/Integer;

    if-nez v0, :cond_12

    const/4 v0, 0x0

    const-string/jumbo v1, "ro.sys.kernelmemory.nandswap.forced_prefetch"

    .line 282
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/PerProcessNandswap;->__ForcedPrefetch:Ljava/lang/Integer;

    .line 283
    :cond_12
    sget-object v0, Lcom/android/server/am/PerProcessNandswap;->__ForcedPrefetch:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static final getForcedPrefetchDelayMS()I
    .registers 4

    .line 289
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getForcedPrefetch()I

    move-result v0

    if-gez v0, :cond_1e

    .line 293
    sget-object v1, Lcom/android/server/am/PerProcessNandswap;->__Random:Ljava/util/Random;

    if-nez v1, :cond_15

    .line 294
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    sput-object v1, Lcom/android/server/am/PerProcessNandswap;->__Random:Ljava/util/Random;

    :cond_15
    neg-int v0, v0

    .line 296
    sget-object v1, Lcom/android/server/am/PerProcessNandswap;->__Random:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :cond_1e
    return v0
.end method

.method public static getInstance()Lcom/android/server/am/PerProcessNandswap;
    .registers 1

    .line 459
    sget-object v0, Lcom/android/server/am/PerProcessNandswap;->INSTANCE:Lcom/android/server/am/PerProcessNandswap;

    return-object v0
.end method

.method public static final getMinSwapFreePercentage()I
    .registers 2

    .line 104
    sget-object v0, Lcom/android/server/am/PerProcessNandswap;->__MinSwapFreePercentage:Ljava/lang/Integer;

    if-nez v0, :cond_12

    const/4 v0, 0x2

    const-string/jumbo v1, "ro.sys.kernelmemory.nandswap.min_swap_free_percentage"

    .line 105
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/PerProcessNandswap;->__MinSwapFreePercentage:Ljava/lang/Integer;

    .line 106
    :cond_12
    sget-object v0, Lcom/android/server/am/PerProcessNandswap;->__MinSwapFreePercentage:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static final getPsiHighStallUS()I
    .registers 2

    .line 330
    sget-object v0, Lcom/android/server/am/PerProcessNandswap;->__PsiHighStallUS:Ljava/lang/Integer;

    if-nez v0, :cond_14

    const v0, 0x17318

    const-string/jumbo v1, "ro.sys.kernelmemory.nandswap.psi_high_stall_us"

    .line 331
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/PerProcessNandswap;->__PsiHighStallUS:Ljava/lang/Integer;

    .line 332
    :cond_14
    sget-object v0, Lcom/android/server/am/PerProcessNandswap;->__PsiHighStallUS:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static final getPsiLowStallUS()I
    .registers 2

    .line 323
    sget-object v0, Lcom/android/server/am/PerProcessNandswap;->__PsiLowStallUS:Ljava/lang/Integer;

    if-nez v0, :cond_14

    const v0, 0x13880

    const-string/jumbo v1, "ro.sys.kernelmemory.nandswap.psi_low_stall_us"

    .line 324
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/PerProcessNandswap;->__PsiLowStallUS:Ljava/lang/Integer;

    .line 325
    :cond_14
    sget-object v0, Lcom/android/server/am/PerProcessNandswap;->__PsiLowStallUS:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static final getPsiThrottlingMS()I
    .registers 2

    .line 316
    sget-object v0, Lcom/android/server/am/PerProcessNandswap;->__PsiThrottlingMS:Ljava/lang/Integer;

    if-nez v0, :cond_13

    const/16 v0, 0x1388

    const-string/jumbo v1, "ro.sys.kernelmemory.nandswap.psi_throttling_ms"

    .line 317
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/PerProcessNandswap;->__PsiThrottlingMS:Ljava/lang/Integer;

    .line 318
    :cond_13
    sget-object v0, Lcom/android/server/am/PerProcessNandswap;->__PsiThrottlingMS:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static final getSlotCount()I
    .registers 1

    .line 138
    sget v0, Lcom/android/server/am/PerProcessNandswap;->__SlotCount:I

    return v0
.end method

.method public static final getSlotCountMap()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 193
    sget-object v0, Lcom/android/server/am/PerProcessNandswap;->__SlotCountMap:Ljava/util/ArrayList;

    if-nez v0, :cond_13

    const-string/jumbo v0, "ro.sys.kernelmemory.nandswap.slot_count_map"

    const-string v1, ""

    .line 194
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {v0}, Lcom/android/server/am/PerProcessNandswap;->stringToSlotCountMap(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/PerProcessNandswap;->__SlotCountMap:Ljava/util/ArrayList;

    .line 197
    :cond_13
    sget-object v0, Lcom/android/server/am/PerProcessNandswap;->__SlotCountMap:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static final getSlotCountMapString()Ljava/lang/String;
    .registers 6

    .line 260
    sget-object v0, Lcom/android/server/am/PerProcessNandswap;->__SlotCountMap:Ljava/util/ArrayList;

    const-string v1, ""

    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_d

    goto :goto_5d

    .line 262
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/am/PerProcessNandswap;->__SlotCountMap:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 263
    :goto_28
    sget-object v3, Lcom/android/server/am/PerProcessNandswap;->__SlotCountMap:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5c

    .line 264
    sget-object v3, Lcom/android/server/am/PerProcessNandswap;->__SlotCountMap:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    if-nez v3, :cond_3b

    return-object v1

    .line 267
    :cond_3b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_5c
    return-object v0

    :cond_5d
    :goto_5d
    return-object v1
.end method

.method public static final getSlotLifetime()I
    .registers 1

    .line 272
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getSlotCount()I

    move-result v0

    return v0
.end method

.method public static getWritebackSizePid(I[Ljava/lang/String;)[J
    .registers 11

    const/4 v0, 0x0

    if-eqz p1, :cond_87

    if-gtz p0, :cond_7

    goto/16 :goto_87

    .line 593
    :cond_7
    array-length v1, p1

    .line 594
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/smaps_rollup"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 595
    new-array v2, v1, [J

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 598
    :try_start_22
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2c} :catch_60

    .line 600
    :cond_2c
    :goto_2c
    :try_start_2c
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_52

    .line 601
    aget-object v7, p1, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3b

    goto :goto_2c

    :cond_3b
    const-string v7, "\\s+"

    .line 603
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 604
    array-length v7, v6

    const/4 v8, 0x3

    if-ne v7, v8, :cond_4e

    .line 605
    aget-object v6, v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    aput-wide v6, v2, v3
    :try_end_4e
    .catchall {:try_start_2c .. :try_end_4e} :catchall_56

    :cond_4e
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_2c

    .line 612
    :cond_52
    :try_start_52
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_60

    goto :goto_7c

    :catchall_56
    move-exception p1

    .line 598
    :try_start_57
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5b

    goto :goto_5f

    :catchall_5b
    move-exception v3

    :try_start_5c
    invoke-virtual {p1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5f
    throw p1
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_60} :catch_60

    .line 613
    :catch_60
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_7c

    .line 614
    sget-object p1, Lcom/android/server/am/PerProcessNandswap;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to read "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7c
    :goto_7c
    sub-int/2addr v1, v4

    .line 618
    aget-wide p0, v2, v1

    const-wide/16 v3, 0x0

    cmp-long p0, p0, v3

    if-nez p0, :cond_86

    goto :goto_87

    :cond_86
    move-object v0, v2

    :cond_87
    :goto_87
    return-object v0
.end method

.method private native initMemoryPressureDetectorNative(II)I
.end method

.method public static final isDebugEnabled()Z
    .registers 2

    .line 97
    sget-object v0, Lcom/android/server/am/PerProcessNandswap;->__DebugEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_12

    const/4 v0, 0x0

    const-string/jumbo v1, "ro.sys.kernelmemory.nandswap.debug"

    .line 98
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/PerProcessNandswap;->__DebugEnabled:Ljava/lang/Boolean;

    .line 99
    :cond_12
    sget-object v0, Lcom/android/server/am/PerProcessNandswap;->__DebugEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static final isExpandActionEnabled()Z
    .registers 2

    .line 110
    sget-object v0, Lcom/android/server/am/PerProcessNandswap;->__ExpandActionEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_12

    const/4 v0, 0x0

    const-string/jumbo v1, "ro.sys.kernelmemory.nandswap.expand_action"

    .line 111
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/PerProcessNandswap;->__ExpandActionEnabled:Ljava/lang/Boolean;

    .line 112
    :cond_12
    sget-object v0, Lcom/android/server/am/PerProcessNandswap;->__ExpandActionEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static final isForcedPrefetchEnabled()Z
    .registers 1

    .line 286
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getForcedPrefetch()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static final isPrefetchActionEnabled()Z
    .registers 2

    .line 116
    sget-object v0, Lcom/android/server/am/PerProcessNandswap;->__PrefetchActionEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_12

    const/4 v0, 0x0

    const-string/jumbo v1, "ro.sys.kernelmemory.nandswap.prefetch_action"

    .line 117
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/PerProcessNandswap;->__PrefetchActionEnabled:Ljava/lang/Boolean;

    .line 118
    :cond_12
    sget-object v0, Lcom/android/server/am/PerProcessNandswap;->__PrefetchActionEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static final isPsiEnabled()Z
    .registers 2

    .line 309
    sget-object v0, Lcom/android/server/am/PerProcessNandswap;->__PsiEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_12

    const/4 v0, 0x0

    const-string/jumbo v1, "ro.sys.kernelmemory.nandswap.psi"

    .line 310
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/PerProcessNandswap;->__PsiEnabled:Ljava/lang/Boolean;

    .line 311
    :cond_12
    sget-object v0, Lcom/android/server/am/PerProcessNandswap;->__PsiEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static final isStorageClockBoostEnabled()Z
    .registers 2

    .line 128
    sget-object v0, Lcom/android/server/am/PerProcessNandswap;->__StorageClockBoostEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_12

    const/4 v0, 0x0

    const-string/jumbo v1, "ro.sys.kernelmemory.nandswap.storage_clock_boost"

    .line 129
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/PerProcessNandswap;->__StorageClockBoostEnabled:Ljava/lang/Boolean;

    .line 130
    :cond_12
    sget-object v0, Lcom/android/server/am/PerProcessNandswap;->__StorageClockBoostEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static final isWritebackOnBGEnabled()Z
    .registers 2

    .line 122
    sget-object v0, Lcom/android/server/am/PerProcessNandswap;->__WritebackOnBGEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_12

    const/4 v0, 0x0

    const-string/jumbo v1, "ro.sys.kernelmemory.nandswap.writeback_on_bg"

    .line 123
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/PerProcessNandswap;->__WritebackOnBGEnabled:Ljava/lang/Boolean;

    .line 124
    :cond_12
    sget-object v0, Lcom/android/server/am/PerProcessNandswap;->__WritebackOnBGEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$dumpProcessList$0(Landroid/util/SparseArray;[J[Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker$Stats;)V
    .registers 15

    .line 723
    iget-wide v0, p3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_64

    iget v0, p3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p0

    if-gez p0, :cond_64

    const-string p0, "Swap:"

    const-string v0, "Writeback:"

    .line 724
    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    .line 725
    iget v0, p3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v0, p0}, Lcom/android/server/am/PerProcessNandswap;->getWritebackSizePid(I[Ljava/lang/String;)[J

    move-result-object p0

    if-nez p0, :cond_21

    return-void

    .line 730
    :cond_21
    new-instance v9, Lcom/android/server/am/PerProcessNandswap$MemoryItem;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 p3, 0x0

    aget-wide v2, p0, p3

    const/4 v10, 0x1

    aget-wide v4, p0, v10

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/PerProcessNandswap$MemoryItem;-><init>(Ljava/lang/String;JJIJ)V

    .line 733
    aget-wide v0, p1, p3

    aget-wide v2, p0, v10

    add-long/2addr v0, v2

    aput-wide v0, p1, p3

    .line 734
    aget-object p0, p2, p3

    if-nez p0, :cond_5f

    .line 735
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    aput-object p0, p2, p3

    .line 737
    :cond_5f
    aget-object p0, p2, p3

    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_64
    return-void
.end method

.method public static notifyDiedAppToPPR(Lcom/android/server/am/ProcessRecord;)V
    .registers 4

    .line 464
    :try_start_0
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getInstance()Lcom/android/server/am/PerProcessNandswap;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 466
    iget-boolean v1, v0, Lcom/android/server/am/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    if-eqz v1, :cond_2d

    iget-object v1, v0, Lcom/android/server/am/PerProcessNandswap;->mNandswapSlotManager:Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;

    if-nez v1, :cond_f

    goto :goto_2d

    .line 468
    :cond_f
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getSlotCount()I

    move-result v1

    if-gtz v1, :cond_16

    return-void

    :cond_16
    if-nez p0, :cond_19

    return-void

    .line 476
    :cond_19
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->ppnState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_21

    const/4 v2, 0x2

    if-ne v1, v2, :cond_32

    .line 478
    :cond_21
    iget-object v0, v0, Lcom/android/server/am/PerProcessNandswap;->mMsgHandler:Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 479
    invoke-virtual {v0, v1, v2, v2, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 478
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2e

    goto :goto_32

    :cond_2d
    :goto_2d
    return-void

    :catch_2e
    move-exception p0

    .line 482
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_32
    :goto_32
    return-void
.end method

.method public static notifyEntryAppToPPR(Ljava/lang/String;)V
    .registers 4

    .line 529
    :try_start_0
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getInstance()Lcom/android/server/am/PerProcessNandswap;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 531
    iget-boolean v1, v0, Lcom/android/server/am/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    if-eqz v1, :cond_25

    iget-object v1, v0, Lcom/android/server/am/PerProcessNandswap;->mNandswapSlotManager:Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;

    if-nez v1, :cond_f

    goto :goto_25

    .line 533
    :cond_f
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getSlotCount()I

    move-result v1

    if-gtz v1, :cond_16

    return-void

    :cond_16
    if-nez p0, :cond_19

    return-void

    .line 538
    :cond_19
    iget-object v0, v0, Lcom/android/server/am/PerProcessNandswap;->mMsgHandler:Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 539
    invoke-virtual {v0, v1, v2, v2, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 538
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_26

    goto :goto_2a

    :cond_25
    :goto_25
    return-void

    :catch_26
    move-exception p0

    .line 542
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2a
    return-void
.end method

.method public static notifyReentryAppToPPR(I)V
    .registers 4

    .line 488
    :try_start_0
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getInstance()Lcom/android/server/am/PerProcessNandswap;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 490
    iget-boolean v1, v0, Lcom/android/server/am/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    if-eqz v1, :cond_36

    iget-object v1, v0, Lcom/android/server/am/PerProcessNandswap;->mNandswapSlotManager:Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;

    if-nez v1, :cond_f

    goto :goto_36

    .line 492
    :cond_f
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getSlotCount()I

    move-result v1

    if-gtz v1, :cond_16

    return-void

    .line 495
    :cond_16
    iget-object v1, v0, Lcom/android/server/am/PerProcessNandswap;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordFromPidLocked(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p0

    if-nez p0, :cond_1f

    return-void

    .line 503
    :cond_1f
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->ppnState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2a

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2a

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3b

    .line 506
    :cond_2a
    iget-object v0, v0, Lcom/android/server/am/PerProcessNandswap;->mMsgHandler:Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 507
    invoke-virtual {v0, v1, v2, v2, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 506
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_37

    goto :goto_3b

    :cond_36
    :goto_36
    return-void

    :catch_37
    move-exception p0

    .line 510
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3b
    :goto_3b
    return-void
.end method

.method private static native prefetchProcess(I)V
.end method

.method public static sortMemoryItems(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/am/PerProcessNandswap$MemoryItem;",
            ">;)V"
        }
    .end annotation

    .line 624
    new-instance v0, Lcom/android/server/am/PerProcessNandswap$2;

    invoke-direct {v0}, Lcom/android/server/am/PerProcessNandswap$2;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public static staticInitialize()V
    .registers 2

    .line 442
    sget-object v0, Lcom/android/server/am/PerProcessNandswap;->TAG:Ljava/lang/String;

    const-string v1, "Static Initialization of PerProcessNandswap"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static stringToSlotCountMap(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p0, :cond_100

    .line 204
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_10

    goto/16 :goto_100

    :cond_10
    const-string v2, "default"

    .line 213
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string p0, "5,6,7,8,9"

    :cond_1a
    const-string v2, ","

    .line 217
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 218
    array-length v3, v2

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_e9

    .line 223
    sget-object v3, Lcom/android/server/am/PerProcessNandswap;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "slot_cout_map: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_42} :catch_11b

    const-string v4, "Invalid slot count: "

    const-string v5, " in "

    if-ltz v3, :cond_ce

    const/16 v6, 0x64

    if-ge v3, v6, :cond_ce

    .line 230
    :try_start_4c
    new-instance v7, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v1

    move v8, v7

    .line 234
    :goto_5e
    array-length v9, v2

    div-int/lit8 v9, v9, 0x2

    if-ge v7, v9, :cond_132

    mul-int/lit8 v9, v7, 0x2

    add-int/lit8 v10, v9, 0x1

    .line 235
    aget-object v10, v2, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v9, v9, 0x2

    .line 236
    aget-object v9, v2, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-lez v10, :cond_b1

    if-ge v10, v6, :cond_b1

    if-ge v8, v10, :cond_b1

    if-ltz v9, :cond_96

    if-ge v9, v6, :cond_96

    if-ge v3, v9, :cond_96

    .line 244
    new-instance v3, Landroid/util/Pair;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v3, v8, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    move v3, v9

    move v8, v10

    goto :goto_5e

    .line 242
    :cond_96
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 240
    :cond_b1
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid thresholdGB: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 229
    :cond_ce
    new-instance v2, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 220
    :cond_e9
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid slot_count_map: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 206
    :cond_100
    :goto_100
    sget-object p0, Lcom/android/server/am/PerProcessNandswap;->TAG:Ljava/lang/String;

    const-string v2, "Empty slot_count_map"

    invoke-static {p0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 209
    new-instance p0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_11a} :catch_11b

    return-object v0

    :catch_11b
    move-exception p0

    .line 251
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 254
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 255
    new-instance p0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_132
    return-object v0
.end method

.method private native waitForMemoryPressure()I
.end method


# virtual methods
.method public final getActionFromAdj(I)I
    .registers 2

    const/16 p0, 0xfa

    if-eq p1, p0, :cond_12

    const/16 p0, 0x1f4

    if-eq p1, p0, :cond_10

    const/16 p0, 0x320

    if-eq p1, p0, :cond_e

    const/4 p0, 0x0

    goto :goto_13

    :cond_e
    const/4 p0, 0x1

    goto :goto_13

    :cond_10
    const/4 p0, 0x2

    goto :goto_13

    :cond_12
    const/4 p0, 0x3

    :goto_13
    return p0
.end method

.method public final getExpandActionFromAdj(I)I
    .registers 2

    .line 1006
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isExpandActionEnabled()Z

    move-result p0

    if-eqz p0, :cond_19

    const/16 p0, 0x64

    if-eq p1, p0, :cond_17

    const/16 p0, 0xc8

    if-eq p1, p0, :cond_15

    const/16 p0, 0xe1

    if-eq p1, p0, :cond_13

    goto :goto_19

    :cond_13
    const/4 p0, 0x4

    goto :goto_1a

    :cond_15
    const/4 p0, 0x5

    goto :goto_1a

    :cond_17
    const/4 p0, 0x6

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p0, 0x0

    :goto_1a
    return p0
.end method

.method public final getProcessRecord(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;
    .registers 3

    .line 1132
    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordFromPidLocked(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 1133
    iget-object p2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz p2, :cond_13

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSwapFreePercentage(Lcom/android/internal/util/MemInfoReader;)I
    .registers 9

    .line 973
    invoke-virtual {p1}, Lcom/android/internal/util/MemInfoReader;->getSwapFreeSizeKb()J

    move-result-wide v0

    .line 974
    invoke-virtual {p1}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    move-result-wide p0

    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    const-wide/16 v5, 0x64

    if-gtz v4, :cond_12

    move-wide v0, v2

    goto :goto_14

    :cond_12
    mul-long/2addr v0, v5

    .line 975
    div-long/2addr v0, p0

    :goto_14
    cmp-long p0, v0, v2

    if-lez p0, :cond_19

    move-wide v2, v0

    :cond_19
    cmp-long p0, v2, v5

    if-gez p0, :cond_1e

    move-wide v5, v2

    :cond_1e
    long-to-int p0, v5

    return p0
.end method

.method public init()V
    .registers 10

    const/4 v0, 0x0

    .line 934
    :try_start_1
    sget-object v1, Lcom/android/server/am/PerProcessNandswap;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "init start"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->-$$Nest$smisWritebackEnabled()Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "Writeback is disabled"

    .line 937
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iput-boolean v0, p0, Lcom/android/server/am/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    return-void

    .line 943
    :cond_17
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->decideSlotCount()Z

    move-result v2

    if-nez v2, :cond_26

    const-string/jumbo v2, "swap_total not found"

    .line 944
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    iput-boolean v0, p0, Lcom/android/server/am/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    return-void

    .line 949
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/am/PerProcessNandswap;->initThreadAndHandler()V

    .line 950
    new-instance v2, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getSlotCount()I

    move-result v6

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getSlotLifetime()I

    move-result v7

    const/4 v8, 0x0

    move-object v3, v2

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;-><init>(Lcom/android/server/am/PerProcessNandswap;Lcom/android/server/am/PerProcessNandswap;IILcom/android/server/am/PerProcessNandswap$NandswapSlotManager-IA;)V

    iput-object v2, p0, Lcom/android/server/am/PerProcessNandswap;->mNandswapSlotManager:Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;

    const/4 v2, 0x1

    .line 951
    iput-boolean v2, p0, Lcom/android/server/am/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    .line 953
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WritebackEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->-$$Nest$smisWritebackEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WritebackLimitEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->-$$Nest$smisWritebackLimitEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WritebackQuotaAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->-$$Nest$smisWritebackQuotaAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "quota: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap$ZramInfo;->-$$Nest$smreadZramWritebackLimit()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "slot_count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getSlotCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "slot_lifetime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getSlotLifetime()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "psi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isPsiEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "init success"

    .line 961
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f1} :catch_f2

    goto :goto_fc

    .line 963
    :catch_f2
    sget-object v1, Lcom/android/server/am/PerProcessNandswap;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "init failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iput-boolean v0, p0, Lcom/android/server/am/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    :goto_fc
    return-void
.end method

.method public final initThreadAndHandler()V
    .registers 8

    .line 904
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap;->mNandswapThread:Lcom/android/server/ServiceThread;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_23

    .line 905
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v3, "PerProcessNandswapThread"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/am/PerProcessNandswap;->mNandswapThread:Lcom/android/server/ServiceThread;

    .line 907
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 908
    new-instance v0, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/PerProcessNandswap$NandswapHandler;-><init>(Lcom/android/server/am/PerProcessNandswap;Lcom/android/server/am/PerProcessNandswap$NandswapHandler-IA;)V

    iput-object v0, p0, Lcom/android/server/am/PerProcessNandswap;->mNandswapHandler:Landroid/os/Handler;

    .line 910
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap;->mNandswapThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {v0, v4}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 915
    :cond_23
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getSlotCount()I

    move-result v0

    if-lez v0, :cond_61

    .line 917
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap;->mMsgThread:Lcom/android/server/ServiceThread;

    if-nez v0, :cond_41

    .line 918
    new-instance v0, Lcom/android/server/ServiceThread;

    const/4 v3, 0x0

    const-string v4, "PPNandswapMsgThread"

    invoke-direct {v0, v4, v3, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/am/PerProcessNandswap;->mMsgThread:Lcom/android/server/ServiceThread;

    .line 920
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 921
    new-instance v0, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;

    invoke-direct {v0, p0, p0, v1}, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;-><init>(Lcom/android/server/am/PerProcessNandswap;Lcom/android/server/am/PerProcessNandswap;Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler-IA;)V

    iput-object v0, p0, Lcom/android/server/am/PerProcessNandswap;->mMsgHandler:Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;

    .line 925
    :cond_41
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isPsiEnabled()Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap;->mMemoryPressureDetector:Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;

    if-nez v0, :cond_61

    .line 926
    new-instance v0, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;

    .line 927
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getPsiThrottlingMS()I

    move-result v4

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getPsiLowStallUS()I

    move-result v5

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getPsiHighStallUS()I

    move-result v6

    move-object v1, v0

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;-><init>(Lcom/android/server/am/PerProcessNandswap;Lcom/android/server/am/PerProcessNandswap;III)V

    iput-object v0, p0, Lcom/android/server/am/PerProcessNandswap;->mMemoryPressureDetector:Lcom/android/server/am/PerProcessNandswap$MemoryPressureDetector;

    :cond_61
    return-void
.end method

.method public final isAppLaunch()Z
    .registers 5

    const/4 p0, 0x0

    .line 1154
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/sys/kernel/mm/vmscan/am_app_launch"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_23

    .line 1155
    :try_start_d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_19

    .line 1156
    :try_start_15
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_24

    goto :goto_31

    :catchall_19
    move-exception v1

    .line 1154
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    goto :goto_22

    :catchall_1e
    move-exception v0

    :try_start_1f
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_22
    throw v1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_23} :catch_23

    :catch_23
    move v1, p0

    .line 1157
    :catch_24
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1158
    sget-object v0, Lcom/android/server/am/PerProcessNandswap;->TAG:Ljava/lang/String;

    const-string v2, "failed to read /sys/kernel/mm/vmscan/am_app_launch"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    :cond_31
    :goto_31
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1163
    sget-object v0, Lcom/android/server/am/PerProcessNandswap;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "am_app_launch : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    const/4 v0, 0x1

    if-ne v1, v0, :cond_51

    move p0, v0

    :cond_51
    return p0
.end method

.method public final isExpandAction(I)Z
    .registers 3

    .line 1025
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isExpandActionEnabled()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    :cond_8
    const/4 p0, 0x4

    if-eq p1, p0, :cond_12

    const/4 p0, 0x5

    if-eq p1, p0, :cond_12

    const/4 p0, 0x6

    if-eq p1, p0, :cond_12

    return v0

    :cond_12
    const/4 p0, 0x1

    return p0
.end method

.method public isWritebackEnabled()Z
    .registers 1

    .line 969
    iget-boolean p0, p0, Lcom/android/server/am/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    return p0
.end method

.method public final nandswapActivityAppDelayed(Lcom/android/server/am/ProcessRecord;)V
    .registers 4

    .line 1125
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap;->mPendingNandswapActivityAppDelayed:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap;->mNandswapHandler:Landroid/os/Handler;

    const/4 p1, 0x3

    .line 1127
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    .line 1126
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final nandswapNonActivityApp(Lcom/android/server/am/ProcessRecord;II)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 1098
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap;->mPendingNandswapNonActivityApp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x14

    cmp-long v0, v0, v2

    if-gez v0, :cond_1d

    .line 1099
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap;->mPendingNandswapNonActivityApp:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1100
    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap;->mNandswapHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 1101
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 1100
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2a

    .line 1104
    :cond_1d
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_2a

    .line 1105
    sget-object p0, Lcom/android/server/am/PerProcessNandswap;->TAG:Ljava/lang/String;

    const-string p1, "Skipping send NANDSWAP_NON_ACTIVITY_APP_MSG"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    :goto_2a
    return-void
.end method

.method public final nandswapNonActivityAppDelayed(Lcom/android/server/am/ProcessRecord;II)V
    .registers 8

    .line 1111
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap;->mPendingNandswapNonActivityAppDelayed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x14

    cmp-long v0, v0, v2

    if-gez v0, :cond_1f

    .line 1112
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap;->mPendingNandswapNonActivityAppDelayed:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1113
    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap;->mNandswapHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    .line 1114
    invoke-virtual {p0, p1, p3, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 p2, 0x1388

    .line 1113
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2c

    .line 1118
    :cond_1f
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_2c

    .line 1119
    sget-object p0, Lcom/android/server/am/PerProcessNandswap;->TAG:Ljava/lang/String;

    const-string p1, "Skipping send NANDSWAP_NON_ACTIVITY_APP_DELAYED_MSG"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    :goto_2c
    return-void
.end method

.method public notifyAppBecomeBG(Lcom/android/server/am/ProcessRecord;)V
    .registers 4

    .line 516
    :try_start_0
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isWritebackOnBGEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 519
    :cond_7
    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap;->mMsgHandler:Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 520
    invoke-virtual {p0, v0, v1, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 519
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception p0

    .line 523
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_17
    return-void
.end method

.method public final requestChangePPRState(Lcom/android/server/am/ProcessRecord;I)V
    .registers 4

    const/4 v0, 0x0

    .line 1140
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/PerProcessNandswap;->requestChangePPRState(Lcom/android/server/am/ProcessRecord;II)V

    return-void
.end method

.method public final requestChangePPRState(Lcom/android/server/am/ProcessRecord;II)V
    .registers 5

    .line 1144
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getSlotCount()I

    move-result v0

    if-lez v0, :cond_10

    .line 1145
    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap;->mMsgHandler:Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;

    const/4 v0, 0x2

    .line 1146
    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1145
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_10
    return-void
.end method

.method public final shouldNandswapNonActivityApp(Lcom/android/server/am/ProcessRecord;JJ)Z
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 1086
    iget-wide v0, p1, Lcom/android/server/am/ProcessRecord;->lastNandswapTime:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_b

    .line 1087
    iput-wide p2, p1, Lcom/android/server/am/ProcessRecord;->lastNandswapTime:J

    goto :goto_15

    :cond_b
    sub-long v0, p2, v0

    cmp-long p0, v0, p4

    if-lez p0, :cond_15

    const/4 p0, 0x1

    .line 1090
    iput-wide p2, p1, Lcom/android/server/am/ProcessRecord;->lastNandswapTime:J

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method public tryNandswapNonActivityApp(Lcom/android/server/am/ProcessRecord;J)V
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    if-nez p1, :cond_a

    .line 1042
    :try_start_2
    sget-object p0, Lcom/android/server/am/PerProcessNandswap;->TAG:Ljava/lang/String;

    const-string p2, "failed to tryNandswapNonActivityApp: app is null"

    invoke-static {p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1047
    :cond_a
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    .line 1048
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v1

    const-wide/32 v2, 0x927c0

    if-eq v0, v1, :cond_26

    .line 1052
    invoke-virtual {p0, v0}, Lcom/android/server/am/PerProcessNandswap;->getActionFromAdj(I)I

    move-result v4

    if-nez v4, :cond_43

    .line 1054
    invoke-virtual {p0, v0}, Lcom/android/server/am/PerProcessNandswap;->getExpandActionFromAdj(I)I

    move-result v4

    goto :goto_43

    :cond_26
    if-gez v0, :cond_2a

    const/4 v4, 0x7

    goto :goto_43

    :cond_2a
    const/16 v4, 0xfa

    if-lt v0, v4, :cond_3a

    .line 1059
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1060
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3a

    const/16 v4, 0x8

    goto :goto_43

    .line 1063
    :cond_3a
    invoke-virtual {p0, v0}, Lcom/android/server/am/PerProcessNandswap;->getExpandActionFromAdj(I)I

    move-result v4

    if-eqz v4, :cond_43

    const-wide/32 v2, 0x1b7740

    :cond_43
    :goto_43
    if-eqz v4, :cond_cc

    move-object v5, p0

    move-object v6, p1

    move-wide v7, p2

    move-wide v9, v2

    .line 1070
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/PerProcessNandswap;->shouldNandswapNonActivityApp(Lcom/android/server/am/ProcessRecord;JJ)Z

    move-result p2

    if-eqz p2, :cond_cc

    .line 1071
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_a4

    .line 1072
    sget-object p2, Lcom/android/server/am/PerProcessNandswap;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "nandswap "

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " pkg:"

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " pid:"

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " uid:"

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " setAdj:"

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " curAdj:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " throttle:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    :cond_a4
    invoke-virtual {p0, p1, v0, v4}, Lcom/android/server/am/PerProcessNandswap;->nandswapNonActivityApp(Lcom/android/server/am/ProcessRecord;II)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a7} :catch_a8

    goto :goto_cc

    .line 1078
    :catch_a8
    sget-object p0, Lcom/android/server/am/PerProcessNandswap;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "failed to tryNandswapNonActivityApp "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cc
    :goto_cc
    return-void
.end method

.method public tryToPerProcessNandswap(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 8

    if-eqz p1, :cond_75

    if-nez p2, :cond_5

    goto :goto_75

    .line 2089
    :cond_5
    :try_start_5
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getSlotCount()I

    move-result v0

    if-gtz v0, :cond_13

    .line 2090
    sget-object p0, Lcom/android/server/am/PerProcessNandswap;->TAG:Ljava/lang/String;

    const-string p1, "Nandswap request: ignored (reason: this device does not support PerProcessNandswap for apps with activities)"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2094
    :cond_13
    sget-object v0, Lcom/android/server/am/PerProcessNandswap;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nandswap request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    iget p2, p0, Lcom/android/server/am/PerProcessNandswap;->mPendingTryToPPRProcessesCount:I

    int-to-long v1, p2

    const-wide/16 v3, 0x64

    cmp-long p2, v1, v3

    if-ltz p2, :cond_4d

    const-string p2, "Nandswap: too many targetApps to be checked for PPR. deny the request."

    .line 2097
    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    :cond_4d
    iget-object p2, p0, Lcom/android/server/am/PerProcessNandswap;->mPendingTryToPPRProcessesCountLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_50} :catch_7d

    .line 2101
    :try_start_50
    iget v0, p0, Lcom/android/server/am/PerProcessNandswap;->mPendingTryToPPRProcessesCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/PerProcessNandswap;->mPendingTryToPPRProcessesCount:I

    .line 2102
    monitor-exit p2
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_72

    .line 2103
    :try_start_57
    new-instance p2, Landroid/util/Pair;

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2104
    iget-object p1, p0, Lcom/android/server/am/PerProcessNandswap;->mMsgHandler:Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;

    invoke-virtual {p1, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2105
    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap;->mMsgHandler:Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_71} :catch_7d

    goto :goto_81

    :catchall_72
    move-exception p0

    .line 2102
    :try_start_73
    monitor-exit p2
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    :try_start_74
    throw p0

    .line 2085
    :cond_75
    :goto_75
    sget-object p0, Lcom/android/server/am/PerProcessNandswap;->TAG:Ljava/lang/String;

    const-string p1, "Nandswap request: ignored (reason: null targetApp or null reason will be ignored)"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_7c} :catch_7d

    return-void

    :catch_7d
    move-exception p0

    .line 2107
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_81
    return-void
.end method

.method public final tryToPerProcessNandswapByPsi(I)V
    .registers 4

    .line 2112
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->getSlotCount()I

    move-result v0

    if-lez v0, :cond_1c

    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->isPsiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2113
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap;->mMsgHandler:Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;

    const/4 v1, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2114
    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap;->mMsgHandler:Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1c
    return-void
.end method

.method public final updateLastNandswapStats(ILjava/lang/String;[J)V
    .registers 6

    .line 419
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap;->mLastNandswapStats:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap;->mLastNandswapStats:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lcom/android/server/am/PerProcessNandswap$LastNandswapStats;

    invoke-direct {v0, p2, p3}, Lcom/android/server/am/PerProcessNandswap$LastNandswapStats;-><init>(Ljava/lang/String;[J)V

    invoke-virtual {p0, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
