.class public final Lcom/android/server/am/ActiveServices;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActiveServices$ServiceDumper;,
        Lcom/android/server/am/ActiveServices$ServiceRestarter;,
        Lcom/android/server/am/ActiveServices$ServiceLookupResult;,
        Lcom/android/server/am/ActiveServices$AppOpCallback;,
        Lcom/android/server/am/ActiveServices$ServiceMap;,
        Lcom/android/server/am/ActiveServices$ActiveForegroundApp;,
        Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;,
        Lcom/android/server/am/ActiveServices$FgsStopReason;
    }
.end annotation


# static fields
.field public static final DATE_FORMATTER:Ljava/text/SimpleDateFormat;

.field public static final DEBUG_DELAYED_SERVICE:Z

.field public static final DEBUG_DELAYED_STARTS:Z

.field public static final FGS_BG_START_RESTRICTION_CHANGE_ID:J = 0xa2c30a7L

.field public static final FGS_IMMEDIATE_DISPLAY_MASK:I = 0x36

.field public static final FGS_LOGGER_MAX_SIZE:I = 0x80

.field public static final FGS_START_EXCEPTION_CHANGE_ID:J = 0xa5fa937L

.field public static final FGS_STOP_REASON_STOP_FOREGROUND:I = 0x1

.field public static final FGS_STOP_REASON_STOP_SERVICE:I = 0x2

.field public static final FGS_STOP_REASON_UNKNOWN:I = 0x0

.field public static final LAST_ANR_LIFETIME_DURATION_MSECS:I = 0x6ddd00

.field public static final LOG_SERVICE_START_STOP:Z = false

.field public static final SERVICE_BACKGROUND_TIMEOUT:I

.field public static final SERVICE_TIMEOUT:I

.field public static final SHOW_DUNGEON_NOTIFICATION:Z = false

.field public static final SYSTEMUI_SERVICE:Ljava/lang/String; = "SystemUIService"

.field public static final TAG:Ljava/lang/String; = "ActivityManager"

.field public static final TAG_MU:Ljava/lang/String; = "ActivityManager_MU"

.field public static final TAG_SERVICE:Ljava/lang/String; = "ActivityManager"

.field public static final TAG_SERVICE_EXECUTING:Ljava/lang/String; = "ActivityManager"


# instance fields
.field public mAllowListWhileInUsePermissionInFgs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mAm:Lcom/android/server/am/ActivityManagerService;

.field public mAppStateTracker:Lcom/android/server/AppStateTracker;

.field public mAppWidgetManagerInternal:Landroid/appwidget/AppWidgetManagerInternal;

.field public final mDestroyingServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mFgsAppOpCallbacks:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ActiveServices$AppOpCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mFgsDeferralEligible:Landroid/util/SparseLongArray;

.field public mFgsDeferralRateLimited:Z

.field public final mFgsObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IForegroundServiceObserver;",
            ">;"
        }
    .end annotation
.end field

.field public mLastAnrDump:Ljava/lang/String;

.field public final mLastAnrDumpClearer:Ljava/lang/Runnable;

.field public mMaxStartingBackground:I

.field public mPendingBringups:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/am/ServiceRecord;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mPendingFgsNotifications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mPendingServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mPostDeferredFGSNotifications:Ljava/lang/Runnable;

.field public final mRestartBackoffDisabledPackages:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mRestartingServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mRevivalServicesMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mScreenOn:Z

.field public final mServiceConnections:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mServiceMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ActiveServices$ServiceMap;",
            ">;"
        }
    .end annotation
.end field

.field public mTmpCollectionResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$60TwRpnHCYY2uQnY5ArE1x0deGw(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ServiceRecord;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/ActiveServices;->lambda$setServiceRestartBackoffEnabledLocked$0(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ServiceRecord;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$P7gXX2QkGyAA11aRhQhw_O3Ggb0(Lcom/android/server/am/ActiveServices;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ActiveServices;->lambda$attachApplicationLocked$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$UcdKUNT0BfDfplUsPw_hSdo6K8I(Ljava/util/ArrayList;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/am/ActiveServices;->lambda$bringDownDisabledPackageServicesLocked$2(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vyu1daGLMYJkJQX8bI7wdYmAWj0(Lcom/android/server/am/ActiveServices;ILcom/android/server/am/ProcessRecord;)Ljava/lang/Integer;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActiveServices;->lambda$shouldAllowFgsStartForegroundNoBindingCheckLocked$6(ILcom/android/server/am/ProcessRecord;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZpheeYnd9_HRsaEC60hInjLc4HQ(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/ActiveServices;->lambda$dumpService$3(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iWJaL8jVZysRVAZ5BJ6pXyvmtAw(Lcom/android/server/am/ActiveServices;ILandroid/util/ArraySet;Lcom/android/server/am/ProcessRecord;)Landroid/util/Pair;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ActiveServices;->lambda$canBindingClientStartFgsLocked$5(ILandroid/util/ArraySet;Lcom/android/server/am/ProcessRecord;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nA13JuOT7IBGjMOMihYdCnuLm2o(ILcom/android/server/am/ProcessRecord;)Ljava/lang/Integer;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/ActiveServices;->lambda$shouldAllowFgsWhileInUsePermissionLocked$4(ILcom/android/server/am/ProcessRecord;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingBringups(Lcom/android/server/am/ActiveServices;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mbringUpServiceLocked(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;IZZZZZ)Ljava/lang/String;
    .registers 8

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetServiceMapLocked(Lcom/android/server/am/ActiveServices;I)Lcom/android/server/am/ActiveServices$ServiceMap;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misForegroundServiceAllowedInBackgroundRestricted(Lcom/android/server/am/ActiveServices;ILjava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActiveServices;->isForegroundServiceAllowedInBackgroundRestricted(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mrequestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ZIZLandroid/app/IServiceConnection;)Z
    .registers 10

    invoke-virtual/range {p0 .. p9}, Lcom/android/server/am/ActiveServices;->requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ZIZLandroid/app/IServiceConnection;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mstartServiceInnerLocked(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;IIZZZLandroid/os/IBinder;)Landroid/content/ComponentName;
    .registers 9

    invoke-virtual/range {p0 .. p8}, Lcom/android/server/am/ActiveServices;->startServiceInnerLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;IIZZZLandroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG_DELAYED_SERVICE()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG_DELAYED_STARTS()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 224
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    sput-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    .line 225
    sput-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    .line 237
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v0, v0, 0x7530

    sput v0, Lcom/android/server/am/ActiveServices;->SERVICE_TIMEOUT:I

    mul-int/lit8 v0, v0, 0xa

    .line 242
    sput v0, Lcom/android/server/am/ActiveServices;->SERVICE_BACKGROUND_TIMEOUT:I

    .line 373
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/ActiveServices;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 4

    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mRevivalServicesMessages:Ljava/util/List;

    .line 289
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    .line 295
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 326
    iput-boolean v0, p0, Lcom/android/server/am/ActiveServices;->mFgsDeferralRateLimited:Z

    .line 331
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mFgsDeferralEligible:Landroid/util/SparseLongArray;

    .line 336
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mFgsObservers:Landroid/os/RemoteCallbackList;

    .line 342
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    .line 345
    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    .line 348
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mFgsAppOpCallbacks:Landroid/util/SparseArray;

    .line 354
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mRestartBackoffDisabledPackages:Landroid/util/ArraySet;

    .line 360
    iput-boolean v0, p0, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    .line 370
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mAllowListWhileInUsePermissionInFgs:Landroid/util/ArraySet;

    .line 393
    new-instance v0, Lcom/android/server/am/ActiveServices$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActiveServices$1;-><init>(Lcom/android/server/am/ActiveServices;)V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mLastAnrDumpClearer:Ljava/lang/Runnable;

    .line 2481
    new-instance v0, Lcom/android/server/am/ActiveServices$5;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActiveServices$5;-><init>(Lcom/android/server/am/ActiveServices;)V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mPostDeferredFGSNotifications:Ljava/lang/Runnable;

    .line 599
    iput-object p1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    :try_start_76
    const-string/jumbo p1, "ro.config.max_starting_bg"

    const-string v0, "0"

    .line 602
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_83
    .catch Ljava/lang/RuntimeException; {:try_start_76 .. :try_end_83} :catch_84

    goto :goto_85

    :catch_84
    const/4 p1, 0x0

    :goto_85
    if-lez p1, :cond_88

    goto :goto_8a

    :cond_88
    const/16 p1, 0x19

    .line 608
    :goto_8a
    iput p1, p0, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    const-string/jumbo p0, "platform_compat"

    .line 611
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    return-void
.end method

.method public static fgsStopReasonToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_9
    const-string p0, "STOP_SERVICE"

    return-object p0

    :cond_c
    const-string p0, "STOP_FOREGROUND"

    return-object p0
.end method

.method public static isFgsBgStart(I)Z
    .registers 2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_12

    const/16 v0, 0xb

    if-eq p0, v0, :cond_12

    const/16 v0, 0xc

    if-eq p0, v0, :cond_12

    const/16 v0, 0x32

    if-eq p0, v0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private synthetic lambda$attachApplicationLocked$1()V
    .registers 10

    .line 5459
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 5460
    iget-object v8, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 5462
    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices;->getExtraRestartTimeInBetweenLocked()J

    move-result-wide v1

    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    const-string/jumbo v5, "other"

    move-object v0, p0

    .line 5461
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActiveServices;->rescheduleServiceRestartIfPossibleLocked(JJLjava/lang/String;J)V

    .line 5465
    monitor-exit v8
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_20

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_20
    move-exception p0

    :try_start_21
    monitor-exit v8
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public static synthetic lambda$bringDownDisabledPackageServicesLocked$2(Ljava/util/ArrayList;)V
    .registers 3

    const/4 v0, 0x0

    .line 5583
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 5584
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord;->cancelNotification()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    return-void
.end method

.method private synthetic lambda$canBindingClientStartFgsLocked$5(ILandroid/util/ArraySet;Lcom/android/server/am/ProcessRecord;)Landroid/util/Pair;
    .registers 24

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 6953
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v3, v0, :cond_8e

    .line 6954
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 6955
    iget-object v3, v2, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_14
    if-ge v5, v3, :cond_8e

    .line 6957
    iget-object v6, v2, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 6958
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v6

    .line 6959
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    move v8, v4

    :goto_27
    if-ge v8, v7, :cond_8b

    .line 6961
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    move v10, v4

    .line 6962
    :goto_30
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_88

    .line 6963
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ConnectionRecord;

    .line 6964
    iget-object v12, v11, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v12, v12, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 6972
    invoke-virtual {v12}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v13

    if-eqz v13, :cond_47

    goto :goto_85

    .line 6975
    :cond_47
    iget v13, v12, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 6976
    iget v12, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v12, v0, :cond_85

    .line 6980
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_58

    goto :goto_85

    .line 6983
    :cond_58
    iget-object v11, v11, Lcom/android/server/am/ConnectionRecord;->clientPackageName:Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v14, p0

    move-object v15, v11

    move/from16 v16, v13

    move/from16 v17, v12

    .line 6985
    invoke-virtual/range {v14 .. v19}, Lcom/android/server/am/ActiveServices;->shouldAllowFgsWhileInUsePermissionLocked(Ljava/lang/String;IILcom/android/server/am/ServiceRecord;Z)I

    move-result v15

    const/16 v19, 0x0

    move-object/from16 v18, v11

    .line 6990
    invoke-virtual/range {v14 .. v19}, Lcom/android/server/am/ActiveServices;->shouldAllowFgsStartForegroundNoBindingCheckLocked(IIILjava/lang/String;Lcom/android/server/am/ServiceRecord;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_7e

    .line 6995
    new-instance v0, Landroid/util/Pair;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 6997
    :cond_7e
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_85
    :goto_85
    add-int/lit8 v10, v10, 0x1

    goto :goto_30

    :cond_88
    add-int/lit8 v8, v8, 0x1

    goto :goto_27

    :cond_8b
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_8e
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic lambda$dumpService$3(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 6693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$setServiceRestartBackoffEnabledLocked$0(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ServiceRecord;)I
    .registers 4

    .line 4396
    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iget-wide p0, p1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method private synthetic lambda$shouldAllowFgsStartForegroundNoBindingCheckLocked$6(ILcom/android/server/am/ProcessRecord;)Ljava/lang/Integer;
    .registers 5

    .line 7087
    iget v0, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, p1, :cond_55

    .line 7088
    iget-object p1, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 7089
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->isAllowedStartFgs()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 7090
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result p0

    invoke-static {p0}, Landroid/os/PowerExemptionManager;->getReasonCodeFromProcState(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 7092
    :cond_19
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 7093
    iget-boolean p1, p1, Lcom/android/server/am/ActiveInstrumentation;->mHasBackgroundForegroundServiceStartsPermission:Z

    if-eqz p1, :cond_2a

    const/16 p0, 0x3d

    .line 7095
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 7097
    :cond_2a
    iget-object p1, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getLastInvisibleTime()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_55

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-gez v0, :cond_55

    .line 7099
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 7101
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgToBgFgsGraceDuration:J

    cmp-long p0, v0, p0

    if-gez p0, :cond_55

    const/16 p0, 0x43

    .line 7102
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_55
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic lambda$shouldAllowFgsWhileInUsePermissionLocked$4(ILcom/android/server/am/ProcessRecord;)Ljava/lang/Integer;
    .registers 3

    .line 6882
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, p0, :cond_15

    .line 6883
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->areBackgroundFgsStartsAllowed()Z

    move-result p0

    if-eqz p0, :cond_15

    const/16 p0, 0x34

    .line 6884
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final appRestrictedAnyInBackground(ILjava/lang/String;)Z
    .registers 7

    .line 719
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 720
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, p2, v2}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 721
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v0

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p2, v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    return v1

    .line 728
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices;->getAppStateTracker()Lcom/android/server/AppStateTracker;

    move-result-object p0

    if-eqz p0, :cond_36

    .line 730
    invoke-interface {p0, p1, p2}, Lcom/android/server/AppStateTracker;->isAppBackgroundRestricted(ILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_36
    return v1
.end method

.method public applyForegroundServiceNotificationLocked(Landroid/app/Notification;Ljava/lang/String;ILjava/lang/String;I)Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;
    .registers 10

    if-eqz p2, :cond_5

    .line 2305
    sget-object p0, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->NOT_FOREGROUND_SERVICE:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    return-object p0

    .line 2308
    :cond_5
    sget-boolean p2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    const-string v0, "ActivityManager"

    if-eqz p2, :cond_2f

    .line 2309
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Evaluating FGS policy for id="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkg="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    :cond_2f
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {p2, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-nez p2, :cond_3c

    .line 2317
    sget-object p0, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->NOT_FOREGROUND_SERVICE:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    return-object p0

    :cond_3c
    const/4 p5, 0x0

    move v1, p5

    .line 2320
    :goto_3e
    iget-object v2, p2, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_a7

    .line 2321
    iget-object v2, p2, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 2322
    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v3, :cond_a4

    iget v3, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-ne p3, v3, :cond_a4

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2324
    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_61

    goto :goto_a4

    .line 2333
    :cond_61
    sget-boolean p2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz p2, :cond_79

    .line 2334
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "   FOUND: notification is for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    :cond_79
    iget p2, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 p2, p2, 0x40

    iput p2, p1, Landroid/app/Notification;->flags:I

    .line 2337
    iput-object p1, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 2340
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActiveServices;->shouldShowFgsNotificationLocked(Lcom/android/server/am/ServiceRecord;)Z

    move-result p1

    if-eqz p1, :cond_95

    .line 2342
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz p0, :cond_90

    const-string p0, "   Showing immediately due to policy"

    .line 2343
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    :cond_90
    iput-boolean p5, v2, Lcom/android/server/am/ServiceRecord;->mFgsNotificationDeferred:Z

    .line 2346
    sget-object p0, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->SHOW_IMMEDIATELY:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    return-object p0

    .line 2353
    :cond_95
    sget-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz p1, :cond_9e

    const-string p1, "   Deferring / update-only"

    .line 2354
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2356
    :cond_9e
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActiveServices;->startFgsDeferralTimerLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2357
    sget-object p0, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->UPDATE_ONLY:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    return-object p0

    :cond_a4
    :goto_a4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 2361
    :cond_a7
    sget-object p0, Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;->NOT_FOREGROUND_SERVICE:Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;

    return-object p0
.end method

.method public attachApplicationLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 5397
    iget-object v1, v9, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v2, v9, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ActiveServices;->appRestrictedAnyInBackground(ILjava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessStateRecord;->setBackgroundRestricted(Z)V

    .line 5401
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-lez v1, :cond_a4

    const/4 v1, 0x0

    move v2, v12

    move v3, v2

    .line 5404
    :goto_21
    :try_start_21
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_a5

    .line 5405
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lcom/android/server/am/ServiceRecord;
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_32} :catch_8a

    .line 5406
    :try_start_32
    iget-object v1, v13, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    if-eq v9, v1, :cond_47

    iget v1, v9, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v4, v13, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, v4, :cond_84

    iget-object v1, v13, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 5407
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    goto :goto_84

    .line 5411
    :cond_47
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v4

    .line 5412
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    .line 5413
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v6

    .line 5414
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v14, v2, -0x1

    .line 5416
    iget-object v1, v13, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v7, v1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v9, v2, v7, v8, v1}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 5418
    iget-boolean v7, v13, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, v13

    move-object/from16 v3, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActiveServices;->realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Landroid/app/IApplicationThread;ILcom/android/server/am/UidRecord;ZZ)V

    .line 5421
    invoke-virtual {p0, v13, v12, v12}, Lcom/android/server/am/ActiveServices;->isServiceNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)Z

    move-result v1

    if-nez v1, :cond_7a

    .line 5426
    invoke-virtual {p0, v13, v11}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 5429
    :cond_7a
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "updateOomAdj_startService"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_82} :catch_87

    move v3, v11

    move v2, v14

    :cond_84
    :goto_84
    add-int/2addr v2, v11

    move-object v1, v13

    goto :goto_21

    :catch_87
    move-exception v0

    move-object v1, v13

    goto :goto_8b

    :catch_8a
    move-exception v0

    .line 5432
    :goto_8b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in new application when starting service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5434
    throw v0

    :cond_a4
    move v3, v12

    .line 5441
    :cond_a5
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_f7

    move v1, v12

    .line 5444
    :goto_ae
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_e9

    .line 5445
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 5446
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    if-eq v9, v4, :cond_d3

    iget v4, v9, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v5, :cond_e6

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 5447
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d3

    goto :goto_e6

    .line 5450
    :cond_d3
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5451
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v1, v11

    :cond_e6
    :goto_e6
    add-int/lit8 v12, v12, 0x1

    goto :goto_ae

    :cond_e9
    if-eqz v1, :cond_f7

    .line 5458
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v2, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/ActiveServices;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_f7
    return v3
.end method

.method public bindServiceLocked(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;ZILjava/lang/String;Ljava/lang/String;I)I
    .registers 54
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v14, p11

    .line 2916
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v3, :cond_47

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " conn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2917
    invoke-interface/range {p5 .. p5}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " flags=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2918
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2916
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    :cond_47
    move-object/from16 v7, p4

    .line 2919
    :goto_49
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    .line 2920
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    .line 2921
    iget-object v3, v15, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v12

    if-eqz v12, :cond_5cd

    const/16 v17, 0x0

    const/4 v11, 0x0

    if-eqz v1, :cond_81

    .line 2931
    iget-object v3, v15, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getServiceConnectionsHolder(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    move-result-object v3

    if-nez v3, :cond_7f

    const-string v0, "ActivityManager"

    .line 2933
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding with unknown activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_7f
    move-object v10, v3

    goto :goto_83

    :cond_81
    move-object/from16 v10, v17

    .line 2940
    :goto_83
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v9, 0x3e8

    const/4 v8, 0x1

    if-ne v1, v9, :cond_8e

    move v1, v8

    goto :goto_8f

    :cond_8e
    move v1, v11

    :goto_8f
    if-eqz v1, :cond_b6

    .line 2946
    invoke-virtual {v2, v8}, Landroid/content/Intent;->setDefusable(Z)V

    const-string v3, "android.intent.extra.client_intent"

    .line 2947
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    if-eqz v3, :cond_b0

    const-string v4, "android.intent.extra.client_label"

    .line 2949
    invoke-virtual {v2, v4, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_aa

    .line 2954
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v2

    :cond_aa
    move-object v6, v2

    move-object/from16 v26, v3

    move/from16 v25, v4

    goto :goto_bb

    :cond_b0
    move-object v6, v2

    move-object/from16 v26, v3

    move/from16 v25, v11

    goto :goto_bb

    :cond_b6
    move-object v6, v2

    move/from16 v25, v11

    move-object/from16 v26, v17

    :goto_bb
    const/high16 v2, 0x8000000

    and-int v27, p6, v2

    if-eqz v27, :cond_ca

    .line 2960
    iget-object v2, v15, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "android.permission.MANAGE_ACTIVITY_TASKS"

    const-string v4, "BIND_TREAT_LIKE_ACTIVITY"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ca
    const/high16 v2, 0x80000

    and-int v2, p6, v2

    if-eqz v2, :cond_f2

    if-eqz v1, :cond_d3

    goto :goto_f2

    .line 2965
    :cond_d3
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-system caller (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") set BIND_SCHEDULE_LIKE_TOP_APP when binding service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f2
    :goto_f2
    const/high16 v28, 0x1000000

    and-int v2, p6, v28

    if-eqz v2, :cond_122

    if-eqz v1, :cond_fb

    goto :goto_122

    .line 2970
    :cond_fb
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-system caller "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " (pid="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") set BIND_ALLOW_WHITELIST_MANAGEMENT when binding service "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_122
    :goto_122
    const/high16 v2, 0x400000

    and-int v2, p6, v2

    if-eqz v2, :cond_152

    if-eqz v1, :cond_12b

    goto :goto_152

    .line 2976
    :cond_12b
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-system caller "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " (pid="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") set BIND_ALLOW_INSTANT when binding service "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_152
    :goto_152
    const/high16 v0, 0x10000

    and-int v29, p6, v0

    if-eqz v29, :cond_17a

    if-eqz v1, :cond_15b

    goto :goto_17a

    .line 2982
    :cond_15b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-system caller (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") set BIND_ALMOST_PERCEPTIBLE when binding service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17a
    :goto_17a
    const/high16 v0, 0x100000

    and-int v30, p6, v0

    if-eqz v30, :cond_189

    .line 2987
    iget-object v0, v15, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    const-string v3, "BIND_ALLOW_BACKGROUND_ACTIVITY_STARTS"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_189
    const/high16 v0, 0x40000

    and-int v0, p6, v0

    if-eqz v0, :cond_198

    .line 2993
    iget-object v0, v15, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.START_FOREGROUND_SERVICES_FROM_BACKGROUND"

    const-string v3, "BIND_ALLOW_FOREGROUND_SERVICE_STARTS_FROM_BACKGROUND"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3003
    :cond_198
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v0

    if-eqz v0, :cond_1a2

    move v5, v8

    goto :goto_1a3

    :cond_1a2
    move v5, v11

    :goto_1a3
    const/high16 v0, -0x80000000

    and-int v0, p6, v0

    if-eqz v0, :cond_1ab

    move v0, v8

    goto :goto_1ac

    :cond_1ab
    move v0, v11

    :goto_1ac
    if-eqz v2, :cond_1b1

    move/from16 v18, v8

    goto :goto_1b3

    :cond_1b1
    move/from16 v18, v11

    :goto_1b3
    const/16 v19, 0x1

    move-object/from16 v1, p0

    move-object v2, v6

    move-object/from16 v3, p7

    move/from16 v4, p8

    move/from16 v31, v5

    move/from16 v5, p9

    move-object/from16 p9, v6

    move-object/from16 v6, p10

    move-object/from16 v7, p4

    move-object/from16 v8, p11

    move v9, v13

    move-object/from16 p1, v10

    move/from16 v10, v16

    move/from16 v11, p12

    move-object/from16 v33, v12

    move/from16 v12, v19

    move/from16 p10, v13

    move/from16 v13, v31

    move v14, v0

    move/from16 v15, v18

    .line 3009
    invoke-virtual/range {v1 .. v15}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v15

    if-nez v15, :cond_1e2

    const/4 v0, 0x0

    return v0

    :cond_1e2
    const/4 v0, 0x0

    .line 3016
    iget-object v14, v15, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-nez v14, :cond_1e9

    const/4 v0, -0x1

    return v0

    .line 3022
    :cond_1e9
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    move-object/from16 v13, p0

    if-eqz v1, :cond_232

    .line 3024
    iget-object v1, v13, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    move-object/from16 v12, v33

    .line 3025
    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_206

    .line 3026
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3027
    iget v2, v12, Lcom/android/server/am/ProcessRecord;->userId:I

    move/from16 v21, v2

    goto :goto_20a

    :cond_206
    move/from16 v21, v1

    move-object/from16 v1, v17

    .line 3030
    :goto_20a
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    iget-object v3, v14, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual/range {p9 .. p9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    iget v5, v14, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/android/server/am/MARsPolicyManager;->onSpecialBindServiceActions(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 3031
    invoke-static {}, Lcom/android/server/am/BaseRestrictionMgr;->getInstance()Lcom/android/server/am/BaseRestrictionMgr;

    move-result-object v18

    iget-object v2, v14, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    const-string v22, "bindService"

    iget v3, v14, Lcom/android/server/am/ServiceRecord;->userId:I

    move-object/from16 v19, v2

    move-object/from16 v20, v1

    move-object/from16 v23, p9

    move/from16 v24, v3

    invoke-virtual/range {v18 .. v24}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;I)Z

    move-result v1

    if-eqz v1, :cond_234

    return v0

    :cond_232
    move-object/from16 v12, v33

    :cond_234
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p9

    move-object/from16 v4, p11

    move/from16 v6, v16

    move/from16 v7, p10

    move/from16 v9, v31

    move/from16 v10, p12

    move-object/from16 v34, v12

    move-object/from16 v12, v17

    move/from16 v13, v18

    move-object/from16 v17, v14

    move-object/from16 v14, p5

    .line 3040
    invoke-virtual/range {v1 .. v14}, Lcom/android/server/am/ActiveServices;->deferServiceBringupIfFrozenLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IIZZIZLandroid/os/IBinder;ZLandroid/app/IServiceConnection;)Z

    move-result v11

    if-nez v11, :cond_274

    const/4 v4, 0x0

    const/4 v9, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, p11

    move/from16 v5, v16

    move-object/from16 v6, p9

    move/from16 v7, v31

    move/from16 v8, p12

    move-object/from16 v10, p5

    .line 3048
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/ActiveServices;->requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ZIZLandroid/app/IServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_274

    const/4 v12, 0x1

    goto :goto_275

    :cond_274
    move v12, v0

    .line 3051
    :goto_275
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    move-object/from16 v10, v34

    .line 3054
    :try_start_27b
    iget-object v1, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v2, "bind service"

    move-object/from16 v9, p0

    move-object/from16 v8, v17

    invoke-virtual {v9, v8, v1, v0, v2}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a5

    .line 3058
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v1, :cond_2a5

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BIND SERVICE WHILE RESTART PENDING: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a5
    and-int/lit8 v17, p6, 0x1

    if-eqz v17, :cond_2d9

    .line 3063
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v8, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 3064
    invoke-virtual {v8}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result v1

    if-nez v1, :cond_2d9

    .line 3066
    iget-object v1, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2bc
    .catchall {:try_start_27b .. :try_end_2bc} :catchall_5c6

    .line 3067
    :try_start_2bc
    invoke-virtual {v8}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v2

    if-eqz v2, :cond_2d3

    .line 3069
    iget-object v3, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    .line 3070
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v7, 0x1

    .line 3069
    invoke-virtual {v2, v7, v3, v4, v5}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    goto :goto_2d4

    :cond_2d3
    const/4 v7, 0x1

    .line 3072
    :goto_2d4
    monitor-exit v1

    goto :goto_2da

    :catchall_2d6
    move-exception v0

    monitor-exit v1
    :try_end_2d8
    .catchall {:try_start_2bc .. :try_end_2d8} :catchall_2d6

    :try_start_2d8
    throw v0

    :cond_2d9
    const/4 v7, 0x1

    :goto_2da
    const/high16 v1, 0x200000

    and-int v1, p6, v1

    if-eqz v1, :cond_2e9

    .line 3077
    iget-object v1, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v8, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->requireAllowedAssociationsLocked(Ljava/lang/String;)V

    .line 3080
    :cond_2e9
    iget-boolean v6, v8, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 3081
    invoke-virtual {v8}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2f8

    move/from16 v18, v7

    goto :goto_2fa

    :cond_2f8
    move/from16 v18, v0

    .line 3082
    :goto_2fa
    iget-object v1, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v2, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3083
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v35

    iget-object v4, v8, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v19, v1

    iget-wide v0, v4, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v4, v8, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    iget-object v7, v8, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    move-object/from16 v32, v19

    move/from16 v33, v2

    move-object/from16 v34, v3

    move/from16 v36, v5

    move-wide/from16 v37, v0

    move-object/from16 v39, v4

    move-object/from16 v40, v7

    .line 3082
    invoke-virtual/range {v32 .. v40}, Lcom/android/server/am/ActivityManagerService;->startAssociationLocked(ILjava/lang/String;IIJLandroid/content/ComponentName;Ljava/lang/String;)Lcom/android/server/am/ActivityManagerService$Association;

    .line 3087
    iget-object v0, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v1, v10, Lcom/android/server/am/ProcessRecord;->userId:I

    iget v2, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, v8, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3088
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    move-object/from16 v7, p9

    .line 3087
    invoke-virtual {v0, v1, v7, v2, v3}, Lcom/android/server/am/ActivityManagerService;->grantImplicitAccess(ILandroid/content/Intent;II)V

    .line 3090
    invoke-virtual {v8, v7, v10}, Lcom/android/server/am/ServiceRecord;->retrieveAppBindingLocked(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/AppBindRecord;

    move-result-object v5

    .line 3092
    iget-object v0, v5, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_36a

    iget-object v0, v5, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    .line 3093
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/16 v1, 0x3e7

    if-le v0, v1, :cond_36a

    const-string v0, "ActivityManager"

    .line 3094
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many connection requests from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_364
    .catchall {:try_start_2d8 .. :try_end_364} :catchall_5c6

    const/16 v0, -0xc7

    .line 3220
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    .line 3098
    :cond_36a
    :try_start_36a
    new-instance v4, Lcom/android/server/am/ConnectionRecord;

    iget v3, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v1, v15, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->aliasComponent:Landroid/content/ComponentName;
    :try_end_372
    .catchall {:try_start_36a .. :try_end_372} :catchall_5c6

    move-object/from16 p9, v15

    const/4 v15, 0x0

    move-object v0, v4

    move-object/from16 v19, v1

    move-object v1, v5

    move-object/from16 v20, v2

    move-object/from16 v2, p1

    move/from16 v21, v3

    move-object/from16 v3, p5

    move-object v15, v4

    move/from16 v4, p6

    move-wide/from16 v22, v13

    move-object v13, v5

    move/from16 v5, v25

    move v14, v6

    move-object/from16 v6, v26

    move-object/from16 v24, v7

    move/from16 v25, v14

    const/4 v14, 0x1

    move/from16 v7, v21

    move-object v14, v8

    move-object/from16 v8, v20

    move/from16 p7, v11

    move-object v11, v9

    move-object/from16 v9, p11

    move-object/from16 v33, v10

    move-object/from16 v10, v19

    :try_start_39f
    invoke-direct/range {v0 .. v10}, Lcom/android/server/am/ConnectionRecord;-><init>(Lcom/android/server/am/AppBindRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;Landroid/app/IServiceConnection;IILandroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 3102
    invoke-interface/range {p5 .. p5}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3103
    invoke-virtual {v14, v0, v15}, Lcom/android/server/am/ServiceRecord;->addConnection(Landroid/os/IBinder;Lcom/android/server/am/ConnectionRecord;)V

    .line 3104
    iget-object v1, v13, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v1, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, p1

    if-eqz v3, :cond_3b5

    .line 3106
    invoke-virtual {v3, v15}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->addConnection(Ljava/lang/Object;)V

    .line 3108
    :cond_3b5
    iget-object v1, v13, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3109
    invoke-virtual {v1, v15}, Lcom/android/server/am/ProcessServiceRecord;->addConnection(Lcom/android/server/am/ConnectionRecord;)V

    .line 3110
    invoke-virtual {v15}, Lcom/android/server/am/ConnectionRecord;->startAssociationIfNeeded()V

    .line 3111
    iget v2, v15, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3ca

    const/4 v2, 0x1

    .line 3112
    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessServiceRecord;->setHasAboveClient(Z)V

    goto :goto_3cb

    :cond_3ca
    const/4 v2, 0x1

    .line 3114
    :goto_3cb
    iget v1, v15, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int v1, v1, v28

    if-eqz v1, :cond_3d3

    .line 3115
    iput-boolean v2, v14, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    :cond_3d3
    if-eqz v30, :cond_3d8

    .line 3118
    invoke-virtual {v14, v2}, Lcom/android/server/am/ServiceRecord;->setAllowedBgActivityStartsByBinding(Z)V

    :cond_3d8
    const v1, 0x8000

    and-int v1, p6, v1

    if-eqz v1, :cond_3e1

    .line 3122
    iput-boolean v2, v14, Lcom/android/server/am/ServiceRecord;->isNotAppComponentUsage:Z

    .line 3125
    :cond_3e1
    iget-object v1, v14, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x2

    if-eqz v1, :cond_3f8

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    if-eqz v1, :cond_3f8

    .line 3126
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v1

    if-gt v1, v2, :cond_3f8

    if-eqz v29, :cond_3f8

    .line 3128
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v14, Lcom/android/server/am/ServiceRecord;->lastTopAlmostPerceptibleBindRequestUptimeMs:J

    .line 3131
    :cond_3f8
    iget-object v1, v14, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_402

    .line 3132
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    const/4 v3, 0x1

    invoke-virtual {v11, v1, v15, v3}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    .line 3134
    :cond_402
    iget-object v1, v11, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_416

    .line 3136
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3137
    iget-object v3, v11, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3139
    :cond_416
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v17, :cond_44a

    .line 3143
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v14, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 3145
    invoke-virtual/range {v24 .. v24}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    move-object/from16 p1, p0

    move-object/from16 p2, v14

    move/from16 p3, v0

    move/from16 p4, v31

    move/from16 p5, v1

    move/from16 p6, v12

    move/from16 p8, v3

    invoke-virtual/range {p1 .. p8}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZZZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_448

    .line 3147
    iget-object v0, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "updateOomAdj_bindService"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V
    :try_end_443
    .catchall {:try_start_39f .. :try_end_443} :catchall_5c4

    .line 3220
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    return v0

    :cond_448
    const/4 v0, 0x1

    goto :goto_44b

    :cond_44a
    const/4 v0, 0x0

    :goto_44b
    const/4 v1, 0x0

    move-object/from16 p1, p0

    move-object/from16 p2, p11

    move/from16 p3, p10

    move/from16 p4, v16

    move-object/from16 p5, v24

    move-object/from16 p6, v14

    move/from16 p7, p12

    move/from16 p8, v1

    .line 3151
    :try_start_45c
    invoke-virtual/range {p1 .. p8}, Lcom/android/server/am/ActiveServices;->setFgsRestrictionLocked(Ljava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;IZ)V

    .line 3154
    iget-object v1, v14, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_4a4

    .line 3155
    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    if-eqz v27, :cond_46c

    const/4 v1, 0x1

    .line 3157
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessServiceRecord;->setTreatLikeActivity(Z)V

    goto :goto_46d

    :cond_46c
    const/4 v1, 0x1

    .line 3159
    :goto_46d
    iget-boolean v3, v14, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    if-eqz v3, :cond_473

    .line 3160
    iput-boolean v1, v0, Lcom/android/server/am/ProcessServiceRecord;->mAllowlistManager:Z

    .line 3163
    :cond_473
    iget-object v1, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v14, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v4

    if-eqz v4, :cond_487

    .line 3164
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v0

    if-nez v0, :cond_484

    goto :goto_487

    :cond_484
    move-object/from16 v4, v33

    goto :goto_493

    :cond_487
    :goto_487
    move-object/from16 v4, v33

    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3165
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    if-gt v0, v2, :cond_495

    if-eqz v27, :cond_495

    :goto_493
    const/4 v0, 0x1

    goto :goto_496

    :cond_495
    const/4 v0, 0x0

    :goto_496
    iget-object v5, v13, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 3163
    invoke-virtual {v1, v3, v0, v5}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 3169
    iget-object v0, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v14, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    const/4 v8, 0x1

    goto :goto_4a7

    :cond_4a4
    move-object/from16 v4, v33

    move v8, v0

    :goto_4a7
    if-eqz v8, :cond_4b1

    .line 3172
    iget-object v0, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "updateOomAdj_bindService"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    :cond_4b1
    const/16 v0, 0x1dc

    .line 3175
    iget-object v1, v14, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3176
    invoke-virtual/range {v24 .. v24}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->getShortAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 3178
    iget-object v7, v14, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_4d3

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v7

    if-nez v7, :cond_4cc

    goto :goto_4d3

    :cond_4cc
    if-nez v25, :cond_4d4

    if-eqz v18, :cond_4d1

    goto :goto_4d4

    :cond_4d1
    const/4 v2, 0x1

    goto :goto_4d4

    :cond_4d3
    :goto_4d3
    const/4 v2, 0x3

    :cond_4d4
    :goto_4d4
    move/from16 p1, v0

    move/from16 p2, v1

    move/from16 p3, v16

    move-object/from16 p4, v3

    move/from16 p5, v5

    move/from16 p6, v6

    move/from16 p7, v2

    .line 3175
    invoke-static/range {p1 .. p7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;IZI)V

    .line 3184
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_52f

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": received="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v2, v2, Lcom/android/server/am/IntentBindRecord;->received:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " apps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v2, v2, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    .line 3186
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " doRebind="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v2, v2, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3184
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3189
    :cond_52f
    iget-object v0, v14, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_59c

    iget-object v0, v13, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v1, v0, Lcom/android/server/am/IntentBindRecord;->received:Z

    if-eqz v1, :cond_59c

    move-object/from16 v1, p9

    .line 3196
    iget-object v1, v1, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->aliasComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_540

    goto :goto_542

    :cond_540
    iget-object v1, v14, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;
    :try_end_542
    .catchall {:try_start_45c .. :try_end_542} :catchall_5c4

    .line 3198
    :goto_542
    :try_start_542
    iget-object v2, v15, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    iget-object v0, v0, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v0, v3}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V
    :try_end_54a
    .catch Ljava/lang/Exception; {:try_start_542 .. :try_end_54a} :catch_54b
    .catchall {:try_start_542 .. :try_end_54a} :catchall_5c4

    goto :goto_585

    :catch_54b
    move-exception v0

    :try_start_54c
    const-string v1, "ActivityManager"

    .line 3200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure sending service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v14, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    .line 3201
    invoke-interface {v3}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " (in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v3, v3, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3200
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3208
    :goto_585
    iget-object v0, v13, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v0, v0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5a8

    iget-object v0, v13, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v2, v0, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    if-eqz v2, :cond_5a8

    move/from16 v8, v31

    .line 3209
    invoke-virtual {v11, v14, v0, v8, v1}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z

    goto :goto_5a8

    :cond_59c
    move/from16 v8, v31

    .line 3211
    iget-object v0, v13, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v1, v0, Lcom/android/server/am/IntentBindRecord;->requested:Z

    if-nez v1, :cond_5a8

    const/4 v1, 0x0

    .line 3212
    invoke-virtual {v11, v14, v0, v8, v1}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z

    .line 3215
    :cond_5a8
    :goto_5a8
    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v1, p11

    move/from16 v2, p12

    invoke-virtual {v11, v2, v1, v0}, Lcom/android/server/am/ActiveServices;->maybeLogBindCrossProfileService(ILjava/lang/String;I)V

    .line 3217
    iget v0, v14, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v11, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V
    :try_end_5bc
    .catchall {:try_start_54c .. :try_end_5bc} :catchall_5c4

    .line 3220
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3223
    invoke-virtual {v11, v4, v1}, Lcom/android/server/am/ActiveServices;->notifyBindingServiceEventLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :catchall_5c4
    move-exception v0

    goto :goto_5c9

    :catchall_5c6
    move-exception v0

    move-wide/from16 v22, v13

    .line 3220
    :goto_5c9
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3221
    throw v0

    :cond_5cd
    move/from16 p10, v13

    .line 2923
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find app for caller "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " (pid="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p10

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") when binding service "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bringDownDisabledPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;IZZZ)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZZZ)Z"
        }
    .end annotation

    .line 5541
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 5542
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_7
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p3, v0, :cond_42

    .line 5546
    iget-object p3, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    sub-int/2addr p3, v1

    :goto_13
    if-ltz p3, :cond_5e

    .line 5547
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    .line 5548
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    iget-object v8, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    move v7, p6

    .line 5547
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActiveServices;->collectPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;ZZLandroid/util/ArrayMap;)Z

    move-result v0

    or-int/2addr v2, v0

    if-nez p6, :cond_2e

    if-eqz v2, :cond_2e

    return v1

    :cond_2e
    if-eqz p6, :cond_3f

    if-nez p2, :cond_3f

    .line 5553
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    iget v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mUserId:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActiveServices;->forceStopPackageLocked(Ljava/lang/String;I)V

    :cond_3f
    add-int/lit8 p3, p3, -0x1

    goto :goto_13

    .line 5557
    :cond_42
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-eqz v0, :cond_57

    .line 5559
    iget-object v8, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    move v7, p6

    .line 5560
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActiveServices;->collectPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;ZZLandroid/util/ArrayMap;)Z

    move-result v2

    :cond_57
    if-eqz p6, :cond_5e

    if-nez p2, :cond_5e

    .line 5564
    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/ActiveServices;->forceStopPackageLocked(Ljava/lang/String;I)V

    .line 5568
    :cond_5e
    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    if-eqz p1, :cond_a7

    .line 5569
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p2, p1, -0x1

    :goto_68
    if-ltz p2, :cond_78

    .line 5571
    iget-object p3, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {p0, p3, v1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_68

    :cond_78
    if-lez p1, :cond_82

    .line 5574
    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo p2, "updateOomAdj_unbindService"

    invoke-virtual {p1, p2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    :cond_82
    if-eqz p5, :cond_a2

    .line 5576
    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a2

    .line 5580
    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    .line 5581
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 5582
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance p3, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda7;

    invoke-direct {p3, p1}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda7;-><init>(Ljava/util/ArrayList;)V

    const-wide/16 p4, 0xfa

    invoke-virtual {p2, p3, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5588
    :cond_a2
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_a7
    return v2
.end method

.method public final bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZZ)V
    .registers 5

    .line 4841
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActiveServices;->isServiceNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)Z

    move-result p2

    if-eqz p2, :cond_7

    return-void

    .line 4846
    :cond_7
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    return-void

    .line 4850
    :cond_10
    invoke-virtual {p0, p1, p4}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    return-void
.end method

.method public final bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V
    .registers 16

    .line 4859
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v0

    .line 4860
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_a
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ltz v1, :cond_79

    .line 4861
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 4862
    :goto_14
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_76

    .line 4863
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ConnectionRecord;

    .line 4866
    iput-boolean v2, v6, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    .line 4867
    invoke-virtual {v6}, Lcom/android/server/am/ConnectionRecord;->stopAssociation()V

    .line 4871
    :try_start_25
    iget-object v6, v6, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-interface {v6, v7, v3, v2}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2c} :catch_2d

    goto :goto_73

    :catch_2d
    move-exception v6

    const-string v7, "ActivityManager"

    .line 4873
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failure disconnecting service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " to connection "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4874
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ConnectionRecord;

    iget-object v9, v9, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v9}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " (in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4875
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ConnectionRecord;

    iget-object v9, v9, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4873
    invoke-static {v7, v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_73
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_76
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 4882
    :cond_79
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_fb

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_fb

    .line 4883
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v2

    move v1, v4

    :goto_8b
    if-ltz v0, :cond_fc

    .line 4884
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/IntentBindRecord;

    .line 4885
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v6, :cond_b9

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bringing down binding "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": hasBound="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v5, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4887
    :cond_b9
    iget-boolean v6, v5, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    if-eqz v6, :cond_f8

    :try_start_bd
    const-string v6, "bring down unbind"

    const-string/jumbo v7, "updateOomAdj_unbindService"

    .line 4889
    invoke-virtual {p0, p1, v4, v6, v7}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 4891
    iput-boolean v4, v5, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 4892
    iput-boolean v4, v5, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 4893
    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v6

    iget-object v5, v5, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 4894
    invoke-virtual {v5}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 4893
    invoke-interface {v6, p1, v5}, Landroid/app/IApplicationThread;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_da} :catch_db

    goto :goto_f8

    :catch_db
    move-exception v0

    const-string v5, "ActivityManager"

    .line 4896
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception when unbinding service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4898
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;Z)V

    goto :goto_fc

    :cond_f8
    :goto_f8
    add-int/lit8 v0, v0, -0x1

    goto :goto_8b

    :cond_fb
    move v1, v4

    .line 4907
    :cond_fc
    :goto_fc
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v0, :cond_183

    const-string v0, "ActivityManager"

    .line 4908
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bringing down service while still waiting for start foreground: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4910
    iput-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    .line 4911
    iput-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    .line 4912
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4913
    :try_start_121
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v5

    if-eqz v5, :cond_136

    .line 4915
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v6

    .line 4916
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 4915
    invoke-virtual {v5, v4, v6, v7, v8}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 4918
    :cond_136
    monitor-exit v0
    :try_end_137
    .catchall {:try_start_121 .. :try_end_137} :catchall_180

    .line 4919
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-static {v5}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v6

    const/16 v7, 0x4c

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/appop/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 4921
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v5, 0x42

    invoke-virtual {v0, v5, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4923
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_183

    .line 4924
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v5, 0x45

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4926
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v5

    .line 4927
    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v6, v5, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 4928
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 4929
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 4931
    iput-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4932
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_183

    :catchall_180
    move-exception p0

    .line 4918
    :try_start_181
    monitor-exit v0
    :try_end_182
    .catchall {:try_start_181 .. :try_end_182} :catchall_180

    throw p0

    .line 4936
    :cond_183
    :goto_183
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_1af

    .line 4937
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 4938
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v5, "ActivityManager"

    .line 4939
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bringing down "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4941
    :cond_1af
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    .line 4947
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    .line 4948
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    if-eqz v5, :cond_1f4

    if-eq v5, p1, :cond_1f4

    .line 4955
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4957
    iget-boolean v6, p1, Lcom/android/server/am/ServiceRecord;->destroying:Z

    if-eqz v6, :cond_1d5

    goto :goto_1f4

    .line 4958
    :cond_1d5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bringing down "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " but actually running "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4963
    :cond_1f4
    :goto_1f4
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4964
    iput v4, p1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    const-string v5, "bring down"

    .line 4965
    invoke-virtual {p0, p1, v4, v2, v5}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZLjava/lang/String;)Z

    .line 4971
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_209
    if-ltz v5, :cond_235

    .line 4972
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_232

    .line 4973
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4974
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v6, :cond_232

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removed pending: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_232
    add-int/lit8 v5, v5, -0x1

    goto :goto_209

    .line 4977
    :cond_235
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_257

    .line 4978
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v5, :cond_257

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removed pending bringup: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4981
    :cond_257
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 4982
    iget-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v5, :cond_2b6

    .line 4984
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/ActiveServices;->decActiveForegroundAppLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/server/am/ServiceRecord;)V

    .line 4985
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v6, v6, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 4986
    :try_start_268
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v7

    if-eqz v7, :cond_27d

    .line 4988
    iget-object v8, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v8

    .line 4989
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 4988
    invoke-virtual {v7, v4, v8, v9, v10}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 4991
    :cond_27d
    monitor-exit v6
    :try_end_27e
    .catchall {:try_start_268 .. :try_end_27e} :catchall_2b3

    .line 4992
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v6, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 4993
    invoke-static {v7}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v8

    const/16 v9, 0x4c

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v11, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/4 v12, 0x0

    .line 4992
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/appop/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 4995
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->unregisterAppOpCallbackLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 4996
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p1, Lcom/android/server/am/ServiceRecord;->mFgsExitTime:J

    .line 4999
    iget-wide v8, p1, Lcom/android/server/am/ServiceRecord;->mFgsEnterTime:J

    cmp-long v10, v6, v8

    if-lez v10, :cond_2a4

    sub-long/2addr v6, v8

    long-to-int v6, v6

    goto :goto_2a5

    :cond_2a4
    move v6, v4

    :goto_2a5
    const/4 v7, 0x2

    .line 4997
    invoke-virtual {p0, p1, v7, v6, v7}, Lcom/android/server/am/ActiveServices;->logFGSStateChangeLocked(Lcom/android/server/am/ServiceRecord;III)V

    .line 5002
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget v8, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v6, v7, v8, v4}, Lcom/android/server/am/ActivityManagerService;->updateForegroundServiceUsageStats(Landroid/content/ComponentName;IZ)V

    goto :goto_2b6

    :catchall_2b3
    move-exception p0

    .line 4991
    :try_start_2b4
    monitor-exit v6
    :try_end_2b5
    .catchall {:try_start_2b4 .. :try_end_2b5} :catchall_2b3

    throw p0

    .line 5005
    :cond_2b6
    :goto_2b6
    iput-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 5006
    iput-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->mFgsNotificationWasDeferred:Z

    .line 5007
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->dropFgsNotificationStateLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 5008
    iput v4, p1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 5009
    iput-object v3, p1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 5010
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->resetFgsRestrictionLocked(Lcom/android/server/am/ServiceRecord;)V

    if-eqz v5, :cond_2c9

    .line 5014
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->signalForegroundServiceObserversLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 5018
    :cond_2c9
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->clearDeliveredStartsLocked()V

    .line 5019
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 5020
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5022
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_361

    .line 5023
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 5024
    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 5023
    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/am/BatteryStatsService;->noteServiceStopLaunch(ILjava/lang/String;Ljava/lang/String;)V

    .line 5025
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->stopServiceAndUpdateAllowlistManagerLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 5026
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v5

    if-eqz v5, :cond_346

    .line 5028
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v6, v4, v3}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 5029
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p0, v5, v4}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessServiceRecord;Z)V

    :try_start_30a
    const-string v5, "destroy"

    if-eqz v1, :cond_310

    move-object v6, v3

    goto :goto_313

    :cond_310
    const-string/jumbo v6, "updateOomAdj_unbindService"

    .line 5031
    :goto_313
    invoke-virtual {p0, p1, v4, v5, v6}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 5033
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5034
    iput-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->destroying:Z

    .line 5035
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/app/IApplicationThread;->scheduleStopService(Landroid/os/IBinder;)V
    :try_end_328
    .catch Ljava/lang/Exception; {:try_start_30a .. :try_end_328} :catch_329

    goto :goto_37b

    :catch_329
    move-exception v2

    const-string v5, "ActivityManager"

    .line 5037
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception when destroying service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5039
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;Z)V

    goto :goto_37b

    .line 5042
    :cond_346
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v2, :cond_37b

    const-string v2, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed service that has no process: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37b

    .line 5046
    :cond_361
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v2, :cond_37b

    const-string v2, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed service that is not running: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37b
    :goto_37b
    if-nez v1, :cond_38e

    .line 5051
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    if-nez p2, :cond_38e

    .line 5053
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "updateOomAdj_unbindService"

    invoke-virtual {p2, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    .line 5056
    :cond_38e
    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    if-lez p2, :cond_39b

    .line 5057
    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->clear()V

    .line 5060
    :cond_39b
    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    instance-of v1, p2, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    if-eqz v1, :cond_3a6

    .line 5061
    check-cast p2, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    invoke-virtual {p2, v3}, Lcom/android/server/am/ActiveServices$ServiceRestarter;->setService(Lcom/android/server/am/ServiceRecord;)V

    .line 5064
    :cond_3a6
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object p2, p2, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 5065
    :try_start_3ad
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result p0

    .line 5066
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v1, :cond_3d2

    .line 5067
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 5068
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v5, v4, p0, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 5069
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v5, v4, p0, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    .line 5070
    iget p0, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-nez p0, :cond_3d2

    .line 5071
    iget-object p0, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {p0, p1, v4}, Lcom/android/internal/app/procstats/ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    .line 5072
    iput-object v3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 5075
    :cond_3d2
    monitor-exit p2
    :try_end_3d3
    .catchall {:try_start_3ad .. :try_end_3d3} :catchall_3d7

    .line 5077
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V

    return-void

    :catchall_3d7
    move-exception p0

    .line 5075
    :try_start_3d8
    monitor-exit p2
    :try_end_3d9
    .catchall {:try_start_3d8 .. :try_end_3d9} :catchall_3d7

    throw p0
.end method

.method public final bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZZZ)Ljava/lang/String;
    .registers 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p7

    .line 4423
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_18

    move/from16 v7, p3

    .line 4424
    invoke-virtual {v9, v10, v7, v13}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    return-object v12

    :cond_18
    move/from16 v7, p3

    if-nez p4, :cond_25

    .line 4428
    iget-object v0, v9, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    return-object v12

    .line 4433
    :cond_25
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    const-string v14, "ActivityManager"

    if-eqz v0, :cond_53

    .line 4434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bringing up "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " fg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v10, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4439
    :cond_53
    iget-object v0, v9, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 4440
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 4444
    :cond_5e
    iget-boolean v0, v10, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v0, :cond_87

    .line 4445
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v0, :cond_7a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REM FR DELAY LIST (bring up): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4446
    :cond_7a
    iget v0, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v9, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4447
    iput-boolean v13, v10, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 4452
    :cond_87
    iget-object v0, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v1, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->hasStartedUserState(I)Z

    move-result v0

    const-string v15, " for service "

    const-string v8, "/"

    const-string v6, "Unable to launch app "

    if-nez v0, :cond_d8

    .line 4453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 4456
    invoke-virtual {v1}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is stopped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4457
    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4458
    invoke-virtual {v9, v10, v11}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    return-object v0

    .line 4463
    :cond_d8
    iget-object v0, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->needToBlockImsRequest(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_111

    .line 4464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IMS-AM] Block bringUpServiceLocked() of ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] for non-active user ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4466
    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4467
    invoke-virtual {v9, v10, v11}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    return-object v0

    .line 4474
    :cond_111
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->mRecentCallingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12e

    iget-boolean v0, v10, Lcom/android/server/am/ServiceRecord;->isNotAppComponentUsage:Z

    if-nez v0, :cond_12e

    .line 4476
    iget-object v0, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v2, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 4482
    :cond_12e
    :try_start_12e
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v2, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-interface {v0, v1, v13, v2}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_139
    .catch Landroid/os/RemoteException; {:try_start_12e .. :try_end_139} :catch_159
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12e .. :try_end_139} :catch_13a

    goto :goto_159

    :catch_13a
    move-exception v0

    .line 4486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed trying to unstop package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4490
    :catch_159
    :goto_159
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v1, v0, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_165

    const/4 v1, 0x1

    move/from16 v25, v1

    goto :goto_167

    :cond_165
    move/from16 v25, v13

    .line 4491
    :goto_167
    iget-object v5, v10, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 4492
    new-instance v22, Lcom/android/server/am/HostingRecord;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->definingPackageName:Ljava/lang/String;

    iget v3, v10, Lcom/android/server/am/ServiceRecord;->definingUid:I

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    const-string/jumbo v17, "service"

    move-object/from16 v16, v22

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move/from16 v20, v3

    move-object/from16 v21, v0

    invoke-direct/range {v16 .. v21}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;)V

    if-nez v25, :cond_223

    .line 4498
    iget-object v0, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v5, v1}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    .line 4499
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v0, :cond_1b5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bringUpServiceLocked: appInfo.uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager_MU"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b5
    if-eqz v4, :cond_21a

    .line 4502
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    .line 4503
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v16

    .line 4504
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v17

    if-eqz v0, :cond_21a

    .line 4507
    :try_start_1c5
    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_1c9
    .catch Landroid/os/TransactionTooLargeException; {:try_start_1c5 .. :try_end_1c9} :catch_218
    .catch Landroid/os/RemoteException; {:try_start_1c5 .. :try_end_1c9} :catch_1f6

    move-object/from16 p4, v14

    :try_start_1cb
    iget-wide v13, v1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v1, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v4, v2, v13, v14, v1}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z
    :try_end_1d4
    .catch Landroid/os/TransactionTooLargeException; {:try_start_1cb .. :try_end_1d4} :catch_218
    .catch Landroid/os/RemoteException; {:try_start_1cb .. :try_end_1d4} :catch_1ee

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v13, v4

    move-object v4, v0

    move-object v14, v5

    move/from16 v5, v16

    move-object/from16 v26, v6

    move-object/from16 v6, v17

    move/from16 v7, p3

    move-object/from16 v27, v8

    move/from16 v8, p7

    .line 4509
    :try_start_1e8
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActiveServices;->realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Landroid/app/IApplicationThread;ILcom/android/server/am/UidRecord;ZZ)V
    :try_end_1eb
    .catch Landroid/os/TransactionTooLargeException; {:try_start_1e8 .. :try_end_1eb} :catch_218
    .catch Landroid/os/RemoteException; {:try_start_1e8 .. :try_end_1eb} :catch_1ec

    return-object v12

    :catch_1ec
    move-exception v0

    goto :goto_1ff

    :catch_1ee
    move-exception v0

    move-object v13, v4

    move-object v14, v5

    move-object/from16 v26, v6

    move-object/from16 v27, v8

    goto :goto_1ff

    :catch_1f6
    move-exception v0

    move-object v13, v4

    move-object/from16 v26, v6

    move-object/from16 v27, v8

    move-object/from16 p4, v14

    move-object v14, v5

    .line 4515
    :goto_1ff
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception when starting service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p4

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_221

    :catch_218
    move-exception v0

    .line 4513
    throw v0

    :cond_21a
    move-object v13, v4

    move-object/from16 v26, v6

    move-object/from16 v27, v8

    move-object v2, v14

    move-object v14, v5

    :goto_221
    move-object v4, v13

    goto :goto_264

    :cond_223
    move-object/from16 v26, v6

    move-object/from16 v27, v8

    move-object v2, v14

    move-object v14, v5

    .line 4529
    iget-object v4, v10, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    .line 4530
    invoke-static {}, Landroid/webkit/WebViewZygote;->isMultiprocessEnabled()Z

    move-result v0

    if-eqz v0, :cond_24d

    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 4531
    invoke-static {}, Landroid/webkit/WebViewZygote;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24d

    .line 4532
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->definingPackageName:Ljava/lang/String;

    iget v3, v10, Lcom/android/server/am/ServiceRecord;->definingUid:I

    iget-object v5, v10, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-static {v0, v1, v3, v5}, Lcom/android/server/am/HostingRecord;->byWebviewZygote(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/am/HostingRecord;

    move-result-object v22

    .line 4535
    :cond_24d
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v1, v0, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_264

    .line 4536
    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->definingPackageName:Ljava/lang/String;

    iget v5, v10, Lcom/android/server/am/ServiceRecord;->definingUid:I

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-static {v1, v3, v5, v0}, Lcom/android/server/am/HostingRecord;->byAppZygote(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/am/HostingRecord;

    move-result-object v0

    move-object/from16 v21, v0

    goto :goto_266

    :cond_264
    :goto_264
    move-object/from16 v21, v22

    :goto_266
    if-nez v4, :cond_2e8

    if-nez p5, :cond_2e8

    if-nez p6, :cond_2e8

    .line 4546
    iget-boolean v0, v10, Lcom/android/server/am/ServiceRecord;->isSdkSandbox:Z

    if-eqz v0, :cond_291

    .line 4547
    iget v0, v10, Lcom/android/server/am/ServiceRecord;->sdkSandboxClientAppUid:I

    invoke-static {v0}, Landroid/os/Process;->toSdkSandboxUid(I)I

    move-result v23

    .line 4548
    iget-object v0, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v19, 0x1

    const/16 v22, 0x0

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->sdkSandboxClientAppPackage:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v17, v14

    move-object/from16 v18, v1

    move/from16 v20, p2

    move-object/from16 v24, v3

    invoke-virtual/range {v16 .. v24}, Lcom/android/server/am/ActivityManagerService;->startSdkSandboxProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IILjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 4550
    iput-object v0, v10, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    goto :goto_2a9

    .line 4552
    :cond_291
    iget-object v0, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v19, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, v14

    move-object/from16 v18, v1

    move/from16 v20, p2

    move/from16 v24, v25

    invoke-virtual/range {v16 .. v24}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    :goto_2a9
    if-nez v0, :cond_2e4

    .line 4556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 4559
    invoke-virtual {v1}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": process is bad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4560
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4561
    invoke-virtual {v9, v10, v11}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    return-object v0

    :cond_2e4
    if-eqz v25, :cond_2e8

    .line 4565
    iput-object v0, v10, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    .line 4569
    :cond_2e8
    iget-boolean v0, v10, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v0, :cond_32a

    .line 4570
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v0, :cond_311

    .line 4571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Allowlisting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for fg-service launch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4574
    :cond_311
    iget-object v13, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, v13, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundTimeoutMs:I

    int-to-long v0, v0

    const/16 v17, 0x12f

    const/16 v19, 0x0

    iget v3, v10, Lcom/android/server/am/ServiceRecord;->mRecentCallingUid:I

    const-string v18, "fg-service-launch"

    move-wide v15, v0

    move/from16 v20, v3

    invoke-virtual/range {v13 .. v20}, Lcom/android/server/am/ActivityManagerService;->tempAllowlistUidLocked(IJILjava/lang/String;II)V

    .line 4581
    :cond_32a
    iget-object v0, v9, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_337

    .line 4582
    iget-object v0, v9, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4585
    :cond_337
    iget-boolean v0, v10, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-eqz v0, :cond_35d

    const/4 v1, 0x0

    .line 4587
    iput-boolean v1, v10, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 4588
    iget-boolean v0, v10, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_35d

    .line 4589
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v0, :cond_35a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Applying delayed stop (in bring up): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4591
    :cond_35a
    invoke-virtual {v9, v10, v11}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    :cond_35d
    return-object v12
.end method

.method public final bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;Ljava/lang/String;)Z
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 3819
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v5, :cond_37

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">>> EXECUTING "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " of "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in app "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    .line 3821
    :cond_37
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE_EXECUTING:Z

    if-eqz v5, :cond_5c

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">>> EXECUTING "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " of "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    :cond_5c
    const-string v5, "com.samsung.android.app.reminder"

    .line 3824
    iget-object v6, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_70

    const-string v5, "com.samsung.android.calendar"

    iget-object v6, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_90

    :cond_70
    const-string v5, "ActivityManager"

    .line 3825
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">>> EXECUTING "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " of "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3838
    :cond_90
    :goto_90
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v3, v3, Lcom/android/server/am/ActivityManagerService;->mBootPhase:I

    const/16 v5, 0x258

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v3, v5, :cond_ce

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_ce

    .line 3839
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v3, v5, :cond_ce

    const-string v3, "ActivityManager"

    .line 3841
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Too early to start/bind service in system_server: Phase="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v8, v8, Lcom/android/server/am/ActivityManagerService;->mBootPhase:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3842
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3841
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    goto :goto_cf

    :cond_ce
    move v3, v7

    :goto_cf
    if-eqz v1, :cond_101

    .line 3848
    sget-boolean v5, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz v5, :cond_101

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v5

    if-eqz v5, :cond_101

    .line 3850
    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_f2

    .line 3851
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v5

    iget-object v8, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v8, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v9, "ServiceANR"

    const-wide/16 v10, 0x7d0

    invoke-virtual {v5, v8, v9, v10, v11}, Lcom/android/server/am/FreecessController;->protectFreezePackage(ILjava/lang/String;J)Z

    .line 3852
    :cond_f2
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v12

    iget-object v13, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v14, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    const-string v15, "ServiceANR"

    const-wide/16 v16, 0x7d0

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/am/FreecessController;->protectFreezePackage(Ljava/lang/String;ILjava/lang/String;J)Z

    .line 3858
    :cond_101
    iget v5, v1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-nez v5, :cond_14d

    .line 3859
    iput-boolean v2, v1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    .line 3860
    iget-object v5, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v5, v5, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3861
    :try_start_10e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v8

    if-eqz v8, :cond_123

    .line 3863
    iget-object v9, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v9

    .line 3864
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 3863
    invoke-virtual {v8, v7, v9, v10, v11}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    .line 3866
    :cond_123
    monitor-exit v5
    :try_end_124
    .catchall {:try_start_10e .. :try_end_124} :catchall_14a

    .line 3867
    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_165

    .line 3868
    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3869
    invoke-virtual {v5, v1}, Lcom/android/server/am/ProcessServiceRecord;->startExecutingService(Lcom/android/server/am/ServiceRecord;)V

    .line 3870
    invoke-virtual {v5}, Lcom/android/server/am/ProcessServiceRecord;->shouldExecServicesFg()Z

    move-result v8

    if-nez v8, :cond_138

    if-eqz v2, :cond_136

    goto :goto_138

    :cond_136
    move v8, v6

    goto :goto_139

    :cond_138
    :goto_138
    move v8, v7

    :goto_139
    invoke-virtual {v5, v8}, Lcom/android/server/am/ProcessServiceRecord;->setExecServicesFg(Z)V

    if-eqz v3, :cond_165

    .line 3871
    invoke-virtual {v5}, Lcom/android/server/am/ProcessServiceRecord;->numberOfExecutingServices()I

    move-result v3

    if-ne v3, v7, :cond_165

    .line 3872
    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_165

    :catchall_14a
    move-exception v0

    .line 3866
    :try_start_14b
    monitor-exit v5
    :try_end_14c
    .catchall {:try_start_14b .. :try_end_14c} :catchall_14a

    throw v0

    .line 3875
    :cond_14d
    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_165

    if-eqz v2, :cond_165

    .line 3876
    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3877
    invoke-virtual {v5}, Lcom/android/server/am/ProcessServiceRecord;->shouldExecServicesFg()Z

    move-result v8

    if-nez v8, :cond_165

    .line 3878
    invoke-virtual {v5, v7}, Lcom/android/server/am/ProcessServiceRecord;->setExecServicesFg(Z)V

    if-eqz v3, :cond_165

    .line 3880
    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    :cond_165
    :goto_165
    if-eqz v4, :cond_182

    .line 3885
    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_182

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3886
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    const/16 v5, 0xa

    if-le v3, v5, :cond_182

    .line 3889
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3890
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    move v6, v7

    .line 3893
    :cond_182
    iget-boolean v0, v1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    or-int/2addr v0, v2

    iput-boolean v0, v1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    .line 3894
    iget v0, v1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    add-int/2addr v0, v7

    iput v0, v1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 3895
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/ServiceRecord;->executingStart:J

    return v6
.end method

.method public canAllowWhileInUsePermissionInFgsLocked(IILjava/lang/String;)Z
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p3

    move v2, p1

    move v3, p2

    .line 7354
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->shouldAllowFgsWhileInUsePermissionLocked(Ljava/lang/String;IILcom/android/server/am/ServiceRecord;Z)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public final canBindingClientStartFgsLocked(I)Ljava/lang/String;
    .registers 5

    .line 6950
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 6951
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v2, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/ActiveServices;ILandroid/util/ArraySet;)V

    const/4 p0, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/server/am/ProcessList;->searchEachLruProcessesLOSP(ZLjava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    if-eqz p0, :cond_1c

    .line 7007
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return-object p0
.end method

.method public canStartForegroundServiceLocked(IILjava/lang/String;)Z
    .registers 11

    .line 6807
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundFgsStartRestrictionEnabled:Z

    const/4 v6, 0x1

    if-nez v0, :cond_a

    return v6

    :cond_a
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p3

    move v2, p1

    move v3, p2

    .line 6810
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->shouldAllowFgsWhileInUsePermissionLocked(Ljava/lang/String;IILcom/android/server/am/ServiceRecord;Z)I

    move-result v1

    const/4 v5, 0x0

    move-object v4, p3

    .line 6813
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->shouldAllowFgsStartForegroundNoBindingCheckLocked(IIILjava/lang/String;Lcom/android/server/am/ServiceRecord;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_25

    .line 6817
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActiveServices;->canBindingClientStartFgsLocked(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_25

    const/16 v0, 0x36

    :cond_25
    if-eq v0, v1, :cond_28

    goto :goto_29

    :cond_28
    const/4 v6, 0x0

    :goto_29
    return v6
.end method

.method public final cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 6

    .line 2794
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    if-eqz v0, :cond_6c

    .line 2799
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object p0

    if-eqz p0, :cond_69

    .line 2801
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_14
    if-ltz v0, :cond_69

    .line 2802
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    if-eq v1, p1, :cond_66

    .line 2803
    iget-boolean v2, v1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v2, :cond_66

    iget v2, v1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    iget v3, p1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-ne v2, v3, :cond_66

    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 2806
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 2807
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz p0, :cond_65

    .line 2808
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FGS notification for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " shared by "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " (isForeground="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, v1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") - NOT cancelling"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    return-void

    :cond_66
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    .line 2817
    :cond_69
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->cancelNotification()V

    :cond_6c
    return-void
.end method

.method public cleanUpServices(ILandroid/content/ComponentName;Landroid/content/Intent;)V
    .registers 20

    move-object/from16 v0, p0

    .line 5667
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5668
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->getServicesLocked(I)Landroid/util/ArrayMap;

    move-result-object v2

    .line 5669
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_11
    if-ltz v3, :cond_2b

    .line 5670
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 5671
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 5672
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    add-int/lit8 v3, v3, -0x1

    goto :goto_11

    .line 5678
    :cond_2b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    const/4 v3, 0x0

    move v5, v3

    :goto_32
    if-ltz v2, :cond_8c

    .line 5679
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 5680
    iget-boolean v7, v6, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v7, :cond_89

    .line 5681
    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v7, v7, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/2addr v7, v4

    if-eqz v7, :cond_67

    .line 5682
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stopping service "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": remove task"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "ActivityManager"

    invoke-static {v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5684
    invoke-virtual {v0, v6, v4}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    move v5, v4

    goto :goto_89

    .line 5686
    :cond_67
    iget-object v14, v6, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    new-instance v15, Lcom/android/server/am/ServiceRecord$StartItem;

    const/4 v9, 0x1

    .line 5687
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    move-result v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, v15

    move-object v8, v6

    move-object/from16 v11, p3

    invoke-direct/range {v7 .. v13}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;I)V

    .line 5686
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5688
    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_89

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v7

    if-eqz v7, :cond_89

    .line 5692
    :try_start_86
    invoke-virtual {v0, v6, v4, v3}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    :try_end_89
    .catch Landroid/os/TransactionTooLargeException; {:try_start_86 .. :try_end_89} :catch_89

    :catch_89
    :cond_89
    :goto_89
    add-int/lit8 v2, v2, -0x1

    goto :goto_32

    :cond_8c
    if-eqz v5, :cond_96

    .line 5701
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "updateOomAdj_unbindService"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    :cond_96
    return-void
.end method

.method public final clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 7

    .line 4350
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v0, :cond_44

    .line 4354
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_c
    const/4 v2, 0x0

    if-ltz v0, :cond_21

    .line 4355
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    if-ne v3, v4, :cond_1e

    goto :goto_22

    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_21
    move v1, v2

    :goto_22
    if-nez v1, :cond_44

    .line 4361
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4362
    :try_start_2b
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result p0

    .line 4363
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 4362
    invoke-virtual {v1, v2, p0, v3, v4}, Lcom/android/internal/app/procstats/ServiceState;->setRestarting(ZIJ)V

    .line 4364
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_2b .. :try_end_3d} :catchall_41

    const/4 p0, 0x0

    .line 4365
    iput-object p0, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    goto :goto_44

    :catchall_41
    move-exception p0

    .line 4364
    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p0

    :cond_44
    :goto_44
    return-void
.end method

.method public final collectPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;ZZLandroid/util/ArrayMap;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ServiceRecord;",
            ">;)Z"
        }
    .end annotation

    .line 5503
    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ltz v0, :cond_87

    .line 5504
    invoke-virtual {p5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    if-eqz p1, :cond_2b

    .line 5505
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 5506
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    if-eqz p2, :cond_2b

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 5508
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    goto :goto_2b

    :cond_29
    move v5, v2

    goto :goto_2c

    :cond_2b
    :goto_2b
    move v5, v1

    :goto_2c
    if-eqz v5, :cond_84

    .line 5509
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_3a

    if-nez p3, :cond_3a

    .line 5510
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v5

    if-nez v5, :cond_84

    :cond_3a
    if-nez p4, :cond_3d

    return v1

    .line 5515
    :cond_3d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Force stopping service "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ActivityManager"

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5516
    iget-object v3, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_60

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v3

    if-nez v3, :cond_60

    .line 5517
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActiveServices;->stopServiceAndUpdateAllowlistManagerLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 5521
    :cond_60
    iget-object v3, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_6d

    .line 5522
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v6, 0xc

    invoke-virtual {v5, v6, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_6d
    const/4 v3, 0x0

    .line 5526
    invoke-virtual {v4, v3, v3, v2, v3}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;Landroid/app/IApplicationThread;ILcom/android/server/am/UidRecord;)V

    .line 5527
    iput-object v3, v4, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    .line 5528
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    if-nez v3, :cond_7e

    .line 5529
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    .line 5531
    :cond_7e
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v1

    :cond_84
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_87
    return v3
.end method

.method public final decActiveForegroundAppLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/server/am/ServiceRecord;)V
    .registers 8

    .line 1790
    iget-object v0, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v1, p2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    if-eqz v0, :cond_4a

    .line 1792
    iget v1, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    if-gtz v1, :cond_4a

    .line 1794
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    .line 1795
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v1, :cond_25

    const-string v1, "ActivityManager"

    const-string v3, "Ended running of service"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    :cond_25
    iget-wide v3, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/server/am/ActiveServices;->foregroundAppShownEnoughLocked(Lcom/android/server/am/ActiveServices$ActiveForegroundApp;J)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1798
    iget-object v0, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object p2, p2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1799
    iput-boolean v2, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    const-wide/16 v0, 0x0

    .line 1800
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    goto :goto_4a

    .line 1801
    :cond_3c
    iget-wide v0, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p2, v0, v2

    if-gez p2, :cond_4a

    .line 1802
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    :cond_4a
    :goto_4a
    return-void
.end method

.method public final deferServiceBringupIfFrozenLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IIZZIZLandroid/os/IBinder;ZLandroid/app/IServiceConnection;)Z
    .registers 31
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1170
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 1171
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v4, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    move/from16 v5, p5

    invoke-virtual {v0, v3, v5, v4}, Landroid/content/pm/PackageManagerInternal;->isPackageFrozen(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x0

    return v0

    .line 1176
    :cond_18
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_2c

    .line 1178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1179
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    move-object v15, v0

    .line 1181
    new-instance v14, Lcom/android/server/am/ActiveServices$4;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p2

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p12

    move-object/from16 v10, p13

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p10

    move-object/from16 v16, v14

    move-object/from16 v14, p11

    invoke-direct/range {v0 .. v14}, Lcom/android/server/am/ActiveServices$4;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ZIZLandroid/app/IServiceConnection;IZZLandroid/os/IBinder;)V

    move-object/from16 v0, v16

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public final dropFgsNotificationStateLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 8

    .line 5081
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    if-nez v0, :cond_5

    return-void

    .line 5087
    :cond_5
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    iget v0, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ActiveServices$ServiceMap;

    const/4 v0, 0x0

    if-eqz p0, :cond_44

    .line 5090
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    move v2, v0

    :goto_19
    if-ge v2, v1, :cond_5f

    .line 5092
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    if-ne v3, p1, :cond_26

    goto :goto_41

    .line 5096
    :cond_26
    iget-boolean v4, v3, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v4, :cond_41

    iget v4, p1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    iget v5, v3, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-ne v4, v5, :cond_41

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 5098
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    const/4 p0, 0x1

    move v0, p0

    goto :goto_5f

    :cond_41
    :goto_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 5104
    :cond_44
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FGS "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not found!"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ActivityManager"

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    :goto_5f
    if-nez v0, :cond_64

    .line 5109
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->stripForegroundServiceFlagFromNotification()V

    :cond_64
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 16

    .line 6619
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 6620
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 6621
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v1}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v1

    .line 6622
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    if-ge v4, v2, :cond_55

    aget v5, v1, v4

    .line 6623
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-nez v6, :cond_24

    goto :goto_52

    :cond_24
    const-wide v7, 0x20b00000001L

    .line 6627
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    const-wide v9, 0x10500000001L

    .line 6628
    invoke-virtual {p1, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6629
    iget-object v5, v6, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    move v6, v3

    .line 6630
    :goto_38
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v6, v9, :cond_4f

    .line 6631
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ServiceRecord;

    const-wide v10, 0x20b00000002L

    invoke-virtual {v9, p1, v10, v11}, Lcom/android/server/am/ServiceRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_38

    .line 6634
    :cond_4f
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 6636
    :cond_55
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 6637
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_5d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_5d
    move-exception p0

    :try_start_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ServiceRecord;[Ljava/lang/String;Z)V
    .registers 9

    .line 6707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6708
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter p0

    :try_start_14
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 6709
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "SERVICE "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6710
    iget-object v1, p4, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6711
    invoke-static {p4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " pid="

    .line 6712
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6713
    iget-object v1, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_4f

    .line 6714
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " user="

    .line 6715
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p4, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_54

    :cond_4f
    const-string v1, "(not running)"

    .line 6716
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_54
    if-eqz p6, :cond_59

    .line 6718
    invoke-virtual {p4, p3, v0}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6720
    :cond_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_14 .. :try_end_5a} :catchall_cc

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 6722
    iget-object p0, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p0, :cond_cb

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object p0

    if-eqz p0, :cond_cb

    .line 6723
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p6, "  Client:"

    invoke-virtual {p3, p6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6724
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 6726
    :try_start_72
    new-instance p6, Lcom/android/internal/os/TransferPipe;

    invoke-direct {p6}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_77} :catch_b3
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_77} :catch_9e

    .line 6728
    :try_start_77
    invoke-virtual {p6}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-interface {p0, v0, p4, p5}, Landroid/app/IApplicationThread;->dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 6729
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "    "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p6, p0}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    .line 6730
    invoke-virtual {p6, p2}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;)V
    :try_end_95
    .catchall {:try_start_77 .. :try_end_95} :catchall_99

    .line 6732
    :try_start_95
    invoke-virtual {p6}, Lcom/android/internal/os/TransferPipe;->kill()V

    goto :goto_cb

    :catchall_99
    move-exception p0

    invoke-virtual {p6}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 6733
    throw p0
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_9e} :catch_b3
    .catch Landroid/os/RemoteException; {:try_start_95 .. :try_end_9e} :catch_9e

    .line 6737
    :catch_9e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "    Got a RemoteException while dumping the service"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_cb

    :catch_b3
    move-exception p0

    .line 6735
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "    Failure while dumping the service: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_cb
    :goto_cb
    return-void

    :catchall_cc
    move-exception p1

    .line 6720
    :try_start_cd
    monitor-exit p0
    :try_end_ce
    .catchall {:try_start_cd .. :try_end_ce} :catchall_cc

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public dumpService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[I[Ljava/lang/String;IZ)Z
    .registers 21

    move-object v0, p0

    move-object v8, p2

    .line 6650
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 6652
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/DumpUtils;->filterRecord(Ljava/lang/String;)Ljava/util/function/Predicate;

    move-result-object v1

    .line 6654
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    if-nez p4, :cond_1c

    .line 6656
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v3}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v3

    goto :goto_1e

    :cond_1c
    move-object/from16 v3, p4

    .line 6659
    :goto_1e
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_21
    if-ge v6, v4, :cond_4e

    aget v7, v3, v6

    .line 6660
    iget-object v10, v0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-nez v7, :cond_30

    goto :goto_4b

    .line 6664
    :cond_30
    iget-object v7, v7, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    move v10, v5

    .line 6665
    :goto_33
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v10, v11, :cond_4b

    .line 6666
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ServiceRecord;

    .line 6668
    invoke-interface {v1, v11}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_48

    .line 6669
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_48
    add-int/lit8 v10, v10, 0x1

    goto :goto_33

    :cond_4b
    :goto_4b
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 6673
    :cond_4e
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_e .. :try_end_4f} :catchall_ba

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 6675
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_59

    return v5

    .line 6680
    :cond_59
    new-instance v1, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    const/4 v10, 0x1

    move v11, v5

    .line 6683
    :goto_67
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_b9

    if-eqz v5, :cond_72

    .line 6685
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 6689
    :cond_72
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    const-string v2, "SystemUIService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a2

    const-string v1, "  SystemUI Revival Count:"

    .line 6690
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6691
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mRevivalServicesMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 6692
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mRevivalServicesMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a2

    .line 6693
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mRevivalServicesMessages:Ljava/util/List;

    new-instance v2, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda3;

    invoke-direct {v2, p2}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda3;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_a2
    const-string v2, ""

    .line 6696
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v6, p5

    move/from16 v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActiveServices;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ServiceRecord;[Ljava/lang/String;Z)V

    add-int/lit8 v11, v11, 0x1

    move v5, v10

    goto :goto_67

    :cond_b9
    return v10

    :catchall_ba
    move-exception v0

    .line 6673
    :try_start_bb
    monitor-exit v2
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_ba

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public enableFgsNotificationRateLimitLocked(Z)Z
    .registers 3

    .line 2526
    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices;->mFgsDeferralRateLimited:Z

    if-eq p1, v0, :cond_d

    .line 2527
    iput-boolean p1, p0, Lcom/android/server/am/ActiveServices;->mFgsDeferralRateLimited:Z

    if-nez p1, :cond_d

    .line 2530
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mFgsDeferralEligible:Landroid/util/SparseLongArray;

    invoke-virtual {p0}, Landroid/util/SparseLongArray;->clear()V

    :cond_d
    return p1
.end method

.method public final findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;
    .registers 4

    .line 3452
    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/ActiveServices;->getServiceByNameLocked(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;

    move-result-object p0

    if-ne p0, p2, :cond_7

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return-object p0
.end method

.method public forceStopPackageLocked(Ljava/lang/String;I)V
    .registers 7

    .line 5643
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    const/4 v1, 0x1

    if-eqz v0, :cond_3f

    .line 5644
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_3f

    .line 5645
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_1a
    if-ltz v2, :cond_36

    .line 5646
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 5647
    iget-object v3, v3, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 5648
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 5649
    iput-boolean v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    :cond_33
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 5652
    :cond_36
    iget-boolean v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    if-eqz v2, :cond_3f

    const-wide/16 v2, 0x0

    .line 5653
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    .line 5656
    :cond_3f
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_46
    if-ltz v0, :cond_64

    .line 5657
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 5658
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_61

    iget v1, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    if-ne v1, p2, :cond_61

    .line 5659
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_61
    add-int/lit8 v0, v0, -0x1

    goto :goto_46

    .line 5662
    :cond_64
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->removeServiceRestartBackoffEnabledLocked(Ljava/lang/String;)V

    .line 5663
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActiveServices;->removeServiceNotificationDeferralsLocked(Ljava/lang/String;I)V

    return-void
.end method

.method public foregroundAppShownEnoughLocked(Lcom/android/server/am/ActiveServices$ActiveForegroundApp;J)Z
    .registers 13

    .line 1581
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    const-string v1, "ActivityManager"

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shown enough: pkg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    const/4 v0, 0x0

    const-wide v2, 0x7fffffffffffffffL

    .line 1584
    iput-wide v2, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    .line 1585
    iget-boolean v2, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileTop:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3f

    .line 1589
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz p0, :cond_3c

    const-string p0, "YES - shown while on top"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    :goto_3c
    move v0, v3

    goto/16 :goto_d2

    .line 1590
    :cond_3f
    iget-boolean v2, p0, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    const-string v4, "NO -- wait "

    if-nez v2, :cond_82

    iget-boolean v2, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    if-eqz v2, :cond_4a

    goto :goto_82

    .line 1608
    :cond_4a
    iget-wide v5, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v7, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_BEFORE_TIME:J

    add-long/2addr v5, v7

    cmp-long p0, p2, v5

    if-ltz p0, :cond_61

    .line 1615
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz p0, :cond_3c

    const-string p0, "YES - gone long enough with screen off"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 1619
    :cond_61
    iput-wide v5, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    .line 1620
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz p0, :cond_d2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    sub-long/2addr v2, p2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " with screen off"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d2

    .line 1591
    :cond_82
    :goto_82
    iget-wide v5, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    .line 1592
    iget-wide v7, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartTime:J

    cmp-long v2, v7, v5

    if-eqz v2, :cond_91

    .line 1593
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v7, v2, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_AFTER_TIME:J

    goto :goto_97

    .line 1594
    :cond_91
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v7, v2, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_SHOWN_TIME:J

    :goto_97
    add-long/2addr v5, v7

    cmp-long v2, p2, v5

    if-ltz v2, :cond_a6

    .line 1598
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz p0, :cond_3c

    const-string p0, "YES - shown long enough with screen on"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 1602
    :cond_a6
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_REPORT_TIME:J

    add-long/2addr v2, p2

    cmp-long p0, v2, v5

    if-lez p0, :cond_b2

    move-wide v5, v2

    .line 1603
    :cond_b2
    iput-wide v5, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    .line 1604
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz p0, :cond_d2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    sub-long/2addr v2, p2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " with screen on"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d2
    :goto_d2
    return v0
.end method

.method public foregroundServiceProcStateChangedLocked(Lcom/android/server/am/UidRecord;)V
    .registers 10

    .line 1861
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-eqz v0, :cond_50

    .line 1864
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1c
    if-ltz v1, :cond_49

    .line 1865
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 1866
    iget v6, v5, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v7

    if-ne v6, v7, :cond_46

    .line 1867
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v6

    const/4 v7, 0x2

    if-gt v6, v7, :cond_3f

    .line 1868
    iget-boolean v6, v5, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    if-nez v6, :cond_3c

    .line 1869
    iput-boolean v2, v5, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    move v4, v2

    .line 1872
    :cond_3c
    iput-boolean v2, v5, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileTop:Z

    goto :goto_46

    .line 1873
    :cond_3f
    iget-boolean v6, v5, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    if-eqz v6, :cond_46

    .line 1874
    iput-boolean v3, v5, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    move v4, v2

    :cond_46
    :goto_46
    add-int/lit8 v1, v1, -0x1

    goto :goto_1c

    :cond_49
    if-eqz v4, :cond_50

    const-wide/16 v1, 0x0

    .line 1880
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    :cond_50
    return-void
.end method

.method public final getAllowMode(Landroid/content/Intent;Ljava/lang/String;)I
    .registers 3

    if-eqz p2, :cond_18

    .line 3804
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 3805
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x3

    return p0

    :cond_18
    const/4 p0, 0x1

    return p0
.end method

.method public final getAppStateTracker()Lcom/android/server/AppStateTracker;
    .registers 2

    .line 634
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    if-nez v0, :cond_e

    .line 635
    const-class v0, Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppStateTracker;

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 637
    :cond_e
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    return-object p0
.end method

.method public getExtraRestartTimeInBetweenLocked()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 4289
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mEnableExtraServiceRestartDelayOnMemPressure:Z

    if-nez v1, :cond_b

    const-wide/16 v0, 0x0

    return-wide v0

    .line 4292
    :cond_b
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler;->getLastMemoryLevelLocked()I

    move-result v0

    .line 4293
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mExtraServiceRestartDelayOnMemPressure:[J

    aget-wide v0, p0, v0

    return-wide v0
.end method

.method public getForegroundServiceTypeLocked(Landroid/content/ComponentName;Landroid/os/IBinder;)I
    .registers 6

    .line 1566
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1567
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1570
    :try_start_8
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActiveServices;->findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 1572
    iget p0, p0, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_16

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    .line 1575
    :goto_12
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_16
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1576
    throw p0
.end method

.method public getRunningServiceControlPanelLocked(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .registers 5

    .line 6028
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 6029
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActiveServices;->getServiceByNameLocked(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;

    move-result-object p0

    if-eqz p0, :cond_40

    .line 6031
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object p0

    .line 6032
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_18
    if-ltz p1, :cond_40

    .line 6033
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 6034
    :goto_21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3d

    .line 6035
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ConnectionRecord;

    iget-object v2, v2, Lcom/android/server/am/ConnectionRecord;->clientIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_3a

    .line 6036
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ConnectionRecord;

    iget-object p0, p0, Lcom/android/server/am/ConnectionRecord;->clientIntent:Landroid/app/PendingIntent;

    return-object p0

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_3d
    add-int/lit8 p1, p1, -0x1

    goto :goto_18

    :cond_40
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRunningServiceInfoLocked(IIIZZ)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZZ)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation

    .line 5976
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 5979
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    if-eqz p5, :cond_68

    .line 5982
    :try_start_c
    iget-object p3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {p3}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object p3

    move p4, v2

    .line 5983
    :goto_15
    array-length p5, p3

    if-ge p4, p5, :cond_44

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-ge p5, p1, :cond_44

    .line 5984
    aget p5, p3, p4

    invoke-virtual {p0, p5}, Lcom/android/server/am/ActiveServices;->getServicesLocked(I)Landroid/util/ArrayMap;

    move-result-object p5

    move v3, v2

    .line 5985
    :goto_25
    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_41

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, p1, :cond_41

    .line 5986
    invoke-virtual {p5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 5987
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_41
    add-int/lit8 p4, p4, 0x1

    goto :goto_15

    .line 5991
    :cond_44
    :goto_44
    iget-object p3, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge v2, p3, :cond_c9

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p3, p1, :cond_c9

    .line 5992
    iget-object p3, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/am/ServiceRecord;

    .line 5994
    invoke-virtual {p0, p3}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object p4

    .line 5995
    iget-wide v3, p3, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iput-wide v3, p4, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    .line 5996
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 5999
    :cond_68
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p5

    .line 6000
    invoke-virtual {p0, p5}, Lcom/android/server/am/ActiveServices;->getServicesLocked(I)Landroid/util/ArrayMap;

    move-result-object v3

    move v4, v2

    .line 6001
    :goto_71
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_97

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, p1, :cond_97

    .line 6002
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    if-nez p4, :cond_8d

    .line 6004
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_94

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v6, p3, :cond_94

    .line 6005
    :cond_8d
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_94
    add-int/lit8 v4, v4, 0x1

    goto :goto_71

    .line 6009
    :cond_97
    :goto_97
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_c9

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, p1, :cond_c9

    .line 6010
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 6011
    iget v4, v3, Lcom/android/server/am/ServiceRecord;->userId:I

    if-ne v4, p5, :cond_c6

    if-nez p4, :cond_bb

    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_c6

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v4, p3, :cond_c6

    .line 6014
    :cond_bb
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v4

    .line 6015
    iget-wide v5, v3, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iput-wide v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    .line 6016
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c6
    .catchall {:try_start_c .. :try_end_c6} :catchall_cd

    :cond_c6
    add-int/lit8 v2, v2, 0x1

    goto :goto_97

    .line 6021
    :cond_c9
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p2

    :catchall_cd
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6022
    throw p0
.end method

.method public getServiceByNameLocked(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;
    .registers 5

    .line 655
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v0, :cond_23

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getServiceByNameLocked("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "), callingUser = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager_MU"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_23
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ServiceRecord;

    return-object p0
.end method

.method public final getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;
    .registers 4

    .line 705
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-nez v0, :cond_1c

    .line 707
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/am/ActiveServices$ServiceMap;-><init>(Lcom/android/server/am/ActiveServices;Landroid/os/Looper;I)V

    .line 708
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1c
    return-object v0
.end method

.method public getServicesLocked(I)Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation

    .line 714
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public hasBackgroundServicesLocked(I)Z
    .registers 3

    .line 661
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ActiveServices$ServiceMap;

    const/4 v0, 0x0

    if-eqz p1, :cond_16

    .line 662
    iget-object p1, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget p0, p0, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    if-lt p1, p0, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0
.end method

.method public hasForegroundServiceNotificationLocked(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 8

    .line 666
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ActiveServices$ServiceMap;

    const/4 v0, 0x0

    if-eqz p0, :cond_6a

    move v1, v0

    .line 668
    :goto_c
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_6a

    .line 669
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 670
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v3, :cond_67

    .line 671
    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {v2}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 672
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz p0, :cond_65

    .line 673
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Channel u"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/pkg="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/channelId="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has fg service notification"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    const/4 p0, 0x1

    return p0

    :cond_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_6a
    return v0
.end method

.method public final isBgFgsRestrictionEnabled(Lcom/android/server/am/ServiceRecord;)Z
    .registers 5

    .line 7246
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsStartRestrictionEnabled:Z

    if-eqz v0, :cond_27

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide/32 v1, 0xa2c30a7

    .line 7248
    invoke-static {v1, v2, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionCheckCallerTargetSdk:Z

    if-eqz p0, :cond_25

    iget p0, p1, Lcom/android/server/am/ServiceRecord;->mRecentCallingUid:I

    .line 7251
    invoke-static {v1, v2, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    if-eqz p0, :cond_27

    :cond_25
    const/4 p0, 0x1

    goto :goto_28

    :cond_27
    const/4 p0, 0x0

    :goto_28
    return p0
.end method

.method public final isForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13

    if-eqz p1, :cond_19

    :try_start_2
    const-string p0, "application_policy"

    .line 6748
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_19

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 6751
    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_18} :catch_19

    return p0

    :catch_19
    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public final isForegroundServiceAllowedInBackgroundRestricted(ILjava/lang/String;)Z
    .registers 4

    .line 1913
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ProcessList;->getUidRecordLOSP(I)Lcom/android/server/am/UidRecord;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 1915
    invoke-virtual {p1, p2}, Lcom/android/server/am/UidRecord;->getProcessInPackage(Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 1916
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->isForegroundServiceAllowedInBackgroundRestricted(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public final isForegroundServiceAllowedInBackgroundRestricted(Lcom/android/server/am/ProcessRecord;)Z
    .registers 4

    .line 1897
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1898
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->isBackgroundRestricted()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_21

    .line 1899
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result p1

    const/4 v1, 0x3

    if-gt p1, v1, :cond_11

    goto :goto_21

    .line 1902
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1f

    .line 1903
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->isSetBoundByNonBgRestrictedApp()Z

    move-result p0

    if-eqz p0, :cond_1f

    return v0

    :cond_1f
    const/4 p0, 0x0

    return p0

    :cond_21
    :goto_21
    return v0
.end method

.method public final isPermissionGranted(Ljava/lang/String;II)Z
    .registers 4

    .line 7209
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final isServiceNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)Z
    .registers 5

    .line 4821
    iget-boolean p0, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_6

    return v0

    :cond_6
    if-nez p2, :cond_c

    .line 4827
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result p3

    :cond_c
    if-eqz p3, :cond_f

    return v0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public isServiceRestartBackoffEnabledLocked(Ljava/lang/String;)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 4416
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mRestartBackoffDisabledPackages:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public killMisbehavingService(Lcom/android/server/am/ServiceRecord;IILjava/lang/String;I)V
    .registers 15

    .line 1445
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1446
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->destroying:Z

    const/4 v2, 0x0

    if-nez v1, :cond_f

    .line 1448
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    goto :goto_24

    .line 1452
    :cond_f
    iget v1, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v1

    .line 1453
    iget-object v1, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ServiceRecord;

    if-eqz p1, :cond_24

    .line 1455
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 1458
    :cond_24
    :goto_24
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, -0x1

    const-string v6, "Bad notification for startForeground"

    const/4 v7, 0x1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActivityManagerService;->crashApplicationWithType(IILjava/lang/String;ILjava/lang/String;ZI)V

    .line 1460
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_36

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_36
    move-exception p0

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final killServicesLocked(Lcom/android/server/am/ProcessRecord;Z)V
    .registers 15

    .line 5706
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 5735
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfConnections()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_8
    const/4 v3, 0x0

    if-ltz v1, :cond_15

    .line 5736
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionAt(I)Lcom/android/server/am/ConnectionRecord;

    move-result-object v4

    .line 5737
    invoke-virtual {p0, v4, p1, v3, v2}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 5739
    :cond_15
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessServiceRecord;)V

    .line 5740
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->removeAllConnections()V

    const/4 v1, 0x0

    .line 5742
    iput-boolean v1, v0, Lcom/android/server/am/ProcessServiceRecord;->mAllowlistManager:Z

    .line 5745
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_23
    if-ltz v4, :cond_11a

    .line 5746
    invoke-virtual {v0, v4}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v5

    .line 5747
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v5, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v5, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 5748
    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 5747
    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/am/BatteryStatsService;->noteServiceStopLaunch(ILjava/lang/String;Ljava/lang/String;)V

    .line 5749
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v6, p1, :cond_5a

    if-eqz v6, :cond_5a

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v6

    if-nez v6, :cond_5a

    .line 5750
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v6, v5}, Lcom/android/server/am/ProcessServiceRecord;->stopService(Lcom/android/server/am/ServiceRecord;)Z

    .line 5751
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessServiceRecord;->updateBoundClientUids()V

    .line 5753
    :cond_5a
    invoke-virtual {v5, v3, v3, v1, v3}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;Landroid/app/IApplicationThread;ILcom/android/server/am/UidRecord;)V

    .line 5754
    iput-object v3, v5, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    .line 5755
    iput v1, v5, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 5756
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v6, v6, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 5757
    :try_start_68
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->forceClearTracker()V

    .line 5758
    monitor-exit v6
    :try_end_6c
    .catchall {:try_start_68 .. :try_end_6c} :catchall_117

    .line 5759
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8f

    .line 5760
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v6, :cond_8f

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "killServices remove destroying "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5763
    :cond_8f
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    sub-int/2addr v6, v2

    :goto_96
    if-ltz v6, :cond_113

    .line 5765
    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/IntentBindRecord;

    .line 5766
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v8, :cond_c4

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Killing binding "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ": shouldUnbind="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v7, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5768
    :cond_c4
    iput-object v3, v7, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    .line 5769
    iput-boolean v1, v7, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    iput-boolean v1, v7, Lcom/android/server/am/IntentBindRecord;->received:Z

    iput-boolean v1, v7, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 5774
    iget-object v8, v7, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    sub-int/2addr v8, v2

    :goto_d3
    if-ltz v8, :cond_110

    .line 5775
    iget-object v9, v7, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    .line 5777
    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v10

    if-nez v10, :cond_10d

    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v9

    if-nez v9, :cond_ea

    goto :goto_10d

    .line 5783
    :cond_ea
    iget-object v9, v7, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/AppBindRecord;

    .line 5785
    iget-object v10, v9, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v10

    sub-int/2addr v10, v2

    :goto_f9
    if-ltz v10, :cond_10d

    .line 5786
    iget-object v11, v9, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v11, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ConnectionRecord;

    .line 5787
    iget v11, v11, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v11, v11, 0x31

    if-ne v11, v2, :cond_10a

    goto :goto_10d

    :cond_10a
    add-int/lit8 v10, v10, -0x1

    goto :goto_f9

    :cond_10d
    :goto_10d
    add-int/lit8 v8, v8, -0x1

    goto :goto_d3

    :cond_110
    add-int/lit8 v6, v6, -0x1

    goto :goto_96

    :cond_113
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_23

    :catchall_117
    move-exception p0

    .line 5758
    :try_start_118
    monitor-exit v6
    :try_end_119
    .catchall {:try_start_118 .. :try_end_119} :catchall_117

    throw p0

    .line 5810
    :cond_11a
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->EM_SUPPORTED:Z

    if-eqz v3, :cond_17b

    .line 5811
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v3

    if-eqz v3, :cond_17b

    .line 5812
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkInvalidProcess(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17b

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v3

    if-nez v3, :cond_17b

    const-string v3, "ActivityManager"

    .line 5813
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skip scheduling service: original allowRestart["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "] name="

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " uid="

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " pid="

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5816
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5813
    invoke-static {v3, p2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move p2, v1

    .line 5822
    :cond_17b
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v3

    .line 5825
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_186
    if-ltz v4, :cond_282

    .line 5826
    invoke-virtual {v0, v4}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v5

    .line 5830
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v6

    if-nez v6, :cond_198

    .line 5831
    invoke-virtual {v0, v5}, Lcom/android/server/am/ProcessServiceRecord;->stopService(Lcom/android/server/am/ServiceRecord;)Z

    .line 5832
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->updateBoundClientUids()V

    .line 5837
    :cond_198
    iget-object v6, v3, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    if-eq v6, v5, :cond_1ce

    if-eqz v6, :cond_27e

    const-string v7, "ActivityManager"

    .line 5840
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " in process "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " not same as in map: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27e

    :cond_1ce
    if-eqz p2, :cond_239

    .line 5848
    iget v6, v5, Lcom/android/server/am/ServiceRecord;->crashCount:I

    int-to-long v6, v6

    iget-object v8, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v8, v8, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_239

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_239

    const-string v6, "ActivityManager"

    .line 5851
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Service crashed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/server/am/ServiceRecord;->crashCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " times, stopping: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x7552

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    .line 5853
    iget v8, v5, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 5854
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    iget v8, v5, Lcom/android/server/am/ServiceRecord;->crashCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v8, 0x2

    iget-object v9, v5, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    .line 5855
    iget-object v9, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_22b

    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v9

    goto :goto_22c

    :cond_22b
    const/4 v9, -0x1

    :goto_22c
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 5853
    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5856
    invoke-virtual {p0, v5, v2}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    goto :goto_27e

    :cond_239
    if-eqz p2, :cond_27b

    .line 5857
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v7, v5, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 5858
    invoke-virtual {v6, v7, v1}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v6

    if-nez v6, :cond_248

    goto :goto_27b

    .line 5861
    :cond_248
    invoke-virtual {p0, v5, v2}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    move-result v6

    if-nez v6, :cond_252

    .line 5867
    invoke-virtual {p0, v5, v2}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    goto :goto_27e

    .line 5868
    :cond_252
    invoke-virtual {v5, v1}, Lcom/android/server/am/ServiceRecord;->canStopIfKilled(Z)Z

    move-result v6

    if-eqz v6, :cond_27e

    .line 5872
    iput-boolean v1, v5, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 5873
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v6, :cond_27e

    .line 5874
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v6, v6, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 5875
    :try_start_265
    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v7

    .line 5876
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 5875
    invoke-virtual {v5, v1, v7, v8, v9}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 5877
    monitor-exit v6

    goto :goto_27e

    :catchall_278
    move-exception p0

    monitor-exit v6
    :try_end_27a
    .catchall {:try_start_265 .. :try_end_27a} :catchall_278

    throw p0

    .line 5859
    :cond_27b
    :goto_27b
    invoke-virtual {p0, v5, v2}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    :cond_27e
    :goto_27e
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_186

    .line 5883
    :cond_282
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "updateOomAdj_unbindService"

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    if-nez p2, :cond_322

    .line 5886
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->stopAllServices()V

    .line 5887
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->clearBoundClientUids()V

    .line 5890
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v2

    :goto_299
    if-ltz p2, :cond_2c4

    .line 5891
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 5892
    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c1

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, v4, :cond_2c1

    .line 5894
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5895
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    :cond_2c1
    add-int/lit8 p2, p2, -0x1

    goto :goto_299

    .line 5898
    :cond_2c4
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v2

    :goto_2cb
    if-ltz p2, :cond_2f3

    .line 5899
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 5900
    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f0

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, v3, :cond_2f0

    .line 5902
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2f0
    add-int/lit8 p2, p2, -0x1

    goto :goto_2cb

    .line 5905
    :cond_2f3
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    sub-int/2addr p2, v2

    :goto_2fa
    if-ltz p2, :cond_322

    .line 5906
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 5907
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31f

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, v2, :cond_31f

    .line 5909
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_31f
    add-int/lit8 p2, p2, -0x1

    goto :goto_2fa

    .line 5915
    :cond_322
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    :cond_328
    :goto_328
    if-lez p2, :cond_367

    add-int/lit8 p2, p2, -0x1

    .line 5918
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 5919
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p1, :cond_328

    .line 5920
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v2, v2, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5921
    :try_start_33f
    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord;->forceClearTracker()V

    .line 5922
    monitor-exit v2
    :try_end_343
    .catchall {:try_start_33f .. :try_end_343} :catchall_364

    .line 5923
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5924
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v2, :cond_328

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "killServices remove destroying "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_328

    :catchall_364
    move-exception p0

    .line 5922
    :try_start_365
    monitor-exit v2
    :try_end_366
    .catchall {:try_start_365 .. :try_end_366} :catchall_364

    throw p0

    .line 5928
    :cond_367
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->stopAllExecutingServices()V

    return-void
.end method

.method public final logFGSStateChangeLocked(Lcom/android/server/am/ServiceRecord;III)V
    .registers 28

    move-object/from16 v0, p1

    move/from16 v13, p2

    .line 7289
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    move-object/from16 v2, p0

    iget-object v2, v2, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->mFgsAtomSampleRate:F

    invoke-static {v1, v2}, Lcom/android/server/am/ActivityManagerUtils;->shouldSamplePackageForAtom(Ljava/lang/String;F)Z

    move-result v1

    if-nez v1, :cond_15

    return-void

    :cond_15
    const/4 v10, 0x2

    const/4 v9, 0x1

    if-eq v13, v9, :cond_21

    if-ne v13, v10, :cond_1c

    goto :goto_21

    .line 7300
    :cond_1c
    iget-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    .line 7301
    iget v2, v0, Lcom/android/server/am/ServiceRecord;->mAllowStartForeground:I

    goto :goto_25

    .line 7297
    :cond_21
    :goto_21
    iget-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgsAtEntering:Z

    .line 7298
    iget v2, v0, Lcom/android/server/am/ServiceRecord;->mAllowStartForegroundAtEntering:I

    :goto_25
    move/from16 v18, v1

    move/from16 v19, v2

    .line 7303
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->mRecentCallerApplicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v20, 0x0

    if-eqz v1, :cond_34

    .line 7304
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v21, v1

    goto :goto_36

    :cond_34
    move/from16 v21, v20

    :goto_36
    const/16 v1, 0x3c

    .line 7305
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    iget v7, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget v8, v0, Lcom/android/server/am/ServiceRecord;->mRecentCallingUid:I

    .line 7314
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->mInfoTempFgsAllowListReason:Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    if-eqz v2, :cond_49

    .line 7315
    iget v2, v2, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mCallingUid:I

    goto :goto_4a

    :cond_49
    const/4 v2, -0x1

    :goto_4a
    move/from16 v22, v2

    iget-boolean v11, v0, Lcom/android/server/am/ServiceRecord;->mFgsNotificationWasDeferred:Z

    iget-boolean v12, v0, Lcom/android/server/am/ServiceRecord;->mFgsNotificationShown:Z

    iget v14, v0, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    .line 7320
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerUtils;->hashComponentNameForAtom(Ljava/lang/String;)I

    move-result v15

    iget-boolean v2, v0, Lcom/android/server/am/ServiceRecord;->mFgsHasNotificationPermission:Z

    move/from16 v16, v2

    iget v2, v0, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    move/from16 v17, v2

    move v2, v3

    move-object v3, v4

    move/from16 v4, p2

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v9, v21

    move/from16 v10, v22

    move v0, v13

    move/from16 v13, p3

    .line 7305
    invoke-static/range {v1 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IZIIIIIZZIIIZI)V

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_78

    const/16 v0, 0x7594

    const/4 v3, 0x2

    goto :goto_82

    :cond_78
    const/4 v3, 0x2

    if-ne v0, v3, :cond_7e

    const/16 v0, 0x7596

    goto :goto_82

    :cond_7e
    if-ne v0, v1, :cond_fb

    const/16 v0, 0x7595

    :goto_82
    const/16 v4, 0xb

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v5, p1

    .line 7335
    iget v6, v5, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 7336
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v20

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    aput-object v6, v4, v2

    .line 7338
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    .line 7339
    invoke-static/range {v19 .. v19}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x4

    iget-object v2, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 7340
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x5

    .line 7341
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x6

    .line 7342
    iget-boolean v2, v5, Lcom/android/server/am/ServiceRecord;->mFgsNotificationWasDeferred:Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x7

    .line 7343
    iget-boolean v2, v5, Lcom/android/server/am/ServiceRecord;->mFgsNotificationShown:Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const/16 v1, 0x8

    .line 7344
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const/16 v1, 0x9

    iget v2, v5, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    .line 7345
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const/16 v1, 0xa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 7346
    invoke-static/range {p4 .. p4}, Lcom/android/server/am/ActiveServices;->fgsStopReasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    .line 7348
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 7335
    invoke-static {v0, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_fb
    return-void
.end method

.method public final logFgsBackgroundStart(Lcom/android/server/am/ServiceRecord;)V
    .registers 6

    .line 7257
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->mAllowStartForeground:I

    invoke-static {v0}, Lcom/android/server/am/ActiveServices;->isFgsBgStart(I)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 7260
    :cond_9
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->mLoggedInfoAllowStartForeground:Z

    if-nez v0, :cond_5f

    .line 7261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Background started FGS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7262
    iget v1, p1, Lcom/android/server/am/ServiceRecord;->mAllowStartForeground:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1f

    const-string v1, "Allowed "

    goto :goto_21

    :cond_1f
    const-string v1, "Disallowed "

    :goto_21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7264
    iget v1, p1, Lcom/android/server/am/ServiceRecord;->mAllowStartForeground:I

    const-string v3, "ActivityManager"

    if-eq v1, v2, :cond_48

    .line 7265
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartAllowedLogSampleRate:F

    invoke-static {v1, p0}, Lcom/android/server/am/ActivityManagerUtils;->shouldSamplePackageForAtom(Ljava/lang/String;F)Z

    move-result p0

    if-eqz p0, :cond_44

    .line 7267
    invoke-static {v3, v0}, Landroid/util/Slog;->wtfQuiet(Ljava/lang/String;Ljava/lang/String;)V

    .line 7269
    :cond_44
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 7271
    :cond_48
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartDeniedLogSampleRate:F

    invoke-static {v1, p0}, Lcom/android/server/am/ActivityManagerUtils;->shouldSamplePackageForAtom(Ljava/lang/String;F)Z

    move-result p0

    if-eqz p0, :cond_59

    .line 7273
    invoke-static {v3, v0}, Landroid/util/Slog;->wtfQuiet(Ljava/lang/String;Ljava/lang/String;)V

    .line 7275
    :cond_59
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5c
    const/4 p0, 0x1

    .line 7277
    iput-boolean p0, p1, Lcom/android/server/am/ServiceRecord;->mLoggedInfoAllowStartForeground:Z

    :cond_5f
    return-void
.end method

.method public makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;
    .registers 7

    .line 5932
    new-instance p0, Landroid/app/ActivityManager$RunningServiceInfo;

    invoke-direct {p0}, Landroid/app/ActivityManager$RunningServiceInfo;-><init>()V

    .line 5934
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 5935
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_13

    .line 5936
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    .line 5938
    :cond_13
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    .line 5939
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    .line 5940
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    iput-boolean v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    .line 5941
    iget-wide v0, p1, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    iput-wide v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    .line 5942
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    iput-boolean v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    .line 5943
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->clientCount:I

    .line 5944
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->crashCount:I

    iput v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->crashCount:I

    .line 5945
    iget-wide v0, p1, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iput-wide v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->lastActivityTime:J

    .line 5946
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v0, :cond_45

    .line 5947
    iget v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 5949
    :cond_45
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_4f

    .line 5950
    iget v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 5952
    :cond_4f
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_61

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v0, v1, :cond_61

    .line 5953
    iget v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 5955
    :cond_61
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_71

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 5956
    iget v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 5959
    :cond_71
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object p1

    .line 5960
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_7b
    if-ltz v0, :cond_a9

    .line 5961
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 5962
    :goto_84
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_a6

    .line 5963
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ConnectionRecord;

    .line 5964
    iget v4, v3, Lcom/android/server/am/ConnectionRecord;->clientLabel:I

    if-eqz v4, :cond_a3

    .line 5965
    iget-object p1, v3, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object p1, p1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object p1, p0, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    .line 5966
    iget p1, v3, Lcom/android/server/am/ConnectionRecord;->clientLabel:I

    iput p1, p0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    return-object p0

    :cond_a3
    add-int/lit8 v2, v2, 0x1

    goto :goto_84

    :cond_a6
    add-int/lit8 v0, v0, -0x1

    goto :goto_7b

    :cond_a9
    return-object p0
.end method

.method public final maybeLogBindCrossProfileService(ILjava/lang/String;I)V
    .registers 4

    .line 3240
    invoke-static {p3}, Landroid/os/UserHandle;->isCore(I)Z

    move-result p3

    if-eqz p3, :cond_7

    return-void

    .line 3243
    :cond_7
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p3

    if-eq p3, p1, :cond_2b

    .line 3244
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 3245
    invoke-virtual {p0, p3, p1}, Lcom/android/server/am/UserController;->isSameProfileGroup(II)Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_2b

    :cond_18
    const/16 p0, 0x97

    .line 3248
    invoke-static {p0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    .line 3249
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    .line 3250
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public newServiceDumperLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)Lcom/android/server/am/ActiveServices$ServiceDumper;
    .registers 16

    .line 6615
    new-instance v8, Lcom/android/server/am/ActiveServices$ServiceDumper;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/ActiveServices$ServiceDumper;-><init>(Lcom/android/server/am/ActiveServices;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)V

    return-object v8
.end method

.method public final notifyBindingServiceEventLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 3230
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_6

    .line 3231
    iget-object p2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :cond_6
    if-eqz p2, :cond_18

    .line 3233
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v0, 0x4b

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 3234
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_18
    return-void
.end method

.method public onForegroundServiceNotificationUpdateLocked(ZLandroid/app/Notification;ILjava/lang/String;I)V
    .registers 13

    .line 2563
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    const/4 v2, 0x0

    const-string v3, "ActivityManager"

    if-ltz v0, :cond_66

    .line 2564
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 2565
    iget v5, v4, Lcom/android/server/am/ServiceRecord;->userId:I

    if-ne p5, v5, :cond_63

    iget v5, v4, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-ne p3, v5, :cond_63

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2567
    invoke-virtual {v5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    if-eqz p1, :cond_4b

    .line 2571
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v5, :cond_41

    .line 2572
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notification shown; canceling deferral of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2575
    :cond_41
    iput-boolean v1, v4, Lcom/android/server/am/ServiceRecord;->mFgsNotificationShown:Z

    .line 2576
    iput-boolean v2, v4, Lcom/android/server/am/ServiceRecord;->mFgsNotificationDeferred:Z

    .line 2577
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_63

    .line 2579
    :cond_4b
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v2, :cond_63

    .line 2580
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FGS notification deferred for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_63
    :goto_63
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2586
    :cond_66
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-eqz p0, :cond_af

    .line 2588
    :goto_70
    iget-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    if-ge v2, p1, :cond_af

    .line 2589
    iget-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ServiceRecord;

    .line 2590
    iget-boolean p5, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz p5, :cond_ac

    iget p5, p1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-ne p3, p5, :cond_ac

    iget-object p5, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p5, p5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2592
    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_ac

    .line 2593
    sget-boolean p5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz p5, :cond_aa

    .line 2594
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Recording shown notification for "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v3, p5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2597
    :cond_aa
    iput-object p2, p1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    :cond_ac
    add-int/lit8 v2, v2, 0x1

    goto :goto_70

    :cond_af
    return-void
.end method

.method public peekServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .registers 16

    .line 1465
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1466
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 1464
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object p0

    if-eqz p0, :cond_5f

    .line 1471
    iget-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-eqz p1, :cond_2e

    .line 1478
    iget-object p0, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/IntentBindRecord;

    if-eqz p0, :cond_5f

    .line 1480
    iget-object p0, p0, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    goto :goto_60

    .line 1472
    :cond_2e
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Permission Denial: Accessing service from pid="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1474
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", uid="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1475
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " requires "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5f
    const/4 p0, 0x0

    :goto_60
    return-object p0
.end method

.method public performRescheduleServiceRestartOnMemoryPressureLocked(JJLjava/lang/String;J)V
    .registers 24
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    move-object/from16 v6, p0

    move-wide/from16 v7, p6

    sub-long v0, p3, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    return-void

    :cond_d
    if-lez v0, :cond_85

    .line 4250
    iget-object v0, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v0, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    add-long v9, v0, p3

    .line 4254
    iget-object v0, v6, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    move-wide v0, v7

    move v13, v12

    :goto_20
    if-ge v13, v11, :cond_98

    .line 4255
    iget-object v2, v6, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 4256
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_80

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 4257
    invoke-virtual {v6, v3}, Lcom/android/server/am/ActiveServices;->isServiceRestartBackoffEnabledLocked(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3d

    goto :goto_80

    :cond_3d
    cmp-long v3, v0, v7

    if-gtz v3, :cond_58

    .line 4266
    iget-wide v0, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 4267
    iget-wide v14, v2, Lcom/android/server/am/ServiceRecord;->mEarliestRestartTime:J

    iget-wide v4, v2, Lcom/android/server/am/ServiceRecord;->mRestartSchedulingTime:J

    add-long v4, v4, p3

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    cmp-long v0, v3, v0

    if-eqz v0, :cond_68

    goto :goto_66

    .line 4270
    :cond_58
    iget-wide v3, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    sub-long/2addr v3, v0

    cmp-long v3, v3, v9

    if-gez v3, :cond_68

    add-long/2addr v0, v9

    .line 4271
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    :goto_66
    const/4 v4, 0x1

    goto :goto_69

    :cond_68
    move v4, v12

    .line 4274
    :goto_69
    iget-wide v14, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    sub-long v0, v14, v7

    iput-wide v0, v2, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    if-eqz v4, :cond_7e

    const-string v3, "Rescheduling"

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object/from16 v3, p5

    move-wide/from16 v4, p6

    .line 4277
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->performScheduleRestartLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_7e
    move-wide v0, v14

    goto :goto_82

    .line 4258
    :cond_80
    :goto_80
    iget-wide v0, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    :goto_82
    add-int/lit8 v13, v13, 0x1

    goto :goto_20

    :cond_85
    if-gez v0, :cond_98

    .line 4282
    iget-object v0, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActiveServices;->rescheduleServiceRestartIfPossibleLocked(JJLjava/lang/String;J)V

    :cond_98
    return-void
.end method

.method public performScheduleRestartLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 4126
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    if-eqz v0, :cond_14

    .line 4127
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0x42

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4129
    iput-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    .line 4132
    :cond_14
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4133
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    iget-wide v2, p1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 4134
    iget-wide v2, p1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    add-long/2addr p4, v2

    iput-wide p4, p1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 4135
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " restart of crashed service "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " in "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p4, p1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "ms for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ActivityManager"

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x7553

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    .line 4137
    iget p3, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 4138
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v1

    const/4 p3, 0x1

    iget-object p4, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    aput-object p4, p2, p3

    const/4 p3, 0x2

    iget-wide p4, p1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p2, p3

    .line 4137
    invoke-static {p0, p2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public final performServiceRestartLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 12

    const-string/jumbo v0, "updateOomAdj_startService"

    .line 4297
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return-void

    :cond_c
    const/4 v1, 0x0

    .line 4300
    invoke-virtual {p0, p1, v1, v1}, Lcom/android/server/am/ActiveServices;->isServiceNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 4306
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Restarting service that is not needed: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4310
    :cond_2a
    :try_start_2a
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v1}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    iget-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZZZ)Ljava/lang/String;
    :try_end_3f
    .catch Landroid/os/TransactionTooLargeException; {:try_start_2a .. :try_end_3f} :catch_47
    .catchall {:try_start_2a .. :try_end_3f} :catchall_40

    goto :goto_47

    :catchall_40
    move-exception p1

    .line 4316
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    .line 4317
    throw p1

    .line 4316
    :catch_47
    :goto_47
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    return-void
.end method

.method public processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 11

    .line 5474
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v1, v0, :cond_9c

    .line 5475
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 5476
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    const-string v5, "com.android.systemui"

    .line 5477
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "ActivityManager"

    const/4 v6, 0x1

    if-eqz v4, :cond_5b

    .line 5478
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Do not bringing down SystemUI services : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5479
    invoke-static {v5, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5480
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/server/am/ActiveServices;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5482
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mRevivalServicesMessages:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_99

    .line 5483
    :cond_5b
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v7, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v7, :cond_6d

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 5484
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_71

    :cond_6d
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    if-ne v4, p1, :cond_99

    .line 5486
    :cond_71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forcing bringing down service: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 5487
    iput-object v0, v3, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    .line 5488
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5489
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v1, -0x1

    .line 5492
    invoke-virtual {p0, v3, v6}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    move v2, v6

    :cond_99
    :goto_99
    add-int/2addr v1, v6

    goto/16 :goto_8

    :cond_9c
    if-eqz v2, :cond_a6

    .line 5496
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo p1, "updateOomAdj_unbindService"

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    :cond_a6
    return-void
.end method

.method public publishServiceLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Landroid/os/IBinder;)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 3254
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 3256
    :try_start_c
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_144

    const-string v7, "ActivityManager"

    if-eqz v0, :cond_36

    :try_start_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PUBLISHING "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    if-eqz v2, :cond_140

    .line 3259
    new-instance v8, Landroid/content/Intent$FilterComparison;

    invoke-direct {v8, v3}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 3261
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IntentBindRecord;

    const/4 v9, 0x0

    if-eqz v0, :cond_136

    .line 3262
    iget-boolean v10, v0, Lcom/android/server/am/IntentBindRecord;->received:Z

    if-nez v10, :cond_136

    .line 3263
    iput-object v4, v0, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    const/4 v10, 0x1

    .line 3264
    iput-boolean v10, v0, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 3265
    iput-boolean v10, v0, Lcom/android/server/am/IntentBindRecord;->received:Z

    .line 3266
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v11

    .line 3267
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v10

    move v10, v0

    :goto_5d
    if-ltz v10, :cond_136

    .line 3268
    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/util/ArrayList;

    move v13, v9

    .line 3269
    :goto_67
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_131

    .line 3270
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/server/am/ConnectionRecord;

    .line 3271
    iget-object v0, v14, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v0, v0, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v8, v0}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cf

    .line 3272
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_98

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Not publishing to: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3274
    :cond_98
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_b6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Bound intent: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v14, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v14, v14, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v14, v14, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3276
    :cond_b6
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_12c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Published intent: "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12c

    .line 3280
    :cond_cf
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_e7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Publishing to: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3284
    :cond_e7
    iget-object v0, v14, Lcom/android/server/am/ConnectionRecord;->aliasComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_ec

    goto :goto_ee

    :cond_ec
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;
    :try_end_ee
    .catchall {:try_start_12 .. :try_end_ee} :catchall_144

    .line 3286
    :goto_ee
    :try_start_ee
    iget-object v15, v14, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v15, v0, v4, v9}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_f3} :catch_f4
    .catchall {:try_start_ee .. :try_end_f3} :catchall_144

    goto :goto_12c

    :catch_f4
    move-exception v0

    .line 3288
    :try_start_f5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failure sending service "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " to connection "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v14, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    .line 3289
    invoke-interface {v9}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " (in "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v14, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3288
    invoke-static {v7, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12c
    :goto_12c
    add-int/lit8 v13, v13, 0x1

    const/4 v9, 0x0

    goto/16 :goto_67

    :cond_131
    add-int/lit8 v10, v10, -0x1

    const/4 v9, 0x0

    goto/16 :goto_5d

    .line 3296
    :cond_136
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZZ)V
    :try_end_140
    .catchall {:try_start_f5 .. :try_end_140} :catchall_144

    .line 3299
    :cond_140
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_144
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3300
    throw v0
.end method

.method public final realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Landroid/app/IApplicationThread;ILcom/android/server/am/UidRecord;ZZ)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v9, p1

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    move/from16 v10, p6

    const-string v11, "ActivityManager"

    if-eqz v0, :cond_167

    .line 4619
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v3, :cond_36

    .line 4620
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "realStartServiceLocked, ServiceRecord.uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", ProcessRecord.uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager_MU"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4622
    :cond_36
    invoke-virtual/range {p1 .. p5}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;Landroid/app/IApplicationThread;ILcom/android/server/am/UidRecord;)V

    .line 4623
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v9, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iput-wide v3, v9, Lcom/android/server/am/ServiceRecord;->restartTime:J

    .line 4625
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 4626
    invoke-virtual {v3, v9}, Lcom/android/server/am/ProcessServiceRecord;->startService(Lcom/android/server/am/ServiceRecord;)Z

    move-result v4

    const-string v5, "create"

    const/4 v6, 0x0

    .line 4627
    invoke-virtual {p0, v9, v10, v5, v6}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;Ljava/lang/String;)Z

    .line 4628
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v12, 0x0

    invoke-virtual {v5, v2, v12, v6}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 4629
    invoke-virtual {p0, v3, v12}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessServiceRecord;Z)V

    .line 4632
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v2}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 4633
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v7, "updateOomAdj_startService"

    invoke-virtual {v5, v2, v7}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    .line 4646
    :try_start_63
    iget-object v5, v9, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4647
    iget-object v7, v9, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 4648
    iget-object v8, v9, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    const/16 v13, 0x64

    .line 4649
    invoke-static {v13, v5, v7, v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;)V

    .line 4651
    iget-object v13, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v13, v5, v7, v8}, Lcom/android/server/am/BatteryStatsService;->noteServiceStartLaunch(ILjava/lang/String;Ljava/lang/String;)V

    .line 4652
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v9, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-virtual {v5, v7, v13}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    .line 4654
    iget-object v5, v9, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 4655
    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackage(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v7

    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 4656
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v8

    .line 4654
    invoke-interface {v0, v9, v5, v7, v8}, Landroid/app/IApplicationThread;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 4657
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->postNotification()V
    :try_end_9f
    .catch Landroid/os/DeadObjectException; {:try_start_63 .. :try_end_9f} :catch_12b
    .catchall {:try_start_63 .. :try_end_9f} :catchall_129

    .line 4685
    iget-boolean v0, v9, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    if-eqz v0, :cond_a5

    .line 4686
    iput-boolean v13, v3, Lcom/android/server/am/ProcessServiceRecord;->mAllowlistManager:Z

    .line 4689
    :cond_a5
    invoke-virtual {p0, v9, v10}, Lcom/android/server/am/ActiveServices;->requestServiceBindingsLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 4691
    invoke-virtual {p0, v3, v6, v13}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    if-eqz v4, :cond_b0

    .line 4694
    invoke-virtual {v3, v9}, Lcom/android/server/am/ProcessServiceRecord;->addBoundClientUidsOfNewService(Lcom/android/server/am/ServiceRecord;)V

    .line 4700
    :cond_b0
    iget-boolean v0, v9, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_d5

    iget-boolean v0, v9, Lcom/android/server/am/ServiceRecord;->callStart:Z

    if-eqz v0, :cond_d5

    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_d5

    .line 4701
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    new-instance v14, Lcom/android/server/am/ServiceRecord$StartItem;

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->makeNextStartId()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v14

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;I)V

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4705
    :cond_d5
    invoke-virtual {p0, v9, v10, v13}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 4707
    iget-boolean v0, v9, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v0, :cond_101

    .line 4708
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v0, :cond_f4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REM FR DELAY LIST (new proc): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4709
    :cond_f4
    iget v0, v9, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4710
    iput-boolean v12, v9, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 4713
    :cond_101
    iget-boolean v0, v9, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-eqz v0, :cond_128

    .line 4715
    iput-boolean v12, v9, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 4716
    iget-boolean v0, v9, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_128

    .line 4717
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v0, :cond_123

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Applying delayed stop (from start): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_123
    move/from16 v0, p7

    .line 4719
    invoke-virtual {p0, v9, v0}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    :cond_128
    return-void

    :catchall_129
    move-exception v0

    goto :goto_148

    :catch_12b
    move-exception v0

    .line 4660
    :try_start_12c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Application dead when creating service "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4661
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v7, "Died when creating service"

    invoke-virtual {v5, v2, v7}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4662
    throw v0
    :try_end_148
    .catchall {:try_start_12c .. :try_end_148} :catchall_129

    .line 4666
    :goto_148
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 4667
    invoke-virtual {p0, v9, v2, v2, v12}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZZ)V

    if-eqz v4, :cond_159

    .line 4671
    invoke-virtual {v3, v9}, Lcom/android/server/am/ProcessServiceRecord;->stopService(Lcom/android/server/am/ServiceRecord;)Z

    .line 4672
    invoke-virtual {v9, v6, v6, v12, v6}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;Landroid/app/IApplicationThread;ILcom/android/server/am/UidRecord;)V

    :cond_159
    if-nez v2, :cond_166

    .line 4676
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    .line 4678
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_166

    .line 4680
    invoke-virtual {p0, v9, v12}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    .line 4683
    :cond_166
    throw v0

    .line 4617
    :cond_167
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final registerAppOpCallbackLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 5

    .line 2605
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_5

    return-void

    .line 2608
    :cond_5
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2609
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mFgsAppOpCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActiveServices$AppOpCallback;

    if-nez v1, :cond_25

    .line 2611
    new-instance v1, Lcom/android/server/am/ActiveServices$AppOpCallback;

    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/android/server/am/ActiveServices$AppOpCallback;-><init>(Lcom/android/server/am/ProcessRecord;Landroid/app/AppOpsManager;)V

    .line 2612
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mFgsAppOpCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2614
    :cond_25
    invoke-virtual {v1}, Lcom/android/server/am/ActiveServices$AppOpCallback;->registerLocked()V

    return-void
.end method

.method public registerForegroundServiceObserverLocked(ILandroid/app/IForegroundServiceObserver;)Z
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    const/4 v0, 0x0

    .line 5616
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v2, v0

    :goto_8
    const/4 v3, 0x1

    if-ge v2, v1, :cond_3d

    .line 5618
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-eqz v4, :cond_3a

    .line 5620
    iget-object v5, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v6, v0

    :goto_1c
    if-ge v6, v5, :cond_3a

    .line 5622
    iget-object v7, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    .line 5623
    iget-boolean v8, v7, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v8, :cond_37

    iget-object v8, v7, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p1, v9, :cond_37

    .line 5624
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v9, v7, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-interface {p2, v7, v8, v9, v3}, Landroid/app/IForegroundServiceObserver;->onForegroundStateChanged(Landroid/os/IBinder;Ljava/lang/String;IZ)V

    :cond_37
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 5631
    :cond_3d
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mFgsObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_42} :catch_43

    return v3

    .line 5635
    :catch_43
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Bad FGS observer from uid "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;Z)V
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p4

    .line 5115
    iget-object v0, v2, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v0}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 5116
    iget-object v4, v2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 5117
    iget-object v5, v4, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 5118
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-eqz v6, :cond_28

    .line 5120
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5121
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_28

    .line 5122
    invoke-virtual {v5, v0}, Lcom/android/server/am/ServiceRecord;->removeConnection(Landroid/os/IBinder;)V

    .line 5127
    :cond_28
    iget-object v6, v4, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    const/16 v7, 0x64

    if-le v6, v7, :cond_58

    const-string v6, "ActivityManager"

    .line 5128
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Too many connections("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") owned by"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5132
    :cond_58
    iget-object v6, v4, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 5133
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ConnectionRecord;->stopAssociation()V

    .line 5134
    iget-object v6, v2, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-eqz v6, :cond_6b

    move-object/from16 v7, p3

    if-eq v6, v7, :cond_6b

    .line 5135
    invoke-virtual {v6, v2}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->removeConnection(Ljava/lang/Object;)V

    .line 5137
    :cond_6b
    iget-object v6, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    const/4 v7, 0x1

    move-object/from16 v8, p2

    if-eq v6, v8, :cond_b4

    .line 5138
    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 5139
    invoke-virtual {v6, v2}, Lcom/android/server/am/ProcessServiceRecord;->removeConnection(Lcom/android/server/am/ConnectionRecord;)V

    .line 5140
    iget v8, v2, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_80

    .line 5141
    invoke-virtual {v6}, Lcom/android/server/am/ProcessServiceRecord;->updateHasAboveClientLocked()V

    .line 5145
    :cond_80
    iget v8, v2, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v9, 0x1000000

    and-int/2addr v8, v9

    if-eqz v8, :cond_97

    .line 5146
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->updateAllowlistManager()V

    .line 5147
    iget-boolean v8, v5, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    if-nez v8, :cond_97

    iget-object v8, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_97

    .line 5148
    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v1, v8}, Lcom/android/server/am/ActiveServices;->updateAllowlistManagerLocked(Lcom/android/server/am/ProcessServiceRecord;)V

    .line 5152
    :cond_97
    iget v8, v2, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v9, 0x100000

    and-int/2addr v8, v9

    if-eqz v8, :cond_a1

    .line 5153
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->updateIsAllowedBgActivityStartsByBinding()V

    .line 5156
    :cond_a1
    iget v8, v2, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v9, 0x10000

    and-int/2addr v8, v9

    if-eqz v8, :cond_ab

    .line 5157
    invoke-virtual {v6}, Lcom/android/server/am/ProcessServiceRecord;->updateHasTopStartedAlmostPerceptibleServices()V

    .line 5159
    :cond_ab
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_b4

    .line 5160
    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v1, v6, v2, v7}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    .line 5163
    :cond_b4
    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-eqz v6, :cond_cc

    .line 5165
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5166
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_cc

    .line 5167
    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5171
    :cond_cc
    iget-object v8, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v0, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-wide v12, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v14, v5, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    iget-object v15, v5, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual/range {v8 .. v15}, Lcom/android/server/am/ActivityManagerService;->stopAssociationLocked(ILjava/lang/String;IJLandroid/content/ComponentName;Ljava/lang/String;)V

    .line 5174
    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_f2

    .line 5175
    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v0, v0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    iget-object v6, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5178
    :cond_f2
    iget-boolean v0, v2, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    if-nez v0, :cond_1d7

    .line 5179
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_11e

    const-string v0, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Disconnecting binding "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": shouldUnbind="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v8, v8, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5181
    :cond_11e
    iget-object v0, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x0

    if-eqz v0, :cond_194

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_194

    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v0, v0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_194

    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v0, v0, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    if-eqz v0, :cond_194

    :try_start_139
    const-string/jumbo v0, "unbind"

    const-string/jumbo v8, "updateOomAdj_unbindService"

    .line 5184
    invoke-virtual {v1, v5, v6, v0, v8}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;Ljava/lang/String;)Z

    .line 5186
    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v0, v8, :cond_160

    iget v0, v2, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_160

    iget-object v0, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 5187
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    const/16 v8, 0xd

    if-gt v0, v8, :cond_160

    .line 5191
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v6, v9}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 5193
    :cond_160
    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iput-boolean v6, v0, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 5196
    iput-boolean v6, v0, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    .line 5197
    iget-object v0, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    iget-object v4, v4, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v4, v4, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v4}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Landroid/app/IApplicationThread;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_177} :catch_178

    goto :goto_194

    :catch_178
    move-exception v0

    const-string v4, "ActivityManager"

    .line 5199
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception when unbinding service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5200
    invoke-virtual {v1, v5, v3}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 5206
    :cond_194
    :goto_194
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a8

    .line 5207
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5208
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5211
    :cond_1a8
    iget v0, v2, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/2addr v0, v7

    if-eqz v0, :cond_1d7

    .line 5212
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result v0

    if-nez v0, :cond_1d4

    .line 5214
    iget-object v2, v5, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v2, :cond_1d4

    .line 5215
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v2, v2, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5216
    :try_start_1be
    iget-object v4, v5, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v8, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v8

    .line 5217
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 5216
    invoke-virtual {v4, v6, v8, v9, v10}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    .line 5218
    monitor-exit v2

    goto :goto_1d4

    :catchall_1d1
    move-exception v0

    monitor-exit v2
    :try_end_1d3
    .catchall {:try_start_1be .. :try_end_1d3} :catchall_1d1

    throw v0

    .line 5221
    :cond_1d4
    :goto_1d4
    invoke-virtual {v1, v5, v7, v0, v3}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZZ)V

    :cond_1d7
    return-void
.end method

.method public final removeServiceNotificationDeferralsLocked(Ljava/lang/String;I)V
    .registers 7

    .line 2538
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_42

    .line 2539
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 2540
    iget v2, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    if-ne p2, v2, :cond_3f

    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2541
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 2542
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2543
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v2, :cond_3f

    .line 2544
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing notification deferral for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_42
    return-void
.end method

.method public final removeServiceRestartBackoffEnabledLocked(Ljava/lang/String;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 4407
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mRestartBackoffDisabledPackages:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    const-string v0, "Crashed while binding "

    .line 3901
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x0

    if-eqz v1, :cond_b5

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    if-nez v1, :cond_f

    goto/16 :goto_b5

    .line 3905
    :cond_f
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    const-string v3, "ActivityManager"

    if-eqz v1, :cond_3c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestBind "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": requested="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p2, Lcom/android/server/am/IntentBindRecord;->requested:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " rebind="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3907
    :cond_3c
    iget-boolean v1, p2, Lcom/android/server/am/IntentBindRecord;->requested:Z

    const/4 v4, 0x1

    if-eqz v1, :cond_43

    if-eqz p4, :cond_b4

    :cond_43
    iget-object v1, p2, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_b4

    :try_start_4b
    const-string v1, "bind"

    const-string/jumbo v5, "updateOomAdj_bindService"

    .line 3909
    invoke-virtual {p0, p1, p3, v1, v5}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;Ljava/lang/String;)Z

    .line 3911
    iget-object p3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object p3

    iget-object v1, p2, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v1}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3912
    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v5

    .line 3911
    invoke-interface {p3, p1, v1, p4, v5}, Landroid/app/IApplicationThread;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    if-nez p4, :cond_6e

    .line 3914
    iput-boolean v4, p2, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 3916
    :cond_6e
    iput-boolean v4, p2, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 3917
    iput-boolean v2, p2, Lcom/android/server/am/IntentBindRecord;->doRebind:Z
    :try_end_72
    .catch Landroid/os/TransactionTooLargeException; {:try_start_4b .. :try_end_72} :catch_93
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_72} :catch_73

    goto :goto_b4

    .line 3925
    :catch_73
    sget-boolean p2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz p2, :cond_89

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3927
    :cond_89
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    .line 3928
    invoke-virtual {p0, p1, p2, p2, v2}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZZ)V

    return v2

    :catch_93
    move-exception p2

    .line 3920
    sget-boolean p3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz p3, :cond_aa

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3921
    :cond_aa
    iget-object p3, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    .line 3922
    invoke-virtual {p0, p1, p3, p3, v2}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZZ)V

    .line 3923
    throw p2

    :cond_b4
    :goto_b4
    return v4

    :cond_b5
    :goto_b5
    return v2
.end method

.method public final requestServiceBindingsLocked(Lcom/android/server/am/ServiceRecord;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 4600
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1d

    .line 4601
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/IntentBindRecord;

    const/4 v2, 0x0

    .line 4602
    invoke-virtual {p0, p1, v1, p2, v2}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_1d

    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1d
    :goto_1d
    return-void
.end method

.method public final requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ZIZLandroid/app/IServiceConnection;)Z
    .registers 35

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v3, p5

    .line 1071
    iget-object v0, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    iget-object v1, v7, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v2, v7, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e9

    const-string/jumbo v8, "u"

    const-string v9, "ActivityManager"

    const/4 v10, 0x0

    if-nez p6, :cond_4d

    .line 1076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p8, :cond_31

    const-string v1, " Binding"

    goto :goto_33

    :cond_31
    const-string v1, " Starting"

    .line 1077
    :goto_33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " a service in package"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requires a permissions review"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1076
    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    .line 1082
    :cond_4d
    new-instance v11, Landroid/content/Intent;

    const-string v0, "android.intent.action.REVIEW_PERMISSIONS"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x18800000

    .line 1083
    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1086
    iget-object v0, v7, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const-string v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v11, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p8, :cond_7d

    .line 1089
    new-instance v12, Landroid/os/RemoteCallback;

    new-instance v13, Lcom/android/server/am/ActiveServices$2;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActiveServices$2;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;ZLandroid/app/IServiceConnection;)V

    invoke-direct {v12, v13}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    const-string v0, "android.intent.extra.REMOTE_CALLBACK"

    .line 1130
    invoke-virtual {v11, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_b8

    .line 1132
    :cond_7d
    iget-object v0, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    const/4 v13, 0x4

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    new-array v2, v1, [Landroid/content/Intent;

    aput-object v3, v2, v10

    new-array v1, v1, [Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 1135
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v10

    const/high16 v23, 0x54000000

    const/16 v24, 0x0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move/from16 v16, p4

    move/from16 v17, p7

    move-object/from16 v21, v2

    move-object/from16 v22, v1

    .line 1132
    invoke-virtual/range {v12 .. v24}, Lcom/android/server/am/PendingIntentController;->getIntentSender(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/server/am/PendingIntentRecord;

    move-result-object v0

    .line 1138
    new-instance v1, Landroid/content/IntentSender;

    invoke-direct {v1, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1141
    :goto_b8
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    if-eqz v0, :cond_da

    .line 1142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Launching permission review for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    :cond_da
    iget-object v0, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/ActiveServices$3;

    move/from16 v2, p7

    invoke-direct {v1, v6, v11, v2}, Lcom/android/server/am/ActiveServices$3;-><init>(Lcom/android/server/am/ActiveServices;Landroid/content/Intent;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v10

    :cond_e9
    return v1
.end method

.method public final requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V
    .registers 6

    const/4 p0, 0x2

    .line 1779
    invoke-virtual {p1, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_19

    .line 1782
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr p2, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr p2, v0

    .line 1781
    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1f

    :cond_19
    const/4 p2, 0x1

    .line 1784
    iput-boolean p2, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 1785
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1f
    return-void
.end method

.method public rescheduleServiceRestartIfPossibleLocked(JJLjava/lang/String;J)V
    .registers 27
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    move-object/from16 v6, p0

    move-wide/from16 v7, p6

    add-long v9, p1, p3

    const-wide/16 v0, 0x2

    mul-long v11, v9, v0

    .line 4196
    iget-object v0, v6, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v14, v1

    move-wide v1, v7

    :goto_14
    if-ge v14, v13, :cond_df

    .line 4197
    iget-object v3, v6, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 4198
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_d1

    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 4199
    invoke-virtual {v6, v4}, Lcom/android/server/am/ActiveServices;->isServiceRestartBackoffEnabledLocked(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_32

    goto/16 :goto_d1

    :cond_32
    add-long v4, v1, v9

    move-wide/from16 p3, v11

    .line 4204
    iget-wide v11, v3, Lcom/android/server/am/ServiceRecord;->mEarliestRestartTime:J

    cmp-long v15, v4, v11

    if-gtz v15, :cond_59

    if-lez v14, :cond_4c

    .line 4208
    iget-object v4, v6, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    add-int/lit8 v5, v14, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    iget-wide v4, v4, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    add-long/2addr v4, v9

    goto :goto_4e

    :cond_4c
    const-wide/16 v4, 0x0

    .line 4207
    :goto_4e
    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    goto :goto_80

    :cond_59
    cmp-long v15, v1, v7

    if-gtz v15, :cond_6c

    .line 4215
    iget-wide v4, v3, Lcom/android/server/am/ServiceRecord;->mRestartSchedulingTime:J

    add-long v4, v4, p1

    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    goto :goto_72

    .line 4218
    :cond_6c
    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    :goto_72
    add-int/lit8 v4, v0, 0x1

    if-le v14, v4, :cond_80

    .line 4222
    iget-object v5, v6, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4223
    iget-object v5, v6, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_80
    :goto_80
    add-int/lit8 v4, v0, 0x1

    move v11, v0

    move-wide v15, v1

    move v0, v4

    :goto_85
    if-gt v0, v14, :cond_b9

    .line 4228
    iget-object v1, v6, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 4229
    iget-wide v4, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    if-nez v0, :cond_97

    move-wide/from16 v17, v9

    move-wide v9, v15

    goto :goto_a5

    .line 4230
    :cond_97
    iget-object v2, v6, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    add-int/lit8 v12, v0, -0x1

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    move-wide/from16 v17, v9

    iget-wide v9, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    :goto_a5
    sub-long/2addr v4, v9

    move-wide/from16 v9, p3

    cmp-long v2, v4, v9

    if-ltz v2, :cond_ad

    goto :goto_bd

    .line 4234
    :cond_ad
    iget-wide v1, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    add-int/lit8 v4, v0, 0x1

    move v11, v0

    move-wide v15, v1

    move v0, v4

    move-wide/from16 p3, v9

    move-wide/from16 v9, v17

    goto :goto_85

    :cond_b9
    move-wide/from16 v17, v9

    move-wide/from16 v9, p3

    .line 4237
    :goto_bd
    iget-wide v0, v3, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    sub-long/2addr v0, v7

    iput-wide v0, v3, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    const-string v2, "Rescheduling"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v3, p5

    move-wide/from16 v4, p6

    .line 4238
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->performScheduleRestartLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;J)V

    move v0, v11

    move-wide v1, v15

    goto :goto_d8

    :cond_d1
    :goto_d1
    move-wide/from16 v17, v9

    move-wide v9, v11

    .line 4200
    iget-wide v0, v3, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-wide v1, v0

    move v0, v14

    :goto_d8
    add-int/lit8 v14, v14, 0x1

    move-wide v11, v9

    move-wide/from16 v9, v17

    goto/16 :goto_14

    :cond_df
    return-void
.end method

.method public rescheduleServiceRestartOnMemoryPressureIfNeededLocked(IILjava/lang/String;J)V
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 4152
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mEnableExtraServiceRestartDelayOnMemPressure:Z

    if-nez v1, :cond_9

    return-void

    .line 4156
    :cond_9
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mExtraServiceRestartDelayOnMemPressure:[J

    aget-wide v2, v0, p1

    aget-wide v4, v0, p2

    move-object v1, p0

    move-object v6, p3

    move-wide v7, p4

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActiveServices;->performRescheduleServiceRestartOnMemoryPressureLocked(JJLjava/lang/String;J)V

    return-void
.end method

.method public rescheduleServiceRestartOnMemoryPressureIfNeededLocked(ZZJ)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    if-ne p1, p2, :cond_3

    return-void

    .line 4174
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v3}, Lcom/android/server/am/AppProfiler;->getLastMemoryLevelLocked()I

    move-result v3

    .line 4175
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerConstants;->mExtraServiceRestartDelayOnMemPressure:[J

    aget-wide v3, v4, v3

    const-wide/16 v5, 0x0

    if-eqz p1, :cond_19

    move-wide v7, v3

    goto :goto_1a

    :cond_19
    move-wide v7, v5

    :goto_1a
    if-eqz p2, :cond_1d

    goto :goto_1e

    :cond_1d
    move-wide v3, v5

    :goto_1e
    const-string v5, "config"

    move-object v0, p0

    move-wide v1, v7

    move-wide v6, p3

    .line 4176
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActiveServices;->performRescheduleServiceRestartOnMemoryPressureLocked(JJLjava/lang/String;J)V

    return-void
.end method

.method public resetFgsRestrictionLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 4

    const/4 p0, 0x0

    .line 6798
    iput-boolean p0, p1, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    const/4 v0, -0x1

    .line 6799
    iput v0, p1, Lcom/android/server/am/ServiceRecord;->mAllowStartForeground:I

    const/4 v0, 0x0

    .line 6800
    iput-object v0, p1, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;

    .line 6801
    iput-object v0, p1, Lcom/android/server/am/ServiceRecord;->mInfoTempFgsAllowListReason:Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    .line 6802
    iput-boolean p0, p1, Lcom/android/server/am/ServiceRecord;->mLoggedInfoAllowStartForeground:Z

    const-wide/16 v0, 0x0

    .line 6803
    iput-wide v0, p1, Lcom/android/server/am/ServiceRecord;->mLastSetFgsRestrictionTime:J

    return-void
.end method

.method public final retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .registers 27

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    .line 3498
    invoke-virtual/range {v0 .. v14}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v0

    return-object v0
.end method

.method public final retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .registers 56

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v0, p2

    move-object/from16 v8, p7

    move/from16 v7, p8

    move/from16 v6, p9

    if-eqz p3, :cond_19

    if-eqz v0, :cond_11

    goto :goto_19

    .line 3510
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No instanceName provided for sdk sandbox process"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3514
    :cond_19
    :goto_19
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    const-string v5, "ActivityManager"

    if-eqz v2, :cond_47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retrieveServiceLocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " callingUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    :cond_47
    move-object/from16 v4, p6

    .line 3517
    :goto_49
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const/4 v14, 0x0

    .line 3518
    invoke-virtual {v1, v9, v8}, Lcom/android/server/am/ActiveServices;->getAllowMode(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v15

    const-string/jumbo v16, "service"

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v17, p7

    .line 3517
    invoke-virtual/range {v10 .. v17}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 3521
    invoke-virtual {v1, v10}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v11

    .line 3526
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mComponentAliasResolver:Lcom/android/server/am/ComponentAliasResolver;

    const/4 v12, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p6

    move-object v13, v5

    move v5, v12

    move v12, v6

    move v6, v10

    move v14, v7

    move/from16 v7, p9

    .line 3527
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ComponentAliasResolver;->resolveService(Landroid/content/Intent;Ljava/lang/String;III)Lcom/android/server/am/ComponentAliasResolver$Resolution;

    move-result-object v15

    const-string v7, ":"

    if-nez v0, :cond_83

    .line 3532
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    move-object v5, v2

    goto :goto_a9

    .line 3534
    :cond_83
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_76f

    .line 3539
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3540
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v3

    .line 3544
    :goto_a9
    invoke-static/range {p9 .. p9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    const/4 v6, 0x0

    if-nez v2, :cond_c8

    .line 3545
    invoke-static/range {p9 .. p9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-nez v2, :cond_e6

    .line 3546
    invoke-static {v10}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-eqz v2, :cond_e6

    const-string v2, "com.samsung.android.service.aircommand"

    .line 3547
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e6

    :cond_c8
    if-eqz v5, :cond_cf

    .line 3550
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_d3

    .line 3552
    :cond_cf
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    :goto_d3
    if-eqz v8, :cond_e6

    .line 3554
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e6

    .line 3555
    invoke-static {v2}, Lcom/android/server/DualAppManagerService;->shouldForwardToOwner(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e6

    .line 3557
    invoke-virtual {v1, v6}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v11

    move v10, v6

    :cond_e6
    if-eqz v5, :cond_10b

    .line 3564
    iget-object v2, v11, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 3565
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v3, :cond_10c

    if-eqz v2, :cond_10c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retrieved by component: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10c

    :cond_10b
    const/4 v2, 0x0

    :cond_10c
    :goto_10c
    if-nez v2, :cond_139

    if-nez p13, :cond_139

    if-nez v0, :cond_139

    .line 3568
    new-instance v2, Landroid/content/Intent$FilterComparison;

    invoke-direct {v2, v9}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 3569
    iget-object v3, v11, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 3570
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v3, :cond_139

    if-eqz v2, :cond_139

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retrieved by intent: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_139
    const-string v6, "Unable to start service "

    const-string v3, ": not found"

    const-string v4, " U="

    move-object/from16 v17, v5

    if-eqz v2, :cond_18d

    .line 3575
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v5

    move-object/from16 v18, v7

    iget-object v7, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7, v12, v10}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_170

    .line 3577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return-object v5

    :cond_170
    const/4 v5, 0x0

    .line 3581
    iget-object v7, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v7, v7, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_190

    iget-object v7, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 3582
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_190

    .line 3586
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v2, :cond_18a

    const-string v2, "Whoops, can\'t use existing external service"

    .line 3587
    invoke-static {v13, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18a
    move-object/from16 v16, v5

    goto :goto_192

    :cond_18d
    move-object/from16 v18, v7

    const/4 v5, 0x0

    :cond_190
    move-object/from16 v16, v2

    :goto_192
    const-string v7, "Service lookup failed: "

    const-string v2, " and "

    move-object/from16 v19, v11

    const-string v11, "association not allowed between packages "

    if-nez v16, :cond_5b9

    const v20, 0x10000400

    if-eqz p14, :cond_1a4

    const v20, 0x10800400

    :cond_1a4
    move/from16 v5, v20

    move-object/from16 v20, v2

    .line 3599
    :try_start_1a8
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2
    :try_end_1ae
    .catch Landroid/os/RemoteException; {:try_start_1a8 .. :try_end_1ae} :catch_5af

    move-object/from16 v22, v15

    int-to-long v14, v5

    move-object/from16 v5, v20

    move-object/from16 v20, v11

    move-object v11, v3

    move-object/from16 v3, p1

    move-object v12, v4

    move-object/from16 v4, p6

    move-object/from16 v24, v5

    move-object v1, v6

    move-wide v5, v14

    move-wide/from16 v25, v14

    move-object/from16 v15, v18

    move-object v14, v7

    move v7, v10

    move-object v15, v8

    move/from16 v8, p9

    :try_start_1c8
    invoke-virtual/range {v2 .. v8}, Landroid/content/pm/PackageManagerInternal;->resolveService(Landroid/content/Intent;Ljava/lang/String;JII)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_1d1

    .line 3601
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_1d2

    :cond_1d1
    const/4 v4, 0x0

    :goto_1d2
    if-nez v4, :cond_1f1

    .line 3603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ef
    .catch Landroid/os/RemoteException; {:try_start_1c8 .. :try_end_1ef} :catch_5a4

    const/4 v1, 0x0

    return-object v1

    :cond_1f1
    const/4 v1, 0x0

    if-eqz v0, :cond_22f

    .line 3607
    :try_start_1f4
    iget v2, v4, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_22f

    if-eqz p3, :cond_1fd

    goto :goto_22f

    .line 3610
    :cond_1fd
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t use instance name \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' with non-isolated non-sdk sandbox service \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_223
    move-object/from16 v12, p0

    move-object v11, v1

    :goto_226
    move-object/from16 v21, v14

    move-object/from16 v14, v20

    const/4 v10, 0x0

    move/from16 v1, p9

    goto/16 :goto_5c8

    :cond_22f
    :goto_22f
    if-eqz p3, :cond_240

    .line 3613
    iget v2, v4, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_238

    goto :goto_240

    .line 3615
    :cond_238
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Service cannot be both sdk sandbox and isolated"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3619
    :cond_240
    :goto_240
    new-instance v5, Landroid/content/ComponentName;

    iget-object v2, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24b
    .catch Landroid/os/RemoteException; {:try_start_1f4 .. :try_end_24b} :catch_223

    move-object/from16 v8, p0

    if-eqz v17, :cond_252

    move-object/from16 v2, v17

    goto :goto_253

    :cond_252
    move-object v2, v5

    .line 3622
    :goto_253
    :try_start_253
    iget-object v3, v8, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 3623
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_25d
    .catch Landroid/os/RemoteException; {:try_start_253 .. :try_end_25d} :catch_5a0

    move/from16 v1, p9

    .line 3622
    :try_start_25f
    invoke-virtual {v3, v15, v1, v6, v7}, Lcom/android/server/am/ActivityManagerService;->validateAssociationAllowedLocked(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_29a

    .line 3624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_26a
    .catch Landroid/os/RemoteException; {:try_start_25f .. :try_end_26a} :catch_59e

    move-object/from16 v7, v20

    :try_start_26c
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_272
    .catch Landroid/os/RemoteException; {:try_start_26c .. :try_end_272} :catch_597

    move-object/from16 v6, v24

    :try_start_274
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3625
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3626
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3627
    new-instance v2, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    invoke-direct {v2, v8, v0}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Ljava/lang/String;)V

    return-object v2

    :cond_29a
    move-object/from16 v7, v20

    move-object/from16 v6, v24

    .line 3633
    iget-object v3, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_2a0
    .catch Landroid/os/RemoteException; {:try_start_274 .. :try_end_2a0} :catch_595

    move-object/from16 v20, v7

    :try_start_2a2
    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3634
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v3

    .line 3635
    iget v3, v4, Landroid/content/pm/ServiceInfo;->flags:I
    :try_end_2aa
    .catch Landroid/os/RemoteException; {:try_start_2a2 .. :try_end_2aa} :catch_592

    and-int/lit8 v21, v3, 0x4

    move-object/from16 v24, v6

    const-string v6, "BIND_EXTERNAL_SERVICE failed, "

    if-eqz v21, :cond_38f

    if-eqz p13, :cond_378

    move-object/from16 v21, v7

    .line 3637
    :try_start_2b6
    iget-boolean v7, v4, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v7, :cond_35e

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_344

    .line 3645
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-wide/16 v6, 0x0

    invoke-interface {v3, v15, v6, v7, v10}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    if-ne v3, v1, :cond_33c

    .line 3651
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-wide/16 v6, 0x400

    invoke-interface {v3, v15, v6, v7, v10}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_325

    .line 3657
    new-instance v6, Landroid/content/pm/ServiceInfo;

    invoke-direct {v6, v4}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    .line 3658
    new-instance v4, Landroid/content/pm/ApplicationInfo;

    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v4, v7}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iput-object v4, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3659
    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v7, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3660
    iget v7, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v7, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3661
    new-instance v4, Landroid/content/ComponentName;

    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v7, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3662
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_302

    .line 3663
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    goto :goto_31a

    .line 3664
    :cond_302
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v18

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_31a
    invoke-direct {v2, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3665
    invoke-virtual {v9, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object/from16 v29, v2

    move-object v7, v4

    move-object v4, v6

    goto :goto_396

    .line 3654
    :cond_325
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BIND_EXTERNAL_SERVICE failed, could not resolve client package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3647
    :cond_33c
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "BIND_EXTERNAL_SERVICE failed, calling package not owned by calling UID "

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3642
    :cond_344
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is not an isolatedProcess"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3638
    :cond_35e
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is not exported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3667
    :cond_378
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BIND_EXTERNAL_SERVICE required for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38f
    move-object/from16 v21, v7

    if-nez p13, :cond_571

    move-object v7, v2

    move-object/from16 v29, v5

    :goto_396
    if-lez v10, :cond_452

    .line 3675
    iget-object v2, v8, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v4, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v5, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 p10, v7

    iget v7, v4, Landroid/content/pm/ServiceInfo;->flags:I

    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v2
    :try_end_3a8
    .catch Landroid/os/RemoteException; {:try_start_2b6 .. :try_end_3a8} :catch_59e

    if-eqz v2, :cond_42e

    :try_start_3aa
    iget-object v2, v8, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3677
    invoke-virtual {v2, v1, v3}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v2
    :try_end_3b4
    .catch Landroid/os/RemoteException; {:try_start_3aa .. :try_end_3b4} :catch_427

    if-eqz v2, :cond_42e

    const/4 v7, 0x0

    .line 3679
    :try_start_3b7
    invoke-virtual {v8, v7}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v10

    .line 3681
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18
    :try_end_3bf
    .catch Landroid/os/RemoteException; {:try_start_3b7 .. :try_end_3bf} :catch_421

    .line 3683
    :try_start_3bf
    iget-object v2, v8, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 3684
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2
    :try_end_3c5
    .catchall {:try_start_3bf .. :try_end_3c5} :catchall_416

    const/16 v23, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p6

    move-object/from16 p13, v10

    move-object/from16 v10, v24

    move-wide/from16 v5, v25

    move-object/from16 v0, p10

    move v10, v7

    move-object/from16 v40, v21

    move-object/from16 v21, v14

    move-object/from16 v14, v20

    move-object/from16 v20, v40

    move/from16 v7, v23

    move/from16 v8, p9

    :try_start_3e0
    invoke-virtual/range {v2 .. v8}, Landroid/content/pm/PackageManagerInternal;->resolveService(Landroid/content/Intent;Ljava/lang/String;JII)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_408

    .line 3687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to resolve service "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_403
    .catchall {:try_start_3e0 .. :try_end_403} :catchall_414

    .line 3694
    :try_start_403
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_406
    .catch Landroid/os/RemoteException; {:try_start_403 .. :try_end_406} :catch_42c

    const/4 v11, 0x0

    return-object v11

    :cond_408
    const/4 v11, 0x0

    .line 3692
    :try_start_409
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;
    :try_end_40b
    .catchall {:try_start_409 .. :try_end_40b} :catchall_412

    .line 3694
    :try_start_40b
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v19, p13

    move v6, v10

    goto :goto_43b

    :catchall_412
    move-exception v0

    goto :goto_41d

    :catchall_414
    move-exception v0

    goto :goto_41c

    :catchall_416
    move-exception v0

    move v10, v7

    move-object/from16 v21, v14

    move-object/from16 v14, v20

    :goto_41c
    const/4 v11, 0x0

    :goto_41d
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3695
    throw v0

    :catch_421
    move v10, v7

    move-object/from16 v21, v14

    move-object/from16 v14, v20

    goto :goto_42c

    :catch_427
    move-object/from16 v21, v14

    move-object/from16 v14, v20

    const/4 v10, 0x0

    :catch_42c
    :goto_42c
    const/4 v11, 0x0

    goto :goto_44e

    :cond_42e
    move-object/from16 v0, p10

    move v6, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v40, v21

    move-object/from16 v21, v14

    move-object/from16 v14, v20

    move-object/from16 v20, v40

    .line 3697
    :goto_43b
    new-instance v2, Landroid/content/pm/ServiceInfo;

    invoke-direct {v2, v4}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V
    :try_end_440
    .catch Landroid/os/RemoteException; {:try_start_40b .. :try_end_440} :catch_44e

    move-object/from16 v12, p0

    .line 3698
    :try_start_442
    iget-object v3, v12, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/am/ActivityManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v4, v2

    goto :goto_45e

    :catch_44e
    :goto_44e
    move-object/from16 v12, p0

    goto/16 :goto_5c8

    :cond_452
    move-object v0, v7

    move-object v12, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v40, v21

    move-object/from16 v21, v14

    move-object/from16 v14, v20

    move-object/from16 v20, v40

    :goto_45e
    move-object/from16 v2, v19

    .line 3700
    iget-object v3, v2, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;
    :try_end_468
    .catch Landroid/os/RemoteException; {:try_start_442 .. :try_end_468} :catch_5c8

    .line 3701
    :try_start_468
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v5, :cond_482

    if-eqz v3, :cond_482

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retrieved via pm by intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_482
    if-nez v3, :cond_56d

    if-eqz p11, :cond_56d

    .line 3704
    new-instance v5, Landroid/content/Intent$FilterComparison;

    .line 3705
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 3706
    new-instance v6, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    invoke-direct {v6, v12, v11}, Lcom/android/server/am/ActiveServices$ServiceRestarter;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ActiveServices$ServiceRestarter-IA;)V

    if-eqz p3, :cond_499

    move-object/from16 v37, p2

    goto :goto_49b

    :cond_499
    move-object/from16 v37, v11

    .line 3709
    :goto_49b
    new-instance v7, Lcom/android/server/am/ServiceRecord;

    iget-object v8, v12, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    move-object/from16 v30, v0

    move-object/from16 v31, v20

    move/from16 v32, v17

    move-object/from16 v33, v5

    move-object/from16 v34, v4

    move/from16 v35, p12

    move-object/from16 v36, v6

    move/from16 v38, p4

    move-object/from16 v39, p5

    invoke-direct/range {v27 .. v39}, Lcom/android/server/am/ServiceRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;ILandroid/content/Intent$FilterComparison;Landroid/content/pm/ServiceInfo;ZLjava/lang/Runnable;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_4b8
    .catch Landroid/os/RemoteException; {:try_start_468 .. :try_end_4b8} :catch_56d

    .line 3713
    :try_start_4b8
    invoke-virtual {v6, v7}, Lcom/android/server/am/ActiveServices$ServiceRestarter;->setService(Lcom/android/server/am/ServiceRecord;)V

    .line 3714
    iget-object v3, v2, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3715
    iget-object v2, v2, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    invoke-virtual {v2, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3718
    iget-object v2, v12, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_4cd
    if-ltz v2, :cond_50b

    .line 3719
    iget-object v3, v12, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 3720
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v6, :cond_508

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    .line 3721
    invoke-virtual {v5, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_508

    .line 3722
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v5, :cond_503

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remove pending: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3723
    :cond_503
    iget-object v3, v12, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_508
    add-int/lit8 v2, v2, -0x1

    goto :goto_4cd

    .line 3726
    :cond_50b
    iget-object v2, v12, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_513
    if-ltz v2, :cond_551

    .line 3727
    iget-object v3, v12, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 3728
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v6, :cond_54e

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    .line 3729
    invoke-virtual {v5, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54e

    .line 3730
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v5, :cond_549

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remove pending bringup: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3731
    :cond_549
    iget-object v3, v12, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_54e
    add-int/lit8 v2, v2, -0x1

    goto :goto_513

    .line 3734
    :cond_551
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_569

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrieve created new service: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_569
    .catch Landroid/os/RemoteException; {:try_start_4b8 .. :try_end_569} :catch_569

    :catch_569
    :cond_569
    move-object/from16 v16, v7

    goto/16 :goto_5c8

    :catch_56d
    :cond_56d
    move-object/from16 v16, v3

    goto/16 :goto_5c8

    :cond_571
    move-object v12, v8

    move-object/from16 v21, v14

    move-object/from16 v14, v20

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 3671
    :try_start_578
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not an externalService"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_592
    .catch Landroid/os/RemoteException; {:try_start_578 .. :try_end_592} :catch_5c8

    :catch_592
    move-object/from16 v24, v6

    goto :goto_59e

    :catch_595
    move-object/from16 v24, v6

    :catch_597
    move-object v12, v8

    move-object/from16 v21, v14

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v14, v7

    goto :goto_5c8

    :catch_59e
    :goto_59e
    move-object v12, v8

    goto :goto_5a8

    :catch_5a0
    move-object v11, v1

    move-object v12, v8

    goto/16 :goto_226

    :catch_5a4
    move-object/from16 v12, p0

    move/from16 v1, p9

    :goto_5a8
    move-object/from16 v21, v14

    move-object/from16 v14, v20

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_5c8

    :catch_5af
    move-object/from16 v21, v7

    move-object v14, v11

    move-object/from16 v22, v15

    move-object/from16 v24, v20

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_5c2

    :cond_5b9
    move-object/from16 v24, v2

    move-object/from16 v21, v7

    move-object v14, v11

    move-object/from16 v22, v15

    const/4 v10, 0x0

    move-object v11, v5

    :goto_5c2
    move-object v15, v8

    move/from16 v40, v12

    move-object v12, v1

    move/from16 v1, v40

    :catch_5c8
    :goto_5c8
    move-object/from16 v0, v16

    if-eqz v0, :cond_76e

    .line 3741
    iput-object v15, v0, Lcom/android/server/am/ServiceRecord;->mRecentCallingPackage:Ljava/lang/String;

    .line 3742
    iput v1, v0, Lcom/android/server/am/ServiceRecord;->mRecentCallingUid:I

    .line 3744
    :try_start_5d0
    iget-object v2, v12, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 3745
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3746
    invoke-static/range {p9 .. p9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 3745
    invoke-virtual {v2, v15, v10, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/ServiceRecord;->mRecentCallerApplicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_5e2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5d0 .. :try_end_5e2} :catch_5e2

    .line 3749
    :catch_5e2
    iget-object v2, v12, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v15, v1, v3, v4}, Lcom/android/server/am/ActivityManagerService;->validateAssociationAllowedLocked(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_623

    .line 3751
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v24

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v21

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3754
    new-instance v1, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    invoke-direct {v1, v12, v0}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Ljava/lang/String;)V

    return-object v1

    .line 3756
    :cond_623
    iget-object v2, v12, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget-object v8, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v4, p1

    move/from16 v5, p9

    move/from16 v6, p8

    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/firewall/IntentFirewall;->checkService(Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-nez v2, :cond_641

    .line 3758
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    const-string v1, "blocked by firewall"

    invoke-direct {v0, v12, v1}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Ljava/lang/String;)V

    return-object v0

    .line 3760
    :cond_641
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->exported:Z

    move/from16 v5, p8

    invoke-static {v2, v5, v1, v3, v4}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v2

    const-string v3, "Permission Denial: Accessing service "

    const-string v4, ", uid="

    const-string v6, " from pid="

    if-eqz v2, :cond_6d5

    .line 3762
    iget-boolean v2, v0, Lcom/android/server/am/ServiceRecord;->exported:Z

    if-nez v2, :cond_6a3

    .line 3763
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " that is not exported from uid "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3767
    new-instance v1, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not exported from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v12, v0}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Ljava/lang/String;)V

    return-object v1

    .line 3770
    :cond_6a3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requires "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3774
    new-instance v1, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-direct {v1, v12, v0}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Ljava/lang/String;)V

    return-object v1

    .line 3775
    :cond_6d5
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    const-string v7, "android.permission.BIND_HOTWORD_DETECTION_SERVICE"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71a

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_71a

    .line 3780
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requiring permission "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " can only be bound to from the system."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3785
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    const-string v1, "can only be bound to by the system."

    invoke-direct {v0, v12, v1}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Ljava/lang/String;)V

    return-object v0

    .line 3787
    :cond_71a
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    if-eqz v2, :cond_762

    if-eqz v15, :cond_762

    .line 3788
    invoke-static {v2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_762

    .line 3789
    iget-object v3, v12, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v15}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_762

    .line 3791
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Appop Denial: Accessing service "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " requires appop "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3794
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3791
    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    .line 3798
    :cond_762
    new-instance v1, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/ComponentAliasResolver$Resolution;->getAlias()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-direct {v1, v12, v0, v2}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Landroid/content/ComponentName;)V

    return-object v1

    :cond_76e
    return-object v11

    .line 3536
    :cond_76f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t use custom instance name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' without expicit component in Intent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public schedulePendingServiceStartLocked(Ljava/lang/String;I)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 1227
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    :goto_6
    add-int/lit8 v1, v0, -0x1

    :goto_8
    if-ltz v1, :cond_5f

    if-lez v0, :cond_5f

    .line 1229
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 1230
    iget v3, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    if-ne v3, p2, :cond_5c

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_21

    goto :goto_5c

    .line 1234
    :cond_21
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_42

    .line 1236
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_31
    if-ltz v4, :cond_3f

    .line 1237
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v4, v4, -0x1

    goto :goto_31

    .line 1239
    :cond_3f
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1242
    :cond_42
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1244
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v0, v3, :cond_56

    .line 1249
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    goto :goto_6

    .line 1252
    :cond_56
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    :cond_5c
    :goto_5c
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_5f
    return-void
.end method

.method public scheduleServiceForegroundTransitionTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 5

    .line 6183
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfExecutingServices()I

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_2e

    .line 6186
    :cond_13
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6188
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 6189
    iput-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    .line 6190
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundTimeoutMs:I

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2e
    :goto_2e
    return-void
.end method

.method public final scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 3937
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isShuttingDown()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2d

    const-string v0, "ActivityManager"

    .line 3938
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not scheduling restart of crashed service "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - system is shutting down"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 3943
    :cond_2d
    iget v1, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v1

    .line 3944
    iget-object v4, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v2, :cond_66

    .line 3945
    iget-object v0, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    iget-object v1, v2, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    const-string v1, "ActivityManager"

    .line 3946
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempting to schedule restart of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " when found in map: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 3951
    :cond_66
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 3954
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v4, -0x1

    const/4 v7, 0x1

    if-eq v1, v4, :cond_76

    move v8, v7

    goto :goto_77

    :cond_76
    move v8, v3

    .line 3956
    :goto_77
    iget-object v9, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_1e6

    .line 3958
    iget-object v9, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v12, v9, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    .line 3959
    iget-wide v14, v9, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESET_RUN_DURATION:J

    .line 3964
    iget-object v9, v2, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_ff

    sub-int/2addr v9, v7

    move/from16 v16, v3

    :goto_94
    if-ltz v9, :cond_f7

    .line 3967
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 3968
    invoke-virtual {v4}, Lcom/android/server/am/ServiceRecord$StartItem;->removeUriPermissionsLocked()V

    .line 3969
    iget-object v10, v4, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    if-nez v10, :cond_a6

    goto :goto_f1

    :cond_a6
    if-eqz p2, :cond_d8

    .line 3971
    iget v10, v4, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    const/4 v11, 0x3

    if-ge v10, v11, :cond_b3

    iget v10, v4, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    const/4 v11, 0x6

    if-ge v10, v11, :cond_b3

    goto :goto_d8

    :cond_b3
    const-string v10, "ActivityManager"

    .line 3979
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Canceling start item "

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " in service "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x1

    goto :goto_f1

    .line 3973
    :cond_d8
    :goto_d8
    iget-object v7, v2, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v7, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3974
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-wide v3, v4, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    sub-long/2addr v10, v3

    const-wide/16 v3, 0x2

    mul-long/2addr v10, v3

    cmp-long v3, v12, v10

    if-gez v3, :cond_ec

    move-wide v12, v10

    :cond_ec
    cmp-long v3, v14, v10

    if-gez v3, :cond_f1

    move-wide v14, v10

    :cond_f1
    :goto_f1
    add-int/lit8 v9, v9, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v7, 0x1

    goto :goto_94

    .line 3984
    :cond_f7
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move/from16 v3, v16

    goto :goto_100

    :cond_ff
    const/4 v3, 0x0

    :goto_100
    if-eqz p2, :cond_11d

    .line 3988
    invoke-virtual {v2, v3}, Lcom/android/server/am/ServiceRecord;->canStopIfKilled(Z)Z

    move-result v3

    if-eqz v3, :cond_110

    .line 3989
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result v4

    if-nez v4, :cond_110

    const/4 v4, 0x0

    return v4

    .line 3993
    :cond_110
    iget-boolean v4, v2, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v4, :cond_11a

    if-nez v3, :cond_11a

    const-string/jumbo v3, "start-requested"

    goto :goto_11f

    :cond_11a
    const-string v3, "connection"

    goto :goto_11f

    :cond_11d
    const-string v3, "always"

    .line 3998
    :goto_11f
    iget v4, v2, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    const/4 v9, 0x1

    add-int/2addr v4, v9

    iput v4, v2, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    .line 3999
    iget-wide v10, v2, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    const-wide/16 v17, 0x0

    cmp-long v4, v10, v17

    if-nez v4, :cond_136

    .line 4000
    iget v4, v2, Lcom/android/server/am/ServiceRecord;->restartCount:I

    add-int/2addr v4, v9

    iput v4, v2, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 4001
    iput-wide v12, v2, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    :goto_134
    move v4, v8

    goto :goto_163

    .line 4002
    :cond_136
    iget v4, v2, Lcom/android/server/am/ServiceRecord;->crashCount:I

    if-le v4, v9, :cond_146

    .line 4003
    iget-object v10, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v10, v10, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_CRASH_RESTART_DURATION:J

    sub-int/2addr v4, v9

    int-to-long v12, v4

    mul-long/2addr v10, v12

    iput-wide v10, v2, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    goto :goto_134

    :cond_146
    move v4, v8

    .line 4011
    iget-wide v7, v2, Lcom/android/server/am/ServiceRecord;->restartTime:J

    add-long/2addr v7, v14

    cmp-long v7, v5, v7

    if-lez v7, :cond_153

    .line 4012
    iput v9, v2, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 4013
    iput-wide v12, v2, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    goto :goto_163

    .line 4015
    :cond_153
    iget-object v7, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v7, v7, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION_FACTOR:I

    int-to-long v7, v7

    mul-long/2addr v10, v7

    iput-wide v10, v2, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    cmp-long v7, v10, v12

    if-gez v7, :cond_163

    .line 4017
    iput-wide v12, v2, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 4022
    :cond_163
    :goto_163
    iget-object v7, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/android/server/am/ActiveServices;->isServiceRestartBackoffEnabledLocked(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1d7

    .line 4023
    iget-wide v7, v2, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    add-long/2addr v7, v5

    iput-wide v7, v2, Lcom/android/server/am/ServiceRecord;->mEarliestRestartTime:J

    iput-wide v7, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    if-eqz v4, :cond_17b

    .line 4027
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v7, 0x0

    goto :goto_17c

    :cond_17b
    move v7, v4

    .line 4030
    :goto_17c
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_195

    .line 4032
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActiveServices;->getExtraRestartTimeInBetweenLocked()J

    move-result-wide v8

    add-long/2addr v8, v5

    .line 4033
    iget-wide v10, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    sub-long/2addr v8, v5

    .line 4034
    iput-wide v8, v2, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    goto :goto_1d5

    .line 4039
    :cond_195
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActiveServices;->getExtraRestartTimeInBetweenLocked()J

    move-result-wide v8

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v10, v4, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    add-long/2addr v8, v10

    .line 4043
    :cond_1a0
    iget-wide v10, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 4045
    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v12, 0x1

    sub-int/2addr v4, v12

    :goto_1aa
    if-ltz v4, :cond_1d2

    .line 4046
    iget-object v12, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ServiceRecord;

    .line 4047
    iget-wide v12, v12, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    sub-long v14, v12, v8

    cmp-long v14, v10, v14

    if-ltz v14, :cond_1c9

    add-long v14, v12, v8

    cmp-long v16, v10, v14

    if-gez v16, :cond_1c9

    .line 4050
    iput-wide v14, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    sub-long/2addr v14, v5

    .line 4051
    iput-wide v14, v2, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    const/4 v4, 0x1

    goto :goto_1d3

    :cond_1c9
    add-long/2addr v12, v8

    cmp-long v12, v10, v12

    if-ltz v12, :cond_1cf

    goto :goto_1d2

    :cond_1cf
    add-int/lit8 v4, v4, -0x1

    goto :goto_1aa

    :cond_1d2
    :goto_1d2
    const/4 v4, 0x0

    :goto_1d3
    if-nez v4, :cond_1a0

    :goto_1d5
    move v8, v7

    goto :goto_1e3

    .line 4063
    :cond_1d7
    iget-object v7, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v7, v7, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    iput-wide v7, v2, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    add-long/2addr v7, v5

    .line 4064
    iput-wide v7, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move v8, v4

    :goto_1e3
    move-object v4, v3

    const/4 v3, 0x0

    goto :goto_1fd

    :cond_1e6
    move v4, v8

    .line 4069
    iget v3, v2, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    const/4 v7, 0x1

    add-int/2addr v3, v7

    iput v3, v2, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    const/4 v3, 0x0

    .line 4070
    iput v3, v2, Lcom/android/server/am/ServiceRecord;->restartCount:I

    const-wide/16 v7, 0x0

    .line 4071
    iput-wide v7, v2, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 4072
    iput-wide v7, v2, Lcom/android/server/am/ServiceRecord;->mEarliestRestartTime:J

    .line 4073
    iput-wide v5, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    const-string/jumbo v7, "persistent"

    move v8, v4

    move-object v4, v7

    .line 4077
    :goto_1fd
    iput-wide v5, v2, Lcom/android/server/am/ServiceRecord;->mRestartSchedulingTime:J

    if-nez v8, :cond_24b

    const/4 v7, -0x1

    if-ne v1, v7, :cond_221

    .line 4080
    iput-boolean v3, v2, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    .line 4081
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4082
    :try_start_20d
    iget-object v7, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v7

    .line 4083
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 4082
    invoke-virtual {v2, v7, v8, v9}, Lcom/android/server/am/ServiceRecord;->makeRestarting(IJ)V

    .line 4084
    monitor-exit v1

    goto :goto_221

    :catchall_21e
    move-exception v0

    monitor-exit v1
    :try_end_220
    .catchall {:try_start_20d .. :try_end_220} :catchall_21e

    throw v0

    .line 4087
    :cond_221
    :goto_221
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v7, v3

    :goto_228
    if-ge v7, v1, :cond_244

    .line 4088
    iget-object v8, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ServiceRecord;

    .line 4089
    iget-wide v8, v8, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iget-wide v10, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_241

    .line 4090
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v3, 0x1

    goto :goto_244

    :cond_241
    add-int/lit8 v7, v7, 0x1

    goto :goto_228

    :cond_244
    :goto_244
    if-nez v3, :cond_24b

    .line 4096
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4100
    :cond_24b
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    const-string v1, "ChimeraManagerService"

    .line 4104
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/chimera/ChimeraManagerService;

    if-eqz v1, :cond_26b

    .line 4105
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/server/chimera/ChimeraManagerService;->isRescheduleExceptionPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26b

    .line 4106
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v7, v1, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    iput-wide v7, v2, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    add-long/2addr v7, v5

    .line 4107
    iput-wide v7, v2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    :cond_26b
    const-string v3, "Scheduling"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 4112
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->performScheduleRestartLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;J)V

    const/4 v0, 0x1

    return v0
.end method

.method public scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 5

    .line 6166
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfExecutingServices()I

    move-result v0

    if-eqz v0, :cond_67

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_67

    .line 6170
    :cond_f
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE_EXECUTING:Z

    if-nez v0, :cond_2f

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_46

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.samsung.android.app.reminder"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.samsung.android.calendar"

    .line 6171
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 6172
    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "schedule service timeout "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6175
    :cond_46
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6177
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6178
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->shouldExecServicesFg()Z

    move-result p1

    if-eqz p1, :cond_61

    .line 6179
    sget p1, Lcom/android/server/am/ActiveServices;->SERVICE_TIMEOUT:I

    goto :goto_63

    :cond_61
    sget p1, Lcom/android/server/am/ActiveServices;->SERVICE_BACKGROUND_TIMEOUT:I

    :goto_63
    int-to-long v1, p1

    .line 6178
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_67
    :goto_67
    return-void
.end method

.method public final sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v2, p1

    const-string v3, "Failed delivering service starts"

    .line 4726
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_e

    return-void

    .line 4731
    :cond_e
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4733
    :goto_13
    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, "ActivityManager"

    if-lez v5, :cond_f2

    .line 4734
    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 4735
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v10, :cond_54

    .line 4736
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sending arguments to: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v2, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " args="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v5, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4739
    :cond_54
    iget-object v10, v5, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    if-nez v10, :cond_5b

    if-le v0, v8, :cond_5b

    goto :goto_13

    .line 4746
    :cond_5b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iput-wide v10, v5, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    .line 4747
    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4748
    iget v10, v5, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    add-int/2addr v10, v8

    iput v10, v5, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    .line 4749
    iget-object v10, v5, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/uri/NeededUriGrants;

    if-eqz v10, :cond_7a

    .line 4750
    iget-object v11, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 4751
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord$StartItem;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v12

    .line 4750
    invoke-interface {v11, v10, v12}, Lcom/android/server/uri/UriGrantsManagerInternal;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    .line 4753
    :cond_7a
    iget-object v10, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v11, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    iget-object v12, v5, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    iget v13, v5, Lcom/android/server/am/ServiceRecord$StartItem;->callingId:I

    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4754
    invoke-static {v14}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v14

    .line 4753
    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/android/server/am/ActivityManagerService;->grantImplicitAccess(ILandroid/content/Intent;II)V

    const-string/jumbo v10, "start"

    move/from16 v11, p2

    .line 4756
    invoke-virtual {p0, v2, v11, v10, v6}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;Ljava/lang/String;)Z

    .line 4757
    iget-boolean v6, v2, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v6, :cond_d7

    iget-boolean v6, v2, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    if-nez v6, :cond_d7

    .line 4758
    iget-boolean v6, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v6, :cond_bd

    .line 4759
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKGROUND_CHECK:Z

    if-eqz v6, :cond_b9

    .line 4760
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Launched service must call startForeground() within timeout: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4762
    :cond_b9
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->scheduleServiceForegroundTransitionTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_d7

    .line 4764
    :cond_bd
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKGROUND_CHECK:Z

    if-eqz v6, :cond_d5

    .line 4765
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Service already foreground; no new timeout: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4767
    :cond_d5
    iput-boolean v7, v2, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    .line 4771
    :cond_d7
    :goto_d7
    iget v6, v5, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    if-le v6, v8, :cond_dc

    const/4 v7, 0x2

    .line 4774
    :cond_dc
    iget v6, v5, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    if-lez v6, :cond_e2

    or-int/lit8 v7, v7, 0x1

    .line 4777
    :cond_e2
    new-instance v6, Landroid/app/ServiceStartArgs;

    iget-boolean v8, v5, Lcom/android/server/am/ServiceRecord$StartItem;->taskRemoved:Z

    iget v9, v5, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    iget-object v5, v5, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    invoke-direct {v6, v8, v9, v7, v5}, Landroid/app/ServiceStartArgs;-><init>(ZIILandroid/content/Intent;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13

    :cond_f2
    if-nez p3, :cond_103

    .line 4781
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 4782
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v5, "updateOomAdj_startService"

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    .line 4784
    :cond_103
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    const/4 v5, 0x4

    .line 4785
    invoke-virtual {v0, v5}, Landroid/content/pm/ParceledListSlice;->setInlineCountLimit(I)V

    .line 4788
    :try_start_10c
    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v5

    invoke-interface {v5, v2, v0}, Landroid/app/IApplicationThread;->scheduleServiceArgs(Landroid/os/IBinder;Landroid/content/pm/ParceledListSlice;)V
    :try_end_115
    .catch Landroid/os/TransactionTooLargeException; {:try_start_10c .. :try_end_115} :catch_13c
    .catch Landroid/os/RemoteException; {:try_start_10c .. :try_end_115} :catch_11e
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_115} :catch_116

    goto :goto_16d

    :catch_116
    move-exception v0

    move-object v6, v0

    const-string v0, "Unexpected exception"

    .line 4800
    invoke-static {v9, v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16d

    :catch_11e
    move-exception v0

    move-object v6, v0

    .line 4796
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_138

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Crashed while sending args: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4797
    :cond_138
    invoke-static {v9, v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16d

    :catch_13c
    move-exception v0

    move-object v6, v0

    .line 4790
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_16a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transaction too large for "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " args, first: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4791
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ServiceStartArgs;

    iget-object v5, v5, Landroid/app/ServiceStartArgs;->args:Landroid/content/Intent;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4790
    invoke-static {v9, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4792
    :cond_16a
    invoke-static {v9, v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16d
    if-eqz v6, :cond_191

    .line 4806
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 4807
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_179
    if-ge v7, v3, :cond_181

    .line 4808
    invoke-virtual {p0, v2, v0, v0, v8}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZZ)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_179

    .line 4811
    :cond_181
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "updateOomAdj_unbindService"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    .line 4812
    instance-of v0, v6, Landroid/os/TransactionTooLargeException;

    if-nez v0, :cond_18e

    goto :goto_191

    .line 4813
    :cond_18e
    check-cast v6, Landroid/os/TransactionTooLargeException;

    throw v6

    :cond_191
    :goto_191
    return-void
.end method

.method public serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;IIIZ)V
    .registers 10

    .line 5228
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "ActivityManager"

    if-eqz p1, :cond_b5

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p2, v3, :cond_5f

    .line 5233
    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    const/4 p2, 0x0

    if-eqz p4, :cond_55

    if-eq p4, v3, :cond_55

    if-eq p4, v2, :cond_49

    const/4 v1, 0x3

    if-eq p4, v1, :cond_39

    const/16 v1, 0x3e8

    if-ne p4, v1, :cond_22

    .line 5269
    invoke-virtual {p1, p3, v3, v3}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    goto :goto_5a

    .line 5273
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown service start result: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5257
    :cond_39
    invoke-virtual {p1, p3, p2, p2}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    move-result-object p3

    if-eqz p3, :cond_5a

    .line 5259
    iput p2, p3, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    .line 5260
    iget v1, p3, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    add-int/2addr v1, v3

    iput v1, p3, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    .line 5262
    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    goto :goto_5a

    .line 5245
    :cond_49
    invoke-virtual {p1, p3, p2, v3}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    .line 5246
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    move-result v1

    if-ne v1, p3, :cond_5a

    .line 5249
    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    goto :goto_5a

    .line 5238
    :cond_55
    invoke-virtual {p1, p3, p2, v3}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    .line 5240
    iput-boolean p2, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    :cond_5a
    :goto_5a
    if-nez p4, :cond_aa

    .line 5277
    iput-boolean p2, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    goto :goto_aa

    :cond_5f
    if-ne p2, v2, :cond_aa

    if-nez v0, :cond_86

    .line 5288
    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_aa

    .line 5289
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Service done with onDestroy, but not inDestroying: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", app="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_aa

    .line 5292
    :cond_86
    iget p2, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-eq p2, v3, :cond_aa

    .line 5293
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Service done with onDestroy, but executeNesting="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5296
    iput v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 5299
    :cond_aa
    :goto_aa
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    .line 5300
    invoke-virtual {p0, p1, v0, v0, p5}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZZ)V

    .line 5301
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_cd

    .line 5303
    :cond_b5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Done executing unknown service from pid "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5304
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5303
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_cd
    return-void
.end method

.method public final serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZZ)V
    .registers 11

    .line 5324
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_37

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< DONE EXECUTING "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": nesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", inDestroying="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", app="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    .line 5327
    :cond_37
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE_EXECUTING:Z

    if-eqz v0, :cond_54

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< DONE EXECUTING "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    :cond_54
    const-string v0, "com.samsung.android.app.reminder"

    .line 5330
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    const-string v0, "com.samsung.android.calendar"

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    :cond_68
    const-string v0, "ActivityManager"

    .line 5331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< DONE EXECUTING "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5333
    :cond_80
    :goto_80
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-gtz v0, :cond_1a9

    .line 5335
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x0

    if-eqz v0, :cond_165

    .line 5336
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 5337
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v3, :cond_ab

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Nesting at 0 of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5339
    :cond_ab
    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessServiceRecord;->setExecServicesFg(Z)V

    .line 5340
    invoke-virtual {v0, p1}, Lcom/android/server/am/ProcessServiceRecord;->stopExecutingService(Lcom/android/server/am/ServiceRecord;)V

    .line 5341
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfExecutingServices()I

    move-result v3

    if-nez v3, :cond_111

    .line 5342
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-nez v0, :cond_ed

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE_EXECUTING:Z

    if-eqz v0, :cond_c0

    goto :goto_ed

    :cond_c0
    const-string v0, "com.samsung.android.app.reminder"

    .line 5345
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d4

    const-string v0, "com.samsung.android.calendar"

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_105

    :cond_d4
    const-string v0, "ActivityManager"

    .line 5346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No more executingServices of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_105

    :cond_ed
    :goto_ed
    const-string v0, "ActivityManager"

    .line 5342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No more executingServices of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5348
    :cond_105
    :goto_105
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0xc

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    goto :goto_12b

    .line 5349
    :cond_111
    iget-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    if-eqz v3, :cond_12b

    .line 5351
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfExecutingServices()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_11a
    if-ltz v3, :cond_12b

    .line 5352
    invoke-virtual {v0, v3}, Lcom/android/server/am/ProcessServiceRecord;->getExecutingServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    if-eqz v4, :cond_128

    .line 5353
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessServiceRecord;->setExecServicesFg(Z)V

    goto :goto_12b

    :cond_128
    add-int/lit8 v3, v3, -0x1

    goto :goto_11a

    :cond_12b
    :goto_12b
    if-eqz p2, :cond_151

    .line 5359
    sget-boolean p2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz p2, :cond_147

    const-string p2, "ActivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doneExecuting remove destroying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5361
    :cond_147
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5362
    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->clear()V

    :cond_151
    if-eqz p4, :cond_15b

    .line 5365
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p2, p4}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_165

    .line 5367
    :cond_15b
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v0, "updateOomAdj_unbindService"

    invoke-virtual {p2, p4, v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    .line 5370
    :cond_165
    :goto_165
    iput-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    .line 5371
    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    const/4 p4, 0x0

    if-eqz p2, :cond_197

    .line 5372
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object p2, p2, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 5373
    :try_start_173
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v0

    .line 5374
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 5375
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    .line 5376
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    if-eqz p3, :cond_192

    .line 5378
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v0, p1, v2}, Lcom/android/internal/app/procstats/ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    .line 5379
    iput-object p4, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 5381
    :cond_192
    monitor-exit p2

    goto :goto_197

    :catchall_194
    move-exception p0

    monitor-exit p2
    :try_end_196
    .catchall {:try_start_173 .. :try_end_196} :catchall_194

    throw p0

    :cond_197
    :goto_197
    if-eqz p3, :cond_1a9

    .line 5384
    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_1a6

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result p2

    if-nez p2, :cond_1a6

    .line 5385
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->stopServiceAndUpdateAllowlistManagerLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 5387
    :cond_1a6
    invoke-virtual {p1, p4, p4, v2, p4}, Lcom/android/server/am/ServiceRecord;->setProcess(Lcom/android/server/am/ProcessRecord;Landroid/app/IApplicationThread;ILcom/android/server/am/UidRecord;)V

    :cond_1a9
    return-void
.end method

.method public serviceForegroundCrash(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/ComponentName;)V
    .registers 13

    .line 6157
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 6158
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Context.startForegroundService() did not then call Service.startForeground(): "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6162
    invoke-static {p3}, Landroid/app/RemoteServiceException$ForegroundServiceDidNotStartInTimeException;->createExtrasForService(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v8

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 6157
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ActivityManagerService;->crashApplicationWithTypeWithExtras(IILjava/lang/String;ILjava/lang/String;ZILandroid/os/Bundle;)V

    return-void
.end method

.method public serviceForegroundTimeout(Lcom/android/server/am/ServiceRecord;)V
    .registers 7

    .line 6103
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 6104
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v1, :cond_7a

    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    if-eqz v1, :cond_7a

    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->destroying:Z

    if-eqz v1, :cond_13

    goto :goto_7a

    .line 6108
    :cond_13
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_22

    .line 6109
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 6111
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_7f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 6114
    :cond_22
    :try_start_22
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKGROUND_CHECK:Z

    if-eqz v2, :cond_3c

    const-string v2, "ActivityManager"

    .line 6115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service foreground-required timeout for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    const/4 v2, 0x0

    .line 6117
    iput-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    .line 6118
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 6119
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_22 .. :try_end_43} :catchall_7f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v1, :cond_79

    .line 6122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Context.startForegroundService() did not then call Service.startForeground(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6124
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0x43

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6126
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 6127
    iput-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 6128
    iput-object p1, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 6129
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6130
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundAnrDelayMs:I

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_79
    return-void

    .line 6105
    :cond_7a
    :goto_7a
    :try_start_7a
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_7f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_7f
    move-exception p0

    .line 6119
    :try_start_80
    monitor-exit v0
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public serviceForegroundTimeoutANR(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 3

    .line 6136
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAnrHelper:Lcom/android/server/am/AnrHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AnrHelper;->appNotResponding(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    return-void
.end method

.method public final serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;Z)V
    .registers 9

    .line 5309
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v0, :cond_31

    .line 5310
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5311
    :try_start_b
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v1

    .line 5312
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 5313
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    .line 5314
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v4, v5, v1, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 5315
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v4, v5, v1, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    .line 5316
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v4, v5, v1, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 5317
    monitor-exit v0

    goto :goto_31

    :catchall_2e
    move-exception p0

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_b .. :try_end_30} :catchall_2e

    throw p0

    :cond_31
    :goto_31
    const/4 v0, 0x1

    .line 5319
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZZ)V

    return-void
.end method

.method public serviceTimeout(Lcom/android/server/am/ProcessRecord;)V
    .registers 14

    .line 6046
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 6047
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 6049
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_125

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 6051
    :cond_11
    :try_start_11
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 6052
    invoke-virtual {v1}, Lcom/android/server/am/ProcessServiceRecord;->numberOfExecutingServices()I

    move-result v2

    if-eqz v2, :cond_120

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    if-nez v2, :cond_21

    goto/16 :goto_120

    .line 6055
    :cond_21
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 6057
    invoke-virtual {v1}, Lcom/android/server/am/ProcessServiceRecord;->shouldExecServicesFg()Z

    move-result v4

    if-eqz v4, :cond_2e

    sget v4, Lcom/android/server/am/ActiveServices;->SERVICE_TIMEOUT:I

    goto :goto_30

    :cond_2e
    sget v4, Lcom/android/server/am/ActiveServices;->SERVICE_BACKGROUND_TIMEOUT:I

    :goto_30
    int-to-long v4, v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    .line 6060
    invoke-virtual {v1}, Lcom/android/server/am/ProcessServiceRecord;->numberOfExecutingServices()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_3a
    const/4 v7, 0x0

    if-ltz v6, :cond_50

    .line 6061
    invoke-virtual {v1, v6}, Lcom/android/server/am/ProcessServiceRecord;->getExecutingServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v8

    .line 6062
    iget-wide v9, v8, Lcom/android/server/am/ServiceRecord;->executingStart:J

    cmp-long v11, v9, v2

    if-gez v11, :cond_48

    goto :goto_51

    :cond_48
    cmp-long v7, v9, v4

    if-lez v7, :cond_4d

    move-wide v4, v9

    :cond_4d
    add-int/lit8 v6, v6, -0x1

    goto :goto_3a

    :cond_50
    move-object v8, v7

    :goto_51
    if-eqz v8, :cond_ba

    .line 6070
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ProcessList;->isInLruListLOSP(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_ba

    const-string v1, "ActivityManager"

    .line 6071
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout executing service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6072
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 6073
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    const/4 v3, 0x0

    const/16 v4, 0x400

    invoke-direct {v2, v1, v3, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 6074
    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v3, "    "

    .line 6075
    invoke-virtual {v8, v2, v3}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6076
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 6077
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mLastAnrDump:Ljava/lang/String;

    .line 6078
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mLastAnrDumpClearer:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6079
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mLastAnrDumpClearer:Ljava/lang/Runnable;

    const-wide/32 v3, 0x6ddd00

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6080
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executing service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_112

    .line 6083
    :cond_ba
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE_EXECUTING:Z

    if-nez v2, :cond_da

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_f1

    const-string v2, "com.samsung.android.app.reminder"

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_da

    const-string v2, "com.samsung.android.calendar"

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 6084
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f1

    :cond_da
    const-string v2, "ActivityManager"

    .line 6085
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reschedule service timeout "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6088
    :cond_f1
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 6090
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6091
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessServiceRecord;->shouldExecServicesFg()Z

    move-result v1

    if-eqz v1, :cond_10c

    .line 6092
    sget v1, Lcom/android/server/am/ActiveServices;->SERVICE_TIMEOUT:I

    :goto_109
    int-to-long v8, v1

    add-long/2addr v4, v8

    goto :goto_10f

    :cond_10c
    sget v1, Lcom/android/server/am/ActiveServices;->SERVICE_BACKGROUND_TIMEOUT:I

    goto :goto_109

    .line 6091
    :goto_10f
    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 6094
    :goto_112
    monitor-exit v0
    :try_end_113
    .catchall {:try_start_11 .. :try_end_113} :catchall_125

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v7, :cond_11f

    .line 6097
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAnrHelper:Lcom/android/server/am/AnrHelper;

    invoke-virtual {p0, p1, v7}, Lcom/android/server/am/AnrHelper;->appNotResponding(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    :cond_11f
    return-void

    .line 6053
    :cond_120
    :goto_120
    :try_start_120
    monitor-exit v0
    :try_end_121
    .catchall {:try_start_120 .. :try_end_121} :catchall_125

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_125
    move-exception p0

    .line 6094
    :try_start_126
    monitor-exit v0
    :try_end_127
    .catchall {:try_start_126 .. :try_end_127} :catchall_125

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final setAllowListWhileInUsePermissionInFgs()V
    .registers 3

    .line 641
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 642
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getAttentionServicePackageName()Ljava/lang/String;

    move-result-object v0

    .line 643
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 644
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAllowListWhileInUsePermissionInFgs:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 646
    :cond_17
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 647
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getSystemCaptionsServicePackageName()Ljava/lang/String;

    move-result-object v0

    .line 648
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 649
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAllowListWhileInUsePermissionInFgs:Landroid/util/ArraySet;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2e
    return-void
.end method

.method public final setFgsRestrictionLocked(Ljava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;IZ)V
    .registers 18

    move-object v8, p5

    .line 6776
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/server/am/ServiceRecord;->mLastSetFgsRestrictionTime:J

    move-object v6, p0

    .line 6778
    iget-object v0, v6, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundFgsStartRestrictionEnabled:Z

    const/4 v7, 0x1

    if-nez v0, :cond_13

    .line 6779
    iput-boolean v7, v8, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    .line 6782
    :cond_13
    iget-boolean v0, v8, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    const/4 v9, -0x1

    if-eqz v0, :cond_1c

    iget v0, v8, Lcom/android/server/am/ServiceRecord;->mAllowStartForeground:I

    if-ne v0, v9, :cond_43

    :cond_1c
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p5

    move/from16 v5, p7

    .line 6784
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->shouldAllowFgsWhileInUsePermissionLocked(Ljava/lang/String;IILcom/android/server/am/ServiceRecord;Z)I

    move-result v1

    .line 6786
    iget-boolean v0, v8, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    if-nez v0, :cond_31

    if-eq v1, v9, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v7, 0x0

    .line 6787
    :goto_2f
    iput-boolean v7, v8, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    .line 6789
    :cond_31
    iget v0, v8, Lcom/android/server/am/ServiceRecord;->mAllowStartForeground:I

    if-ne v0, v9, :cond_43

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    .line 6790
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActiveServices;->shouldAllowFgsStartForegroundWithBindingCheckLocked(ILjava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;I)I

    move-result v0

    iput v0, v8, Lcom/android/server/am/ServiceRecord;->mAllowStartForeground:I

    :cond_43
    return-void
.end method

.method public setMaxStartingBackground()V
    .registers 3

    :try_start_0
    const-string/jumbo v0, "ro.config.max_starting_bg"

    const-string v1, "0"

    .line 618
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_f

    :catch_e
    const/4 v0, 0x0

    :goto_f
    if-lez v0, :cond_12

    goto :goto_1c

    .line 622
    :cond_12
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x4

    goto :goto_1c

    :cond_1a
    const/16 v0, 0x8

    :goto_1c
    iput v0, p0, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MaxStartingBackground is set. ( current : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " )"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setServiceForegroundInnerLocked(Lcom/android/server/am/ServiceRecord;ILandroid/app/Notification;II)V
    .registers 35
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v0, p2

    move-object/from16 v11, p3

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v0, :cond_4b2

    if-eqz v11, :cond_4a9

    .line 1931
    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v1

    const/4 v15, -0x1

    if-eqz v1, :cond_88

    .line 1932
    iget-object v1, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v1

    const/16 v2, 0x44

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_85

    if-eq v1, v13, :cond_65

    if-eq v1, v12, :cond_45

    .line 1948
    iget-object v1, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "android.permission.INSTANT_APP_FOREGROUND_SERVICE"

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1950
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    iget-object v4, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string/jumbo v5, "startForeground"

    .line 1948
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_85

    .line 1945
    :cond_45
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instant app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not have permission to create foreground services"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_65
    const-string v0, "ActivityManager"

    .line 1940
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instant app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not have permission to create foreground services, ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_85
    :goto_85
    move/from16 v8, p5

    goto :goto_b4

    .line 1953
    :cond_88
    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_a4

    .line 1954
    iget-object v1, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "android.permission.FOREGROUND_SERVICE"

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1956
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    iget-object v4, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string/jumbo v5, "startForeground"

    .line 1954
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1959
    :cond_a4
    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v1}, Landroid/content/pm/ServiceInfo;->getForegroundServiceType()I

    move-result v1

    move/from16 v2, p5

    if-ne v2, v15, :cond_af

    move v2, v1

    :cond_af
    and-int v3, v2, v1

    if-ne v3, v2, :cond_467

    move v8, v2

    .line 1978
    :goto_b4
    iget-boolean v1, v10, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v1, :cond_e6

    .line 1979
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-nez v1, :cond_c0

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKGROUND_CHECK:Z

    if-eqz v1, :cond_d6

    :cond_c0
    const-string v1, "ActivityManager"

    .line 1980
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service called startForeground() as required: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    :cond_d6
    iput-boolean v14, v10, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    .line 1983
    iput-boolean v14, v10, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    .line 1985
    iget-object v1, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0x42

    invoke-virtual {v1, v2, v10}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    move/from16 v25, v13

    goto :goto_e8

    :cond_e6
    move/from16 v25, v14

    :goto_e8
    move/from16 v26, v25

    .line 1989
    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 1992
    :try_start_ee
    iget-object v1, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v1

    const/16 v2, 0x4c

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    const/4 v6, 0x3

    if-eqz v1, :cond_12a

    if-eq v1, v13, :cond_110

    if-ne v1, v6, :cond_108

    goto :goto_12a

    .line 2006
    :cond_108
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Foreground not allowed as per app op"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_110
    const-string v1, "ActivityManager"

    .line 2001
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service.startForeground() not allowed due to app op: service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v13

    goto :goto_12b

    :cond_12a
    :goto_12a
    move v1, v14

    :goto_12b
    if-nez v1, :cond_153

    .line 2011
    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2012
    invoke-virtual {v9, v2}, Lcom/android/server/am/ActiveServices;->isForegroundServiceAllowedInBackgroundRestricted(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-nez v2, :cond_153

    const-string v1, "ActivityManager"

    .line 2013
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service.startForeground() not allowed due to bg restriction: service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    invoke-virtual {v9, v7, v14}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessServiceRecord;Z)V

    move/from16 v27, v13

    goto :goto_155

    :cond_153
    move/from16 v27, v1

    :goto_155
    if-nez v27, :cond_2b8

    .line 2023
    iget v1, v10, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    if-nez v1, :cond_1d8

    .line 2037
    iget-boolean v1, v10, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-nez v1, :cond_1d4

    .line 2038
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v10, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    sub-long v4, v1, v3

    .line 2039
    iget-object v1, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartForegroundTimeoutMs:J

    cmp-long v1, v4, v1

    if-lez v1, :cond_1d4

    .line 2040
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->resetFgsRestrictionLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2041
    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v10, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 2042
    invoke-virtual {v6}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v6

    iget v12, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    const/16 v16, 0x0

    move/from16 v17, v1

    move-object/from16 v1, p0

    move-wide v13, v4

    move/from16 v4, v17

    move-object v5, v6

    move-object/from16 v6, p1

    move-object/from16 v28, v7

    move v7, v12

    move v12, v8

    move/from16 v8, v16

    .line 2041
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActiveServices;->setFgsRestrictionLocked(Ljava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;IZ)V

    .line 2043
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startForegroundDelayMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2044
    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;

    if-eqz v2, :cond_1ce

    .line 2045
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;

    goto :goto_1d0

    .line 2047
    :cond_1ce
    iput-object v1, v10, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;

    :goto_1d0
    const/4 v1, 0x0

    .line 2049
    iput-boolean v1, v10, Lcom/android/server/am/ServiceRecord;->mLoggedInfoAllowStartForeground:Z

    goto :goto_1fc

    :cond_1d4
    move-object/from16 v28, v7

    move v12, v8

    goto :goto_1fc

    :cond_1d8
    move-object/from16 v28, v7

    move v12, v8

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1fc

    .line 2055
    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 2056
    invoke-virtual {v1}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v5

    iget v7, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    .line 2055
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActiveServices;->setFgsRestrictionLocked(Ljava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;IZ)V

    .line 2060
    :cond_1fc
    :goto_1fc
    iget-boolean v1, v10, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    if-nez v1, :cond_218

    const-string v1, "ActivityManager"

    .line 2061
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Foreground service started from background can not have location/camera/microphone access: service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    :cond_218
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->logFgsBackgroundStart(Lcom/android/server/am/ServiceRecord;)V

    .line 2069
    iget v1, v10, Lcom/android/server/am/ServiceRecord;->mAllowStartForeground:I

    if-eq v1, v15, :cond_22f

    .line 2078
    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->mInfoTempFgsAllowListReason:Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    if-eqz v1, :cond_22f

    .line 2079
    iget-object v1, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->isAllowlistedForFgsStartLOSP(I)Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    move-result-object v1

    iput-object v1, v10, Lcom/android/server/am/ServiceRecord;->mInfoTempFgsAllowListReason:Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    .line 2083
    :cond_22f
    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->mInfoTempFgsAllowListReason:Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    if-eqz v1, :cond_26f

    .line 2084
    iget-object v1, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mFgsStartTempAllowListLogger:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x80

    if-gt v1, v2, :cond_26f

    iget v1, v10, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    if-nez v1, :cond_26f

    .line 2086
    iget-object v1, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mFgsStartTempAllowListLogger:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItemExt;

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v4, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v10, Lcom/android/server/am/ServiceRecord;->mInfoTempFgsAllowListReason:Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    iget-wide v6, v5, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mDuration:J

    iget v8, v5, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mReasonCode:I

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mReason:Ljava/lang/String;

    iget v13, v10, Lcom/android/server/am/ServiceRecord;->mRecentCallingUid:I

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v4

    move-wide/from16 v19, v6

    move/from16 v21, v8

    move-object/from16 v22, v5

    move/from16 v23, v12

    move/from16 v24, v13

    invoke-direct/range {v16 .. v24}, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItemExt;-><init>(Ljava/lang/String;IJILjava/lang/String;II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2098
    :cond_26f
    iget v1, v10, Lcom/android/server/am/ServiceRecord;->mAllowStartForeground:I

    if-ne v1, v15, :cond_2b5

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->isBgFgsRestrictionEnabled(Lcom/android/server/am/ServiceRecord;)Z

    move-result v1

    if-eqz v1, :cond_2b5

    .line 2099
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service.startForeground() not allowed due to mAllowStartForeground false: service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    .line 2102
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->showFgsBgRestrictedNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    move-object/from16 v2, v28

    const/4 v3, 0x1

    .line 2104
    invoke-virtual {v9, v2, v3}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessServiceRecord;Z)V

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 2106
    invoke-virtual {v9, v10, v3, v4, v4}, Lcom/android/server/am/ActiveServices;->logFGSStateChangeLocked(Lcom/android/server/am/ServiceRecord;III)V

    const-wide/32 v3, 0xa5fa937

    .line 2109
    iget-object v5, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v4, v5}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v3

    if-nez v3, :cond_2af

    const/16 v27, 0x1

    goto :goto_2ba

    .line 2111
    :cond_2af
    new-instance v0, Landroid/app/ForegroundServiceStartNotAllowedException;

    invoke-direct {v0, v1}, Landroid/app/ForegroundServiceStartNotAllowedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b5
    move-object/from16 v2, v28

    goto :goto_2ba

    :cond_2b8
    move-object v2, v7

    move v12, v8

    :goto_2ba
    if-nez v27, :cond_3bd

    .line 2121
    iget v1, v10, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eq v1, v0, :cond_2c5

    .line 2122
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2123
    iput v0, v10, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 2125
    :cond_2c5
    iget v0, v11, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, v11, Landroid/app/Notification;->flags:I

    .line 2126
    iput-object v11, v10, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 2127
    iput v12, v10, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    .line 2128
    iget-boolean v0, v10, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v0, :cond_39b

    .line 2129
    iget v0, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v9, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    if-eqz v0, :cond_32c

    .line 2131
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 2132
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    if-nez v1, :cond_326

    .line 2134
    new-instance v1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    invoke-direct {v1}, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;-><init>()V

    .line 2135
    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    .line 2136
    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, v1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    .line 2137
    iget-boolean v3, v9, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    iput-boolean v3, v1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    .line 2138
    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_312

    .line 2139
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v3

    if-eqz v3, :cond_312

    .line 2142
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_30d

    const/4 v3, 0x1

    goto :goto_30e

    :cond_30d
    const/4 v3, 0x0

    :goto_30e
    iput-boolean v3, v1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileTop:Z

    iput-boolean v3, v1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    .line 2146
    :cond_312
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    iput-wide v3, v1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartTime:J

    .line 2147
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v4, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v3, 0x0

    .line 2148
    invoke-virtual {v9, v0, v3, v4}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    .line 2150
    :cond_326
    iget v0, v1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, v1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    :cond_32c
    const/4 v0, 0x1

    .line 2152
    iput-boolean v0, v10, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 2156
    iget v0, v10, Lcom/android/server/am/ServiceRecord;->mAllowStartForeground:I

    iput v0, v10, Lcom/android/server/am/ServiceRecord;->mAllowStartForegroundAtEntering:I

    .line 2157
    iget-boolean v0, v10, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    iput-boolean v0, v10, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgsAtEntering:Z

    .line 2159
    iget v0, v10, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v10, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    .line 2160
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v10, Lcom/android/server/am/ServiceRecord;->mFgsEnterTime:J

    if-nez v26, :cond_367

    .line 2162
    iget-object v0, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_34c
    .catchall {:try_start_ee .. :try_end_34c} :catchall_41f

    .line 2163
    :try_start_34c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_362

    .line 2165
    iget-object v3, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 2166
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    .line 2167
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    .line 2165
    invoke-virtual {v0, v6, v3, v4, v5}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 2169
    :cond_362
    monitor-exit v1

    goto :goto_369

    :catchall_364
    move-exception v0

    monitor-exit v1
    :try_end_366
    .catchall {:try_start_34c .. :try_end_366} :catchall_364

    :try_start_366
    throw v0

    :cond_367
    const/16 v26, 0x0

    .line 2174
    :goto_369
    iget-object v0, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 2175
    invoke-static {v11}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v12

    const/16 v13, 0x4c

    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v15, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const-string v19, ""

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    .line 2174
    invoke-virtual/range {v11 .. v22}, Lcom/android/server/appop/AppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    .line 2179
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->registerAppOpCallbackLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2180
    iget-object v0, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget v3, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/am/ActivityManagerService;->updateForegroundServiceUsageStats(Landroid/content/ComponentName;IZ)V

    const/4 v1, 0x0

    .line 2181
    invoke-virtual {v9, v10, v4, v1, v1}, Lcom/android/server/am/ActiveServices;->logFGSStateChangeLocked(Lcom/android/server/am/ServiceRecord;III)V

    .line 2187
    :cond_39b
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->signalForegroundServiceObserversLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2188
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->postNotification()V

    .line 2189
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_3a9

    const/4 v0, 0x1

    .line 2190
    invoke-virtual {v9, v2, v0}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessServiceRecord;Z)V

    .line 2192
    :cond_3a9
    iget v0, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v9, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2193
    iget-object v0, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    goto :goto_3d7

    .line 2196
    :cond_3bd
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v0, :cond_3d7

    const-string v0, "ActivityManager"

    .line 2197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Suppressing startForeground() for FAS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d7
    .catchall {:try_start_366 .. :try_end_3d7} :catchall_41f

    :cond_3d7
    :goto_3d7
    if-eqz v26, :cond_3fb

    .line 2204
    iget-object v0, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2205
    :try_start_3e0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_3f6

    .line 2207
    iget-object v2, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v2

    .line 2208
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    .line 2207
    invoke-virtual {v0, v5, v2, v3, v4}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 2210
    :cond_3f6
    monitor-exit v1

    goto :goto_3fb

    :catchall_3f8
    move-exception v0

    monitor-exit v1
    :try_end_3fa
    .catchall {:try_start_3e0 .. :try_end_3fa} :catchall_3f8

    throw v0

    :cond_3fb
    :goto_3fb
    if-eqz v25, :cond_562

    .line 2215
    iget-object v0, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 2216
    invoke-static {v0}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    const/16 v2, 0x4c

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 p0, v0

    move-object/from16 p1, v1

    move/from16 p2, v2

    move/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    .line 2215
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_562

    :catchall_41f
    move-exception v0

    if-eqz v26, :cond_444

    .line 2204
    iget-object v1, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2205
    :try_start_429
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v2

    if-eqz v2, :cond_43f

    .line 2207
    iget-object v3, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    .line 2208
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    .line 2207
    invoke-virtual {v2, v6, v3, v4, v5}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 2210
    :cond_43f
    monitor-exit v1

    goto :goto_444

    :catchall_441
    move-exception v0

    monitor-exit v1
    :try_end_443
    .catchall {:try_start_429 .. :try_end_443} :catchall_441

    throw v0

    :cond_444
    :goto_444
    if-eqz v25, :cond_466

    .line 2215
    iget-object v1, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 2216
    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v2

    const/16 v3, 0x4c

    iget-object v4, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 p0, v1

    move-object/from16 p1, v2

    move/from16 p2, v3

    move/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    .line 2215
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 2220
    :cond_466
    throw v0

    .line 1968
    :cond_467
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "foregroundServiceType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "0x%08X"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    .line 1969
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not a subset of foregroundServiceType attribute "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "0x%08X"

    new-array v4, v5, [Ljava/lang/Object;

    .line 1971
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in service element of manifest file"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1928
    :cond_4a9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null notification"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2222
    :cond_4b2
    iget-boolean v0, v10, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v0, :cond_562

    .line 2223
    iget v0, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v9, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    if-eqz v0, :cond_4c1

    .line 2225
    invoke-virtual {v9, v0, v10}, Lcom/android/server/am/ActiveServices;->decActiveForegroundAppLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/server/am/ServiceRecord;)V

    :cond_4c1
    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_4cf

    .line 2234
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    const/4 v2, 0x0

    .line 2235
    iput v2, v10, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 2236
    iput-object v1, v10, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    goto :goto_4ec

    .line 2237
    :cond_4cf
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_4ec

    .line 2239
    iget-boolean v0, v10, Lcom/android/server/am/ServiceRecord;->mFgsNotificationShown:Z

    if-nez v0, :cond_4de

    .line 2240
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->postNotification()V

    .line 2242
    :cond_4de
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->dropFgsNotificationStateLocked(Lcom/android/server/am/ServiceRecord;)V

    const/4 v0, 0x2

    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_4ec

    const/4 v2, 0x0

    .line 2244
    iput v2, v10, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 2245
    iput-object v1, v10, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    goto :goto_4ed

    :cond_4ec
    :goto_4ec
    const/4 v2, 0x0

    .line 2249
    :goto_4ed
    iput-boolean v2, v10, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 2250
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v10, Lcom/android/server/am/ServiceRecord;->mFgsExitTime:J

    .line 2251
    iget-object v0, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v2, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2252
    :try_start_4fc
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_512

    .line 2254
    iget-object v3, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    .line 2255
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    .line 2254
    invoke-virtual {v0, v6, v3, v4, v5}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 2257
    :cond_512
    monitor-exit v2
    :try_end_513
    .catchall {:try_start_4fc .. :try_end_513} :catchall_55f

    .line 2258
    iget-object v0, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 2259
    invoke-static {v2}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v3

    const/16 v4, 0x4c

    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    .line 2258
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/appop/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 2261
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->unregisterAppOpCallbackLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2264
    iget-wide v2, v10, Lcom/android/server/am/ServiceRecord;->mFgsExitTime:J

    iget-wide v4, v10, Lcom/android/server/am/ServiceRecord;->mFgsEnterTime:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_535

    sub-long/2addr v2, v4

    long-to-int v0, v2

    goto :goto_536

    :cond_535
    const/4 v0, 0x0

    :goto_536
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 2262
    invoke-virtual {v9, v10, v2, v0, v3}, Lcom/android/server/am/ActiveServices;->logFGSStateChangeLocked(Lcom/android/server/am/ServiceRecord;III)V

    const/4 v2, 0x0

    .line 2267
    iput-boolean v2, v10, Lcom/android/server/am/ServiceRecord;->mFgsNotificationWasDeferred:Z

    .line 2268
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->signalForegroundServiceObserversLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2269
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->resetFgsRestrictionLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2270
    iget-object v0, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget v4, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v3, v4, v2}, Lcom/android/server/am/ActivityManagerService;->updateForegroundServiceUsageStats(Landroid/content/ComponentName;IZ)V

    .line 2271
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_562

    .line 2272
    iget-object v3, v9, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v0, v2, v1}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 2273
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    const/4 v1, 0x1

    invoke-virtual {v9, v0, v1}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessServiceRecord;Z)V

    goto :goto_562

    :catchall_55f
    move-exception v0

    .line 2257
    :try_start_560
    monitor-exit v2
    :try_end_561
    .catchall {:try_start_560 .. :try_end_561} :catchall_55f

    throw v0

    :cond_562
    :goto_562
    return-void
.end method

.method public setServiceForegroundLocked(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;II)V
    .registers 16
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 1547
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1548
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1550
    :try_start_8
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActiveServices;->findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v4

    if-eqz v4, :cond_16

    move-object v3, p0

    move v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    .line 1552
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActiveServices;->setServiceForegroundInnerLocked(Lcom/android/server/am/ServiceRecord;ILandroid/app/Notification;II)V
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1a

    .line 1555
    :cond_16
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1a
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1556
    throw p0
.end method

.method public setServiceRestartBackoffEnabledLocked(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    if-nez p2, :cond_55

    .line 4377
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mRestartBackoffDisabledPackages:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    return-void

    .line 4381
    :cond_b
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mRestartBackoffDisabledPackages:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4383
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 p2, 0x0

    .line 4384
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_1b
    if-ge p2, v8, :cond_58

    .line 4385
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 4386
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 4387
    iget-wide v2, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    sub-long/2addr v2, v6

    .line 4388
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_48

    .line 4389
    iput-wide v4, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    add-long/2addr v4, v6

    .line 4390
    iput-wide v4, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    const-string v2, "Rescheduling"

    move-object v0, p0

    move-object v3, p3

    move-wide v4, v6

    .line 4391
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->performScheduleRestartLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;J)V

    .line 4395
    :cond_48
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1b

    .line 4399
    :cond_55
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->removeServiceRestartBackoffEnabledLocked(Ljava/lang/String;)V

    :cond_58
    return-void
.end method

.method public final shouldAllowFgsStartForegroundNoBindingCheckLocked(IIILjava/lang/String;Lcom/android/server/am/ServiceRecord;)I
    .registers 10

    const/4 v0, -0x1

    if-ne p1, v0, :cond_10

    .line 7078
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p3}, Lcom/android/server/am/ActivityManagerService;->getUidStateLocked(I)I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_10

    .line 7081
    invoke-static {v1}, Landroid/os/PowerExemptionManager;->getReasonCodeFromProcState(I)I

    move-result p1

    :cond_10
    if-ne p1, v0, :cond_28

    .line 7086
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p3}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/ActiveServices;I)V

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ProcessList;->searchEachLruProcessesLOSP(ZLjava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_28

    .line 7110
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_28
    if-ne p1, v0, :cond_36

    .line 7115
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "android.permission.START_FOREGROUND_SERVICES_FROM_BACKGROUND"

    invoke-virtual {v1, v2, p2, p3}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_36

    const/16 p1, 0x3b

    :cond_36
    if-ne p1, v0, :cond_44

    .line 7122
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1, p3, p2, p4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->hasSystemAlertWindowPermission(IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    const/16 p1, 0x3e

    :cond_44
    if-ne p1, v0, :cond_66

    .line 7135
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    .line 7136
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 7135
    invoke-virtual {v1, v2, p3}, Landroid/app/ActivityManagerInternal;->isAssociatedCompanionApp(II)Z

    move-result v1

    if-eqz v1, :cond_66

    const-string v1, "android.permission.REQUEST_COMPANION_START_FOREGROUND_SERVICES_FROM_BACKGROUND"

    .line 7138
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/am/ActiveServices;->isPermissionGranted(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_64

    const-string v1, "android.permission.REQUEST_COMPANION_RUN_IN_BACKGROUND"

    .line 7141
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/am/ActiveServices;->isPermissionGranted(Ljava/lang/String;II)Z

    move-result p2

    if-eqz p2, :cond_66

    :cond_64
    const/16 p1, 0x39

    :cond_66
    if-ne p1, v0, :cond_79

    .line 7149
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 7150
    invoke-virtual {p2, p3}, Lcom/android/server/am/ActivityManagerService;->isAllowlistedForFgsStartLOSP(I)Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    move-result-object p2

    if-eqz p2, :cond_79

    .line 7152
    sget-object p1, Lcom/android/server/am/ActivityManagerService;->FAKE_TEMP_ALLOW_LIST_ITEM:Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    if-ne p2, p1, :cond_77

    const/16 p1, 0x12c

    goto :goto_79

    .line 7155
    :cond_77
    iget p1, p2, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mReasonCode:I

    :cond_79
    :goto_79
    if-ne p1, v0, :cond_87

    .line 7161
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_87

    const/16 p1, 0x3f

    :cond_87
    if-ne p1, v0, :cond_95

    .line 7168
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p2, p3}, Landroid/app/ActivityManagerInternal;->isProfileOwner(I)Z

    move-result p2

    if-eqz p2, :cond_95

    const/16 p1, 0x38

    :cond_95
    if-ne p1, v0, :cond_b2

    .line 7175
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object p2

    const/16 v1, 0x2f

    .line 7176
    invoke-virtual {p2, v1, p3, p4}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a8

    const/16 p1, 0x44

    goto :goto_b2

    :cond_a8
    const/16 v1, 0x5e

    .line 7179
    invoke-virtual {p2, v1, p3, p4}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p2

    if-nez p2, :cond_b2

    const/16 p1, 0x45

    :cond_b2
    :goto_b2
    if-ne p1, v0, :cond_da

    .line 7186
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 7187
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 7189
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    const-string v1, "default_input_method"

    .line 7187
    invoke-static {p2, v1, p3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_da

    .line 7191
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_da

    .line 7192
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_da

    const/16 p1, 0x47

    :cond_da
    if-ne p1, v0, :cond_f0

    .line 7199
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsAllowOptOut:Z

    if-eqz p0, :cond_f0

    if-eqz p5, :cond_f0

    iget-object p0, p5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 7201
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->hasRequestForegroundServiceExemption()Z

    move-result p0

    if-eqz p0, :cond_f0

    const/16 p1, 0x3e8

    :cond_f0
    return p1
.end method

.method public final shouldAllowFgsStartForegroundWithBindingCheckLocked(ILjava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;I)I
    .registers 14

    .line 7026
    iget-object p7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 7027
    invoke-virtual {p7, p4}, Lcom/android/server/am/ActivityManagerService;->isAllowlistedForFgsStartLOSP(I)Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    move-result-object p7

    iput-object p7, p6, Lcom/android/server/am/ServiceRecord;->mInfoTempFgsAllowListReason:Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p4

    move-object v4, p2

    move-object v5, p6

    .line 7028
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->shouldAllowFgsStartForegroundNoBindingCheckLocked(IIILjava/lang/String;Lcom/android/server/am/ServiceRecord;)I

    move-result p1

    const/4 p3, -0x1

    const/4 v0, 0x0

    if-ne p1, p3, :cond_1f

    .line 7033
    invoke-virtual {p0, p4}, Lcom/android/server/am/ActiveServices;->canBindingClientStartFgsLocked(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    const/16 p1, 0x36

    goto :goto_20

    :cond_1f
    move-object v1, v0

    .line 7039
    :cond_20
    :goto_20
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, p4}, Lcom/android/server/am/ActivityManagerService;->getUidStateLocked(I)I

    move-result v2

    .line 7042
    :try_start_26
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 7043
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getTargetSdkVersion(Ljava/lang/String;)I

    move-result p3
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_32} :catch_32

    .line 7046
    :catch_32
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[callingPackage: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; callingUid: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; uidState: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7049
    invoke-static {v2}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; intent: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; code:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7051
    invoke-static {p1}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; tempAllowListReason:<"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p7, :cond_6f

    goto :goto_9f

    .line 7054
    :cond_6f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p7, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mReason:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ",reasonCode:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p7, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mReasonCode:I

    .line 7056
    invoke-static {p4}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ",duration:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p4, p7, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mDuration:J

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, ",callingUid:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p7, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mCallingUid:I

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9f
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ">; targetSdkVersion:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; callerTargetSdkVersion:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; startForegroundCount:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p6, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; bindFromPackage:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7065
    iget-object p2, p6, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_de

    const/4 p2, 0x0

    .line 7066
    iput-boolean p2, p6, Lcom/android/server/am/ServiceRecord;->mLoggedInfoAllowStartForeground:Z

    .line 7067
    iput-object p0, p6, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;

    :cond_de
    return p1
.end method

.method public final shouldAllowFgsWhileInUsePermissionLocked(Ljava/lang/String;IILcom/android/server/am/ServiceRecord;Z)I
    .registers 12

    .line 6837
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/am/ActivityManagerService;->getUidStateLocked(I)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-gt v0, v1, :cond_f

    .line 6841
    invoke-static {v0}, Landroid/os/PowerExemptionManager;->getReasonCodeFromProcState(I)I

    move-result v0

    goto :goto_10

    :cond_f
    move v0, v2

    :goto_10
    if-ne v0, v2, :cond_1e

    .line 6847
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v3, p3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isUidForeground(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/16 v0, 0x32

    :cond_1e
    if-ne v0, v2, :cond_24

    if-eqz p5, :cond_24

    const/16 v0, 0x35

    :cond_24
    const/4 p5, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_41

    .line 6862
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-eqz v4, :cond_3c

    const/16 v5, 0x3e8

    if-eq v4, v5, :cond_3c

    const/16 v5, 0x403

    if-eq v4, v5, :cond_3c

    const/16 v5, 0x7d0

    if-eq v4, v5, :cond_3c

    move v4, v3

    goto :goto_3d

    :cond_3c
    move v4, p5

    :goto_3d
    if-eqz v4, :cond_41

    const/16 v0, 0x33

    :cond_41
    if-ne v0, v2, :cond_58

    .line 6881
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v5, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda1;

    invoke-direct {v5, p3}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v4, v3, v5}, Lcom/android/server/am/ProcessList;->searchEachLruProcessesLOSP(ZLjava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_58

    .line 6890
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_58
    if-ne v0, v2, :cond_67

    .line 6895
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v4, p3}, Landroid/app/ActivityManagerInternal;->isTempAllowlistedForFgsWhileInUse(I)Z

    move-result v4

    if-eqz v4, :cond_67

    const/16 p0, 0x46

    return p0

    :cond_67
    if-ne v0, v2, :cond_7b

    if-eqz p4, :cond_7b

    .line 6901
    iget-object p4, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p4, :cond_7b

    .line 6902
    invoke-virtual {p4}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object p4

    if-eqz p4, :cond_7b

    .line 6903
    iget-boolean p4, p4, Lcom/android/server/am/ActiveInstrumentation;->mHasBackgroundActivityStartsPermission:Z

    if-eqz p4, :cond_7b

    const/16 v0, 0x3c

    :cond_7b
    if-ne v0, v2, :cond_89

    .line 6910
    iget-object p4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    invoke-virtual {p4, v4, p2, p3}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result p2

    if-nez p2, :cond_89

    const/16 v0, 0x3a

    :cond_89
    if-ne v0, v2, :cond_cb

    .line 6917
    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/ActiveServices;->verifyPackage(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_9d

    .line 6918
    iget-object p2, p0, Lcom/android/server/am/ActiveServices;->mAllowListWhileInUsePermissionInFgs:Landroid/util/ArraySet;

    .line 6919
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_cb

    const/16 p1, 0x41

    move v0, p1

    goto :goto_cb

    :cond_9d
    const p2, 0x534e4554

    const/4 p4, 0x3

    new-array p4, p4, [Ljava/lang/Object;

    const-string v4, "215003903"

    aput-object v4, p4, v3

    .line 6924
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p4, p5

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callingPackage:"

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not belong to callingUid:"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, v1

    invoke-static {p2, p4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_cb
    :goto_cb
    if-ne v0, v2, :cond_d9

    .line 6932
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, p3}, Landroid/app/ActivityManagerInternal;->isDeviceOwner(I)Z

    move-result p0

    if-eqz p0, :cond_d9

    const/16 v0, 0x37

    :cond_d9
    return v0
.end method

.method public final shouldShowFgsNotificationLocked(Lcom/android/server/am/ServiceRecord;)Z
    .registers 9

    .line 2368
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2371
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralEnabled:Z

    const/4 v3, 0x1

    if-nez v2, :cond_e

    return v3

    .line 2376
    :cond_e
    iget-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->mFgsNotificationDeferred:Z

    const-string v4, "ActivityManager"

    if-eqz v2, :cond_33

    iget-wide v5, p1, Lcom/android/server/am/ServiceRecord;->fgDisplayTime:J

    cmp-long v2, v0, v5

    if-ltz v2, :cond_33

    .line 2377
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz p0, :cond_32

    .line 2378
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FGS reached end of deferral period: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    return v3

    .line 2384
    :cond_33
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/ActiveServices;->withinFgsDeferRateLimit(Lcom/android/server/am/ServiceRecord;J)Z

    move-result v0

    if-eqz v0, :cond_3a

    return v3

    .line 2388
    :cond_3a
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralApiGated:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_51

    .line 2391
    iget-object p0, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1f

    if-ge p0, v1, :cond_4d

    move p0, v3

    goto :goto_4e

    :cond_4d
    move p0, v0

    :goto_4e
    if-eqz p0, :cond_51

    return v3

    .line 2398
    :cond_51
    iget-boolean p0, p1, Lcom/android/server/am/ServiceRecord;->mFgsNotificationShown:Z

    if-eqz p0, :cond_56

    return v3

    .line 2403
    :cond_56
    iget-object p0, p1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {p0}, Landroid/app/Notification;->isForegroundDisplayForceDeferred()Z

    move-result p0

    const-string v1, "FGS "

    if-nez p0, :cond_a6

    .line 2405
    iget-object p0, p1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {p0}, Landroid/app/Notification;->shouldShowForegroundImmediately()Z

    move-result p0

    if-eqz p0, :cond_84

    .line 2406
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz p0, :cond_83

    .line 2407
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " notification policy says show immediately"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_83
    return v3

    .line 2414
    :cond_84
    iget p0, p1, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    and-int/lit8 p0, p0, 0x36

    if-eqz p0, :cond_c1

    .line 2415
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz p0, :cond_a5

    .line 2416
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " type gets immediate display"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a5
    return v3

    .line 2424
    :cond_a6
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz p0, :cond_c1

    .line 2425
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " notification is app deferred"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c1
    return v0
.end method

.method public final showFgsBgRestrictedNotificationLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 8

    .line 7220
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionNotificationEnabled:Z

    if-nez v0, :cond_9

    return-void

    .line 7223
    :cond_9
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 7225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App restricted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->mRecentCallingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 7227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/am/ActiveServices;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7229
    new-instance v3, Landroid/app/Notification$Builder;

    sget-object v4, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v4, "com.android.fgs-bg-restricted"

    .line 7232
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x1080ad0

    .line 7233
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 7234
    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x106001c

    .line 7235
    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string v4, "Foreground Service BG-Launch Restricted"

    .line 7237
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 7238
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 7239
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 7240
    invoke-virtual {v3, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 7241
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3d

    .line 7242
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 7241
    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final signalForegroundServiceObserversLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 5596
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mFgsObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1f

    .line 5599
    :try_start_9
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mFgsObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IForegroundServiceObserver;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    iget-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    invoke-interface {v2, p1, v3, v4, v5}, Landroid/app/IForegroundServiceObserver;->onForegroundStateChanged(Landroid/os/IBinder;Ljava/lang/String;IZ)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1c} :catch_1c

    :catch_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 5606
    :cond_1f
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mFgsObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final startFgsDeferralTimerLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 13

    .line 2437
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2438
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2441
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralInterval:J

    add-long/2addr v3, v0

    const/4 v5, 0x0

    move v6, v5

    .line 2444
    :goto_11
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const-string v8, "FGS "

    const-string v9, "ActivityManager"

    if-ge v6, v7, :cond_52

    .line 2445
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    if-ne v7, p1, :cond_43

    .line 2448
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz p0, :cond_42

    .line 2449
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already pending notification display"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    return-void

    .line 2454
    :cond_43
    iget-object v8, v7, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v8, :cond_4f

    .line 2455
    iget-wide v7, v7, Lcom/android/server/am/ServiceRecord;->fgDisplayTime:J

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_4f
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 2459
    :cond_52
    iget-boolean v6, p0, Lcom/android/server/am/ActiveServices;->mFgsDeferralRateLimited:Z

    if-eqz v6, :cond_62

    .line 2460
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v6, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTime:J

    add-long/2addr v6, v3

    .line 2461
    iget-object v10, p0, Lcom/android/server/am/ActiveServices;->mFgsDeferralEligible:Landroid/util/SparseLongArray;

    invoke-virtual {v10, v2, v6, v7}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 2463
    :cond_62
    iput-wide v3, p1, Lcom/android/server/am/ServiceRecord;->fgDisplayTime:J

    const/4 v2, 0x1

    .line 2464
    iput-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->mFgsNotificationDeferred:Z

    .line 2465
    iput-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->mFgsNotificationWasDeferred:Z

    .line 2466
    iput-boolean v5, p1, Lcom/android/server/am/ServiceRecord;->mFgsNotificationShown:Z

    .line 2467
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2468
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v6, :cond_95

    .line 2469
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " notification in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v0, v3, v0

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    :cond_95
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_9e

    move v5, v2

    :cond_9e
    if-eqz v5, :cond_d2

    .line 2474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deferring FGS notification in legacy app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2475
    invoke-static {v1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2474
    invoke-static {v9, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    :cond_d2
    iget-object p1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mPostDeferredFGSNotifications:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZIZ)Landroid/content/ComponentName;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    move-object v0, p0

    move-object v9, p1

    move-object/from16 v10, p3

    .line 1261
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1262
    :try_start_b
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v2

    const/4 v11, 0x1

    if-eqz v2, :cond_21

    .line 1264
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    .line 1265
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1264
    invoke-virtual {v2, v11, v3, v4, v5}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 1267
    :cond_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_118

    const/4 v12, 0x0

    .line 1268
    iput-boolean v12, v10, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 1270
    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1271
    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1272
    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x63

    .line 1273
    invoke-static {v3, v13, v1, v2, v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)V

    .line 1275
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v3, v13, v1, v2}, Lcom/android/server/am/BatteryStatsService;->noteServiceStartRunning(ILjava/lang/String;Ljava/lang/String;)V

    .line 1276
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    move-object/from16 v2, p3

    move/from16 v4, p4

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZZZ)Ljava/lang/String;

    move-result-object v1

    .line 1282
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "updateOomAdj_startService"

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    if-eqz v1, :cond_64

    .line 1284
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "!!"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_64
    const/16 v2, 0x1dc

    .line 1288
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->getShortAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1290
    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_8c

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    if-nez v1, :cond_7b

    goto :goto_8c

    :cond_7b
    if-nez p7, :cond_8a

    .line 1292
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_88

    goto :goto_8a

    :cond_88
    move v8, v11

    goto :goto_8e

    :cond_8a
    :goto_8a
    const/4 v1, 0x2

    goto :goto_8d

    :cond_8c
    :goto_8c
    const/4 v1, 0x3

    :goto_8d
    move v8, v1

    :goto_8e
    move v3, v13

    move/from16 v4, p6

    .line 1287
    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;IZI)V

    .line 1296
    iget-boolean v1, v10, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v1, :cond_10c

    if-eqz p5, :cond_10c

    .line 1297
    iget-object v1, v9, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_a3

    goto :goto_a4

    :cond_a3
    move v11, v12

    .line 1298
    :goto_a4
    iget-object v1, v9, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1299
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v0, Lcom/android/server/am/ActivityManagerConstants;->BG_START_TIMEOUT:J

    add-long/2addr v1, v3

    iput-wide v1, v10, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    .line 1300
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v0, :cond_e4

    .line 1301
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1302
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v1, "ActivityManager"

    .line 1303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting background (first="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_106

    .line 1304
    :cond_e4
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v0, :cond_106

    const-string v0, "ActivityManager"

    .line 1305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting background (first="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_106
    :goto_106
    if-eqz v11, :cond_115

    .line 1308
    invoke-virtual {p1}, Lcom/android/server/am/ActiveServices$ServiceMap;->rescheduleDelayedStartsLocked()V

    goto :goto_115

    :cond_10c
    if-nez p4, :cond_112

    .line 1310
    iget-boolean v0, v10, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v0, :cond_115

    .line 1311
    :cond_112
    invoke-virtual {p1, v10}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1314
    :cond_115
    :goto_115
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    return-object v0

    :catchall_118
    move-exception v0

    .line 1267
    :try_start_119
    monitor-exit v1
    :try_end_11a
    .catchall {:try_start_119 .. :try_end_11a} :catchall_118

    throw v0
.end method

.method public final startServiceInnerLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;IIZZZLandroid/os/IBinder;)Landroid/content/ComponentName;
    .registers 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p3

    move/from16 v10, p5

    move/from16 v11, p6

    .line 964
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v2, v8, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v3, v8, Lcom/android/server/am/ServiceRecord;->userId:I

    move-object/from16 v12, p2

    invoke-interface {v1, v12, v9, v2, v3}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v6

    const-string/jumbo v1, "start service"

    const/4 v13, 0x0

    .line 966
    invoke-virtual {v0, v8, v9, v13, v1}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 970
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v1, :cond_3c

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "START SERVICE WHILE RESTART PENDING: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :cond_3c
    iget-boolean v14, v8, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 973
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v8, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    const/4 v15, 0x1

    .line 974
    iput-boolean v15, v8, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 975
    iput-boolean v13, v8, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 976
    iput-boolean v10, v8, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    .line 977
    iget-object v7, v8, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/am/ServiceRecord$StartItem;

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->makeNextStartId()I

    move-result v4

    move-object v1, v5

    move-object/from16 v2, p1

    move-object v13, v5

    move-object/from16 v5, p2

    move-object v15, v7

    move/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;I)V

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v10, :cond_ae

    .line 982
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 983
    :try_start_6c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v2

    if-eqz v2, :cond_82

    .line 985
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    .line 986
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    .line 985
    invoke-virtual {v2, v6, v3, v4, v5}, Lcom/android/internal/app/procstats/ServiceState;->setForeground(ZIJ)V

    .line 988
    :cond_82
    monitor-exit v1
    :try_end_83
    .catchall {:try_start_6c .. :try_end_83} :catchall_ab

    .line 989
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v17

    const/16 v18, 0x4c

    iget-object v2, v8, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v8, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, -0x1

    move-object/from16 v16, v1

    move/from16 v19, v2

    move-object/from16 v20, v3

    invoke-virtual/range {v16 .. v27}, Lcom/android/server/appop/AppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    goto :goto_ae

    :catchall_ab
    move-exception v0

    .line 988
    :try_start_ac
    monitor-exit v1
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    throw v0

    .line 995
    :cond_ae
    :goto_ae
    iget v1, v8, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v2

    if-nez v11, :cond_1e2

    if-nez v10, :cond_1e2

    .line 997
    iget-object v1, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v1, :cond_1e2

    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v3, v8, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 998
    invoke-virtual {v1, v3}, Lcom/android/server/am/UserController;->hasStartedUserState(I)Z

    move-result v1

    if-eqz v1, :cond_1e2

    .line 999
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v8, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v4, v8, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-eqz v1, :cond_155

    .line 1000
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    const/16 v4, 0xb

    if-le v3, v4, :cond_e1

    goto :goto_155

    .line 1028
    :cond_e1
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_108

    .line 1033
    sget-boolean v1, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v1, :cond_105

    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not delaying, but counting as bg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_105
    const/4 v13, 0x1

    goto/16 :goto_1df

    .line 1035
    :cond_108
    sget-boolean v3, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v3, :cond_152

    .line 1036
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Not potential delay (state="

    .line 1037
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    .line 1038
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->makeAdjReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13d

    .line 1041
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1042
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13d
    const-string v1, "): "

    .line 1044
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ActivityManager"

    .line 1046
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_152
    const/4 v13, 0x0

    goto/16 :goto_1df

    .line 1011
    :cond_155
    :goto_155
    sget-boolean v3, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_SERVICE:Z

    if-eqz v3, :cond_177

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Potential start delay of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    :cond_177
    iget-boolean v1, v8, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v1, :cond_198

    .line 1016
    sget-boolean v0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v0, :cond_195

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Continuing to delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :cond_195
    iget-object v0, v8, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    return-object v0

    .line 1019
    :cond_198
    iget-object v1, v2, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v3, v0, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    if-lt v1, v3, :cond_1c3

    const-string v0, "ActivityManager"

    .line 1021
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delaying start of: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    iget-object v0, v2, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 1023
    iput-boolean v1, v8, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 1024
    iget-object v0, v8, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    return-object v0

    :cond_1c3
    const/4 v1, 0x1

    .line 1026
    sget-boolean v3, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v3, :cond_1de

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not delaying: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1de
    move v13, v1

    :goto_1df
    move v6, v13

    goto/16 :goto_26a

    .line 1048
    :cond_1e2
    sget-boolean v1, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz v1, :cond_269

    if-nez v11, :cond_231

    if-eqz v10, :cond_1eb

    goto :goto_231

    .line 1052
    :cond_1eb
    iget-object v1, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_210

    const-string v1, "ActivityManager"

    .line 1053
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not potential delay (cur app="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_269

    :cond_210
    const-string v1, "ActivityManager"

    .line 1055
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not potential delay (user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " not started): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_269

    :cond_231
    :goto_231
    const-string v1, "ActivityManager"

    .line 1050
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not potential delay (callerFg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " fgRequired="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_269
    :goto_269
    const/4 v6, 0x0

    :goto_26a
    if-eqz p7, :cond_271

    move-object/from16 v1, p8

    .line 1060
    invoke-virtual {v8, v1}, Lcom/android/server/am/ServiceRecord;->allowBgActivityStartsOnServiceStart(Landroid/os/IBinder;)V

    :cond_271
    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move/from16 v5, p6

    move/from16 v7, p3

    move v8, v14

    .line 1062
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActiveServices;->startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZIZ)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public startServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    .line 750
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/am/ActiveServices;->startServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;IZLandroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public startServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;IZLandroid/os/IBinder;)Landroid/content/ComponentName;
    .registers 46
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v0, p1

    move-object/from16 v15, p2

    move/from16 v13, p4

    move/from16 v12, p5

    move-object/from16 v11, p7

    .line 759
    sget-boolean v1, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    const-string v10, "ActivityManager"

    if-eqz v1, :cond_3e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " args="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 759
    invoke-static {v10, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    :cond_3e
    move-object/from16 v3, p3

    .line 766
    :goto_40
    iget-object v1, v14, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/16 v16, 0x0

    if-eqz v0, :cond_94

    .line 770
    iget-object v1, v14, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-eqz v1, :cond_6d

    .line 781
    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v0

    if-eqz v0, :cond_60

    move v0, v8

    goto :goto_61

    :cond_60
    move v0, v9

    .line 785
    :goto_61
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 786
    iget v1, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    move v7, v0

    move/from16 v18, v1

    move-object/from16 v17, v2

    goto :goto_99

    .line 772
    :cond_6d
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find app for caller "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " (pid="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") when starting service "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_94
    move/from16 v18, v1

    move v7, v8

    move-object/from16 v17, v16

    :goto_99
    const/4 v2, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p7

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 p1, v7

    move/from16 v7, p9

    move/from16 v8, v19

    move/from16 v9, p1

    move-object/from16 v23, v10

    move/from16 v10, v20

    move/from16 v11, v21

    .line 793
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v11

    if-nez v11, :cond_c1

    return-object v16

    .line 798
    :cond_c1
    iget-object v10, v11, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    const-string v9, "!"

    if-nez v10, :cond_d5

    .line 799
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, v11, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    if-eqz v1, :cond_ce

    goto :goto_d1

    :cond_ce
    const-string/jumbo v1, "private to package"

    .line 800
    :goto_d1
    invoke-direct {v0, v9, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_d5
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p2

    move-object v5, v10

    move/from16 v6, p9

    move/from16 v7, p10

    .line 804
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActiveServices;->setFgsRestrictionLocked(Ljava/lang/String;IILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;IZ)V

    .line 807
    iget-object v0, v14, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v1, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->exists(I)Z

    move-result v0

    if-nez v0, :cond_10c

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to start service with non-existent user! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v8, v23

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v16

    :cond_10c
    move-object/from16 v8, v23

    .line 815
    iget-object v0, v14, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->isUidActiveLOSP(I)Z

    move-result v0

    const/4 v7, 0x1

    xor-int/2addr v0, v7

    if-eqz v0, :cond_15a

    .line 821
    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Lcom/android/server/am/ActiveServices;->appRestrictedAnyInBackground(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15a

    .line 822
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v1, :cond_155

    .line 823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forcing bg-only service start only for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : bgLaunch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " callerFg="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_157

    :cond_155
    move/from16 v6, p1

    :goto_157
    move/from16 v19, v7

    goto :goto_15e

    :cond_15a
    move/from16 v6, p1

    const/16 v19, 0x0

    :goto_15e
    const/4 v0, 0x3

    if-eqz p6, :cond_19d

    .line 830
    invoke-virtual {v14, v10}, Lcom/android/server/am/ActiveServices;->logFgsBackgroundStart(Lcom/android/server/am/ServiceRecord;)V

    .line 831
    iget v1, v10, Lcom/android/server/am/ServiceRecord;->mAllowStartForeground:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_19d

    invoke-virtual {v14, v10}, Lcom/android/server/am/ActiveServices;->isBgFgsRestrictionEnabled(Lcom/android/server/am/ServiceRecord;)Z

    move-result v1

    if-eqz v1, :cond_19d

    .line 832
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startForegroundService() not allowed due to mAllowStartForeground false: service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 835
    invoke-static {v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    invoke-virtual {v14, v10}, Lcom/android/server/am/ActiveServices;->showFgsBgRestrictedNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    const/4 v5, 0x0

    .line 837
    invoke-virtual {v14, v10, v0, v5, v5}, Lcom/android/server/am/ActiveServices;->logFGSStateChangeLocked(Lcom/android/server/am/ServiceRecord;III)V

    const-wide/32 v2, 0xa5fa937

    .line 840
    invoke-static {v2, v3, v12}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    if-nez v0, :cond_197

    return-object v16

    .line 841
    :cond_197
    new-instance v0, Landroid/app/ForegroundServiceStartNotAllowedException;

    invoke-direct {v0, v1}, Landroid/app/ForegroundServiceStartNotAllowedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19d
    const/4 v5, 0x0

    const-string v4, " pkg="

    const-string v3, " uid="

    const-string v2, " from pid="

    const-string v1, " to "

    if-eqz p6, :cond_207

    .line 850
    iget-object v5, v14, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v5

    const/16 v0, 0x4c

    iget-object v7, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v20, v6

    iget-object v6, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v0, v7, v6}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_203

    const/4 v7, 0x1

    if-eq v0, v7, :cond_1ce

    const/4 v5, 0x3

    if-eq v0, v5, :cond_209

    .line 868
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "!!"

    const-string v2, "foreground not allowed as per app op"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 860
    :cond_1ce
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startForegroundService not allowed due to app op: service "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v10, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v21, v7

    const/4 v5, 0x0

    goto :goto_20f

    :cond_203
    move-object/from16 v6, p7

    const/4 v7, 0x1

    goto :goto_20b

    :cond_207
    move/from16 v20, v6

    :cond_209
    move-object/from16 v6, p7

    :goto_20b
    move/from16 v5, p6

    const/16 v21, 0x0

    :goto_20f
    const-string v0, "?"

    if-nez v19, :cond_225

    .line 874
    iget-boolean v7, v10, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-nez v7, :cond_21a

    if-nez v5, :cond_21a

    goto :goto_225

    :cond_21a
    move-object v7, v0

    move-object/from16 p1, v9

    move-object/from16 p3, v11

    const/16 v22, 0x0

    move v9, v5

    move-object v11, v6

    goto/16 :goto_2de

    .line 877
    :cond_225
    :goto_225
    iget-object v7, v14, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 p1, v0

    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 p3, v1

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v23, v2

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v27, p1

    move/from16 v26, v0

    move-object v0, v7

    move-object/from16 v7, p3

    move-object/from16 v28, v23

    move-object/from16 v29, v3

    move/from16 v3, v26

    move-object/from16 v30, v4

    move/from16 v4, p4

    move-object/from16 p1, v9

    const/16 v22, 0x0

    move v9, v5

    move/from16 v5, v24

    move/from16 v6, v25

    move-object/from16 p3, v11

    const/4 v14, 0x1

    move-object v11, v7

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityManagerService;->getAppStartModeLOSP(ILjava/lang/String;IIZZZ)I

    move-result v0

    if-eqz v0, :cond_2d8

    .line 880
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Background start not allowed: service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p7

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " startFg?="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v14, :cond_2d7

    if-eqz v21, :cond_2a2

    goto :goto_2d7

    :cond_2a2
    if-eqz v19, :cond_2b0

    if-eqz v9, :cond_2b0

    .line 894
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKGROUND_CHECK:Z

    if-eqz v0, :cond_2af

    const-string v0, "Silently dropping foreground service launch due to FAS"

    .line 895
    invoke-static {v8, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2af
    return-object v16

    :cond_2b0
    move-object/from16 v14, p0

    .line 902
    iget-object v0, v14, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getUidRecordLOSP(I)Lcom/android/server/am/UidRecord;

    move-result-object v0

    .line 903
    new-instance v1, Landroid/content/ComponentName;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app is in background uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v7, v27

    invoke-direct {v1, v7, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2d7
    :goto_2d7
    return-object v16

    :cond_2d8
    move-object/from16 v14, p0

    move-object/from16 v11, p7

    move-object/from16 v7, v27

    .line 908
    :goto_2de
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz v0, :cond_2fa

    invoke-static {}, Lcom/android/server/am/BaseRestrictionMgr;->getInstance()Lcom/android/server/am/BaseRestrictionMgr;

    move-result-object v0

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget v6, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    const-string/jumbo v4, "startService"

    move-object/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;I)Z

    move-result v0

    if-eqz v0, :cond_2fa

    return-object v16

    .line 918
    :cond_2fa
    iget-object v0, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_32b

    if-eqz v9, :cond_32b

    .line 919
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKGROUND_CHECK:Z

    if-nez v0, :cond_30c

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v0, :cond_32d

    .line 920
    :cond_30c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startForegroundService() but host targets "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - not requiring startForeground()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32d

    :cond_32b
    move/from16 v22, v9

    :cond_32d
    :goto_32d
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, p2

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move/from16 v5, p5

    move/from16 v6, p4

    move-object v9, v7

    move/from16 v7, v22

    move/from16 v8, v20

    move-object/from16 v32, p1

    move-object/from16 v31, v9

    move/from16 v9, p9

    move-object/from16 v19, v10

    move/from16 v10, p10

    move-object/from16 v33, p3

    move-object/from16 v11, p11

    move/from16 v12, v17

    move-object/from16 v13, v18

    .line 928
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/ActiveServices;->deferServiceBringupIfFrozenLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IIZZIZLandroid/os/IBinder;ZLandroid/app/IServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_35c

    return-object v16

    :cond_35c
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move/from16 v4, p5

    move-object/from16 v5, p2

    move/from16 v6, v20

    move/from16 v7, p9

    .line 940
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/ActiveServices;->requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ZIZLandroid/app/IServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_375

    return-object v16

    :cond_375
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p4

    move/from16 v5, v22

    move/from16 v6, v20

    move/from16 v7, p10

    move-object/from16 v8, p11

    .line 949
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ActiveServices;->startServiceInnerLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;IIZZZLandroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v0

    move-object/from16 v1, v33

    .line 951
    iget-object v2, v1, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->aliasComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_3ab

    .line 952
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v32

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3ab

    .line 953
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v31

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3ab

    .line 954
    iget-object v0, v1, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->aliasComponent:Landroid/content/ComponentName;

    :cond_3ab
    return-object v0
.end method

.method public stopAllForegroundServicesLocked(ILjava/lang/String;)V
    .registers 13

    .line 432
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    .line 433
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 434
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    if-ge v4, v1, :cond_39

    .line 436
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 437
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq p1, v7, :cond_2f

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 438
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 439
    :cond_2f
    iget-boolean v6, v5, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v6, :cond_36

    .line 440
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 446
    :cond_39
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "ActivityManager"

    if-lez v0, :cond_66

    .line 447
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v4, :cond_66

    .line 448
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in FAS with foreground services"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    :goto_66
    if-ge v3, v0, :cond_92

    .line 452
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 453
    sget-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz p1, :cond_87

    .line 454
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  Stopping fg for service "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_87
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    .line 456
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActiveServices;->setServiceForegroundInnerLocked(Lcom/android/server/am/ServiceRecord;ILandroid/app/Notification;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_66

    :cond_92
    return-void
.end method

.method public stopForegroundServicesForChannelLocked(Ljava/lang/String;ILjava/lang/String;)V
    .registers 10

    .line 686
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-eqz v0, :cond_6b

    const/4 v1, 0x0

    move v2, v1

    .line 688
    :goto_c
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_6b

    .line 689
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 690
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_68

    iget-boolean v4, v3, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v4, :cond_68

    .line 691
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {v4}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 692
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v4, :cond_65

    .line 693
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stopping FGS u"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/channelId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for conversation channel clear"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_65
    invoke-virtual {p0, v3, v1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    :cond_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_6b
    return-void
.end method

.method public stopInBackgroundLocked(I)V
    .registers 16

    .line 1387
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-eqz v0, :cond_cc

    .line 1390
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_17
    if-ltz v1, :cond_a6

    .line 1391
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 1392
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v7, p1, :cond_a2

    iget-boolean v6, v4, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v6, :cond_a2

    .line 1393
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v4, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v9, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v6 .. v13}, Lcom/android/server/am/ActivityManagerService;->getAppStartModeLOSP(ILjava/lang/String;IIZZZ)I

    move-result v5

    if-eqz v5, :cond_a2

    .line 1397
    iget-object v7, v4, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v8, v4, Lcom/android/server/am/ServiceRecord;->userId:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    .line 1398
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActiveServices;->isForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    const-string v6, "ActivityManager"

    if-eqz v5, :cond_51

    const-string v4, "cannot stop service due to MDM policy restriction"

    .line 1399
    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a2

    :cond_51
    if-nez v3, :cond_58

    .line 1404
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1406
    :cond_58
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    .line 1407
    iget-object v7, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7, v5}, Lcom/android/server/am/EventLogTags;->writeAmStopIdleService(ILjava/lang/String;)V

    .line 1408
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x40

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Stopping service due to app idle: "

    .line 1409
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1410
    iget-object v8, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7, v8}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    const-string v8, " "

    .line 1411
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1412
    iget-wide v9, v4, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    .line 1413
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long/2addr v9, v11

    .line 1412
    invoke-static {v9, v10, v7}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1414
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1415
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1416
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1421
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/am/ActiveServices;->appRestrictedAnyInBackground(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a2

    .line 1423
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    :cond_a2
    :goto_a2
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_17

    :cond_a6
    if-eqz v3, :cond_cc

    .line 1429
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 v1, p1, -0x1

    :goto_ae
    if-ltz v1, :cond_c2

    .line 1431
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    const/4 v5, 0x0

    .line 1432
    iput-boolean v5, v4, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 1433
    invoke-virtual {v0, v4}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1434
    invoke-virtual {p0, v4, v2}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_ae

    :cond_c2
    if-lez p1, :cond_cc

    .line 1437
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo p1, "updateOomAdj_unbindService"

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    :cond_cc
    return-void
.end method

.method public final stopServiceAndUpdateAllowlistManagerLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 3

    .line 2847
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 2848
    invoke-virtual {v0, p1}, Lcom/android/server/am/ProcessServiceRecord;->stopService(Lcom/android/server/am/ServiceRecord;)Z

    .line 2849
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->updateBoundClientUids()V

    .line 2850
    iget-boolean p1, p1, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    if-eqz p1, :cond_11

    .line 2851
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActiveServices;->updateAllowlistManagerLocked(Lcom/android/server/am/ProcessServiceRecord;)V

    :cond_11
    return-void
.end method

.method public stopServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I
    .registers 18

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1347
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v3, :cond_29

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ActivityManager"

    invoke-static {v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    :cond_29
    move-object/from16 v4, p3

    .line 1350
    :goto_2b
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    if-eqz v1, :cond_61

    if-eqz v3, :cond_36

    goto :goto_61

    .line 1352
    :cond_36
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find app for caller "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (pid="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1354
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") when stopping service "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_61
    :goto_61
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1360
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v4, p3

    move/from16 v8, p4

    .line 1359
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_a4

    .line 1362
    iget-object v1, v7, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-eqz v1, :cond_a2

    .line 1365
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move/from16 v3, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->isForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8f

    return v8

    .line 1370
    :cond_8f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1372
    :try_start_93
    iget-object v3, v7, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {p0, v3, v8}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V
    :try_end_98
    .catchall {:try_start_93 .. :try_end_98} :catchall_9d

    .line 1374
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x1

    return v0

    :catchall_9d
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1375
    throw v0

    :cond_a2
    const/4 v0, -0x1

    return v0

    :cond_a4
    return v8
.end method

.method public final stopServiceLocked(Lcom/android/server/am/ServiceRecord;Z)V
    .registers 9

    .line 1318
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v0, :cond_22

    .line 1322
    sget-boolean p0, Lcom/android/server/am/ActiveServices;->DEBUG_DELAYED_STARTS:Z

    if-eqz p0, :cond_1e

    const-string p0, "ActivityManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Delaying stop of pending: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 p0, 0x1

    .line 1323
    iput-boolean p0, p1, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    return-void

    .line 1327
    :cond_22
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1328
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1329
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x63

    const/4 v4, 0x2

    .line 1330
    invoke-static {v3, v0, v1, v2, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)V

    .line 1332
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/am/BatteryStatsService;->noteServiceStopRunning(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1333
    iput-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 1334
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v1, :cond_63

    .line 1335
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1336
    :try_start_4d
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    .line 1337
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1336
    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 1338
    monitor-exit v1

    goto :goto_63

    :catchall_60
    move-exception p0

    monitor-exit v1
    :try_end_62
    .catchall {:try_start_4d .. :try_end_62} :catchall_60

    throw p0

    .line 1340
    :cond_63
    :goto_63
    iput-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 1342
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZZ)V

    return-void
.end method

.method public stopServiceTokenLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z
    .registers 8

    .line 1489
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_2b

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopServiceToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " startId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    :cond_2b
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActiveServices;->findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_da

    if-ltz p3, :cond_8c

    .line 1497
    invoke-virtual {p1, p3, p2, p2}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 1499
    :cond_3e
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_53

    .line 1500
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 1501
    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord$StartItem;->removeUriPermissionsLocked()V

    if-ne v1, v0, :cond_3e

    .line 1508
    :cond_53
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    move-result v0

    if-eq v0, p3, :cond_5a

    return p2

    .line 1512
    :cond_5a
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8c

    const-string v0, "ActivityManager"

    .line 1513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopServiceToken startId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is last, but have "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    .line 1514
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " remaining args"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1513
    invoke-static {v0, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    :cond_8c
    iget-object p3, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1520
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1521
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x63

    const/4 v3, 0x2

    .line 1522
    invoke-static {v2, p3, v0, v1, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)V

    .line 1524
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v2, p3, v0, v1}, Lcom/android/server/am/BatteryStatsService;->noteServiceStopRunning(ILjava/lang/String;Ljava/lang/String;)V

    .line 1525
    iput-boolean p2, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 1526
    iget-object p3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz p3, :cond_cc

    .line 1527
    iget-object p3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object p3, p3, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 1528
    :try_start_b6
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v1

    .line 1529
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1528
    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 1530
    monitor-exit p3

    goto :goto_cc

    :catchall_c9
    move-exception p0

    monitor-exit p3
    :try_end_cb
    .catchall {:try_start_b6 .. :try_end_cb} :catchall_c9

    throw p0

    .line 1532
    :cond_cc
    :goto_cc
    iput-boolean p2, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 1533
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1534
    invoke-virtual {p0, p1, p2, p2, p2}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZZ)V

    .line 1535
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :cond_da
    return p2
.end method

.method public systemServicesReady()V
    .registers 3

    .line 628
    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices;->getAppStateTracker()Lcom/android/server/AppStateTracker;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;-><init>(Lcom/android/server/am/ActiveServices;)V

    invoke-interface {v0, v1}, Lcom/android/server/AppStateTracker;->addBackgroundRestrictedAppListener(Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;)V

    .line 629
    const-class v0, Landroid/appwidget/AppWidgetManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mAppWidgetManagerInternal:Landroid/appwidget/AppWidgetManagerInternal;

    .line 630
    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices;->setAllowListWhileInUsePermissionInFgs()V

    return-void
.end method

.method public unbindFinishedLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Z)V
    .registers 10

    .line 3397
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-eqz p1, :cond_8e

    .line 3400
    :try_start_6
    new-instance p3, Landroid/content/Intent$FilterComparison;

    invoke-direct {p3, p2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 3402
    iget-object p2, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {p2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/IntentBindRecord;

    .line 3403
    sget-boolean p3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    const/4 v2, 0x0

    if-eqz p3, :cond_49

    const-string p3, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unbindFinished in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": apps="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_3e

    .line 3405
    iget-object v4, p2, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    goto :goto_3f

    :cond_3e
    move v4, v2

    :goto_3f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3403
    invoke-static {p3, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3407
    :cond_49
    iget-object p3, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p2, :cond_85

    .line 3409
    iget-object v3, p2, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_83

    if-nez p3, :cond_83

    .line 3413
    iget-object v3, p2, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, v4

    :goto_63
    if-ltz v3, :cond_7e

    .line 3414
    iget-object v5, p2, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/AppBindRecord;

    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_7b

    .line 3423
    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v5
    :try_end_77
    .catchall {:try_start_6 .. :try_end_77} :catchall_89

    if-eqz v5, :cond_7b

    move v3, v4

    goto :goto_7f

    :cond_7b
    add-int/lit8 v3, v3, -0x1

    goto :goto_63

    :cond_7e
    move v3, v2

    .line 3432
    :goto_7f
    :try_start_7f
    invoke-virtual {p0, p1, p2, v3, v4}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z
    :try_end_82
    .catch Landroid/os/TransactionTooLargeException; {:try_start_7f .. :try_end_82} :catch_85
    .catchall {:try_start_7f .. :try_end_82} :catchall_89

    goto :goto_85

    .line 3439
    :cond_83
    :try_start_83
    iput-boolean v4, p2, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    .line 3443
    :catch_85
    :cond_85
    :goto_85
    invoke-virtual {p0, p1, p3, v2, v2}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZZ)V
    :try_end_88
    .catchall {:try_start_83 .. :try_end_88} :catchall_89

    goto :goto_8e

    :catchall_89
    move-exception p0

    .line 3446
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3447
    throw p0

    .line 3446
    :cond_8e
    :goto_8e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public unbindServiceLocked(Landroid/app/IServiceConnection;)Z
    .registers 24

    move-object/from16 v0, p0

    .line 3340
    invoke-interface/range {p1 .. p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3341
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    const-string v3, "ActivityManager"

    if-eqz v2, :cond_21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unbindService: conn="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3342
    :cond_21
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v4, 0x0

    if-nez v2, :cond_45

    .line 3344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unbind failed: could not find connection for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3345
    invoke-interface/range {p1 .. p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3344
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 3349
    :cond_45
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 3351
    :cond_49
    :goto_49
    :try_start_49
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-lez v7, :cond_123

    .line 3352
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ConnectionRecord;

    const/4 v9, 0x0

    .line 3353
    invoke-virtual {v0, v7, v9, v9, v8}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;Z)V

    .line 3354
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_85

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v7, :cond_85

    .line 3356
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Connection "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " not removed for binder "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3357
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3360
    :cond_85
    iget-object v10, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v10, v10, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v10, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_49

    .line 3363
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v11

    if-eqz v11, :cond_bd

    .line 3364
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v11

    iget v12, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string/jumbo v13, "unbindService"

    const-wide/16 v14, 0x7d0

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/server/am/FreecessController;->protectFreezePackage(ILjava/lang/String;J)Z

    .line 3365
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v16

    iget-object v11, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v11, v11, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v12, v11, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v11, v11, Lcom/android/server/am/ServiceRecord;->userId:I

    const-string/jumbo v19, "unbindService"

    const-wide/16 v20, 0x7d0

    move-object/from16 v17, v12

    move/from16 v18, v11

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/am/FreecessController;->protectFreezePackage(Ljava/lang/String;ILjava/lang/String;J)Z

    .line 3367
    :cond_bd
    sget-boolean v11, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz v11, :cond_104

    iget-object v11, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v11, v11, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    if-eqz v11, :cond_104

    iget-object v11, v11, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    if-eqz v11, :cond_104

    .line 3368
    invoke-virtual {v11}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v11

    if-eqz v11, :cond_104

    .line 3369
    iget-object v11, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v11, v11, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_e4

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v11, :cond_e4

    iget-object v11, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v11, v11, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_e5

    :cond_e4
    move-object v11, v9

    .line 3370
    :goto_e5
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v12

    iget-object v13, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v14, v13, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v14, v14, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v13, v13, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v13, v13, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 3371
    invoke-virtual {v13}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    iget-object v15, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v15, v15, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget v15, v15, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 3370
    invoke-virtual {v12, v14, v13, v15, v11}, Lcom/android/server/am/MARsPolicyManager;->onSpecialUnBindServiceActions(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 3374
    :cond_104
    iget-object v11, v10, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3375
    iget-boolean v12, v11, Lcom/android/server/am/ProcessServiceRecord;->mAllowlistManager:Z

    if-eqz v12, :cond_10d

    .line 3376
    invoke-virtual {v0, v11}, Lcom/android/server/am/ActiveServices;->updateAllowlistManagerLocked(Lcom/android/server/am/ProcessServiceRecord;)V

    .line 3379
    :cond_10d
    iget v7, v7, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v12, 0x8000000

    and-int/2addr v7, v12

    if-eqz v7, :cond_11c

    .line 3380
    invoke-virtual {v11, v8}, Lcom/android/server/am/ProcessServiceRecord;->setTreatLikeActivity(Z)V

    .line 3381
    iget-object v7, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, v10, v8, v9}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 3383
    :cond_11c
    iget-object v7, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, v10}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    goto/16 :goto_49

    .line 3387
    :cond_123
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "updateOomAdj_unbindService"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V
    :try_end_12b
    .catchall {:try_start_49 .. :try_end_12b} :catchall_12f

    .line 3390
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8

    :catchall_12f
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3391
    throw v0
.end method

.method public final unregisterAppOpCallbackLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 3

    .line 2619
    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2620
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mFgsAppOpCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$AppOpCallback;

    if-eqz v0, :cond_1c

    .line 2622
    invoke-virtual {v0}, Lcom/android/server/am/ActiveServices$AppOpCallback;->unregisterLocked()V

    .line 2623
    invoke-virtual {v0}, Lcom/android/server/am/ActiveServices$AppOpCallback;->isObsoleteLocked()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2624
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mFgsAppOpCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_1c
    return-void
.end method

.method public final unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZLjava/lang/String;)Z
    .registers 10

    const/4 v0, 0x0

    if-nez p3, :cond_c

    .line 4326
    iget-wide v1, p1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    const-wide/16 v3, 0x0

    cmp-long p3, v1, v3

    if-nez p3, :cond_c

    return v0

    .line 4332
    :cond_c
    iget-object p3, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1a

    .line 4333
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq p2, v1, :cond_1d

    .line 4334
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->resetRestartCounter()V

    :cond_1d
    const/4 p2, 0x1

    if-eqz p3, :cond_44

    .line 4337
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    const p3, 0xf42a6

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 4340
    iget v2, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 4341
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    aput-object v0, v1, p2

    const/4 v0, 0x2

    iget-wide v2, p1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x3

    aput-object p4, v1, v0

    .line 4340
    invoke-static {p3, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4345
    :cond_44
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return p2
.end method

.method public final updateAllowlistManagerLocked(Lcom/android/server/am/ProcessServiceRecord;)V
    .registers 4

    const/4 p0, 0x0

    .line 2836
    iput-boolean p0, p1, Lcom/android/server/am/ProcessServiceRecord;->mAllowlistManager:Z

    .line 2837
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    :goto_9
    if-ltz p0, :cond_19

    .line 2838
    invoke-virtual {p1, p0}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v1

    .line 2839
    iget-boolean v1, v1, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    if-eqz v1, :cond_16

    .line 2840
    iput-boolean v0, p1, Lcom/android/server/am/ProcessServiceRecord;->mAllowlistManager:Z

    goto :goto_19

    :cond_16
    add-int/lit8 p0, p0, -0x1

    goto :goto_9

    :cond_19
    :goto_19
    return-void
.end method

.method public updateAppRestrictedAnyInBackgroundLocked(ILjava/lang/String;)V
    .registers 4

    .line 736
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActiveServices;->appRestrictedAnyInBackground(ILjava/lang/String;)Z

    move-result v0

    .line 737
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList;->getUidRecordLOSP(I)Lcom/android/server/am/UidRecord;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 739
    invoke-virtual {p0, p2}, Lcom/android/server/am/UidRecord;->getProcessInPackage(Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 741
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessStateRecord;->setBackgroundRestricted(Z)V

    :cond_19
    return-void
.end method

.method public updateForegroundApps(Lcom/android/server/am/ActiveServices$ServiceMap;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1630
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1631
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    if-eqz v1, :cond_11e

    .line 1634
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v5, :cond_2c

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updating foreground apps for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mUserId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    :cond_2c
    iget-object v5, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    const-wide v7, 0x7fffffffffffffffL

    const/4 v9, 0x0

    move-wide v10, v7

    :goto_3b
    if-ltz v5, :cond_e9

    .line 1637
    iget-object v12, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v12, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 1638
    iget-wide v13, v12, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_63

    .line 1639
    invoke-virtual {v0, v12, v3, v4}, Lcom/android/server/am/ActiveServices;->foregroundAppShownEnoughLocked(Lcom/android/server/am/ActiveServices$ActiveForegroundApp;J)Z

    move-result v13

    if-eqz v13, :cond_5c

    .line 1642
    iget-object v12, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v12, v5}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1643
    iput-boolean v6, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    goto/16 :goto_e5

    .line 1646
    :cond_5c
    iget-wide v13, v12, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    cmp-long v15, v13, v10

    if-gez v15, :cond_63

    move-wide v10, v13

    .line 1650
    :cond_63
    iget-boolean v13, v12, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    if-nez v13, :cond_e5

    .line 1653
    iget v13, v12, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    iget-object v14, v12, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v13, v14}, Lcom/android/server/am/ActiveServices;->isForegroundServiceAllowedInBackgroundRestricted(ILjava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a2

    if-nez v9, :cond_78

    .line 1656
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1658
    :cond_78
    sget-boolean v13, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v13, :cond_9e

    const-string v13, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Adding active: pkg="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v12, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", uid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v12, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    :cond_9e
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e5

    .line 1662
    :cond_a2
    sget-boolean v13, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v13, :cond_cd

    const-string v13, "ActivityManager"

    .line 1663
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bg-restricted app "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v12, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v12, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " exiting top; demoting fg services "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    :cond_cd
    iget-object v13, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    .line 1671
    iget v14, v12, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    iget-object v12, v12, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v14, v12}, Lcom/android/server/am/ActiveServices;->stopAllForegroundServicesLocked(ILjava/lang/String;)V

    .line 1672
    iget-object v12, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    sub-int/2addr v13, v12

    if-le v13, v6, :cond_e5

    sub-int/2addr v5, v13

    add-int/2addr v5, v6

    :cond_e5
    :goto_e5
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_3b

    :cond_e9
    const/4 v0, 0x2

    .line 1683
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    cmp-long v5, v10, v7

    if-gez v5, :cond_11e

    .line 1685
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v5, :cond_10d

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Next update time in: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v3, v10, v3

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    :cond_10d
    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1689
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    add-long/2addr v10, v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v10, v3

    .line 1688
    invoke-virtual {v1, v0, v10, v11}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1692
    :cond_11e
    iget-boolean v0, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    if-nez v0, :cond_127

    .line 1693
    monitor-exit v2
    :try_end_123
    .catchall {:try_start_7 .. :try_end_123} :catchall_12f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_127
    const/4 v0, 0x0

    .line 1695
    :try_start_128
    iput-boolean v0, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 1696
    monitor-exit v2
    :try_end_12b
    .catchall {:try_start_128 .. :try_end_12b} :catchall_12f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_12f
    move-exception v0

    :try_start_130
    monitor-exit v2
    :try_end_131
    .catchall {:try_start_130 .. :try_end_131} :catchall_12f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public updateScreenStateLocked(Z)V
    .registers 17

    move-object v0, p0

    move/from16 v1, p1

    .line 1809
    iget-boolean v2, v0, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    if-eq v2, v1, :cond_94

    .line 1810
    iput-boolean v1, v0, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    if-eqz v1, :cond_94

    .line 1815
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1816
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v3, :cond_1a

    const-string v3, "ActivityManager"

    const-string v4, "Screen turned on"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    :cond_1a
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_22
    if-ltz v3, :cond_94

    .line 1818
    iget-object v5, v0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActiveServices$ServiceMap;

    const/4 v6, 0x0

    .line 1821
    iget-object v7, v5, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    sub-int/2addr v7, v4

    const-wide v10, 0x7fffffffffffffffL

    :goto_39
    const-wide/16 v12, 0x0

    if-ltz v7, :cond_7f

    .line 1822
    iget-object v14, v5, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v14, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 1823
    iget-wide v8, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    cmp-long v8, v8, v12

    if-nez v8, :cond_54

    .line 1824
    iget-boolean v8, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    if-nez v8, :cond_7c

    .line 1825
    iput-boolean v4, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    .line 1826
    iput-wide v1, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    goto :goto_7c

    .line 1829
    :cond_54
    iget-boolean v8, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    if-nez v8, :cond_64

    iget-wide v8, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    iget-wide v12, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartTime:J

    cmp-long v8, v8, v12

    if-nez v8, :cond_64

    .line 1834
    iput-wide v1, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    iput-wide v1, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    .line 1836
    :cond_64
    invoke-virtual {p0, v14, v1, v2}, Lcom/android/server/am/ActiveServices;->foregroundAppShownEnoughLocked(Lcom/android/server/am/ActiveServices$ActiveForegroundApp;J)Z

    move-result v8

    if-eqz v8, :cond_75

    .line 1839
    iget-object v6, v5, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v8, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1840
    iput-boolean v4, v5, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    move v6, v4

    goto :goto_7c

    .line 1843
    :cond_75
    iget-wide v8, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    cmp-long v12, v8, v10

    if-gez v12, :cond_7c

    move-wide v10, v8

    :cond_7c
    :goto_7c
    add-int/lit8 v7, v7, -0x1

    goto :goto_39

    :cond_7f
    if-eqz v6, :cond_85

    .line 1851
    invoke-virtual {p0, v5, v12, v13}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    goto :goto_91

    :cond_85
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v6, v10, v6

    if-gez v6, :cond_91

    .line 1853
    invoke-virtual {p0, v5, v10, v11}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    :cond_91
    :goto_91
    add-int/lit8 v3, v3, -0x1

    goto :goto_22

    :cond_94
    return-void
.end method

.method public updateServiceApplicationInfoLocked(Landroid/content/pm/ApplicationInfo;)V
    .registers 6

    .line 6140
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 6141
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ActiveServices$ServiceMap;

    if-eqz p0, :cond_35

    .line 6143
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    .line 6145
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_18
    if-ltz v0, :cond_35

    .line 6146
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 6147
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 6148
    iput-object p1, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 6149
    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iput-object p1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :cond_32
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    :cond_35
    return-void
.end method

.method public final updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ConnectionRecord;Z)Z
    .registers 13

    const/4 v0, 0x0

    if-eqz p2, :cond_10

    .line 2874
    iget-object p2, p2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object p2, p2, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_10

    .line 2875
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result p2

    if-nez p2, :cond_10

    return v0

    .line 2883
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result p2

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    move v2, v0

    :goto_17
    if-ltz p2, :cond_5b

    if-nez v2, :cond_5b

    .line 2884
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v3

    .line 2885
    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v3

    .line 2886
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_28
    if-ltz v4, :cond_58

    if-nez v2, :cond_58

    .line 2887
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 2888
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v1

    :goto_37
    if-ltz v6, :cond_55

    .line 2889
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ConnectionRecord;

    .line 2890
    iget-object v7, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_52

    iget-object v8, p1, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    if-ne v7, v8, :cond_4a

    goto :goto_52

    .line 2894
    :cond_4a
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v7

    if-eqz v7, :cond_52

    move v2, v1

    goto :goto_55

    :cond_52
    :goto_52
    add-int/lit8 v6, v6, -0x1

    goto :goto_37

    :cond_55
    :goto_55
    add-int/lit8 v4, v4, -0x1

    goto :goto_28

    :cond_58
    add-int/lit8 p2, p2, -0x1

    goto :goto_17

    .line 2901
    :cond_5b
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result p2

    if-eq v2, p2, :cond_6f

    .line 2902
    invoke-virtual {p1, v2}, Lcom/android/server/am/ProcessServiceRecord;->setHasClientActivities(Z)V

    if-eqz p3, :cond_6e

    .line 2904
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    :cond_6e
    return v1

    :cond_6f
    return v0
.end method

.method public updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessServiceRecord;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move-object v3, v1

    .line 2857
    :goto_4
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->numberOfConnections()I

    move-result v4

    if-ge v2, v4, :cond_35

    .line 2858
    invoke-virtual {p1, v2}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionAt(I)Lcom/android/server/am/ConnectionRecord;

    move-result-object v4

    .line 2859
    iget-object v4, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v4, v4, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_32

    .line 2860
    iget-object v5, p1, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    if-ne v4, v5, :cond_1b

    goto :goto_32

    :cond_1b
    if-nez v3, :cond_23

    .line 2863
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    goto :goto_2a

    .line 2864
    :cond_23
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    goto :goto_32

    .line 2867
    :cond_2a
    :goto_2a
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2868
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p0, v4, v1, v0}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    :cond_32
    :goto_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_35
    return-void
.end method

.method public final updateServiceForegroundLocked(Lcom/android/server/am/ProcessServiceRecord;Z)V
    .registers 9

    .line 2824
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ltz v0, :cond_1e

    .line 2825
    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v4

    .line 2826
    iget-boolean v5, v4, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v5, :cond_16

    iget-boolean v5, v4, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v5, :cond_1b

    .line 2828
    :cond_16
    iget v2, v4, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    or-int/2addr v2, v3

    move v3, v2

    move v2, v1

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2831
    :cond_1e
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v0, v2, v3, p2}, Lcom/android/server/am/ActivityManagerService;->updateProcessForegroundLocked(Lcom/android/server/am/ProcessRecord;ZIZ)V

    .line 2832
    invoke-virtual {p1, v2}, Lcom/android/server/am/ProcessServiceRecord;->setHasReportedForegroundServices(Z)V

    return-void
.end method

.method public updateServiceGroupLocked(Landroid/app/IServiceConnection;II)V
    .registers 7

    .line 3304
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3305
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v1, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateServiceGroup: conn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3306
    :cond_1f
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_72

    .line 3311
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_2f
    if-ltz p1, :cond_71

    .line 3312
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    .line 3313
    iget-object v0, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    if-eqz v0, :cond_6e

    .line 3314
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v1, v1, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6e

    .line 3315
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x0

    if-eqz v1, :cond_63

    .line 3316
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    if-lez p2, :cond_58

    .line 3318
    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessServiceRecord;->setConnectionService(Lcom/android/server/am/ServiceRecord;)V

    .line 3319
    invoke-virtual {v1, p2}, Lcom/android/server/am/ProcessServiceRecord;->setConnectionGroup(I)V

    .line 3320
    invoke-virtual {v1, p3}, Lcom/android/server/am/ProcessServiceRecord;->setConnectionImportance(I)V

    goto :goto_6e

    :cond_58
    const/4 v0, 0x0

    .line 3322
    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessServiceRecord;->setConnectionService(Lcom/android/server/am/ServiceRecord;)V

    .line 3323
    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessServiceRecord;->setConnectionGroup(I)V

    .line 3324
    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessServiceRecord;->setConnectionImportance(I)V

    goto :goto_6e

    :cond_63
    if-lez p2, :cond_6a

    .line 3328
    iput p2, v0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    .line 3329
    iput p3, v0, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    goto :goto_6e

    .line 3331
    :cond_6a
    iput v2, v0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    .line 3332
    iput v2, v0, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    :cond_6e
    :goto_6e
    add-int/lit8 p1, p1, -0x1

    goto :goto_2f

    :cond_71
    return-void

    .line 3308
    :cond_72
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not find connection for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3309
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final verifyPackage(Ljava/lang/String;I)Z
    .registers 4

    if-eqz p2, :cond_16

    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_7

    goto :goto_16

    .line 7371
    :cond_7
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    .line 7372
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 7371
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageManagerInternal;->isSameApp(Ljava/lang/String;II)Z

    move-result p0

    return p0

    :cond_16
    :goto_16
    const/4 p0, 0x1

    return p0
.end method

.method public final withinFgsDeferRateLimit(Lcom/android/server/am/ServiceRecord;J)Z
    .registers 9

    .line 2282
    iget-wide v0, p1, Lcom/android/server/am/ServiceRecord;->fgDisplayTime:J

    cmp-long v0, p2, v0

    const-string v1, "ActivityManager"

    const/4 v2, 0x0

    if-gez v0, :cond_27

    .line 2283
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz p0, :cond_26

    .line 2284
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "FGS transition for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " within deferral period, no rate limit applied"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    return v2

    .line 2290
    :cond_27
    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2291
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mFgsDeferralEligible:Landroid/util/SparseLongArray;

    const-wide/16 v3, 0x0

    invoke-virtual {p0, p1, v3, v4}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v3

    .line 2292
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz p0, :cond_54

    cmp-long p0, p2, v3

    if-gez p0, :cond_54

    .line 2294
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FGS transition for uid "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " within rate limit, showing immediately"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    cmp-long p0, p2, v3

    if-gez p0, :cond_59

    const/4 v2, 0x1

    :cond_59
    return v2
.end method
