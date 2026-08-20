.class public Lcom/android/server/PackageWatchdog;
.super Ljava/lang/Object;
.source "PackageWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PackageWatchdog$BootThreshold;,
        Lcom/android/server/PackageWatchdog$MonitoredPackage;,
        Lcom/android/server/PackageWatchdog$HealthCheckState;,
        Lcom/android/server/PackageWatchdog$ObserverInternal;,
        Lcom/android/server/PackageWatchdog$PackageHealthObserver;,
        Lcom/android/server/PackageWatchdog$PackageHealthObserverImpact;,
        Lcom/android/server/PackageWatchdog$SystemClock;,
        Lcom/android/server/PackageWatchdog$FailureReasons;
    }
.end annotation


# static fields
.field public static final ATTR_DURATION:Ljava/lang/String; = "duration"

.field public static final ATTR_EXPLICIT_HEALTH_CHECK_DURATION:Ljava/lang/String; = "health-check-duration"

.field public static final ATTR_MITIGATION_CALLS:Ljava/lang/String; = "mitigation-calls"

.field public static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final ATTR_PASSED_HEALTH_CHECK:Ljava/lang/String; = "passed-health-check"

.field public static final ATTR_VERSION:Ljava/lang/String; = "version"

.field public static final DB_VERSION:I = 0x1

.field public static final DEFAULT_BOOT_LOOP_TRIGGER_COUNT:I = 0x5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_BOOT_LOOP_TRIGGER_WINDOW_MS:J

.field public static final DEFAULT_DEESCALATION_WINDOW_MS:J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_EXPLICIT_HEALTH_CHECK_ENABLED:Z = true

.field public static final DEFAULT_OBSERVING_DURATION_MS:J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_TRIGGER_FAILURE_COUNT:I = 0x5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_TRIGGER_FAILURE_DURATION_MS:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final FAILURE_REASON_APP_CRASH:I = 0x3

.field public static final FAILURE_REASON_APP_NOT_RESPONDING:I = 0x4

.field public static final FAILURE_REASON_EXPLICIT_HEALTH_CHECK:I = 0x2

.field public static final FAILURE_REASON_NATIVE_CRASH:I = 0x1

.field public static final FAILURE_REASON_UNKNOWN:I = 0x0

.field public static final METADATA_FILE:Ljava/lang/String; = "/metadata/watchdog/mitigation_count.txt"

.field public static final NATIVE_CRASH_POLLING_INTERVAL_MILLIS:J

.field public static final NUMBER_OF_NATIVE_CRASH_POLLS:J = 0xaL

.field public static final PROPERTY_WATCHDOG_EXPLICIT_HEALTH_CHECK_ENABLED:Ljava/lang/String; = "watchdog_explicit_health_check_enabled"

.field public static final PROPERTY_WATCHDOG_TRIGGER_DURATION_MILLIS:Ljava/lang/String; = "watchdog_trigger_failure_duration_millis"

.field public static final PROPERTY_WATCHDOG_TRIGGER_FAILURE_COUNT:Ljava/lang/String; = "watchdog_trigger_failure_count"

.field public static final PROP_BOOT_MITIGATION_COUNT:Ljava/lang/String; = "sys.boot_mitigation_count"

.field public static final PROP_BOOT_MITIGATION_WINDOW_START:Ljava/lang/String; = "sys.boot_mitigation_start"

.field public static final PROP_RESCUE_BOOT_COUNT:Ljava/lang/String; = "sys.rescue_boot_count"

.field public static final PROP_RESCUE_BOOT_START:Ljava/lang/String; = "sys.rescue_boot_start"

.field public static final TAG:Ljava/lang/String; = "PackageWatchdog"

.field public static final TAG_OBSERVER:Ljava/lang/String; = "observer"

.field public static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field public static final TAG_PACKAGE_WATCHDOG:Ljava/lang/String; = "package-watchdog"

.field public static sPackageWatchdog:Lcom/android/server/PackageWatchdog;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "PackageWatchdog.class"
        }
    .end annotation
.end field


# instance fields
.field public final mAllObservers:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageWatchdog$ObserverInternal;",
            ">;"
        }
    .end annotation
.end field

.field public final mBootThreshold:Lcom/android/server/PackageWatchdog$BootThreshold;

.field public final mConnectivityModuleConnector:Landroid/net/ConnectivityModuleConnector;

.field public final mContext:Landroid/content/Context;

.field public final mHealthCheckController:Lcom/android/server/ExplicitHealthCheckController;

.field public mIsHealthCheckEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mIsPackagesReady:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mLongTaskHandler:Landroid/os/Handler;

.field public mNumberOfNativeCrashPollsRemaining:J

.field public final mOnPropertyChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field public final mPolicyFile:Landroid/util/AtomicFile;

.field public mRequestedHealthCheckPackages:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mSaveToFile:Ljava/lang/Runnable;

.field public final mShortTaskHandler:Landroid/os/Handler;

.field public final mSyncRequests:Ljava/lang/Runnable;

.field public mSyncRequired:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mSyncStateWithScheduledReason:Ljava/lang/Runnable;

.field public final mSystemClock:Lcom/android/server/PackageWatchdog$SystemClock;

.field public mTriggerFailureCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mTriggerFailureDurationMs:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mUptimeAtLastStateSync:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0Q0c8nlYY4DeIw299JfADBzIUqU(Lcom/android/server/PackageWatchdog;Lcom/android/server/PackageWatchdog$PackageHealthObserver;Ljava/util/List;Ljava/util/List;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PackageWatchdog;->lambda$startObservingHealth$2(Lcom/android/server/PackageWatchdog$PackageHealthObserver;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AMVDPZHVujkiZUWfDH32AfGzgt8(Lcom/android/server/PackageWatchdog;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog;->onSyncRequestNotified()V

    return-void
.end method

.method public static synthetic $r8$lambda$Mx_Y1uqlcwGnBszKo_ph_MI-E0g(Lcom/android/server/PackageWatchdog;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog;->syncStateWithScheduledReason()V

    return-void
.end method

.method public static synthetic $r8$lambda$NSEK4-OPrpZNi8rdm3PS8RW1Fzk(Lcom/android/server/PackageWatchdog;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/PackageWatchdog;->lambda$registerConnectivityModuleHealthListener$8(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QLAW8O0nzCm0mV3t0kSm44xmdUU(Lcom/android/server/PackageWatchdog;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/PackageWatchdog;->lambda$onPackagesReady$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rm5KotDfsFJeM-DWJC6nNnoVwuA(Lcom/android/server/PackageWatchdog;Lcom/android/server/PackageWatchdog$ObserverInternal;Ljava/util/Set;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageWatchdog;->lambda$onHealthCheckFailed$7(Lcom/android/server/PackageWatchdog$ObserverInternal;Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ub0Cl7quFe7Vn-PJKB0T0AdAjd4(Lcom/android/server/PackageWatchdog;Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/PackageWatchdog;->lambda$unregisterHealthObserver$3(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YtLdQKqgtoBcorg91OTPJeOL6CM(Lcom/android/server/PackageWatchdog;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->lambda$checkAndMitigateNativeCrashes$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$fYKatkyIvh8TGD9Az3K71owtuP4(Lcom/android/server/PackageWatchdog;ILjava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageWatchdog;->lambda$onPackageFailure$4(ILjava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gZWs-TyzQqbLM3R81XiXAOEkCKo(Lcom/android/server/PackageWatchdog;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/PackageWatchdog;->lambda$onPackagesReady$1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q9WB4fFJwYjeA4BAsHoz0Yt6pgw(Lcom/android/server/PackageWatchdog;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->lambda$scheduleCheckAndMitigateNativeCrashes$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$sB1AaENOScp2w-CsmK3S4QVgWFE(Lcom/android/server/PackageWatchdog;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog;->saveToFile()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$w1vQJKtbyU69AvL6u4s8Z-dPb8o(Lcom/android/server/PackageWatchdog;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/PackageWatchdog;->onPropertyChanged(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ynWNQmq6XL4jo-iPgeNDgXz9iyk(Lcom/android/server/PackageWatchdog;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog;->syncRequests()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemClock(Lcom/android/server/PackageWatchdog;)Lcom/android/server/PackageWatchdog$SystemClock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/PackageWatchdog;->mSystemClock:Lcom/android/server/PackageWatchdog$SystemClock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTriggerFailureCount(Lcom/android/server/PackageWatchdog;)I
    .registers 1

    iget p0, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTriggerFailureDurationMs(Lcom/android/server/PackageWatchdog;)I
    .registers 1

    iget p0, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureDurationMs:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetsPackageWatchdog()Lcom/android/server/PackageWatchdog;
    .registers 1

    sget-object v0, Lcom/android/server/PackageWatchdog;->sPackageWatchdog:Lcom/android/server/PackageWatchdog;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 6

    .line 93
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    .line 94
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/PackageWatchdog;->NATIVE_CRASH_POLLING_INTERVAL_MILLIS:J

    .line 116
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    .line 117
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    long-to-int v3, v3

    sput v3, Lcom/android/server/PackageWatchdog;->DEFAULT_TRIGGER_FAILURE_DURATION_MS:I

    .line 122
    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/PackageWatchdog;->DEFAULT_OBSERVING_DURATION_MS:J

    .line 125
    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/server/PackageWatchdog;->DEFAULT_DEESCALATION_WINDOW_MS:J

    const-wide/16 v1, 0xa

    .line 131
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/PackageWatchdog;->DEFAULT_BOOT_LOOP_TRIGGER_WINDOW_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    .line 216
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    .line 217
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "system"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v3, "package-watchdog.xml"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    new-instance v3, Landroid/os/Handler;

    .line 219
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/server/ExplicitHealthCheckController;

    invoke-direct {v5, p1}, Lcom/android/server/ExplicitHealthCheckController;-><init>(Landroid/content/Context;)V

    .line 221
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object v6

    new-instance v7, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda3;

    invoke-direct {v7}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda3;-><init>()V

    move-object v0, p0

    move-object v1, p1

    .line 216
    invoke-direct/range {v0 .. v7}, Lcom/android/server/PackageWatchdog;-><init>(Landroid/content/Context;Landroid/util/AtomicFile;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/server/ExplicitHealthCheckController;Landroid/net/ConnectivityModuleConnector;Lcom/android/server/PackageWatchdog$SystemClock;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AtomicFile;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/server/ExplicitHealthCheckController;Landroid/net/ConnectivityModuleConnector;Lcom/android/server/PackageWatchdog$SystemClock;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    .line 174
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    .line 180
    new-instance v0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/PackageWatchdog;)V

    iput-object v0, p0, Lcom/android/server/PackageWatchdog;->mSyncRequests:Ljava/lang/Runnable;

    .line 181
    new-instance v0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/PackageWatchdog;)V

    iput-object v0, p0, Lcom/android/server/PackageWatchdog;->mSyncStateWithScheduledReason:Ljava/lang/Runnable;

    .line 182
    new-instance v0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/PackageWatchdog;)V

    iput-object v0, p0, Lcom/android/server/PackageWatchdog;->mSaveToFile:Ljava/lang/Runnable;

    .line 185
    new-instance v0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/PackageWatchdog;)V

    iput-object v0, p0, Lcom/android/server/PackageWatchdog;->mOnPropertyChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 189
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageWatchdog;->mRequestedHealthCheckPackages:Ljava/util/Set;

    const/4 v0, 0x1

    .line 194
    iput-boolean v0, p0, Lcom/android/server/PackageWatchdog;->mIsHealthCheckEnabled:Z

    .line 196
    sget v0, Lcom/android/server/PackageWatchdog;->DEFAULT_TRIGGER_FAILURE_DURATION_MS:I

    iput v0, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureDurationMs:I

    const/4 v0, 0x5

    .line 198
    iput v0, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureCount:I

    const/4 v1, 0x0

    .line 205
    iput-boolean v1, p0, Lcom/android/server/PackageWatchdog;->mSyncRequired:Z

    .line 232
    iput-object p1, p0, Lcom/android/server/PackageWatchdog;->mContext:Landroid/content/Context;

    .line 233
    iput-object p2, p0, Lcom/android/server/PackageWatchdog;->mPolicyFile:Landroid/util/AtomicFile;

    .line 234
    iput-object p3, p0, Lcom/android/server/PackageWatchdog;->mShortTaskHandler:Landroid/os/Handler;

    .line 235
    iput-object p4, p0, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    .line 236
    iput-object p5, p0, Lcom/android/server/PackageWatchdog;->mHealthCheckController:Lcom/android/server/ExplicitHealthCheckController;

    .line 237
    iput-object p6, p0, Lcom/android/server/PackageWatchdog;->mConnectivityModuleConnector:Landroid/net/ConnectivityModuleConnector;

    .line 238
    iput-object p7, p0, Lcom/android/server/PackageWatchdog;->mSystemClock:Lcom/android/server/PackageWatchdog$SystemClock;

    const-wide/16 p1, 0xa

    .line 239
    iput-wide p1, p0, Lcom/android/server/PackageWatchdog;->mNumberOfNativeCrashPollsRemaining:J

    .line 240
    new-instance p1, Lcom/android/server/PackageWatchdog$BootThreshold;

    sget-wide p2, Lcom/android/server/PackageWatchdog;->DEFAULT_BOOT_LOOP_TRIGGER_WINDOW_MS:J

    invoke-direct {p1, p0, v0, p2, p3}, Lcom/android/server/PackageWatchdog$BootThreshold;-><init>(Lcom/android/server/PackageWatchdog;IJ)V

    iput-object p1, p0, Lcom/android/server/PackageWatchdog;->mBootThreshold:Lcom/android/server/PackageWatchdog$BootThreshold;

    .line 242
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog;->loadFromFile()V

    .line 243
    sput-object p0, Lcom/android/server/PackageWatchdog;->sPackageWatchdog:Lcom/android/server/PackageWatchdog;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;
    .registers 3

    .line 248
    const-class v0, Lcom/android/server/PackageWatchdog;

    monitor-enter v0

    .line 249
    :try_start_3
    sget-object v1, Lcom/android/server/PackageWatchdog;->sPackageWatchdog:Lcom/android/server/PackageWatchdog;

    if-nez v1, :cond_c

    .line 250
    new-instance v1, Lcom/android/server/PackageWatchdog;

    invoke-direct {v1, p0}, Lcom/android/server/PackageWatchdog;-><init>(Landroid/content/Context;)V

    .line 252
    :cond_c
    sget-object p0, Lcom/android/server/PackageWatchdog;->sPackageWatchdog:Lcom/android/server/PackageWatchdog;

    monitor-exit v0

    return-object p0

    :catchall_10
    move-exception p0

    .line 253
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method private synthetic lambda$checkAndMitigateNativeCrashes$5()V
    .registers 1

    .line 560
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog;->checkAndMitigateNativeCrashes()V

    return-void
.end method

.method private synthetic lambda$onHealthCheckFailed$7(Lcom/android/server/PackageWatchdog$ObserverInternal;Ljava/util/Set;)V
    .registers 8

    .line 916
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 917
    :try_start_3
    iget-object p1, p1, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    if-eqz p1, :cond_3d

    .line 919
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 920
    :cond_b
    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 921
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    invoke-static {v1}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->-$$Nest$mgetName(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/PackageWatchdog;->getVersionedPackage(Ljava/lang/String;)Landroid/content/pm/VersionedPackage;

    move-result-object v1

    if-eqz v1, :cond_b

    const-string v2, "PackageWatchdog"

    .line 923
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Explicit health check failed for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 925
    invoke-interface {p1, v1, v2, v3}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->execute(Landroid/content/pm/VersionedPackage;II)Z

    goto :goto_b

    .line 930
    :cond_3d
    monitor-exit v0

    return-void

    :catchall_3f
    move-exception p0

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method private synthetic lambda$onPackageFailure$4(ILjava/util/List;)V
    .registers 15

    .line 398
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 399
    :try_start_3
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 400
    monitor-exit v0

    return-void

    :cond_d
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_17

    const/4 v3, 0x2

    if-ne p1, v3, :cond_15

    goto :goto_17

    :cond_15
    move v3, v1

    goto :goto_18

    :cond_17
    :goto_17
    move v3, v2

    :goto_18
    if-eqz v3, :cond_1f

    .line 405
    invoke-virtual {p0, p2, p1}, Lcom/android/server/PackageWatchdog;->handleFailureImmediately(Ljava/util/List;I)V

    goto/16 :goto_82

    :cond_1f
    move v3, v1

    .line 407
    :goto_20
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_82

    .line 408
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/VersionedPackage;

    const v5, 0x7fffffff

    const/4 v6, 0x0

    move v8, v1

    move-object v7, v6

    .line 415
    :goto_32
    iget-object v9, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v8, v9, :cond_6f

    .line 416
    iget-object v9, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 417
    iget-object v10, v9, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    if-eqz v10, :cond_6c

    .line 420
    invoke-virtual {v4}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 419
    invoke-virtual {v9, v11}, Lcom/android/server/PackageWatchdog$ObserverInternal;->onPackageFailureLocked(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6c

    .line 422
    invoke-virtual {v4}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 421
    invoke-virtual {v9, v11}, Lcom/android/server/PackageWatchdog$ObserverInternal;->getMonitoredPackage(Ljava/lang/String;)Lcom/android/server/PackageWatchdog$MonitoredPackage;

    move-result-object v9

    if-eqz v9, :cond_60

    .line 425
    invoke-virtual {v9}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getMitigationCountLocked()I

    move-result v11

    add-int/2addr v11, v2

    goto :goto_61

    :cond_60
    move v11, v2

    .line 427
    :goto_61
    invoke-interface {v10, v4, p1, v11}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->onHealthCheckFailed(Landroid/content/pm/VersionedPackage;II)I

    move-result v11

    if-eqz v11, :cond_6c

    if-ge v11, v5, :cond_6c

    move-object v7, v9

    move-object v6, v10

    move v5, v11

    :cond_6c
    add-int/lit8 v8, v8, 0x1

    goto :goto_32

    :cond_6f
    if-eqz v6, :cond_7f

    if-eqz v7, :cond_7b

    .line 442
    invoke-virtual {v7}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->noteMitigationCallLocked()V

    .line 444
    invoke-virtual {v7}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getMitigationCountLocked()I

    move-result v5

    goto :goto_7c

    :cond_7b
    move v5, v2

    .line 446
    :goto_7c
    invoke-interface {v6, v4, p1, v5}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->execute(Landroid/content/pm/VersionedPackage;II)Z

    :cond_7f
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 451
    :cond_82
    :goto_82
    monitor-exit v0

    return-void

    :catchall_84
    move-exception p0

    monitor-exit v0
    :try_end_86
    .catchall {:try_start_3 .. :try_end_86} :catchall_84

    throw p0
.end method

.method private synthetic lambda$onPackagesReady$0(Ljava/lang/String;)V
    .registers 2

    .line 263
    invoke-virtual {p0, p1}, Lcom/android/server/PackageWatchdog;->onHealthCheckPassed(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onPackagesReady$1(Ljava/util/List;)V
    .registers 2

    .line 264
    invoke-virtual {p0, p1}, Lcom/android/server/PackageWatchdog;->onSupportedPackages(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$registerConnectivityModuleHealthListener$8(Ljava/lang/String;)V
    .registers 3

    .line 1055
    invoke-virtual {p0, p1}, Lcom/android/server/PackageWatchdog;->getVersionedPackage(Ljava/lang/String;)Landroid/content/pm/VersionedPackage;

    move-result-object p1

    if-nez p1, :cond_e

    const-string p0, "PackageWatchdog"

    const-string p1, "NetworkStack failed but could not find its package"

    .line 1057
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1060
    :cond_e
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x2

    .line 1061
    invoke-virtual {p0, p1, v0}, Lcom/android/server/PackageWatchdog;->onPackageFailure(Ljava/util/List;I)V

    return-void
.end method

.method private synthetic lambda$scheduleCheckAndMitigateNativeCrashes$6()V
    .registers 1

    .line 574
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog;->checkAndMitigateNativeCrashes()V

    return-void
.end method

.method private synthetic lambda$startObservingHealth$2(Lcom/android/server/PackageWatchdog$PackageHealthObserver;Ljava/util/List;Ljava/util/List;)V
    .registers 9

    const-string/jumbo v0, "observing new packages"

    .line 343
    invoke-virtual {p0, v0}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 346
    :try_start_9
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageWatchdog$ObserverInternal;

    if-nez v1, :cond_47

    const-string v1, "PackageWatchdog"

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " started monitoring health of packages "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object p2, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 351
    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Lcom/android/server/PackageWatchdog$ObserverInternal;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 350
    invoke-virtual {p2, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_67

    :cond_47
    const-string v2, "PackageWatchdog"

    .line 353
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " added the following packages to monitor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-virtual {v1, p3}, Lcom/android/server/PackageWatchdog$ObserverInternal;->updatePackagesLocked(Ljava/util/List;)V

    .line 357
    :goto_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_9 .. :try_end_68} :catchall_72

    .line 360
    invoke-virtual {p0, p1}, Lcom/android/server/PackageWatchdog;->registerHealthObserver(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V

    const-string/jumbo p1, "updated observers"

    .line 364
    invoke-virtual {p0, p1}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    return-void

    :catchall_72
    move-exception p0

    .line 357
    :try_start_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw p0
.end method

.method private synthetic lambda$unregisterHealthObserver$3(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V
    .registers 5

    .line 376
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 377
    :try_start_3
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_27

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregistering observer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    return-void

    :catchall_27
    move-exception p0

    .line 378
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public static longArrayQueueToString(Landroid/util/LongArrayQueue;)Ljava/lang/String;
    .registers 5

    .line 1109
    invoke-virtual {p0}, Landroid/util/LongArrayQueue;->size()I

    move-result v0

    if-lez v0, :cond_2e

    .line 1110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 1111
    invoke-virtual {p0, v1}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 1112
    :goto_14
    invoke-virtual {p0}, Landroid/util/LongArrayQueue;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    const-string v2, ","

    .line 1113
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    invoke-virtual {p0, v1}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1116
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2e
    const-string p0, ""

    return-object p0
.end method

.method public static parseLongArrayQueue(Ljava/lang/String;)Landroid/util/LongArrayQueue;
    .registers 6

    .line 1123
    new-instance v0, Landroid/util/LongArrayQueue;

    invoke-direct {v0}, Landroid/util/LongArrayQueue;-><init>()V

    .line 1124
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, ","

    .line 1125
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1126
    array-length v1, p0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_21

    aget-object v3, p0, v2

    .line 1127
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/util/LongArrayQueue;->addLast(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_21
    return-object v0
.end method


# virtual methods
.method public final checkAndMitigateNativeCrashes()V
    .registers 5

    .line 551
    iget-wide v0, p0, Lcom/android/server/PackageWatchdog;->mNumberOfNativeCrashPollsRemaining:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/PackageWatchdog;->mNumberOfNativeCrashPollsRemaining:J

    const-string/jumbo v0, "sys.init.updatable_crashing"

    .line 553
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 555
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/PackageWatchdog;->onPackageFailure(Ljava/util/List;I)V

    goto :goto_31

    .line 559
    :cond_1d
    iget-wide v0, p0, Lcom/android/server/PackageWatchdog;->mNumberOfNativeCrashPollsRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_31

    .line 560
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mShortTaskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/PackageWatchdog;)V

    sget-wide v2, Lcom/android/server/PackageWatchdog;->NATIVE_CRASH_POLLING_INTERVAL_MILLIS:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_31
    :goto_31
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7

    const-string v0, "Package Watchdog status"

    .line 1136
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1137
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1138
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1139
    :try_start_b
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Observer name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1141
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1142
    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 1143
    invoke-virtual {v2, p1}, Lcom/android/server/PackageWatchdog$ObserverInternal;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1144
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_15

    .line 1146
    :cond_47
    monitor-exit v0

    return-void

    :catchall_49
    move-exception p0

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_b .. :try_end_4b} :catchall_49

    throw p0
.end method

.method public final getNextStateSyncMillisLocked()J
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x7fffffffffffffffL

    move v3, v0

    .line 870
    :goto_7
    iget-object v4, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_37

    .line 871
    iget-object v4, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 872
    invoke-virtual {v4}, Lcom/android/server/PackageWatchdog$ObserverInternal;->getMonitoredPackages()Landroid/util/ArrayMap;

    move-result-object v4

    move v5, v0

    .line 873
    :goto_1c
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_34

    .line 874
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 875
    invoke-virtual {v6}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getShortestScheduleDurationMsLocked()J

    move-result-wide v6

    cmp-long v8, v6, v1

    if-gez v8, :cond_31

    move-wide v1, v6

    :cond_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_37
    return-wide v1
.end method

.method public final getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 941
    iget-object p0, p0, Lcom/android/server/PackageWatchdog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v0, 0x400000

    .line 947
    :try_start_8
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    const/high16 v0, 0x40000000    # 2.0f

    .line 949
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getPackagesPendingHealthChecksLocked()Ljava/util/Set;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 809
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 810
    iget-object p0, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 811
    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 812
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 814
    invoke-virtual {v1}, Lcom/android/server/PackageWatchdog$ObserverInternal;->getMonitoredPackages()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 815
    :cond_27
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 816
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 817
    invoke-static {v2}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->-$$Nest$mgetName(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Ljava/lang/String;

    move-result-object v3

    .line 818
    invoke-virtual {v2}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->isPendingHealthChecksLocked()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 819
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_41
    return-object v0
.end method

.method public getTriggerFailureCount()J
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 677
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 678
    :try_start_3
    iget p0, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureCount:I

    int-to-long v1, p0

    monitor-exit v0

    return-wide v1

    :catchall_8
    move-exception p0

    .line 679
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public getTriggerFailureDurationMs()J
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 684
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 685
    :try_start_3
    iget p0, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureDurationMs:I

    int-to-long v1, p0

    monitor-exit v0

    return-wide v1

    :catchall_8
    move-exception p0

    .line 686
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final getVersionedPackage(Ljava/lang/String;)Landroid/content/pm/VersionedPackage;
    .registers 6

    .line 955
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 956
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_1e

    .line 960
    :cond_10
    :try_start_10
    invoke-virtual {p0, p1}, Lcom/android/server/PackageWatchdog;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    .line 961
    new-instance p0, Landroid/content/pm/VersionedPackage;

    invoke-direct {p0, p1, v2, v3}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_1d} :catch_1e

    return-object p0

    :catch_1e
    :cond_1e
    :goto_1e
    return-object v1
.end method

.method public final handleFailureImmediately(Ljava/util/List;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;I)V"
        }
    .end annotation

    .line 461
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_f

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/VersionedPackage;

    goto :goto_10

    :cond_f
    move-object p1, v1

    :goto_10
    const v0, 0x7fffffff

    .line 464
    iget-object p0, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1d
    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_39

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 465
    iget-object v2, v2, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    if-eqz v2, :cond_1d

    .line 467
    invoke-interface {v2, p1, p2, v3}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->onHealthCheckFailed(Landroid/content/pm/VersionedPackage;II)I

    move-result v3

    if-eqz v3, :cond_1d

    if-ge v3, v0, :cond_1d

    move-object v1, v2

    move v0, v3

    goto :goto_1d

    :cond_39
    if-eqz v1, :cond_3e

    .line 477
    invoke-interface {v1, p1, p2, v3}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->execute(Landroid/content/pm/VersionedPackage;II)Z

    :cond_3e
    return-void
.end method

.method public final loadFromFile()V
    .registers 7

    .line 975
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    const/4 v0, 0x0

    .line 977
    :try_start_6
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    .line 978
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v1

    const-string/jumbo v2, "package-watchdog"

    .line 979
    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 980
    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v2

    .line 981
    :cond_1a
    :goto_1a
    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 982
    invoke-static {v1, p0}, Lcom/android/server/PackageWatchdog$ObserverInternal;->read(Landroid/util/TypedXmlPullParser;Lcom/android/server/PackageWatchdog;)Lcom/android/server/PackageWatchdog$ObserverInternal;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 984
    iget-object v4, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    iget-object v5, v3, Lcom/android/server/PackageWatchdog$ObserverInternal;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_2d} :catch_42
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_2d} :catch_30
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_2d} :catch_30
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_2d} :catch_30
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_2d} :catch_30
    .catchall {:try_start_6 .. :try_end_2d} :catchall_2e

    goto :goto_1a

    :catchall_2e
    move-exception p0

    goto :goto_3e

    :catch_30
    move-exception v1

    :try_start_31
    const-string v2, "PackageWatchdog"

    const-string v3, "Unable to read monitored packages, deleting file"

    .line 991
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 992
    iget-object p0, p0, Lcom/android/server/PackageWatchdog;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->delete()V
    :try_end_3d
    .catchall {:try_start_31 .. :try_end_3d} :catchall_2e

    goto :goto_42

    .line 994
    :goto_3e
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 995
    throw p0

    .line 994
    :catch_42
    :cond_42
    :goto_42
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void
.end method

.method public newMonitoredPackage(Ljava/lang/String;JJZLandroid/util/LongArrayQueue;)Lcom/android/server/PackageWatchdog$MonitoredPackage;
    .registers 18

    .line 1369
    new-instance v9, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/PackageWatchdog$MonitoredPackage;-><init>(Lcom/android/server/PackageWatchdog;Ljava/lang/String;JJZLandroid/util/LongArrayQueue;)V

    return-object v9
.end method

.method public newMonitoredPackage(Ljava/lang/String;JZ)Lcom/android/server/PackageWatchdog$MonitoredPackage;
    .registers 13

    .line 1363
    new-instance v7, Landroid/util/LongArrayQueue;

    invoke-direct {v7}, Landroid/util/LongArrayQueue;-><init>()V

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/PackageWatchdog;->newMonitoredPackage(Ljava/lang/String;JJZLandroid/util/LongArrayQueue;)Lcom/android/server/PackageWatchdog$MonitoredPackage;

    move-result-object p0

    return-object p0
.end method

.method public noteBoot()V
    .registers 8

    .line 486
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 487
    :try_start_3
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mBootThreshold:Lcom/android/server/PackageWatchdog$BootThreshold;

    invoke-virtual {v1}, Lcom/android/server/PackageWatchdog$BootThreshold;->incrementAndTest()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 488
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mBootThreshold:Lcom/android/server/PackageWatchdog$BootThreshold;

    invoke-virtual {v1}, Lcom/android/server/PackageWatchdog$BootThreshold;->reset()V

    .line 489
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mBootThreshold:Lcom/android/server/PackageWatchdog$BootThreshold;

    invoke-virtual {v1}, Lcom/android/server/PackageWatchdog$BootThreshold;->getMitigationCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    .line 492
    :goto_1d
    iget-object v5, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_3e

    .line 493
    iget-object v5, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 494
    iget-object v5, v5, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    if-eqz v5, :cond_3b

    .line 496
    invoke-interface {v5, v1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->onBootLoop(I)I

    move-result v6

    if-eqz v6, :cond_3b

    if-ge v6, v3, :cond_3b

    move-object v2, v5

    move v3, v6

    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_3e
    if-eqz v2, :cond_4d

    .line 505
    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mBootThreshold:Lcom/android/server/PackageWatchdog$BootThreshold;

    invoke-virtual {v3, v1}, Lcom/android/server/PackageWatchdog$BootThreshold;->setMitigationCount(I)V

    .line 506
    iget-object p0, p0, Lcom/android/server/PackageWatchdog;->mBootThreshold:Lcom/android/server/PackageWatchdog$BootThreshold;

    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog$BootThreshold;->saveMitigationCountToMetadata()V

    .line 507
    invoke-interface {v2, v1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->executeBootLoopMitigation(I)Z

    .line 510
    :cond_4d
    monitor-exit v0

    return-void

    :catchall_4f
    move-exception p0

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_4f

    throw p0
.end method

.method public final onHealthCheckFailed(Lcom/android/server/PackageWatchdog$ObserverInternal;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/PackageWatchdog$ObserverInternal;",
            "Ljava/util/Set<",
            "Lcom/android/server/PackageWatchdog$MonitoredPackage;",
            ">;)V"
        }
    .end annotation

    .line 915
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/PackageWatchdog;Lcom/android/server/PackageWatchdog$ObserverInternal;Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onHealthCheckPassed(Ljava/lang/String;)V
    .registers 8

    const-string v0, "PackageWatchdog"

    .line 739
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Health check passed for package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 743
    :goto_1c
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_43

    .line 744
    iget-object v4, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 745
    invoke-virtual {v4, p1}, Lcom/android/server/PackageWatchdog$ObserverInternal;->getMonitoredPackage(Ljava/lang/String;)Lcom/android/server/PackageWatchdog$MonitoredPackage;

    move-result-object v4

    if-eqz v4, :cond_40

    .line 748
    invoke-virtual {v4}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getHealthCheckStateLocked()I

    move-result v5

    .line 749
    invoke-virtual {v4}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->tryPassHealthCheckLocked()I

    move-result v4

    if-eq v5, v4, :cond_3e

    const/4 v4, 0x1

    goto :goto_3f

    :cond_3e
    move v4, v1

    :goto_3f
    or-int/2addr v3, v4

    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 753
    :cond_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_1c .. :try_end_44} :catchall_5c

    if-eqz v3, :cond_5b

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "health check passed for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    :cond_5b
    return-void

    :catchall_5c
    move-exception p0

    .line 753
    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw p0
.end method

.method public onPackageFailure(Ljava/util/List;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;I)V"
        }
    .end annotation

    if-nez p1, :cond_a

    const-string p0, "PackageWatchdog"

    const-string p1, "Could not resolve a list of failing packages"

    .line 394
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 397
    :cond_a
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/PackageWatchdog;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPackagesReady()V
    .registers 6

    .line 261
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 262
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/PackageWatchdog;->mIsPackagesReady:Z

    .line 263
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mHealthCheckController:Lcom/android/server/ExplicitHealthCheckController;

    new-instance v2, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/PackageWatchdog;)V

    new-instance v3, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/PackageWatchdog;)V

    new-instance v4, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda13;

    invoke-direct {v4, p0}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/PackageWatchdog;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/ExplicitHealthCheckController;->setCallbacks(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    .line 266
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog;->setPropertyChangedListenerLocked()V

    .line 267
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog;->updateConfigs()V

    .line 268
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog;->registerConnectivityModuleHealthListener()V

    .line 269
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public final onPropertyChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 1000
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog;->updateConfigs()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_b

    :catch_4
    const-string p0, "PackageWatchdog"

    const-string p1, "Failed to reload device config changes"

    .line 1002
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-void
.end method

.method public final onSupportedPackages(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;",
            ">;)V"
        }
    .end annotation

    .line 763
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 764
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 765
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 766
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;

    .line 767
    invoke-virtual {v2}, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;->getHealthCheckTimeoutMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 770
    :cond_25
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_28
    const-string v2, "PackageWatchdog"

    .line 771
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received supported packages "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    .line 773
    :cond_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_96

    .line 774
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PackageWatchdog$ObserverInternal;

    invoke-virtual {v5}, Lcom/android/server/PackageWatchdog$ObserverInternal;->getMonitoredPackages()Landroid/util/ArrayMap;

    move-result-object v5

    .line 775
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 776
    :goto_62
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 777
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 778
    invoke-static {v6}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->-$$Nest$mgetName(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Ljava/lang/String;

    move-result-object v7

    .line 779
    invoke-virtual {v6}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getHealthCheckStateLocked()I

    move-result v8

    .line 782
    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8b

    .line 785
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 784
    invoke-virtual {v6, v9, v10}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->setHealthCheckActiveLocked(J)I

    move-result v6

    goto :goto_8f

    .line 788
    :cond_8b
    invoke-virtual {v6}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->tryPassHealthCheckLocked()I

    move-result v6

    :goto_8f
    if-eq v8, v6, :cond_93

    const/4 v6, 0x1

    goto :goto_94

    :cond_93
    move v6, v3

    :goto_94
    or-int/2addr v4, v6

    goto :goto_62

    .line 793
    :cond_96
    monitor-exit v1
    :try_end_97
    .catchall {:try_start_28 .. :try_end_97} :catchall_af

    if-eqz v4, :cond_ae

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updated health check supported packages "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    :cond_ae
    return-void

    :catchall_af
    move-exception p0

    .line 793
    :try_start_b0
    monitor-exit v1
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_af

    throw p0
.end method

.method public final onSyncRequestNotified()V
    .registers 3

    .line 801
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 802
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/PackageWatchdog;->mSyncRequired:Z

    .line 803
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog;->syncRequestsAsync()V

    .line 804
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public parseMonitoredPackage(Landroid/util/TypedXmlPullParser;)Lcom/android/server/PackageWatchdog$MonitoredPackage;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "name"

    .line 1375
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "duration"

    .line 1376
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    const-string/jumbo v1, "health-check-duration"

    .line 1377
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    const-string/jumbo v1, "passed-health-check"

    .line 1379
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    const-string/jumbo v1, "mitigation-calls"

    .line 1381
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1380
    invoke-static {p1}, Lcom/android/server/PackageWatchdog;->parseLongArrayQueue(Ljava/lang/String;)Landroid/util/LongArrayQueue;

    move-result-object v9

    move-object v2, p0

    .line 1382
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/PackageWatchdog;->newMonitoredPackage(Ljava/lang/String;JJZLandroid/util/LongArrayQueue;)Lcom/android/server/PackageWatchdog$MonitoredPackage;

    move-result-object p0

    return-object p0
.end method

.method public final pruneObserversLocked()V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 890
    iget-wide v0, p0, Lcom/android/server/PackageWatchdog;->mUptimeAtLastStateSync:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    move-wide v0, v2

    goto :goto_13

    .line 891
    :cond_a
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mSystemClock:Lcom/android/server/PackageWatchdog$SystemClock;

    invoke-interface {v0}, Lcom/android/server/PackageWatchdog$SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/server/PackageWatchdog;->mUptimeAtLastStateSync:J

    sub-long/2addr v0, v4

    :goto_13
    cmp-long v2, v0, v2

    const-string v3, "PackageWatchdog"

    if-gtz v2, :cond_34

    .line 893
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not pruning observers, elapsed time: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 897
    :cond_34
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 898
    :cond_3e
    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 899
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 901
    invoke-static {v4, v0, v1}, Lcom/android/server/PackageWatchdog$ObserverInternal;->-$$Nest$mprunePackagesLocked(Lcom/android/server/PackageWatchdog$ObserverInternal;J)Ljava/util/Set;

    move-result-object v5

    .line 902
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_57

    .line 903
    invoke-virtual {p0, v4, v5}, Lcom/android/server/PackageWatchdog;->onHealthCheckFailed(Lcom/android/server/PackageWatchdog$ObserverInternal;Ljava/util/Set;)V

    .line 905
    :cond_57
    invoke-virtual {v4}, Lcom/android/server/PackageWatchdog$ObserverInternal;->getMonitoredPackages()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3e

    iget-object v5, v4, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    if-eqz v5, :cond_6b

    .line 906
    invoke-interface {v5}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->isPersistent()Z

    move-result v5

    if-nez v5, :cond_3e

    .line 907
    :cond_6b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Discarding observer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/server/PackageWatchdog$ObserverInternal;->name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". All packages expired"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_3e

    :cond_8a
    return-void
.end method

.method public final registerConnectivityModuleHealthListener()V
    .registers 3

    .line 1053
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mConnectivityModuleConnector:Landroid/net/ConnectivityModuleConnector;

    new-instance v1, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/PackageWatchdog;)V

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityModuleConnector;->registerHealthListener(Landroid/net/ConnectivityModuleConnector$ConnectivityModuleHealthListener;)V

    return-void
.end method

.method public registerHealthObserver(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V
    .registers 6

    .line 280
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    :try_start_3
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageWatchdog$ObserverInternal;

    if-eqz v1, :cond_14

    .line 283
    iput-object p1, v1, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    goto :goto_32

    .line 285
    :cond_14
    new-instance v1, Lcom/android/server/PackageWatchdog$ObserverInternal;

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/server/PackageWatchdog$ObserverInternal;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 286
    iput-object p1, v1, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 287
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "added new observer"

    .line 288
    invoke-virtual {p0, p1}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    .line 290
    :goto_32
    monitor-exit v0

    return-void

    :catchall_34
    move-exception p0

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public removePropertyChangedListener()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1016
    iget-object p0, p0, Lcom/android/server/PackageWatchdog;->mOnPropertyChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-static {p0}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public final saveToFile()Z
    .registers 9

    const-string v0, "PackageWatchdog"

    const-string v1, "Saving observer state to file"

    .line 1069
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1073
    :try_start_b
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_11} :catch_6c
    .catchall {:try_start_b .. :try_end_11} :catchall_6a

    .line 1080
    :try_start_11
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v3

    .line 1081
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v4, "package-watchdog"

    .line 1082
    invoke-interface {v3, v5, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "version"

    const/4 v6, 0x1

    .line 1083
    invoke-interface {v3, v5, v4, v6}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    move v4, v1

    .line 1084
    :goto_29
    iget-object v7, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v4, v7, :cond_3f

    .line 1085
    iget-object v7, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/PackageWatchdog$ObserverInternal;

    invoke-virtual {v7, v3}, Lcom/android/server/PackageWatchdog$ObserverInternal;->writeLocked(Landroid/util/TypedXmlSerializer;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    :cond_3f
    const-string/jumbo v4, "package-watchdog"

    .line 1087
    invoke-interface {v3, v5, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1088
    invoke-interface {v3}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 1089
    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_4d} :catch_54
    .catchall {:try_start_11 .. :try_end_4d} :catchall_52

    .line 1096
    :try_start_4d
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_6a

    return v6

    :catchall_52
    move-exception p0

    goto :goto_66

    :catch_54
    move-exception v3

    :try_start_55
    const-string v4, "PackageWatchdog"

    const-string v5, "Failed to save monitored packages, restoring backup"

    .line 1092
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1093
    iget-object p0, p0, Lcom/android/server/PackageWatchdog;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_61
    .catchall {:try_start_55 .. :try_end_61} :catchall_52

    .line 1096
    :try_start_61
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    monitor-exit v0

    return v1

    :goto_66
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1097
    throw p0

    :catchall_6a
    move-exception p0

    goto :goto_76

    :catch_6c
    move-exception p0

    const-string v2, "PackageWatchdog"

    const-string v3, "Cannot update monitored packages"

    .line 1075
    invoke-static {v2, v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1076
    monitor-exit v0

    return v1

    .line 1098
    :goto_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_61 .. :try_end_77} :catchall_6a

    throw p0
.end method

.method public final saveToFileAsync()V
    .registers 3

    .line 1102
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mSaveToFile:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1103
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/PackageWatchdog;->mSaveToFile:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_11
    return-void
.end method

.method public scheduleCheckAndMitigateNativeCrashes()V
    .registers 4

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scheduling "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/PackageWatchdog;->mNumberOfNativeCrashPollsRemaining:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " polls to check and mitigate native crashes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageWatchdog"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mShortTaskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/PackageWatchdog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final scheduleNextSyncStateLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 851
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog;->getNextStateSyncMillisLocked()J

    move-result-wide v0

    .line 852
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mShortTaskHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mSyncStateWithScheduledReason:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-nez v2, :cond_20

    const-string v0, "PackageWatchdog"

    const-string v1, "Cancelling state sync, nothing to sync"

    .line 854
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    .line 855
    iput-wide v0, p0, Lcom/android/server/PackageWatchdog;->mUptimeAtLastStateSync:J

    goto :goto_2f

    .line 857
    :cond_20
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mSystemClock:Lcom/android/server/PackageWatchdog$SystemClock;

    invoke-interface {v2}, Lcom/android/server/PackageWatchdog$SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/PackageWatchdog;->mUptimeAtLastStateSync:J

    .line 858
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mShortTaskHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/PackageWatchdog;->mSyncStateWithScheduledReason:Ljava/lang/Runnable;

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2f
    return-void
.end method

.method public final setExplicitHealthCheckEnabled(Z)V
    .registers 5

    .line 537
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 538
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/PackageWatchdog;->mIsHealthCheckEnabled:Z

    .line 539
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mHealthCheckController:Lcom/android/server/ExplicitHealthCheckController;

    invoke-virtual {v1, p1}, Lcom/android/server/ExplicitHealthCheckController;->setEnabled(Z)V

    const/4 v1, 0x1

    .line 540
    iput-boolean v1, p0, Lcom/android/server/PackageWatchdog;->mSyncRequired:Z

    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "health check state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1d

    const-string p1, "enabled"

    goto :goto_1f

    :cond_1d
    const-string p1, "disabled"

    :goto_1f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    .line 543
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public final setPropertyChangedListenerLocked()V
    .registers 3

    .line 1008
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mContext:Landroid/content/Context;

    .line 1010
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/PackageWatchdog;->mOnPropertyChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    const-string/jumbo v1, "rollback"

    .line 1008
    invoke-static {v1, v0, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public startObservingHealth(Lcom/android/server/PackageWatchdog$PackageHealthObserver;Ljava/util/List;J)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/PackageWatchdog$PackageHealthObserver;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 313
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "PackageWatchdog"

    if-eqz v0, :cond_21

    .line 314
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No packages to observe, "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    const-wide/16 v2, 0x1

    cmp-long v0, p3, v2

    if-gez v0, :cond_52

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid duration "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "ms for observer "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ". Not observing packages "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 318
    invoke-static {v1, p3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    sget-wide p3, Lcom/android/server/PackageWatchdog;->DEFAULT_OBSERVING_DURATION_MS:J

    .line 323
    :cond_52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 324
    :goto_59
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8c

    .line 326
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4, p3, p4, v2}, Lcom/android/server/PackageWatchdog;->newMonitoredPackage(Ljava/lang/String;JZ)Lcom/android/server/PackageWatchdog$MonitoredPackage;

    move-result-object v4

    if-eqz v4, :cond_6f

    .line 328
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_89

    .line 330
    :cond_6f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create MonitoredPackage for pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_89
    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    .line 334
    :cond_8c
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_93

    return-void

    .line 342
    :cond_93
    iget-object p3, p0, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    new-instance p4, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda14;

    invoke-direct {p4, p0, p1, p2, v0}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/PackageWatchdog;Lcom/android/server/PackageWatchdog$PackageHealthObserver;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final syncRequests()V
    .registers 5

    .line 705
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 706
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/PackageWatchdog;->mIsPackagesReady:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 707
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog;->getPackagesPendingHealthChecksLocked()Ljava/util/Set;

    move-result-object v1

    .line 708
    iget-boolean v3, p0, Lcom/android/server/PackageWatchdog;->mSyncRequired:Z

    if-nez v3, :cond_1e

    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mRequestedHealthCheckPackages:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 709
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_22

    :cond_1e
    const/4 v3, 0x1

    .line 711
    iput-object v1, p0, Lcom/android/server/PackageWatchdog;->mRequestedHealthCheckPackages:Ljava/util/Set;

    goto :goto_23

    :cond_22
    move v3, v2

    .line 714
    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_48

    if-eqz v3, :cond_47

    const-string v0, "PackageWatchdog"

    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Syncing health check requests for packages: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mRequestedHealthCheckPackages:Ljava/util/Set;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mHealthCheckController:Lcom/android/server/ExplicitHealthCheckController;

    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mRequestedHealthCheckPackages:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/android/server/ExplicitHealthCheckController;->syncRequests(Ljava/util/Set;)V

    .line 721
    iput-boolean v2, p0, Lcom/android/server/PackageWatchdog;->mSyncRequired:Z

    :cond_47
    return-void

    :catchall_48
    move-exception p0

    .line 714
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public final syncRequestsAsync()V
    .registers 3

    .line 693
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mShortTaskHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mSyncRequests:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 694
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mShortTaskHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/PackageWatchdog;->mSyncRequests:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final syncState(Ljava/lang/String;)V
    .registers 6

    .line 833
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "PackageWatchdog"

    .line 834
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Syncing state, reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog;->pruneObserversLocked()V

    .line 837
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog;->saveToFileAsync()V

    .line 838
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog;->syncRequestsAsync()V

    .line 841
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog;->scheduleNextSyncStateLocked()V

    .line 842
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public final syncStateWithScheduledReason()V
    .registers 2

    const-string/jumbo v0, "scheduled"

    .line 846
    invoke-virtual {p0, v0}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    return-void
.end method

.method public unregisterHealthObserver(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V
    .registers 4

    .line 375
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/PackageWatchdog;Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateConfigs()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1025
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string/jumbo v1, "rollback"

    const-string/jumbo v2, "watchdog_trigger_failure_count"

    const/4 v3, 0x5

    .line 1026
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureCount:I

    if-gtz v1, :cond_14

    .line 1031
    iput v3, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureCount:I

    :cond_14
    const-string/jumbo v1, "rollback"

    const-string/jumbo v2, "watchdog_trigger_failure_duration_millis"

    .line 1034
    sget v3, Lcom/android/server/PackageWatchdog;->DEFAULT_TRIGGER_FAILURE_DURATION_MS:I

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureDurationMs:I

    if-gtz v1, :cond_26

    .line 1039
    iput v3, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureDurationMs:I

    :cond_26
    const-string/jumbo v1, "rollback"

    const-string/jumbo v2, "watchdog_explicit_health_check_enabled"

    const/4 v3, 0x1

    .line 1042
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/PackageWatchdog;->setExplicitHealthCheckEnabled(Z)V

    .line 1046
    monitor-exit v0

    return-void

    :catchall_36
    move-exception p0

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw p0
.end method

.method public writeNow()V
    .registers 4

    .line 518
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 521
    :try_start_3
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 522
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mSaveToFile:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 523
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog;->pruneObserversLocked()V

    .line 524
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog;->saveToFile()Z

    const-string p0, "PackageWatchdog"

    const-string v1, "Last write to update package durations"

    .line 525
    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method
