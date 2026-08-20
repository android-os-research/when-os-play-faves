.class public final Lcom/android/server/pm/BackgroundDexOptService;
.super Ljava/lang/Object;
.source "BackgroundDexOptService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/BackgroundDexOptService$Injector;,
        Lcom/android/server/pm/BackgroundDexOptService$PackagesUpdatedListener;,
        Lcom/android/server/pm/BackgroundDexOptService$Status;
    }
.end annotation


# static fields
.field public static final CANCELLATION_WAIT_CHECK_INTERVAL_MS:J = 0xc8L

.field public static final DAYS_THAT_ARE_CONSIDERED_UNUSED:I = 0xa

.field public static final DEBUG:Z

.field public static final DEFAULT_THRESHOLD_DDCAF_BYTES:J

.field public static final IDLE_OPTIMIZATION_PERIOD:J

.field public static final JOB_IDLE_OPTIMIZE:I = 0x320
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final JOB_POST_BOOT_UPDATE:I = 0x321
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final LOW_THRESHOLD_MULTIPLIER_FOR_DOWNGRADE:I = 0x2

.field public static final LOW_THRESHOLD_PERCENTAGE_FOR_DELETE_ARTIFACT_FILES:I = 0x1

.field public static final LOW_THRESHOLD_PERCENTAGE_FOR_DOWNGRADE:I = 0x5

.field public static final LOW_THRESHOLD_PERCENTAGE_FOR_IDLE_OPTIMIZATION:I = 0x8

.field public static final STATUS_ABORT_BATTERY:I = 0x4

.field public static final STATUS_ABORT_BY_CANCELLATION:I = 0x1

.field public static final STATUS_ABORT_NO_SPACE_LEFT:I = 0x2

.field public static final STATUS_ABORT_THERMAL:I = 0x3

.field public static final STATUS_DEX_OPT_FAILED:I = 0x5

.field public static final STATUS_OK:I = 0x0

.field public static final TAG:Ljava/lang/String; = "BackgroundDexOptService"

.field public static final THERMAL_CUTOFF_DEFAULT:I = 0x2

.field public static sDexoptServiceName:Landroid/content/ComponentName;


# instance fields
.field public mDexOptCancellingThread:Ljava/lang/Thread;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

.field public mDexOptThread:Ljava/lang/Thread;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mDowngradeUnusedAppsThresholdInMillis:J

.field public final mFailedPackageNamesPrimary:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
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

.field public final mFailedPackageNamesSecondary:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
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

.field public mFinishedPostBootUpdate:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

.field public final mLastCancelledPackages:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
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

.field public mLastExecutionDurationIncludingSleepMs:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mLastExecutionDurationMs:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mLastExecutionStartTimeMs:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mLastExecutionStartUptimeMs:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mLastExecutionStatus:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public mPackagesUpdatedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/BackgroundDexOptService$PackagesUpdatedListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mStatsLogger:Lcom/android/server/pm/dex/ArtStatsLogUtils$BackgroundDexoptJobStatsLogger;

.field public mThermalStatusCutoff:I

.field public sIsLargerThan32G:Z


# direct methods
.method public static synthetic $r8$lambda$2x2o5jOFqSwzzf8UndMq3mKznUo(Lcom/android/server/pm/BackgroundDexOptService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/BackgroundDexOptService;->lambda$cancelBackgroundDexoptJob$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$ELonELsatTgdaseDEofEmuJoJXM(Lcom/android/server/pm/BackgroundDexOptService;Lcom/android/server/pm/PackageManagerService;Ljava/util/List;Landroid/app/job/JobParameters;Lcom/android/server/pm/BackgroundDexOptJobService;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/BackgroundDexOptService;->lambda$onStartJob$1(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;Landroid/app/job/JobParameters;Lcom/android/server/pm/BackgroundDexOptJobService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WFSIuiapo06I6TQdJMnXhIb_C-E(Lcom/android/server/pm/BackgroundDexOptService;Lcom/android/server/pm/dex/DexoptOptions;)Ljava/lang/Integer;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/BackgroundDexOptService;->lambda$performDexOptPrimary$2(Lcom/android/server/pm/dex/DexoptOptions;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vuNmAaCST9Mwe0ZxenjW2kTQZIo(Lcom/android/server/pm/BackgroundDexOptService;Lcom/android/server/pm/dex/DexoptOptions;)Ljava/lang/Integer;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/BackgroundDexOptService;->lambda$performDexOptSecondary$3(Lcom/android/server/pm/dex/DexoptOptions;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ycTtqWNgpTEagdZYSyId_EId2fw(Lcom/android/server/pm/BackgroundDexOptService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->cancelDexOptAndWaitForCompletion()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/pm/BackgroundDexOptService;)Lcom/android/server/pm/BackgroundDexOptService$Injector;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mscheduleAJob(Lcom/android/server/pm/BackgroundDexOptService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/BackgroundDexOptService;->scheduleAJob(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    const-string v0, "BackgroundDexOptService"

    const/4 v1, 0x3

    .line 98
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG:Z

    .line 103
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/BackgroundDexOptService;->IDLE_OPTIMIZATION_PERIOD:J

    .line 107
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/pm/BackgroundDexOptJobService;

    .line 108
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    .line 164
    sget-object v0, Landroid/util/DataUnit;->GIGABYTES:Landroid/util/DataUnit;

    const-wide/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/BackgroundDexOptService;->DEFAULT_THRESHOLD_DDCAF_BYTES:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/dex/DexManager;Lcom/android/server/pm/PackageManagerService;)V
    .registers 5

    .line 222
    new-instance v0, Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/pm/BackgroundDexOptService$Injector;-><init>(Landroid/content/Context;Lcom/android/server/pm/dex/DexManager;Lcom/android/server/pm/PackageManagerService;)V

    invoke-direct {p0, v0}, Lcom/android/server/pm/BackgroundDexOptService;-><init>(Lcom/android/server/pm/BackgroundDexOptService$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/BackgroundDexOptService$Injector;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->sIsLargerThan32G:Z

    .line 171
    new-instance v1, Lcom/android/server/pm/dex/ArtStatsLogUtils$BackgroundDexoptJobStatsLogger;

    invoke-direct {v1}, Lcom/android/server/pm/dex/ArtStatsLogUtils$BackgroundDexoptJobStatsLogger;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mStatsLogger:Lcom/android/server/pm/dex/ArtStatsLogUtils$BackgroundDexoptJobStatsLogger;

    .line 174
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    .line 189
    iput v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStatus:I

    .line 197
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastCancelledPackages:Landroid/util/ArraySet;

    .line 203
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFailedPackageNamesPrimary:Landroid/util/ArraySet;

    .line 205
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFailedPackageNamesSecondary:Landroid/util/ArraySet;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mPackagesUpdatedListeners:Ljava/util/List;

    const/4 v0, 0x2

    .line 212
    iput v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mThermalStatusCutoff:I

    .line 227
    iput-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    .line 228
    invoke-virtual {p1}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getDexOptHelper()Lcom/android/server/pm/DexOptHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    .line 229
    const-class v0, Lcom/android/server/pm/BackgroundDexOptService;

    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 230
    invoke-virtual {p1}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getDowngradeUnusedAppsThresholdInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDowngradeUnusedAppsThresholdInMillis:J

    return-void
.end method

.method public static getService()Lcom/android/server/pm/BackgroundDexOptService;
    .registers 1

    .line 299
    const-class v0, Lcom/android/server/pm/BackgroundDexOptService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BackgroundDexOptService;

    return-object v0
.end method

.method private synthetic lambda$cancelBackgroundDexoptJob$0()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 344
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->cancelDexOptAndWaitForCompletion()V

    return-void
.end method

.method private synthetic lambda$onStartJob$1(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;Landroid/app/job/JobParameters;Lcom/android/server/pm/BackgroundDexOptJobService;)V
    .registers 13

    const-string v0, " completed:"

    const-string v1, "dexopt finishing. jobid:"

    .line 411
    new-instance v2, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v3, "BackgroundDexOptService"

    const-wide/32 v4, 0x40000

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;J)V

    const-string/jumbo v4, "jobExecution"

    .line 413
    invoke-virtual {v2, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x321

    const/4 v6, 0x1

    .line 417
    :try_start_18
    invoke-virtual {p3}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v7

    if-ne v7, v5, :cond_20

    move v7, v6

    goto :goto_21

    :cond_20
    move v7, v4

    .line 416
    :goto_21
    invoke-virtual {p0, p1, p2, v7}, Lcom/android/server/pm/BackgroundDexOptService;->runIdleOptimization(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;Z)Z

    move-result p1
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_5e

    .line 419
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 420
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {p3}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 420
    invoke-static {v3, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {p0, p3}, Lcom/android/server/pm/BackgroundDexOptService;->writeStatsLog(Landroid/app/job/JobParameters;)V

    .line 426
    invoke-virtual {p3}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p2

    if-ne p2, v5, :cond_57

    if-eqz p1, :cond_52

    .line 428
    invoke-virtual {p0, p3}, Lcom/android/server/pm/BackgroundDexOptService;->markPostBootUpdateCompleted(Landroid/app/job/JobParameters;)V

    :cond_52
    xor-int/2addr p1, v6

    .line 431
    invoke-virtual {p4, p3, p1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    goto :goto_5a

    .line 434
    :cond_57
    invoke-virtual {p4, p3, v6}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 436
    :goto_5a
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->markDexOptCompleted()V

    return-void

    :catchall_5e
    move-exception p1

    .line 419
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 420
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {p3}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 420
    invoke-static {v3, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {p0, p3}, Lcom/android/server/pm/BackgroundDexOptService;->writeStatsLog(Landroid/app/job/JobParameters;)V

    .line 426
    invoke-virtual {p3}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p2

    if-ne p2, v5, :cond_8b

    .line 431
    invoke-virtual {p4, p3, v6}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    goto :goto_8e

    .line 434
    :cond_8b
    invoke-virtual {p4, p3, v6}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 436
    :goto_8e
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->markDexOptCompleted()V

    .line 437
    throw p1
.end method

.method private synthetic lambda$performDexOptPrimary$2(Lcom/android/server/pm/dex/DexoptOptions;)Ljava/lang/Integer;
    .registers 2

    .line 1183
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/DexOptHelper;->performDexOptWithStatus(Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$performDexOptSecondary$3(Lcom/android/server/pm/dex/DexoptOptions;)Ljava/lang/Integer;
    .registers 2

    .line 1192
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/DexOptHelper;->performDexOpt(Lcom/android/server/pm/dex/DexoptOptions;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, -0x1

    :goto_b
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final abortIdleOptimizations(J)I
    .registers 8

    .line 1251
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->isCancelling()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 1258
    :cond_8
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getCurrentThermalStatus()I

    move-result v0

    .line 1259
    sget-boolean v1, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG:Z

    const-string v2, "BackgroundDexOptService"

    if-eqz v1, :cond_28

    .line 1260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thermal throttling status during bgdexopt: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    :cond_28
    iget v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mThermalStatusCutoff:I

    const/4 v3, 0x4

    if-lt v0, v1, :cond_55

    .line 1264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Aborted by thermal: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 1266
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    .line 1267
    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->isRunningBgDexOptCTS(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_53

    const-string v0, "Keep running optimizations"

    .line 1268
    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    goto :goto_55

    :cond_53
    const/4 p0, 0x3

    return p0

    .line 1274
    :cond_55
    :goto_55
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->isBatteryLevelLow()Z

    move-result v0

    if-eqz v0, :cond_5e

    return v3

    .line 1278
    :cond_5e
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getDataDirUsableSpace()J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-gez p0, :cond_7e

    .line 1281
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Aborting background dex opt job due to low storage: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    :cond_7e
    const/4 p0, 0x0

    return p0
.end method

.method public addPackagesUpdatedListener(Lcom/android/server/pm/BackgroundDexOptService$PackagesUpdatedListener;)V
    .registers 3

    .line 349
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 350
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mPackagesUpdatedListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public cancelBackgroundDexoptJob()V
    .registers 2

    .line 343
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->enforceRootOrShell()V

    .line 344
    new-instance v0, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/BackgroundDexOptService;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final cancelDexOptAndWaitForCompletion()V
    .registers 5

    .line 460
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 461
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    if-nez v1, :cond_9

    .line 462
    monitor-exit v0

    return-void

    .line 464
    :cond_9
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptCancellingThread:Ljava/lang/Thread;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 466
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->waitForDexOptThreadToFinishLocked()V

    .line 469
    monitor-exit v0

    return-void

    .line 471
    :cond_18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptCancellingThread:Ljava/lang/Thread;
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_43

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 475
    :try_start_21
    invoke-virtual {p0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->controlDexOptBlockingLocked(Z)V

    .line 476
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->waitForDexOptThreadToFinishLocked()V
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_35

    .line 479
    :try_start_27
    iput-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptCancellingThread:Ljava/lang/Thread;

    .line 480
    iput-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    .line 481
    invoke-virtual {p0, v2}, Lcom/android/server/pm/BackgroundDexOptService;->controlDexOptBlockingLocked(Z)V

    .line 482
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 484
    monitor-exit v0

    return-void

    :catchall_35
    move-exception v1

    .line 479
    iput-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptCancellingThread:Ljava/lang/Thread;

    .line 480
    iput-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    .line 481
    invoke-virtual {p0, v2}, Lcom/android/server/pm/BackgroundDexOptService;->controlDexOptBlockingLocked(Z)V

    .line 482
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 483
    throw v1

    :catchall_43
    move-exception p0

    .line 484
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_27 .. :try_end_45} :catchall_43

    throw p0
.end method

.method public final checkLowStorageThreashold(J)Z
    .registers 5

    .line 1299
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getDataDirUsableSpace()J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-gez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final controlDexOptBlockingLocked(Z)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 532
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    .line 533
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/DexOptHelper;->controlDexOptBlocking(Z)V

    return-void
.end method

.method public final convertPackageDexOptimizerStatusToInternal(I)I
    .registers 4

    const/4 p0, -0x1

    const/4 v0, 0x5

    if-eq p1, p0, :cond_2b

    if-eqz p1, :cond_29

    const/4 p0, 0x1

    if-eq p1, p0, :cond_29

    const/4 v1, 0x2

    if-eq p1, v1, :cond_28

    .line 1242
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unkknown error code from PackageDexOptimizer:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    const-string v1, "BackgroundDexOptService"

    invoke-static {v1, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    :cond_28
    return p0

    :cond_29
    const/4 p0, 0x0

    return p0

    :cond_2b
    return v0
.end method

.method public final deleteArtifactFiles(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/util/Set;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/Computer;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1109
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsused Packages "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-static {v0, p3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BackgroundDexOptService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_ac

    const/4 p0, 0x4

    const-string v1, "!@Start delete compilation artifacts"

    .line 1111
    invoke-static {p0, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 1112
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2c
    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 1113
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1120
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/am/MARsPolicyManager;->isImportantAppFromMarsTarget(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_64

    .line 1121
    invoke-virtual {p1, p2, v2}, Lcom/android/server/pm/PackageManagerService;->deleteOatArtifactsOfPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_2c

    .line 1123
    invoke-interface {p3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delete failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 1127
    :cond_64
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@Skip delete compilation artifacts for important package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    goto :goto_2c

    .line 1132
    :cond_7c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "!@Finish delete compilation artifacts for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1132
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 1134
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Deleted unused artifact files: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ac
    return-void
.end method

.method public final downgradePackage(Lcom/android/server/pm/Computer;Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZ)I
    .registers 15

    .line 1061
    sget-boolean v0, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Downgrading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackgroundDexOptService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->isCancelling()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 p0, 0x2

    return p0

    :cond_22
    const/16 v0, 0xb

    const/16 v1, 0x24

    if-nez p5, :cond_2a

    const/16 v1, 0x224

    .line 1072
    :cond_2a
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/BackgroundDexOptService;->getPackageSize(Lcom/android/server/pm/Computer;Ljava/lang/String;)J

    move-result-wide v4

    const/4 p5, 0x0

    .line 1076
    iget-boolean v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->sIsLargerThan32G:Z

    if-eqz v2, :cond_3f

    if-eqz p4, :cond_3a

    .line 1079
    invoke-virtual {p0, p3, v0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->performDexOptPrimary(Ljava/lang/String;II)I

    move-result p5

    goto :goto_5d

    .line 1081
    :cond_3a
    invoke-virtual {p0, p3, v0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->performDexOptSecondary(Ljava/lang/String;II)I

    move-result p5

    goto :goto_5d

    :cond_3f
    if-nez p4, :cond_4f

    const-string p4, "android"

    .line 1084
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4a

    goto :goto_4f

    .line 1095
    :cond_4a
    invoke-virtual {p0, p3, v0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->performDexOptSecondary(Ljava/lang/String;II)I

    move-result p5

    goto :goto_5d

    .line 1087
    :cond_4f
    :goto_4f
    invoke-virtual {p2, p1, p3}, Lcom/android/server/pm/PackageManagerService;->canHaveOatDir(Lcom/android/server/pm/Computer;Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_59

    .line 1090
    invoke-virtual {p2, p1, p3}, Lcom/android/server/pm/PackageManagerService;->deleteOatArtifactsOfPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;)J

    goto :goto_5d

    .line 1092
    :cond_59
    invoke-virtual {p0, p3, v0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->performDexOptPrimary(Ljava/lang/String;II)I

    move-result p5

    :goto_5d
    const/4 p1, 0x1

    if-ne p5, p1, :cond_6f

    .line 1099
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p1

    const/16 v2, 0x80

    .line 1101
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/BackgroundDexOptService;->getPackageSize(Lcom/android/server/pm/Computer;Ljava/lang/String;)J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v3, p3

    .line 1100
    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;JJZ)V

    :cond_6f
    return p5
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5

    .line 263
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->isBackgroundDexOptDisabled()Z

    move-result v0

    const-string v1, "enabled:"

    .line 264
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    xor-int/lit8 v1, v0, 0x1

    .line 265
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    if-eqz v0, :cond_13

    return-void

    .line 269
    :cond_13
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_16
    const-string/jumbo v1, "mDexOptThread:"

    .line 270
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 271
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v1, "mDexOptCancellingThread:"

    .line 272
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 273
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptCancellingThread:Ljava/lang/Thread;

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v1, "mFinishedPostBootUpdate:"

    .line 274
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 275
    iget-boolean v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFinishedPostBootUpdate:Z

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v1, "mLastExecutionStatus:"

    .line 276
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 277
    iget v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStatus:I

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v1, "mLastExecutionStartTimeMs:"

    .line 278
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 279
    iget-wide v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStartTimeMs:J

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    const-string/jumbo v1, "mLastExecutionDurationIncludingSleepMs:"

    .line 280
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 281
    iget-wide v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionDurationIncludingSleepMs:J

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    const-string/jumbo v1, "mLastExecutionStartUptimeMs:"

    .line 282
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 283
    iget-wide v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStartUptimeMs:J

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    const-string/jumbo v1, "mLastExecutionDurationMs:"

    .line 284
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 285
    iget-wide v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionDurationMs:J

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    const-string/jumbo v1, "now:"

    .line 286
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 287
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    const-string/jumbo v1, "mLastCancelledPackages:"

    .line 288
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ","

    .line 289
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastCancelledPackages:Landroid/util/ArraySet;

    invoke-static {v1, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "mFailedPackageNamesPrimary:"

    .line 290
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ","

    .line 291
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFailedPackageNamesPrimary:Landroid/util/ArraySet;

    invoke-static {v1, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "mFailedPackageNamesSecondary:"

    .line 292
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ","

    .line 293
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFailedPackageNamesSecondary:Landroid/util/ArraySet;

    invoke-static {v1, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 294
    monitor-exit v0

    return-void

    :catchall_b0
    move-exception p0

    monitor-exit v0
    :try_end_b2
    .catchall {:try_start_16 .. :try_end_b2} :catchall_b0

    throw p0
.end method

.method public final enforceRootOrShell()V
    .registers 2

    .line 524
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    if-eqz p0, :cond_13

    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_b

    goto :goto_13

    .line 526
    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Should be shell or root user"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    :goto_13
    return-void
.end method

.method public final getDirectorySize(Ljava/io/File;)J
    .registers 8

    .line 643
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 645
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_20

    .line 646
    array-length v2, p1

    if-nez v2, :cond_12

    goto :goto_20

    .line 650
    :cond_12
    array-length v2, p1

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_25

    aget-object v4, p1, v3

    .line 651
    invoke-virtual {p0, v4}, Lcom/android/server/pm/BackgroundDexOptService;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_20
    :goto_20
    return-wide v0

    .line 654
    :cond_21
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    :cond_25
    return-wide v0
.end method

.method public final getIPackageManager()Landroid/content/pm/IPackageManager;
    .registers 1

    .line 993
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    return-object p0
.end method

.method public final getLowStorageThreshold()J
    .registers 5

    .line 547
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getDataDirStorageLowBytes()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_13

    const-string p0, "BackgroundDexOptService"

    const-string v2, "Invalid low storage threshold"

    .line 549
    invoke-static {p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return-wide v0
.end method

.method public final getLowStorageThreshold(I)J
    .registers 4

    .line 558
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getDataDirStorageLowBytes(I)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_13

    const-string v0, "BackgroundDexOptService"

    const-string v1, "Invalid low storage threshold"

    .line 560
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return-wide p0
.end method

.method public final getPackageSize(Lcom/android/server/pm/Computer;Ljava/lang/String;)J
    .registers 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 661
    invoke-interface {p1, p2, v0, v1, v2}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_58

    .line 663
    iget-object p2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p2, :cond_58

    .line 664
    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {p2, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p2

    invoke-interface {p2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p2

    .line 665
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 666
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    .line 668
    :cond_23
    invoke-virtual {p0, p2}, Lcom/android/server/pm/BackgroundDexOptService;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 669
    iget-object p2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_58

    .line 670
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length p2, p1

    move v3, v2

    :goto_38
    if-ge v3, p2, :cond_58

    aget-object v4, p1, v3

    new-array v5, v2, [Ljava/lang/String;

    .line 671
    invoke-static {v4, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    invoke-interface {v4}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v4

    .line 672
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_50

    .line 673
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 675
    :cond_50
    invoke-virtual {p0, v4}, Lcom/android/server/pm/BackgroundDexOptService;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    :cond_58
    return-wide v0
.end method

.method public final idleOptimizePackages(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;JJJJZ)I
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JJJJZ)I"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v10, p11

    .line 690
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 691
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 693
    iget-object v2, v9, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    .line 694
    invoke-virtual {v2}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->isBatteryFullyCharged(Landroid/content/Context;)Z

    move-result v2

    const/4 v13, 0x4

    if-nez v2, :cond_6c

    .line 695
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isCharging: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v3}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->isCharging()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isPostBootUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    if-nez v10, :cond_6c

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Aborted by not full charge. batteryLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    invoke-static {}, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->getBatteryLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " abortCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    invoke-static {}, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->getAbortCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 699
    invoke-static {v13, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 702
    invoke-static {}, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->toggleBatteryLevelPolicy()V

    return v13

    .line 708
    :cond_6c
    :try_start_6c
    iget-object v2, v9, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v2}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->supportSecondaryDex()Z

    move-result v2

    if-eqz v2, :cond_81

    .line 711
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/BackgroundDexOptService;->reconcileSecondaryDexFiles()I

    move-result v3
    :try_end_78
    .catchall {:try_start_6c .. :try_end_78} :catchall_33c

    if-eqz v3, :cond_81

    .line 881
    :goto_7a
    invoke-virtual {v9, v11}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPinService(Landroid/util/ArraySet;)V

    .line 885
    invoke-virtual {v9, v11}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPackagesUpdated(Landroid/util/ArraySet;)V

    return v3

    .line 718
    :cond_81
    :try_start_81
    iget-boolean v3, v9, Lcom/android/server/pm/BackgroundDexOptService;->sIsLargerThan32G:Z
    :try_end_83
    .catchall {:try_start_81 .. :try_end_83} :catchall_33c

    const-string v14, "/"

    const/4 v7, 0x0

    const-string v8, "BackgroundDexOptService"

    if-eqz v3, :cond_20c

    if-eqz v10, :cond_b5

    .line 720
    :try_start_8c
    iget-object v2, v9, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v2}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getDataDirUsableSpace()J

    move-result-wide v2

    cmp-long v4, v2, p3

    if-gez v4, :cond_b2

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Aborting background dex opt job due to low storage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catchall {:try_start_8c .. :try_end_aa} :catchall_33c

    const/4 v0, 0x5

    .line 881
    :goto_ab
    invoke-virtual {v9, v11}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPinService(Landroid/util/ArraySet;)V

    .line 885
    invoke-virtual {v9, v11}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPackagesUpdated(Landroid/util/ArraySet;)V

    return v0

    :cond_b2
    move-object v13, v14

    goto/16 :goto_2bf

    :cond_b5
    move-wide/from16 v4, p5

    .line 727
    :try_start_b7
    invoke-virtual {v9, v4, v5}, Lcom/android/server/pm/BackgroundDexOptService;->checkLowStorageThreashold(J)Z

    move-result v4

    move-wide/from16 v5, p7

    .line 729
    invoke-virtual {v9, v5, v6}, Lcom/android/server/pm/BackgroundDexOptService;->checkLowStorageThreashold(J)Z

    move-result v5

    move-object/from16 v17, v14

    move-wide/from16 v13, p9

    .line 731
    invoke-virtual {v9, v13, v14}, Lcom/android/server/pm/BackgroundDexOptService;->checkLowStorageThreashold(J)Z

    move-result v6

    .line 733
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "shouldNotIdleOptimization "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", shouldDowngrade "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", shouldDeleteArtifactFiles "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_10e

    .line 738
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v6

    .line 739
    sget-object v13, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    move/from16 p5, v4

    const-wide/16 v3, 0x20

    .line 740
    invoke-virtual {v13, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-interface {v6, v3, v4}, Lcom/android/server/pm/Computer;->getUnusedPackages(J)Ljava/util/Set;

    move-result-object v3

    .line 741
    invoke-virtual {v9, v0, v6, v3}, Lcom/android/server/pm/BackgroundDexOptService;->deleteArtifactFiles(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Computer;Ljava/util/Set;)V

    .line 742
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 743
    invoke-interface {v4, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto :goto_111

    :cond_10e
    move/from16 p5, v4

    move-object v4, v1

    :goto_111
    if-eqz v5, :cond_205

    const-string v1, "!@Start downgrade package"

    const/4 v3, 0x4

    .line 747
    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 748
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 749
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 750
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v5

    .line 751
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_129
    :goto_129
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Ljava/lang/String;

    const-wide/16 v14, -0x1

    .line 752
    invoke-virtual {v9, v14, v15}, Lcom/android/server/pm/BackgroundDexOptService;->abortIdleOptimizations(J)I

    move-result v13
    :try_end_13c
    .catchall {:try_start_b7 .. :try_end_13c} :catchall_33c

    if-eqz v13, :cond_145

    .line 881
    invoke-virtual {v9, v11}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPinService(Landroid/util/ArraySet;)V

    .line 885
    invoke-virtual {v9, v11}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPackagesUpdated(Landroid/util/ArraySet;)V

    return v13

    .line 760
    :cond_145
    :try_start_145
    invoke-virtual {v1, v12}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v13

    if-eqz v13, :cond_187

    .line 762
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v14

    .line 763
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const-string v3, "/apex/"

    .line 764
    invoke-virtual {v14, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_187

    .line 765
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Disabled pkg (disabledPkgCodePath: "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", disabledPkgName: "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ")"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-virtual {v0, v13, v14}, Lcom/android/server/pm/PackageManagerService;->deleteOatArtifactsOfDisabledPackage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_187
    const-string/jumbo v3, "speed"

    .line 773
    invoke-virtual {v0, v12}, Lcom/android/server/pm/PackageManagerService;->getCompilerFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_195

    goto :goto_129

    :cond_195
    const/4 v3, 0x1

    move-object/from16 p2, p0

    move-object/from16 p3, v5

    move-object/from16 p4, p1

    move-object/from16 p5, v12

    move/from16 p6, v3

    move/from16 p7, p11

    .line 777
    invoke-virtual/range {p2 .. p7}, Lcom/android/server/pm/BackgroundDexOptService;->downgradePackage(Lcom/android/server/pm/Computer;Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZ)I

    move-result v13

    const/4 v3, 0x1

    if-ne v13, v3, :cond_1ac

    .line 780
    invoke-virtual {v11, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 782
    :cond_1ac
    invoke-virtual {v9, v13}, Lcom/android/server/pm/BackgroundDexOptService;->convertPackageDexOptimizerStatusToInternal(I)I

    move-result v13
    :try_end_1b0
    .catchall {:try_start_145 .. :try_end_1b0} :catchall_33c

    if-eqz v13, :cond_1b9

    .line 881
    invoke-virtual {v9, v11}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPinService(Landroid/util/ArraySet;)V

    .line 885
    invoke-virtual {v9, v11}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPackagesUpdated(Landroid/util/ArraySet;)V

    return v13

    :cond_1b9
    if-eqz v2, :cond_129

    const/4 v13, 0x0

    move-object/from16 p2, p0

    move-object/from16 p3, v5

    move-object/from16 p4, p1

    move-object/from16 p5, v12

    move/from16 p6, v13

    move/from16 p7, p11

    .line 788
    :try_start_1c8
    invoke-virtual/range {p2 .. p7}, Lcom/android/server/pm/BackgroundDexOptService;->downgradePackage(Lcom/android/server/pm/Computer;Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZ)I

    move-result v12

    .line 790
    invoke-virtual {v9, v12}, Lcom/android/server/pm/BackgroundDexOptService;->convertPackageDexOptimizerStatusToInternal(I)I

    move-result v12
    :try_end_1d0
    .catchall {:try_start_1c8 .. :try_end_1d0} :catchall_33c

    if-eqz v12, :cond_129

    .line 881
    invoke-virtual {v9, v11}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPinService(Landroid/util/ArraySet;)V

    .line 885
    invoke-virtual {v9, v11}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPackagesUpdated(Landroid/util/ArraySet;)V

    return v12

    .line 796
    :cond_1d9
    :try_start_1d9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!@Finish downgrade package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v13, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    .line 796
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_1fe
    .catchall {:try_start_1d9 .. :try_end_1fe} :catchall_33c

    .line 881
    invoke-virtual {v9, v11}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPinService(Landroid/util/ArraySet;)V

    .line 885
    invoke-virtual {v9, v11}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPackagesUpdated(Landroid/util/ArraySet;)V

    return v7

    :cond_205
    move-object/from16 v13, v17

    if-eqz p5, :cond_2c0

    const/4 v0, 0x2

    goto/16 :goto_ab

    :cond_20c
    move-object v13, v14

    const-wide/16 v4, 0x2

    mul-long v4, v4, p3

    .line 813
    :try_start_211
    invoke-virtual {v9, v4, v5}, Lcom/android/server/pm/BackgroundDexOptService;->shouldDowngrade(J)Z

    move-result v4

    .line 814
    sget-boolean v5, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG:Z

    if-eqz v5, :cond_22d

    .line 815
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Should Downgrade "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22d
    if-eqz v4, :cond_2bf

    .line 818
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v4

    .line 819
    iget-wide v14, v9, Lcom/android/server/pm/BackgroundDexOptService;->mDowngradeUnusedAppsThresholdInMillis:J

    .line 820
    invoke-interface {v4, v14, v15}, Lcom/android/server/pm/Computer;->getUnusedPackages(J)Ljava/util/Set;

    move-result-object v6

    if-eqz v5, :cond_255

    .line 822
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unsused Packages "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ","

    invoke-static {v14, v6}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_255
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2bf

    .line 826
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_25f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2b5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-wide/16 v14, -0x1

    .line 827
    invoke-virtual {v9, v14, v15}, Lcom/android/server/pm/BackgroundDexOptService;->abortIdleOptimizations(J)I

    move-result v16
    :try_end_271
    .catchall {:try_start_211 .. :try_end_271} :catchall_33c

    if-eqz v16, :cond_27a

    .line 881
    invoke-virtual {v9, v11}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPinService(Landroid/util/ArraySet;)V

    .line 885
    invoke-virtual {v9, v11}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPackagesUpdated(Landroid/util/ArraySet;)V

    return v16

    :cond_27a
    const/16 v16, 0x1

    move-object/from16 p5, p0

    move-object/from16 p6, v4

    move-object/from16 p7, p1

    move-object/from16 p8, v8

    move/from16 p9, v16

    move/from16 p10, p11

    .line 832
    :try_start_288
    invoke-virtual/range {p5 .. p10}, Lcom/android/server/pm/BackgroundDexOptService;->downgradePackage(Lcom/android/server/pm/Computer;Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZ)I

    move-result v3

    const/4 v14, 0x1

    if-ne v3, v14, :cond_292

    .line 835
    invoke-virtual {v11, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 837
    :cond_292
    invoke-virtual {v9, v3}, Lcom/android/server/pm/BackgroundDexOptService;->convertPackageDexOptimizerStatusToInternal(I)I

    move-result v3

    if-eqz v3, :cond_29a

    goto/16 :goto_7a

    :cond_29a
    if-eqz v2, :cond_25f

    const/4 v3, 0x0

    move-object/from16 p5, p0

    move-object/from16 p6, v4

    move-object/from16 p7, p1

    move-object/from16 p8, v8

    move/from16 p9, v3

    move/from16 p10, p11

    .line 843
    invoke-virtual/range {p5 .. p10}, Lcom/android/server/pm/BackgroundDexOptService;->downgradePackage(Lcom/android/server/pm/Computer;Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZ)I

    move-result v3

    .line 845
    invoke-virtual {v9, v3}, Lcom/android/server/pm/BackgroundDexOptService;->convertPackageDexOptimizerStatusToInternal(I)I

    move-result v3

    if-eqz v3, :cond_25f

    goto/16 :goto_7a

    .line 852
    :cond_2b5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 853
    invoke-interface {v2, v6}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-object v4, v2

    goto :goto_2c0

    :cond_2bf
    :goto_2bf
    move-object v4, v1

    .line 859
    :cond_2c0
    :goto_2c0
    invoke-static {v7}, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->setTemperaturePolicy(Z)V

    if-nez v10, :cond_2d0

    const-string v1, "!@Start bg-dexopt for idleOptimization for primary"

    const/4 v2, 0x4

    .line 861
    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 863
    invoke-virtual {v9, v0, v4}, Lcom/android/server/pm/BackgroundDexOptService;->reorderPkgListBasedOnPriority(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    goto :goto_2d6

    :cond_2d0
    const-string v1, "!@Start postBootUpdate"

    const/4 v2, 0x4

    .line 866
    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :goto_2d6
    move-object v14, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-wide/from16 v4, p3

    move-object v6, v11

    move-object v7, v12

    move/from16 v8, p11

    .line 868
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/BackgroundDexOptService;->optimizePackages(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;JLandroid/util/ArraySet;Landroid/util/ArraySet;Z)I

    move-result v0

    if-nez v10, :cond_321

    .line 871
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@Finish bg-dexopt - dexopted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", skipped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    .line 871
    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    goto/16 :goto_ab

    .line 875
    :cond_321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@Finish postBootUpdate dexopted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_33a
    .catchall {:try_start_288 .. :try_end_33a} :catchall_33c

    goto/16 :goto_ab

    :catchall_33c
    move-exception v0

    .line 881
    invoke-virtual {v9, v11}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPinService(Landroid/util/ArraySet;)V

    .line 885
    invoke-virtual {v9, v11}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPackagesUpdated(Landroid/util/ArraySet;)V

    .line 886
    throw v0
.end method

.method public final isCancelling()Z
    .registers 2

    .line 1309
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1310
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptCancellingThread:Ljava/lang/Thread;

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 1311
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final logStatus(I)V
    .registers 4

    const-string p0, "BackgroundDexOptService"

    if-eqz p1, :cond_46

    const/4 v0, 0x1

    if-eq p1, v0, :cond_40

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3a

    const/4 v0, 0x3

    if-eq p1, v0, :cond_34

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2e

    const/4 v0, 0x5

    if-eq p1, v0, :cond_28

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Idle optimizations ended with unexpected code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    :cond_28
    const-string p1, "Idle optimizations failed from dexopt."

    .line 585
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    :cond_2e
    const-string p1, "Idle optimizations aborted by low battery."

    .line 582
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    :cond_34
    const-string p1, "Idle optimizations aborted by thermal throttling."

    .line 579
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    :cond_3a
    const-string p1, "Idle optimizations aborted because of space constraints."

    .line 573
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    :cond_40
    const-string p1, "Idle optimizations aborted by cancellation."

    .line 576
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    :cond_46
    const-string p1, "Idle optimizations completed."

    .line 570
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4b
    return-void
.end method

.method public final markDexOptCompleted()V
    .registers 5

    .line 504
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 505
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_15

    const/4 v1, 0x0

    .line 510
    iput-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    .line 512
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 513
    monitor-exit v0

    return-void

    .line 506
    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only mDexOptThread can mark completion, mDexOptThread:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " current:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_3a
    move-exception p0

    .line 513
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public final markPostBootUpdateCompleted(Landroid/app/job/JobParameters;)V
    .registers 4

    .line 1315
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    const/16 v0, 0x321

    if-eq p1, v0, :cond_9

    return-void

    .line 1318
    :cond_9
    iget-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1319
    :try_start_c
    iget-boolean v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFinishedPostBootUpdate:Z

    if-nez v1, :cond_13

    const/4 v1, 0x1

    .line 1320
    iput-boolean v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFinishedPostBootUpdate:Z

    .line 1322
    :cond_13
    monitor-exit p1
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_1e

    .line 1324
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->cancel(I)V

    return-void

    :catchall_1e
    move-exception p0

    .line 1322
    :try_start_1f
    monitor-exit p1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public notifyPackageChanged(Ljava/lang/String;)V
    .registers 4

    .line 369
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 370
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFailedPackageNamesPrimary:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 371
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFailedPackageNamesSecondary:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 372
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final notifyPackagesUpdated(Landroid/util/ArraySet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1337
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1338
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mPackagesUpdatedListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/BackgroundDexOptService$PackagesUpdatedListener;

    .line 1339
    invoke-interface {v1, p1}, Lcom/android/server/pm/BackgroundDexOptService$PackagesUpdatedListener;->onPackagesUpdated(Landroid/util/ArraySet;)V

    goto :goto_9

    .line 1341
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public final notifyPinService(Landroid/util/ArraySet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1328
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getPinnerService()Lcom/android/server/PinnerService;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 1330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pinning optimized code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackgroundDexOptService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1331
    invoke-virtual {p0, p1, v0}, Lcom/android/server/PinnerService;->update(Landroid/util/ArraySet;Z)V

    :cond_22
    return-void
.end method

.method public onStartJob(Lcom/android/server/pm/BackgroundDexOptJobService;Landroid/app/job/JobParameters;)Z
    .registers 14

    const-string v0, "BackgroundDexOptService"

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartJob:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual {p2}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x321

    if-ne v0, v3, :cond_27

    move v0, v1

    goto :goto_28

    :cond_27
    move v0, v2

    .line 383
    :goto_28
    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v3}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    move-result-object v6

    .line 384
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->isStorageLow()Z

    move-result v3

    if-eqz v3, :cond_3f

    const-string p1, "BackgroundDexOptService"

    const-string v0, "Low storage, skipping this run"

    .line 385
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-virtual {p0, p2}, Lcom/android/server/pm/BackgroundDexOptService;->markPostBootUpdateCompleted(Landroid/app/job/JobParameters;)V

    return v2

    .line 390
    :cond_3f
    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/DexOptHelper;->getOptimizablePackages(Lcom/android/server/pm/Computer;)Ljava/util/List;

    move-result-object v7

    .line 391
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5a

    const-string p1, "BackgroundDexOptService"

    const-string v0, "No packages to optimize"

    .line 392
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {p0, p2}, Lcom/android/server/pm/BackgroundDexOptService;->markPostBootUpdateCompleted(Landroid/app/job/JobParameters;)V

    return v2

    .line 397
    :cond_5a
    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v3}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getDexOptThermalCutoff()I

    move-result v3

    iput v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mThermalStatusCutoff:I

    .line 399
    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 400
    :try_start_65
    iget-object v4, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    if-eqz v4, :cond_71

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_71

    .line 402
    monitor-exit v3

    return v2

    :cond_71
    if-nez v0, :cond_79

    .line 404
    iget-boolean v4, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFinishedPostBootUpdate:Z

    if-nez v4, :cond_79

    .line 406
    monitor-exit v3

    return v2

    .line 408
    :cond_79
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BgDexOpt_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_8a

    const-string v0, "PostBoot"

    goto :goto_8c

    :cond_8a
    const-string v0, "Idle"

    .line 409
    :goto_8c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda3;

    move-object v4, v10

    move-object v5, p0

    move-object v8, p2

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/BackgroundDexOptService;Lcom/android/server/pm/PackageManagerService;Ljava/util/List;Landroid/app/job/JobParameters;Lcom/android/server/pm/BackgroundDexOptJobService;)V

    .line 408
    invoke-virtual {v2, v0, v10}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->createAndStartThread(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/BackgroundDexOptService;->resetStatesForNewDexOptRunLocked(Ljava/lang/Thread;)V

    .line 439
    monitor-exit v3

    return v1

    :catchall_a5
    move-exception p0

    monitor-exit v3
    :try_end_a7
    .catchall {:try_start_65 .. :try_end_a7} :catchall_a5

    throw p0
.end method

.method public onStopJob(Lcom/android/server/pm/BackgroundDexOptJobService;Landroid/app/job/JobParameters;)Z
    .registers 4

    .line 445
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onStopJob:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BackgroundDexOptService"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    new-instance p2, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/BackgroundDexOptService;)V

    const-string p0, "DexOptCancel"

    invoke-virtual {p1, p0, p2}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->createAndStartThread(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    const/4 p0, 0x1

    return p0
.end method

.method public final optimizePackage(Ljava/lang/String;ZZ)I
    .registers 6

    if-eqz p3, :cond_4

    const/4 v0, 0x2

    goto :goto_6

    :cond_4
    const/16 v0, 0x9

    :goto_6
    const/4 v1, 0x4

    if-nez p3, :cond_b

    const/16 v1, 0x205

    :cond_b
    if-nez p2, :cond_1b

    const-string p2, "android"

    .line 1172
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    goto :goto_1b

    .line 1175
    :cond_16
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->performDexOptSecondary(Ljava/lang/String;II)I

    move-result p0

    return p0

    .line 1173
    :cond_1b
    :goto_1b
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->performDexOptPrimary(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public final optimizePackages(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;JLandroid/util/ArraySet;Landroid/util/ArraySet;Z)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .line 999
    iget-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {p1}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->supportSecondaryDex()Z

    move-result p1

    .line 1006
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    :cond_c
    :goto_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1008
    invoke-static {}, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->getTemperaturePolicy()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1009
    invoke-static {}, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->exceedSurfaceTemperatureThreshold()Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 p0, 0x3

    return p0

    .line 1014
    :cond_26
    invoke-virtual {p0, p3, p4}, Lcom/android/server/pm/BackgroundDexOptService;->abortIdleOptimizations(J)I

    move-result v3

    if-eqz v3, :cond_2d

    return v3

    :cond_2d
    const/4 v3, 0x1

    .line 1021
    invoke-virtual {p0, v2, v3, p7}, Lcom/android/server/pm/BackgroundDexOptService;->optimizePackage(Ljava/lang/String;ZZ)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_36

    return v3

    :cond_36
    const/4 v6, -0x1

    if-ne v4, v3, :cond_3d

    .line 1026
    invoke-virtual {p5, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_47

    :cond_3d
    if-ne v4, v6, :cond_44

    .line 1028
    invoke-virtual {p0, v4}, Lcom/android/server/pm/BackgroundDexOptService;->convertPackageDexOptimizerStatusToInternal(I)I

    move-result v1

    goto :goto_47

    .line 1030
    :cond_44
    invoke-virtual {p6, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_47
    if-nez p1, :cond_4a

    goto :goto_c

    .line 1039
    :cond_4a
    invoke-virtual {p0, v2, v0, p7}, Lcom/android/server/pm/BackgroundDexOptService;->optimizePackage(Ljava/lang/String;ZZ)I

    move-result v2

    if-ne v2, v5, :cond_51

    return v3

    :cond_51
    if-ne v2, v6, :cond_c

    .line 1044
    invoke-virtual {p0, v2}, Lcom/android/server/pm/BackgroundDexOptService;->convertPackageDexOptimizerStatusToInternal(I)I

    move-result v1

    goto :goto_c

    :cond_58
    return v1
.end method

.method public final performDexOptPrimary(Ljava/lang/String;II)I
    .registers 5

    .line 1181
    new-instance v0, Lcom/android/server/pm/dex/DexoptOptions;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;II)V

    .line 1182
    new-instance p2, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v0}, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/BackgroundDexOptService;Lcom/android/server/pm/dex/DexoptOptions;)V

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/pm/BackgroundDexOptService;->trackPerformDexOpt(Ljava/lang/String;ZLjava/util/function/Supplier;)I

    move-result p0

    return p0
.end method

.method public final performDexOptSecondary(Ljava/lang/String;II)I
    .registers 5

    .line 1188
    new-instance v0, Lcom/android/server/pm/dex/DexoptOptions;

    or-int/lit8 p3, p3, 0x8

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;II)V

    .line 1190
    new-instance p2, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, v0}, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/BackgroundDexOptService;Lcom/android/server/pm/dex/DexoptOptions;)V

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/pm/BackgroundDexOptService;->trackPerformDexOpt(Ljava/lang/String;ZLjava/util/function/Supplier;)I

    move-result p0

    return p0
.end method

.method public final reconcileSecondaryDexFiles()I
    .registers 4

    .line 1142
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/dex/DexManager;->getAllPackagesWithSecondaryDexFiles()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1143
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->isCancelling()Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 p0, 0x1

    return p0

    .line 1146
    :cond_22
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v2}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/pm/dex/DexManager;->reconcileSecondaryDexFiles(Ljava/lang/String;)V

    goto :goto_e

    :cond_2c
    const/4 p0, 0x0

    return p0
.end method

.method public removePackagesUpdatedListener(Lcom/android/server/pm/BackgroundDexOptService$PackagesUpdatedListener;)V
    .registers 3

    .line 356
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mPackagesUpdatedListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 358
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final reorderPkgListBasedOnPriority(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 904
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 905
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p1

    const-string v1, "BackgroundDexOptService"

    const-string v2, "Reordering packages based on priority"

    .line 907
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    invoke-static {}, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->getBatteryLevel()I

    move-result v2

    const-string v3, ","

    const-string v4, ") "

    const/16 v5, 0x50

    if-gt v2, v5, :cond_84

    const/4 p0, 0x4

    const-string p2, "Not fully charged. Optimize top-priority packages only"

    .line 911
    invoke-static {p0, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 912
    invoke-static {}, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->initSurfaceTemperature()V

    const/4 p2, 0x1

    .line 913
    invoke-static {p2}, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->setTemperaturePolicy(Z)V

    .line 914
    sget-object p2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x3

    .line 915
    invoke-virtual {p2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    invoke-interface {p1, v5, v6}, Lcom/android/server/pm/Computer;->getTopPriorityPackages(J)Ljava/util/List;

    move-result-object p1

    .line 917
    invoke-static {}, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->toggleBatteryLevelPolicy()V

    .line 919
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 921
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Target Packages (size : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    invoke-static {v3, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 921
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 924
    sget-boolean p0, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG:Z

    if-eqz p0, :cond_83

    .line 925
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Top Priority Packages(size : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    invoke-static {v3, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 925
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_83
    return-object v0

    .line 933
    :cond_84
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0xa

    .line 934
    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    invoke-interface {p1, v5, v6}, Lcom/android/server/pm/Computer;->getUnusedPackages(J)Ljava/util/Set;

    move-result-object p1

    .line 937
    new-instance v6, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    .line 938
    invoke-virtual {v6, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 941
    :try_start_9d
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    invoke-virtual {v6}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2
    :try_end_b0
    .catch Landroid/os/RemoteException; {:try_start_9d .. :try_end_b0} :catch_b1

    goto :goto_b5

    :catch_b1
    move-exception p0

    .line 943
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 945
    :goto_b5
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    if-eqz v2, :cond_de

    .line 947
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c0
    :goto_c0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_de

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 948
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {p2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c0

    .line 949
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c0

    .line 955
    :cond_de
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 956
    invoke-interface {v2, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 959
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 960
    invoke-interface {p1, p0}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 961
    invoke-interface {v2, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 962
    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 965
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 966
    invoke-interface {v2, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 969
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 970
    invoke-interface {p0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 971
    invoke-interface {p0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 973
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 974
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 975
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 977
    sget-boolean v5, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG:Z

    if-eqz v5, :cond_19c

    .line 978
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Optimizable Packages(size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    invoke-static {v3, p2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 978
    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recently used Packages(size : "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    invoke-static {v3, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 980
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Executable Packages(size : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    invoke-static {v3, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 982
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Remaining Packages(size : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    invoke-static {v3, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 984
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19c
    return-object v0
.end method

.method public final resetStatesForNewDexOptRunLocked(Ljava/lang/Thread;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 518
    iput-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    .line 519
    iget-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastCancelledPackages:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    const/4 p1, 0x0

    .line 520
    invoke-virtual {p0, p1}, Lcom/android/server/pm/BackgroundDexOptService;->controlDexOptBlockingLocked(Z)V

    return-void
.end method

.method public runBackgroundDexoptJob(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 314
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->enforceRootOrShell()V

    .line 315
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 317
    :try_start_7
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_36

    .line 319
    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->waitForDexOptThreadToFinishLocked()V

    .line 320
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/BackgroundDexOptService;->resetStatesForNewDexOptRunLocked(Ljava/lang/Thread;)V

    .line 321
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_33

    .line 322
    :try_start_15
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v2}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getPackageManagerService()Lcom/android/server/pm/PackageManagerService;

    move-result-object v2

    if-nez p1, :cond_27

    .line 325
    iget-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/server/pm/DexOptHelper;->getOptimizablePackages(Lcom/android/server/pm/Computer;)Ljava/util/List;

    move-result-object p1

    :cond_27
    const/4 v3, 0x0

    .line 329
    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/pm/BackgroundDexOptService;->runIdleOptimization(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;Z)Z

    move-result p1
    :try_end_2c
    .catchall {:try_start_15 .. :try_end_2c} :catchall_36

    .line 331
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 332
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->markDexOptCompleted()V

    return p1

    :catchall_33
    move-exception p1

    .line 321
    :try_start_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    :try_start_35
    throw p1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception p1

    .line 331
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 332
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->markDexOptCompleted()V

    .line 333
    throw p1
.end method

.method public final runIdleOptimization(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;Z)Z
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    move-object v0, p0

    .line 599
    iget-object v1, v0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 600
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStartTimeMs:J

    const-wide/16 v2, -0x1

    .line 601
    iput-wide v2, v0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionDurationIncludingSleepMs:J

    .line 602
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStartUptimeMs:J

    .line 603
    iput-wide v2, v0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionDurationMs:J

    .line 604
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_7a

    .line 607
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->getLowStorageThreshold()J

    move-result-wide v4

    .line 608
    iget-boolean v1, v0, Lcom/android/server/pm/BackgroundDexOptService;->sIsLargerThan32G:Z

    const/4 v13, 0x1

    const/4 v14, 0x5

    if-eqz v1, :cond_44

    const/16 v1, 0x8

    .line 609
    invoke-virtual {p0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->getLowStorageThreshold(I)J

    move-result-wide v6

    .line 611
    invoke-virtual {p0, v14}, Lcom/android/server/pm/BackgroundDexOptService;->getLowStorageThreshold(I)J

    move-result-wide v8

    .line 613
    invoke-virtual {p0, v13}, Lcom/android/server/pm/BackgroundDexOptService;->getLowStorageThreshold(I)J

    move-result-wide v10

    if-eqz p3, :cond_37

    .line 616
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    move-wide v4, v1

    goto :goto_38

    :cond_37
    move-wide v4, v2

    :goto_38
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v12, p3

    .line 621
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/pm/BackgroundDexOptService;->idleOptimizePackages(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;JJJJZ)I

    move-result v1

    goto :goto_55

    :cond_44
    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v12, p3

    .line 625
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/pm/BackgroundDexOptService;->idleOptimizePackages(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;JJJJZ)I

    move-result v1

    .line 629
    :goto_55
    invoke-virtual {p0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->logStatus(I)V

    .line 630
    iget-object v2, v0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 631
    :try_start_5b
    iput v1, v0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStatus:I

    .line 633
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStartTimeMs:J

    sub-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionDurationIncludingSleepMs:J

    .line 634
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStartUptimeMs:J

    sub-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionDurationMs:J

    .line 635
    monitor-exit v2

    if-eqz v1, :cond_76

    if-ne v1, v14, :cond_75

    goto :goto_76

    :cond_75
    const/4 v13, 0x0

    :cond_76
    :goto_76
    return v13

    :catchall_77
    move-exception v0

    monitor-exit v2
    :try_end_79
    .catchall {:try_start_5b .. :try_end_79} :catchall_77

    throw v0

    :catchall_7a
    move-exception v0

    .line 604
    :try_start_7b
    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw v0
.end method

.method public final scheduleAJob(I)V
    .registers 5

    .line 537
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object p0

    .line 538
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    sget-object v1, Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    invoke-direct {v0, p1, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v1, 0x1

    .line 539
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    const/16 v2, 0x320

    if-ne p1, v2, :cond_1f

    .line 541
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    sget-wide v1, Lcom/android/server/pm/BackgroundDexOptService;->IDLE_OPTIMIZATION_PERIOD:J

    invoke-virtual {p1, v1, v2}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    .line 543
    :cond_1f
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method

.method public final shouldDowngrade(J)Z
    .registers 5

    .line 1290
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getDataDirUsableSpace()J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-gez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public systemReady()V
    .registers 5

    .line 235
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->isBackgroundDexOptDisabled()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 240
    :cond_9
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getTotalInternalStorage()J

    move-result-wide v0

    .line 241
    sget-wide v2, Lcom/android/server/pm/BackgroundDexOptService;->DEFAULT_THRESHOLD_DDCAF_BYTES:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_18

    const/4 v0, 0x1

    .line 242
    iput-boolean v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->sIsLargerThan32G:Z

    .line 246
    :cond_18
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mInjector:Lcom/android/server/pm/BackgroundDexOptService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/BackgroundDexOptService$1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/BackgroundDexOptService$1;-><init>(Lcom/android/server/pm/BackgroundDexOptService;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {p0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final trackPerformDexOpt(Ljava/lang/String;ZLjava/util/function/Supplier;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1210
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_8

    .line 1212
    :try_start_5
    iget-object p2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFailedPackageNamesPrimary:Landroid/util/ArraySet;

    goto :goto_a

    :cond_8
    iget-object p2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mFailedPackageNamesSecondary:Landroid/util/ArraySet;

    .line 1213
    :goto_a
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 p0, 0x0

    .line 1215
    monitor-exit v0

    return p0

    .line 1217
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_3d

    .line 1218
    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_2c

    .line 1220
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1221
    :try_start_24
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1222
    monitor-exit v0

    goto :goto_3c

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_29

    throw p0

    :cond_2c
    const/4 p2, 0x2

    if-ne p3, p2, :cond_3c

    .line 1224
    iget-object p2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1225
    :try_start_32
    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastCancelledPackages:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1226
    monitor-exit p2

    goto :goto_3c

    :catchall_39
    move-exception p0

    monitor-exit p2
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_39

    throw p0

    :cond_3c
    :goto_3c
    return p3

    :catchall_3d
    move-exception p0

    .line 1217
    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p0
.end method

.method public final waitForDexOptThreadToFinishLocked()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 489
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v1, "BackgroundDexOptService"

    const-wide/32 v2, 0x40000

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;J)V

    const-string/jumbo v2, "waitForDexOptThreadToFinishLocked"

    .line 490
    invoke-virtual {v0, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 493
    :goto_10
    :try_start_10
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDexOptThread:Ljava/lang/Thread;

    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 494
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_21} :catch_22

    goto :goto_10

    :catch_22
    const-string p0, "Interrupted while waiting for dexopt thread"

    .line 497
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 500
    :cond_2e
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final writeStatsLog(Landroid/app/job/JobParameters;)V
    .registers 10

    .line 1348
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1349
    :try_start_3
    iget v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionStatus:I

    .line 1350
    iget-wide v4, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionDurationMs:J

    .line 1351
    iget-wide v6, p0, Lcom/android/server/pm/BackgroundDexOptService;->mLastExecutionDurationIncludingSleepMs:J

    .line 1352
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_14

    .line 1354
    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mStatsLogger:Lcom/android/server/pm/dex/ArtStatsLogUtils$BackgroundDexoptJobStatsLogger;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result v3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/dex/ArtStatsLogUtils$BackgroundDexoptJobStatsLogger;->write(IIJJ)V

    return-void

    :catchall_14
    move-exception p0

    .line 1352
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p0
.end method
