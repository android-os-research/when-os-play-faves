.class public Lcom/android/server/timezone/PackageTracker;
.super Ljava/lang/Object;
.source "PackageTracker.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "timezone.PackageTracker"


# instance fields
.field public mCheckFailureCount:I

.field public mCheckTimeAllowedMillis:I

.field public mCheckTriggered:Z

.field public final mConfigHelper:Lcom/android/server/timezone/ConfigHelper;

.field public mDataAppPackageName:Ljava/lang/String;

.field public mDelayBeforeReliabilityCheckMillis:I

.field public final mElapsedRealtimeClock:Ljava/time/Clock;

.field public mFailedCheckRetryCount:J

.field public final mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

.field public mLastTriggerTimestamp:Ljava/lang/Long;

.field public final mPackageManagerHelper:Lcom/android/server/timezone/PackageManagerHelper;

.field public final mPackageStatusStorage:Lcom/android/server/timezone/PackageStatusStorage;

.field public mTrackingEnabled:Z

.field public mUpdateAppPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/time/Clock;Lcom/android/server/timezone/ConfigHelper;Lcom/android/server/timezone/PackageManagerHelper;Lcom/android/server/timezone/PackageStatusStorage;Lcom/android/server/timezone/PackageTrackerIntentHelper;)V
    .registers 7

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mLastTriggerTimestamp:Ljava/lang/Long;

    .line 113
    iput-object p1, p0, Lcom/android/server/timezone/PackageTracker;->mElapsedRealtimeClock:Ljava/time/Clock;

    .line 114
    iput-object p2, p0, Lcom/android/server/timezone/PackageTracker;->mConfigHelper:Lcom/android/server/timezone/ConfigHelper;

    .line 115
    iput-object p3, p0, Lcom/android/server/timezone/PackageTracker;->mPackageManagerHelper:Lcom/android/server/timezone/PackageManagerHelper;

    .line 116
    iput-object p4, p0, Lcom/android/server/timezone/PackageTracker;->mPackageStatusStorage:Lcom/android/server/timezone/PackageStatusStorage;

    .line 117
    iput-object p5, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/timezone/PackageTracker;
    .registers 8

    .line 98
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeClock()Ljava/time/Clock;

    move-result-object v1

    .line 99
    new-instance v3, Lcom/android/server/timezone/PackageTrackerHelperImpl;

    invoke-direct {v3, p0}, Lcom/android/server/timezone/PackageTrackerHelperImpl;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v2, "timezone"

    invoke-static {v0, v2}, Landroid/os/FileUtils;->createDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 101
    new-instance v6, Lcom/android/server/timezone/PackageTracker;

    new-instance v4, Lcom/android/server/timezone/PackageStatusStorage;

    invoke-direct {v4, v0}, Lcom/android/server/timezone/PackageStatusStorage;-><init>(Ljava/io/File;)V

    new-instance v5, Lcom/android/server/timezone/PackageTrackerIntentHelperImpl;

    invoke-direct {v5, p0}, Lcom/android/server/timezone/PackageTrackerIntentHelperImpl;-><init>(Landroid/content/Context;)V

    move-object v0, v6

    move-object v2, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/timezone/PackageTracker;-><init>(Ljava/time/Clock;Lcom/android/server/timezone/ConfigHelper;Lcom/android/server/timezone/PackageManagerHelper;Lcom/android/server/timezone/PackageStatusStorage;Lcom/android/server/timezone/PackageTrackerIntentHelper;)V

    return-object v6
.end method

.method public static logAndThrowRuntimeException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .registers 3

    const-string/jumbo v0, "timezone.PackageTracker"

    .line 522
    invoke-static {v0, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 523
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static throwRuntimeExceptionIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_d

    .line 516
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_d

    return-void

    :cond_d
    const/4 p0, 0x0

    .line 517
    invoke-static {p1, p0}, Lcom/android/server/timezone/PackageTracker;->logAndThrowRuntimeException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageTrackerState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/timezone/PackageTracker;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 528
    iget-object p0, p0, Lcom/android/server/timezone/PackageTracker;->mPackageStatusStorage:Lcom/android/server/timezone/PackageStatusStorage;

    invoke-virtual {p0, p1}, Lcom/android/server/timezone/PackageStatusStorage;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getCheckFailureCountForTests()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 433
    iget p0, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I

    return p0
.end method

.method public final isCheckInProgress()Z
    .registers 1

    .line 445
    iget-object p0, p0, Lcom/android/server/timezone/PackageTracker;->mLastTriggerTimestamp:Ljava/lang/Long;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final isCheckResponseOverdue()Z
    .registers 9

    .line 449
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mLastTriggerTimestamp:Ljava/lang/Long;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 453
    :cond_6
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mLastTriggerTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget p0, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTimeAllowedMillis:I

    int-to-long v6, p0

    add-long/2addr v4, v6

    cmp-long p0, v2, v4

    if-lez p0, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1
.end method

.method public final lookupInstalledPackageVersions()Lcom/android/server/timezone/PackageVersions;
    .registers 5

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mPackageManagerHelper:Lcom/android/server/timezone/PackageManagerHelper;

    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    .line 461
    invoke-interface {v0, v1}, Lcom/android/server/timezone/PackageManagerHelper;->getInstalledPackageVersion(Ljava/lang/String;)J

    move-result-wide v0

    .line 462
    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mPackageManagerHelper:Lcom/android/server/timezone/PackageManagerHelper;

    iget-object p0, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    .line 463
    invoke-interface {v2, p0}, Lcom/android/server/timezone/PackageManagerHelper;->getInstalledPackageVersion(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_10} :catch_16

    .line 469
    new-instance p0, Lcom/android/server/timezone/PackageVersions;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/timezone/PackageVersions;-><init>(JJ)V

    return-object p0

    :catch_16
    move-exception p0

    const-string/jumbo v0, "timezone.PackageTracker"

    const-string v1, "lookupInstalledPackageVersions: Unable to resolve installed package versions"

    .line 465
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "timezone.PackageTracker"

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recordOperationResult: checkToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " success="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-boolean v0, p0, Lcom/android/server/timezone/PackageTracker;->mTrackingEnabled:Z

    if-nez v0, :cond_55

    if-nez p1, :cond_31

    const-string/jumbo p1, "timezone.PackageTracker"

    const-string/jumbo p2, "recordCheckResult: Tracking is disabled and no token has been provided. Resetting tracking state."

    .line 357
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    :cond_31
    const-string/jumbo p2, "timezone.PackageTracker"

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "recordCheckResult: Tracking is disabled and a token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " has been unexpectedly provided. Resetting tracking state."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :goto_4e
    iget-object p1, p0, Lcom/android/server/timezone/PackageTracker;->mPackageStatusStorage:Lcom/android/server/timezone/PackageStatusStorage;

    invoke-virtual {p1}, Lcom/android/server/timezone/PackageStatusStorage;->resetCheckState()V
    :try_end_53
    .catchall {:try_start_1 .. :try_end_53} :catchall_ca

    .line 367
    monitor-exit p0

    return-void

    :cond_55
    const/4 v0, 0x0

    if-nez p1, :cond_71

    :try_start_58
    const-string/jumbo p1, "timezone.PackageTracker"

    const-string/jumbo p2, "recordCheckResult: Unexpectedly missing checkToken, resetting storage state."

    .line 389
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object p1, p0, Lcom/android/server/timezone/PackageTracker;->mPackageStatusStorage:Lcom/android/server/timezone/PackageStatusStorage;

    invoke-virtual {p1}, Lcom/android/server/timezone/PackageStatusStorage;->resetCheckState()V

    .line 395
    iget-object p1, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    iget p2, p0, Lcom/android/server/timezone/PackageTracker;->mDelayBeforeReliabilityCheckMillis:I

    int-to-long v1, p2

    invoke-interface {p1, v1, v2}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->scheduleReliabilityTrigger(J)V

    .line 396
    iput v0, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I

    goto :goto_c8

    .line 400
    :cond_71
    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mPackageStatusStorage:Lcom/android/server/timezone/PackageStatusStorage;

    .line 401
    invoke-virtual {v1, p1, p2}, Lcom/android/server/timezone/PackageStatusStorage;->markChecked(Lcom/android/server/timezone/CheckToken;Z)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 405
    invoke-virtual {p0}, Lcom/android/server/timezone/PackageTracker;->setCheckComplete()V

    if-eqz p2, :cond_86

    .line 410
    iget-object p1, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    invoke-interface {p1}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->unscheduleReliabilityTrigger()V

    .line 411
    iput v0, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I

    goto :goto_c8

    .line 414
    :cond_86
    iget-object p1, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    iget p2, p0, Lcom/android/server/timezone/PackageTracker;->mDelayBeforeReliabilityCheckMillis:I

    int-to-long v0, p2

    invoke-interface {p1, v0, v1}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->scheduleReliabilityTrigger(J)V

    .line 415
    iget p1, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I

    goto :goto_c8

    :cond_95
    const-string/jumbo v0, "timezone.PackageTracker"

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recordCheckResult: could not update token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " with success="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ". Optimistic lock failure"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object p1, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    iget p2, p0, Lcom/android/server/timezone/PackageTracker;->mDelayBeforeReliabilityCheckMillis:I

    int-to-long v0, p2

    invoke-interface {p1, v0, v1}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->scheduleReliabilityTrigger(J)V

    .line 425
    iget p1, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I
    :try_end_c8
    .catchall {:try_start_58 .. :try_end_c8} :catchall_ca

    .line 428
    :goto_c8
    monitor-exit p0

    return-void

    :catchall_ca
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setCheckComplete()V
    .registers 2

    const/4 v0, 0x0

    .line 441
    iput-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mLastTriggerTimestamp:Ljava/lang/Long;

    return-void
.end method

.method public final setCheckInProgress()V
    .registers 3

    .line 437
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mLastTriggerTimestamp:Ljava/lang/Long;

    return-void
.end method

.method public declared-synchronized start()Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    monitor-enter p0

    .line 122
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mConfigHelper:Lcom/android/server/timezone/ConfigHelper;

    invoke-interface {v0}, Lcom/android/server/timezone/ConfigHelper;->isTrackingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezone/PackageTracker;->mTrackingEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_16

    const-string/jumbo v0, "timezone.PackageTracker"

    const-string v2, "Time zone updater / data package tracking explicitly disabled."

    .line 124
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_72

    .line 125
    monitor-exit p0

    return v1

    .line 128
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mConfigHelper:Lcom/android/server/timezone/ConfigHelper;

    invoke-interface {v0}, Lcom/android/server/timezone/ConfigHelper;->getUpdateAppPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mConfigHelper:Lcom/android/server/timezone/ConfigHelper;

    invoke-interface {v0}, Lcom/android/server/timezone/ConfigHelper;->getDataAppPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mConfigHelper:Lcom/android/server/timezone/ConfigHelper;

    invoke-interface {v0}, Lcom/android/server/timezone/ConfigHelper;->getCheckTimeAllowedMillis()I

    move-result v0

    iput v0, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTimeAllowedMillis:I

    .line 131
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mConfigHelper:Lcom/android/server/timezone/ConfigHelper;

    invoke-interface {v0}, Lcom/android/server/timezone/ConfigHelper;->getFailedCheckRetryCount()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/android/server/timezone/PackageTracker;->mFailedCheckRetryCount:J

    .line 132
    iget v0, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTimeAllowedMillis:I

    const v2, 0xea60

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/timezone/PackageTracker;->mDelayBeforeReliabilityCheckMillis:I

    .line 137
    invoke-virtual {p0}, Lcom/android/server/timezone/PackageTracker;->throwIfDeviceSettingsOrAppsAreBad()V

    .line 140
    iput-boolean v1, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTriggered:Z

    .line 141
    iput v1, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I
    :try_end_46
    .catchall {:try_start_16 .. :try_end_46} :catchall_72

    .line 145
    :try_start_46
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mPackageStatusStorage:Lcom/android/server/timezone/PackageStatusStorage;

    invoke-virtual {v0}, Lcom/android/server/timezone/PackageStatusStorage;->initialize()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4b} :catch_67
    .catchall {:try_start_46 .. :try_end_4b} :catchall_72

    .line 152
    :try_start_4b
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p0}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->initialize(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/timezone/PackageTracker;)V

    .line 157
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    iget v1, p0, Lcom/android/server/timezone/PackageTracker;->mDelayBeforeReliabilityCheckMillis:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->scheduleReliabilityTrigger(J)V

    const-string/jumbo v0, "timezone.PackageTracker"

    const-string v1, "Time zone updater / data package tracking enabled"

    .line 159
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_4b .. :try_end_64} :catchall_72

    const/4 v0, 0x1

    .line 160
    monitor-exit p0

    return v0

    :catch_67
    move-exception v0

    :try_start_68
    const-string/jumbo v2, "timezone.PackageTracker"

    const-string v3, "PackageTracker storage could not be initialized."

    .line 147
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_70
    .catchall {:try_start_68 .. :try_end_70} :catchall_72

    .line 148
    monitor-exit p0

    return v1

    :catchall_72
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final throwIfDeviceSettingsOrAppsAreBad()V
    .registers 7

    .line 173
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    const-string v1, "Update app package name missing."

    invoke-static {v0, v1}, Lcom/android/server/timezone/PackageTracker;->throwRuntimeExceptionIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    const-string v1, "Data app package name missing."

    invoke-static {v0, v1}, Lcom/android/server/timezone/PackageTracker;->throwRuntimeExceptionIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-wide v0, p0, Lcom/android/server/timezone/PackageTracker;->mFailedCheckRetryCount:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-ltz v0, :cond_e7

    .line 179
    iget v0, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTimeAllowedMillis:I

    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_cf

    .line 186
    :try_start_1d
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mPackageManagerHelper:Lcom/android/server/timezone/PackageManagerHelper;

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/android/server/timezone/PackageManagerHelper;->isPrivilegedApp(Ljava/lang/String;)Z

    move-result v0
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d .. :try_end_25} :catch_b6

    const-string v2, " must be a priv-app."

    const-string v3, "Update app "

    if-eqz v0, :cond_9d

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is valid."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "timezone.PackageTracker"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :try_start_47
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mPackageManagerHelper:Lcom/android/server/timezone/PackageManagerHelper;

    iget-object v5, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-interface {v0, v5}, Lcom/android/server/timezone/PackageManagerHelper;->isPrivilegedApp(Ljava/lang/String;)Z

    move-result v0
    :try_end_4f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_47 .. :try_end_4f} :catch_84

    const-string v5, "Data app "

    if-eqz v0, :cond_6b

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 199
    :cond_6b
    :try_start_6b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/server/timezone/PackageTracker;->logAndThrowRuntimeException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_84
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6b .. :try_end_84} :catch_84

    :catch_84
    move-exception v0

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not determine data app package details for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/server/timezone/PackageTracker;->logAndThrowRuntimeException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 187
    :cond_9d
    :try_start_9d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/server/timezone/PackageTracker;->logAndThrowRuntimeException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_b6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9d .. :try_end_b6} :catch_b6

    :catch_b6
    move-exception v0

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not determine update app package details for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/server/timezone/PackageTracker;->logAndThrowRuntimeException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 180
    :cond_cf
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCheckTimeAllowedMillis="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTimeAllowedMillis:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/android/server/timezone/PackageTracker;->logAndThrowRuntimeException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 177
    :cond_e7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFailedRetryCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/timezone/PackageTracker;->mFailedCheckRetryCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/android/server/timezone/PackageTracker;->logAndThrowRuntimeException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageTracker{mTrackingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/timezone/PackageTracker;->mTrackingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mUpdateAppPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mDataAppPackageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mCheckTimeAllowedMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTimeAllowedMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDelayBeforeReliabilityCheckMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timezone/PackageTracker;->mDelayBeforeReliabilityCheckMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFailedCheckRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/timezone/PackageTracker;->mFailedCheckRetryCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mLastTriggerTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mLastTriggerTimestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCheckTriggered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTriggered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCheckFailureCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized triggerUpdateIfNeeded(Z)V
    .registers 6

    monitor-enter p0

    .line 217
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/timezone/PackageTracker;->mTrackingEnabled:Z

    if-eqz v0, :cond_152

    .line 225
    invoke-virtual {p0}, Lcom/android/server/timezone/PackageTracker;->validateUpdaterAppManifest()Z

    move-result v0

    .line 226
    invoke-virtual {p0}, Lcom/android/server/timezone/PackageTracker;->validateDataAppManifest()Z

    move-result v1

    if-eqz v0, :cond_12c

    if-nez v1, :cond_13

    goto/16 :goto_12c

    :cond_13
    if-nez p1, :cond_6d

    .line 248
    iget-boolean p1, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTriggered:Z

    if-nez p1, :cond_23

    const-string/jumbo p1, "timezone.PackageTracker"

    const-string/jumbo v0, "triggerUpdateIfNeeded: First reliability trigger."

    .line 250
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    .line 251
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/timezone/PackageTracker;->isCheckInProgress()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 253
    invoke-virtual {p0}, Lcom/android/server/timezone/PackageTracker;->isCheckResponseOverdue()Z

    move-result p1

    if-nez p1, :cond_6d

    const-string/jumbo p1, "timezone.PackageTracker"

    const-string/jumbo v0, "triggerUpdateIfNeeded: checkComplete call is not yet overdue. Not triggering."

    .line 255
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object p1, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    iget v0, p0, Lcom/android/server/timezone/PackageTracker;->mDelayBeforeReliabilityCheckMillis:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->scheduleReliabilityTrigger(J)V
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_15a

    .line 260
    monitor-exit p0

    return-void

    .line 262
    :cond_42
    :try_start_42
    iget p1, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I

    int-to-long v0, p1

    iget-wide v2, p0, Lcom/android/server/timezone/PackageTracker;->mFailedCheckRetryCount:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_5b

    const-string/jumbo p1, "timezone.PackageTracker"

    const-string/jumbo v0, "triggerUpdateIfNeeded: number of allowed consecutive check failures exceeded. Stopping reliability triggers until next reboot or package update."

    .line 265
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object p1, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    invoke-interface {p1}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->unscheduleReliabilityTrigger()V
    :try_end_59
    .catchall {:try_start_42 .. :try_end_59} :catchall_15a

    .line 269
    monitor-exit p0

    return-void

    :cond_5b
    if-nez p1, :cond_6d

    :try_start_5d
    const-string/jumbo p1, "timezone.PackageTracker"

    const-string/jumbo v0, "triggerUpdateIfNeeded: No reliability check required. Last check was successful."

    .line 272
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object p1, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    invoke-interface {p1}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->unscheduleReliabilityTrigger()V
    :try_end_6b
    .catchall {:try_start_5d .. :try_end_6b} :catchall_15a

    .line 275
    monitor-exit p0

    return-void

    .line 280
    :cond_6d
    :goto_6d
    :try_start_6d
    invoke-virtual {p0}, Lcom/android/server/timezone/PackageTracker;->lookupInstalledPackageVersions()Lcom/android/server/timezone/PackageVersions;

    move-result-object p1

    if-nez p1, :cond_83

    const-string/jumbo p1, "timezone.PackageTracker"

    const-string/jumbo v0, "triggerUpdateIfNeeded: currentInstalledVersions was null"

    .line 283
    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object p1, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    invoke-interface {p1}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->unscheduleReliabilityTrigger()V
    :try_end_81
    .catchall {:try_start_6d .. :try_end_81} :catchall_15a

    .line 285
    monitor-exit p0

    return-void

    .line 290
    :cond_83
    :try_start_83
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mPackageStatusStorage:Lcom/android/server/timezone/PackageStatusStorage;

    invoke-virtual {v0}, Lcom/android/server/timezone/PackageStatusStorage;->getPackageStatus()Lcom/android/server/timezone/PackageStatus;

    move-result-object v0

    if-nez v0, :cond_95

    const-string/jumbo v0, "timezone.PackageTracker"

    const-string/jumbo v1, "triggerUpdateIfNeeded: No package status data found. Data check needed."

    .line 294
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fc

    .line 295
    :cond_95
    iget-object v1, v0, Lcom/android/server/timezone/PackageStatus;->mVersions:Lcom/android/server/timezone/PackageVersions;

    invoke-virtual {v1, p1}, Lcom/android/server/timezone/PackageVersions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c5

    const-string/jumbo v1, "timezone.PackageTracker"

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "triggerUpdateIfNeeded: Stored package versions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/timezone/PackageStatus;->mVersions:Lcom/android/server/timezone/PackageVersions;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", do not match current package versions="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Triggering check."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fc

    :cond_c5
    const-string/jumbo v1, "timezone.PackageTracker"

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "triggerUpdateIfNeeded: Stored package versions match currently installed versions, currentInstalledVersions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", packageStatus.mCheckStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/timezone/PackageStatus;->mCheckStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget v0, v0, Lcom/android/server/timezone/PackageStatus;->mCheckStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_fc

    const-string/jumbo p1, "timezone.PackageTracker"

    const-string/jumbo v0, "triggerUpdateIfNeeded: Prior check succeeded. No need to trigger."

    .line 308
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object p1, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    invoke-interface {p1}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->unscheduleReliabilityTrigger()V
    :try_end_fa
    .catchall {:try_start_83 .. :try_end_fa} :catchall_15a

    .line 310
    monitor-exit p0

    return-void

    .line 315
    :cond_fc
    :goto_fc
    :try_start_fc
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mPackageStatusStorage:Lcom/android/server/timezone/PackageStatusStorage;

    .line 316
    invoke-virtual {v0, p1}, Lcom/android/server/timezone/PackageStatusStorage;->generateCheckToken(Lcom/android/server/timezone/PackageVersions;)Lcom/android/server/timezone/CheckToken;

    move-result-object p1

    if-nez p1, :cond_117

    const-string/jumbo p1, "timezone.PackageTracker"

    const-string/jumbo v0, "triggerUpdateIfNeeded: Unable to generate check token. Not sending check request."

    .line 318
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object p1, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    iget v0, p0, Lcom/android/server/timezone/PackageTracker;->mDelayBeforeReliabilityCheckMillis:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->scheduleReliabilityTrigger(J)V
    :try_end_115
    .catchall {:try_start_fc .. :try_end_115} :catchall_15a

    .line 322
    monitor-exit p0

    return-void

    .line 326
    :cond_117
    :try_start_117
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    invoke-interface {v0, p1}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->sendTriggerUpdateCheck(Lcom/android/server/timezone/CheckToken;)V

    const/4 p1, 0x1

    .line 327
    iput-boolean p1, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTriggered:Z

    .line 330
    invoke-virtual {p0}, Lcom/android/server/timezone/PackageTracker;->setCheckInProgress()V

    .line 334
    iget-object p1, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    iget v0, p0, Lcom/android/server/timezone/PackageTracker;->mDelayBeforeReliabilityCheckMillis:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->scheduleReliabilityTrigger(J)V
    :try_end_12a
    .catchall {:try_start_117 .. :try_end_12a} :catchall_15a

    .line 335
    monitor-exit p0

    return-void

    :cond_12c
    :goto_12c
    :try_start_12c
    const-string/jumbo p1, "timezone.PackageTracker"

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No update triggered due to invalid application manifest entries. updaterApp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", dataApp="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object p1, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    invoke-interface {p1}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->unscheduleReliabilityTrigger()V
    :try_end_150
    .catchall {:try_start_12c .. :try_end_150} :catchall_15a

    .line 234
    monitor-exit p0

    return-void

    .line 218
    :cond_152
    :try_start_152
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected call. Tracking is disabled."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_15a
    .catchall {:try_start_152 .. :try_end_15a} :catchall_15a

    :catchall_15a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final validateDataAppManifest()Z
    .registers 4

    .line 477
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mPackageManagerHelper:Lcom/android/server/timezone/PackageManagerHelper;

    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    const-string v2, "com.android.timezone"

    invoke-interface {v0, v2, v1}, Lcom/android/server/timezone/PackageManagerHelper;->contentProviderRegistered(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "validateDataAppManifest: Data app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not expose the required provider with authority="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "timezone.PackageTracker"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_30
    const/4 p0, 0x1

    return p0
.end method

.method public final validateUpdaterAppManifest()Z
    .registers 7

    const-string v0, "android.permission.UPDATE_TIME_ZONE_RULES"

    const-string/jumbo v1, "validateUpdaterAppManifest: Updater app "

    const-string/jumbo v2, "timezone.PackageTracker"

    const/4 v3, 0x0

    .line 493
    :try_start_9
    iget-object v4, p0, Lcom/android/server/timezone/PackageTracker;->mPackageManagerHelper:Lcom/android/server/timezone/PackageManagerHelper;

    iget-object v5, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Lcom/android/server/timezone/PackageManagerHelper;->usesPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 496
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not use permission="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 501
    :cond_30
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mPackageManagerHelper:Lcom/android/server/timezone/PackageManagerHelper;

    iget-object v4, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    .line 502
    invoke-static {v4}, Landroid/app/timezone/RulesUpdaterContract;->createUpdaterIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.permission.TRIGGER_TIME_ZONE_RULES_CHECK"

    .line 501
    invoke-interface {v0, v4, v5}, Lcom/android/server/timezone/PackageManagerHelper;->receiverRegistered(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p0
    :try_end_3e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_3e} :catch_43

    if-nez p0, :cond_41

    return v3

    :cond_41
    const/4 p0, 0x1

    return p0

    :catch_43
    move-exception v0

    .line 509
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not expose the required broadcast receiver."

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method
