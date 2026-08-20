.class public final Lcom/android/server/timedetector/TimeDetectorStrategyImpl;
.super Ljava/lang/Object;
.source "TimeDetectorStrategyImpl.java"

# interfaces
.implements Lcom/android/server/timedetector/TimeDetectorStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;
    }
.end annotation


# static fields
.field public static final DBG:Z = true

.field public static final KEEP_SUGGESTION_HISTORY_SIZE:I = 0xa

.field public static final LOG_TAG:Ljava/lang/String; = "time_detector"

.field public static final MAX_SUGGESTION_TIME_AGE_MILLIS:J = 0x5265c00L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SYSTEM_CLOCK_PARANOIA_THRESHOLD_MILLIS:J = 0x7d0L

.field public static final TELEPHONY_BUCKET_COUNT:I = 0x18

.field public static final TELEPHONY_BUCKET_SIZE_MILLIS:I = 0x36ee80
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TELEPHONY_INVALID_SCORE:I = -0x1


# instance fields
.field public final mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

.field public mLastAutoSystemClockTimeSet:Landroid/os/TimestampedValue;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final mLastExternalSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/timezonedetector/ReferenceWithHistory<",
            "Landroid/app/time/ExternalTimeSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field public final mLastGnssSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/timezonedetector/ReferenceWithHistory<",
            "Landroid/app/timedetector/GnssTimeSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field public final mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/timezonedetector/ReferenceWithHistory<",
            "Landroid/app/timedetector/NetworkTimeSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field public final mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/timezonedetector/ArrayMapWithHistory<",
            "Ljava/lang/Integer;",
            "Landroid/app/timedetector/TelephonyTimeSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field public final mTimeChangesLog:Landroid/util/LocalLog;


# direct methods
.method public static synthetic $r8$lambda$gYSS8zrM-Lu8-IJuPo5HO8R9lrc(Lcom/android/server/timedetector/TimeDetectorStrategyImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->handleAutoTimeConfigChanged()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x1e

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/LocalLog;-><init>(IZ)V

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mTimeChangesLog:Landroid/util/LocalLog;

    .line 117
    new-instance v0, Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    .line 121
    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 125
    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastGnssSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 129
    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastExternalSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 208
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    iput-object p1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    .line 209
    new-instance v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timedetector/TimeDetectorStrategyImpl;)V

    invoke-interface {p1, v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->setConfigChangeListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timedetector/ServiceConfigAccessor;)Lcom/android/server/timedetector/TimeDetectorStrategy;
    .registers 4

    .line 201
    new-instance v0, Lcom/android/server/timedetector/EnvironmentImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/timedetector/EnvironmentImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timedetector/ServiceConfigAccessor;)V

    .line 203
    new-instance p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;

    invoke-direct {p0, v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;-><init>(Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;)V

    return-object p0
.end method

.method public static isOriginAutomatic(I)Z
    .registers 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method public static scoreTelephonySuggestion(JLandroid/app/timedetector/TelephonyTimeSuggestion;)I
    .registers 6

    .line 614
    invoke-virtual {p2}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/os/TimestampedValue;

    move-result-object v0

    .line 615
    invoke-static {p0, p1, v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionUnixEpochTime(JLandroid/os/TimestampedValue;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_2b

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Existing suggestion found to be invalid elapsedRealtimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", timeSuggestion="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "time_detector"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 624
    :cond_2b
    invoke-virtual {v0}, Landroid/os/TimestampedValue;->getReferenceTimeMillis()J

    move-result-wide v0

    sub-long/2addr p0, v0

    const-wide/32 v0, 0x36ee80

    .line 627
    div-long/2addr p0, v0

    long-to-int p0, p0

    const/16 p1, 0x18

    if-lt p0, p1, :cond_3a

    return v2

    :cond_3a
    sub-int/2addr p1, p0

    return p1
.end method

.method public static validateSuggestionUnixEpochTime(JLandroid/os/TimestampedValue;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/os/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 893
    invoke-virtual {p2}, Landroid/os/TimestampedValue;->getReferenceTimeMillis()J

    move-result-wide v0

    cmp-long p2, v0, p0

    const/4 v2, 0x0

    if-lez p2, :cond_a

    return v2

    :cond_a
    sub-long/2addr p0, v0

    const-wide/32 v0, 0x5265c00

    cmp-long p0, p0, v0

    if-gtz p0, :cond_13

    const/4 v2, 0x1

    :cond_13
    return v2
.end method


# virtual methods
.method public final doAutoTimeDetection(Ljava/lang/String;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 470
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->isAutoTimeDetectionEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    .line 472
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->isNtpSetByMdm()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 479
    :cond_f
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->autoOriginPriorities()[I

    move-result-object v0

    .line 480
    array-length v1, v0

    const/4 v2, 0x0

    :goto_17
    const-string/jumbo v3, "time_detector"

    const-string v4, ", detectionReason="

    if-ge v2, v1, :cond_e8

    aget v5, v0, v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v5, v6, :cond_47

    .line 484
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findBestTelephonySuggestion()Landroid/app/timedetector/TelephonyTimeSuggestion;

    move-result-object v3

    if-eqz v3, :cond_dd

    .line 486
    invoke-virtual {v3}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/os/TimestampedValue;

    move-result-object v7

    .line 487
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found good telephony suggestion., bestTelephonySuggestion="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_de

    :cond_47
    const/4 v6, 0x3

    if-ne v5, v6, :cond_6d

    .line 492
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findLatestValidNetworkSuggestion()Landroid/app/timedetector/NetworkTimeSuggestion;

    move-result-object v3

    if-eqz v3, :cond_dd

    .line 494
    invoke-virtual {v3}, Landroid/app/timedetector/NetworkTimeSuggestion;->getUnixEpochTime()Landroid/os/TimestampedValue;

    move-result-object v7

    .line 495
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found good network suggestion., networkSuggestion="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_de

    :cond_6d
    const/4 v6, 0x4

    if-ne v5, v6, :cond_92

    .line 500
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findLatestValidGnssSuggestion()Landroid/app/timedetector/GnssTimeSuggestion;

    move-result-object v3

    if-eqz v3, :cond_dd

    .line 502
    invoke-virtual {v3}, Landroid/app/timedetector/GnssTimeSuggestion;->getUnixEpochTime()Landroid/os/TimestampedValue;

    move-result-object v7

    .line 503
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found good gnss suggestion., gnssTimeSuggestion="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_de

    :cond_92
    const/4 v6, 0x5

    if-ne v5, v6, :cond_b8

    .line 508
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findLatestValidExternalSuggestion()Landroid/app/time/ExternalTimeSuggestion;

    move-result-object v3

    if-eqz v3, :cond_dd

    .line 510
    invoke-virtual {v3}, Landroid/app/time/ExternalTimeSuggestion;->getUnixEpochTime()Landroid/os/TimestampedValue;

    move-result-object v6

    .line 511
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found good external suggestion., externalTimeSuggestion="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v7, v6

    goto :goto_de

    .line 516
    :cond_b8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown or unsupported origin="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " in "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": Skipping"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 516
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_dd
    move-object v3, v7

    :goto_de
    if-eqz v7, :cond_e4

    .line 523
    invoke-virtual {p0, v5, v7, v3}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->setSystemClockIfRequired(ILandroid/os/TimestampedValue;Ljava/lang/String;)Z

    return-void

    :cond_e4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_17

    .line 529
    :cond_e8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not determine time: No suggestion found in originPriorities="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 529
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 10

    monitor-enter p0

    :try_start_1
    const-string p2, "TimeDetectorStrategy:"

    .line 328
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 331
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mLastAutoSystemClockTimeSet="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastAutoSystemClockTimeSet:Landroid/os/TimestampedValue;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 332
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mEnvironment.isAutoTimeDetectionEnabled()="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    .line 333
    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->isAutoTimeDetectionEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 332
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 334
    iget-object p2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {p2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->elapsedRealtimeMillis()J

    move-result-wide v0

    const-string p2, "mEnvironment.elapsedRealtimeMillis()=%s (%s)\n"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    .line 336
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v3, v1

    .line 335
    invoke-virtual {p1, p2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 337
    iget-object p2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {p2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->systemClockMillis()J

    move-result-wide v3

    const-string p2, "mEnvironment.systemClockMillis()=%s (%s)\n"

    new-array v0, v2, [Ljava/lang/Object;

    .line 339
    invoke-static {v3, v4}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v6

    aput-object v6, v0, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v1

    .line 338
    invoke-virtual {p1, p2, v0}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 340
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mEnvironment.systemClockUpdateThresholdMillis()="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    .line 341
    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->systemClockUpdateThresholdMillis()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 340
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 342
    iget-object p2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {p2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->autoTimeLowerBound()Ljava/time/Instant;

    move-result-object p2

    const-string v0, "mEnvironment.autoTimeLowerBound()=%s (%s)\n"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v5

    .line 344
    invoke-virtual {p2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v2, v1

    .line 343
    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 345
    iget-object p2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    .line 346
    invoke-interface {p2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->autoOriginPriorities()[I

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p2

    new-instance v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda1;-><init>()V

    .line 347
    invoke-interface {p2, v0}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p2

    const-string v0, ","

    const-string v1, "["

    const-string v2, "]"

    .line 348
    invoke-static {v0, v1, v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEnvironment.autoOriginPriorities()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "Time change log:"

    .line 351
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 353
    iget-object p2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mTimeChangesLog:Landroid/util/LocalLog;

    invoke-virtual {p2, p1}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 354
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p2, "Telephony suggestion history:"

    .line 356
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 358
    iget-object p2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-virtual {p2, p1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 359
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p2, "Network suggestion history:"

    .line 361
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 363
    iget-object p2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {p2, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 364
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p2, "Gnss suggestion history:"

    .line 366
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 368
    iget-object p2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastGnssSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {p2, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 369
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p2, "External suggestion history:"

    .line 371
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 373
    iget-object p2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastExternalSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {p2, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 374
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 376
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_12b
    .catchall {:try_start_1 .. :try_end_12b} :catchall_12d

    .line 377
    monitor-exit p0

    return-void

    :catchall_12d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final findBestTelephonySuggestion()Landroid/app/timedetector/TelephonyTimeSuggestion;
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 538
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->elapsedRealtimeMillis()J

    move-result-wide v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v2

    .line 572
    :goto_a
    iget-object v6, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-virtual {v6}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->size()I

    move-result v6

    if-ge v4, v6, :cond_75

    .line 573
    iget-object v6, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-virtual {v6, v4}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 574
    iget-object v7, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-virtual {v7, v4}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/timedetector/TelephonyTimeSuggestion;

    const-string/jumbo v8, "time_detector"

    if-nez v7, :cond_3c

    .line 577
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Latest suggestion unexpectedly null for slotIndex. slotIndex="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    .line 580
    :cond_3c
    invoke-virtual {v7}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/os/TimestampedValue;

    move-result-object v6

    if-nez v6, :cond_57

    .line 582
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Latest suggestion unexpectedly empty.  candidateSuggestion="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    .line 588
    :cond_57
    invoke-static {v0, v1, v7}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->scoreTelephonySuggestion(JLandroid/app/timedetector/TelephonyTimeSuggestion;)I

    move-result v6

    if-ne v6, v2, :cond_5e

    goto :goto_72

    :cond_5e
    if-eqz v3, :cond_70

    if-ge v5, v6, :cond_63

    goto :goto_70

    :cond_63
    if-ne v5, v6, :cond_72

    .line 600
    invoke-virtual {v7}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getSlotIndex()I

    move-result v6

    .line 601
    invoke-virtual {v3}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getSlotIndex()I

    move-result v8

    if-ge v6, v8, :cond_72

    goto :goto_71

    :cond_70
    :goto_70
    move v5, v6

    :goto_71
    move-object v3, v7

    :cond_72
    :goto_72
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_75
    return-object v3
.end method

.method public declared-synchronized findBestTelephonySuggestionForTests()Landroid/app/timedetector/TelephonyTimeSuggestion;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 823
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findBestTelephonySuggestion()Landroid/app/timedetector/TelephonyTimeSuggestion;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final findLatestValidExternalSuggestion()Landroid/app/time/ExternalTimeSuggestion;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 680
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastExternalSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/time/ExternalTimeSuggestion;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    .line 686
    :cond_c
    invoke-virtual {v0}, Landroid/app/time/ExternalTimeSuggestion;->getUnixEpochTime()Landroid/os/TimestampedValue;

    move-result-object v2

    .line 687
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->elapsedRealtimeMillis()J

    move-result-wide v3

    .line 688
    invoke-static {v3, v4, v2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionUnixEpochTime(JLandroid/os/TimestampedValue;)Z

    move-result p0

    if-nez p0, :cond_1d

    return-object v1

    :cond_1d
    return-object v0
.end method

.method public declared-synchronized findLatestValidExternalSuggestionForTests()Landroid/app/time/ExternalTimeSuggestion;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 853
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findLatestValidExternalSuggestion()Landroid/app/time/ExternalTimeSuggestion;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final findLatestValidGnssSuggestion()Landroid/app/timedetector/GnssTimeSuggestion;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 660
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastGnssSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timedetector/GnssTimeSuggestion;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    .line 666
    :cond_c
    invoke-virtual {v0}, Landroid/app/timedetector/GnssTimeSuggestion;->getUnixEpochTime()Landroid/os/TimestampedValue;

    move-result-object v2

    .line 667
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->elapsedRealtimeMillis()J

    move-result-wide v3

    .line 668
    invoke-static {v3, v4, v2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionUnixEpochTime(JLandroid/os/TimestampedValue;)Z

    move-result p0

    if-nez p0, :cond_1d

    return-object v1

    :cond_1d
    return-object v0
.end method

.method public declared-synchronized findLatestValidGnssSuggestionForTests()Landroid/app/timedetector/GnssTimeSuggestion;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 843
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findLatestValidGnssSuggestion()Landroid/app/timedetector/GnssTimeSuggestion;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final findLatestValidNetworkSuggestion()Landroid/app/timedetector/NetworkTimeSuggestion;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 640
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timedetector/NetworkTimeSuggestion;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    .line 646
    :cond_c
    invoke-virtual {v0}, Landroid/app/timedetector/NetworkTimeSuggestion;->getUnixEpochTime()Landroid/os/TimestampedValue;

    move-result-object v2

    .line 647
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->elapsedRealtimeMillis()J

    move-result-wide v3

    .line 648
    invoke-static {v3, v4, v2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionUnixEpochTime(JLandroid/os/TimestampedValue;)Z

    move-result p0

    if-nez p0, :cond_1d

    return-object v1

    :cond_1d
    return-object v0
.end method

.method public declared-synchronized findLatestValidNetworkSuggestionForTests()Landroid/app/timedetector/NetworkTimeSuggestion;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 833
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findLatestValidNetworkSuggestion()Landroid/app/timedetector/NetworkTimeSuggestion;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConfigurationInternal(I)Lcom/android/server/timedetector/ConfigurationInternal;
    .registers 2

    .line 309
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->configurationInternal(I)Lcom/android/server/timedetector/ConfigurationInternal;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getLatestExternalSuggestion()Landroid/app/time/ExternalTimeSuggestion;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 888
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastExternalSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/time/ExternalTimeSuggestion;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLatestGnssSuggestion()Landroid/app/timedetector/GnssTimeSuggestion;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 879
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastGnssSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timedetector/GnssTimeSuggestion;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLatestNetworkSuggestion()Landroid/app/timedetector/NetworkTimeSuggestion;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 870
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timedetector/NetworkTimeSuggestion;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLatestTelephonySuggestion(I)Landroid/app/timedetector/TelephonyTimeSuggestion;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 861
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/timedetector/TelephonyTimeSuggestion;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized handleAutoTimeConfigChanged()V
    .registers 2

    monitor-enter p0

    .line 313
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->isAutoTimeDetectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "Auto time zone detection config changed."

    .line 318
    invoke-virtual {p0, v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->doAutoTimeDetection(Ljava/lang/String;)V

    goto :goto_12

    :cond_f
    const/4 v0, 0x0

    .line 322
    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastAutoSystemClockTimeSet:Landroid/os/TimestampedValue;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 324
    :goto_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isNtpSetByMdm()Z
    .registers 3

    .line 417
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 418
    invoke-interface {p0}, Landroid/sec/enterprise/IEDMProxy;->isNtpSetByMDM()Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_e

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    return p0

    :catch_e
    move-exception p0

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remote Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "time_detector"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method public final setSystemClockIfRequired(ILandroid/os/TimestampedValue;Ljava/lang/String;)Z
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 700
    invoke-static {p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->isOriginAutomatic(I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, ", cause="

    const-string v3, ", time="

    const-string/jumbo v4, "time_detector"

    if-eqz v0, :cond_41

    .line 703
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->isNtpSetByMdm()Z

    move-result v0

    if-nez v0, :cond_41

    .line 705
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->isAutoTimeDetectionEnabled()Z

    move-result v0

    if-nez v0, :cond_74

    .line 707
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Auto time detection is not enabled. origin="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    invoke-static {p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->originToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 707
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 715
    :cond_41
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->isAutoTimeDetectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 717
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->isNtpSetByMdm()Z

    move-result v0

    if-nez v0, :cond_74

    .line 720
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Auto time detection is enabled. origin="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    invoke-static {p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->originToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 720
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 729
    :cond_74
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->acquireWakeLock()V

    .line 731
    :try_start_79
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->setSystemClockUnderWakeLock(ILandroid/os/TimestampedValue;Ljava/lang/String;)Z

    move-result p1
    :try_end_7d
    .catchall {:try_start_79 .. :try_end_7d} :catchall_83

    .line 733
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->releaseWakeLock()V

    return p1

    :catchall_83
    move-exception p1

    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->releaseWakeLock()V

    .line 734
    throw p1
.end method

.method public final setSystemClockUnderWakeLock(ILandroid/os/TimestampedValue;Ljava/lang/String;)Z
    .registers 24
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 745
    iget-object v3, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v3}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->elapsedRealtimeMillis()J

    move-result-wide v3

    .line 746
    invoke-static/range {p1 .. p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->isOriginAutomatic(I)Z

    move-result v5

    .line 747
    iget-object v6, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v6}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->systemClockMillis()J

    move-result-wide v6

    const-string v8, " cause="

    const-string/jumbo v9, "time_detector"

    if-eqz v5, :cond_5b

    .line 751
    iget-object v5, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastAutoSystemClockTimeSet:Landroid/os/TimestampedValue;

    if-eqz v5, :cond_5b

    .line 752
    invoke-static {v5, v3, v4}, Lcom/android/server/timedetector/TimeDetectorStrategy;->getTimeAt(Landroid/os/TimestampedValue;J)J

    move-result-wide v10

    sub-long v12, v10, v6

    .line 755
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    const-wide/16 v14, 0x7d0

    cmp-long v5, v12, v14

    if-lez v5, :cond_5b

    .line 757
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "System clock has not tracked elapsed real time clock. A clock may be inaccurate or something unexpectedly set the system clock. elapsedRealtimeMillis="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " expectedTimeMillis="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " actualTimeMillis="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_5b
    invoke-static {v1, v3, v4}, Lcom/android/server/timedetector/TimeDetectorStrategy;->getTimeAt(Landroid/os/TimestampedValue;J)J

    move-result-wide v10

    sub-long v12, v10, v6

    .line 774
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    .line 775
    iget-object v5, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v5}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->systemClockUpdateThresholdMillis()I

    move-result v5

    int-to-long v14, v5

    const/4 v5, 0x3

    move-wide/from16 v16, v14

    move/from16 v14, p1

    if-ne v14, v5, :cond_94

    .line 777
    iget-object v5, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastAutoSystemClockTimeSet:Landroid/os/TimestampedValue;

    invoke-virtual {v1, v5}, Landroid/os/TimestampedValue;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_94

    const-wide/16 v14, 0x1f4

    .line 779
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v18, v6

    const-string v6, "For more accuracy, systemClockUpdateThreshold changed to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_98

    :cond_94
    move-wide/from16 v18, v6

    move-wide/from16 v14, v16

    :goto_98
    cmp-long v5, v12, v14

    const/4 v6, 0x1

    if-gez v5, :cond_d0

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not setting system clock. New time and system clock are close enough. elapsedRealtimeMillis="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " newTime="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " systemClockUpdateThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " absTimeDifference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 795
    :cond_d0
    iget-object v5, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v5, v10, v11}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->setSystemClock(J)V

    .line 796
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set system clock using time="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " elapsedRealtimeMillis="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " (old) actualSystemClockMillis="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v18

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " newSystemClockMillis="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 802
    invoke-static {v9, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    iget-object v3, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mTimeChangesLog:Landroid/util/LocalLog;

    invoke-virtual {v3, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 808
    invoke-static/range {p1 .. p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->isOriginAutomatic(I)Z

    move-result v2

    if-eqz v2, :cond_117

    .line 809
    iput-object v1, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastAutoSystemClockTimeSet:Landroid/os/TimestampedValue;

    goto :goto_11a

    :cond_117
    const/4 v1, 0x0

    .line 811
    iput-object v1, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastAutoSystemClockTimeSet:Landroid/os/TimestampedValue;

    :goto_11a
    return v6
.end method

.method public final storeTelephonySuggestion(Landroid/app/timedetector/TelephonyTimeSuggestion;)Z
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 382
    invoke-virtual {p1}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/os/TimestampedValue;

    move-result-object v0

    .line 384
    invoke-virtual {p1}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getSlotIndex()I

    move-result v1

    .line 385
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/timedetector/TelephonyTimeSuggestion;

    if-eqz v2, :cond_7b

    .line 388
    invoke-virtual {v2}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/os/TimestampedValue;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "time_detector"

    if-eqz v3, :cond_5e

    .line 389
    invoke-virtual {v2}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/os/TimestampedValue;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2b

    goto :goto_5e

    .line 398
    :cond_2b
    invoke-virtual {v2}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/os/TimestampedValue;

    move-result-object v3

    .line 397
    invoke-static {v0, v3}, Landroid/os/TimestampedValue;->referenceTimeDifference(Landroid/os/TimestampedValue;Landroid/os/TimestampedValue;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gez v0, :cond_7b

    .line 401
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Out of order telephony suggestion received. referenceTimeDifference="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " previousSuggestion="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " suggestion="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 391
    :cond_5e
    :goto_5e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Previous suggestion is null or has a null time. previousSuggestion="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", suggestion="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 410
    :cond_7b
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method public declared-synchronized suggestExternalTime(Landroid/app/time/ExternalTimeSuggestion;)V
    .registers 4

    monitor-enter p0

    .line 214
    :try_start_1
    invoke-virtual {p1}, Landroid/app/time/ExternalTimeSuggestion;->getUnixEpochTime()Landroid/os/TimestampedValue;

    move-result-object v0

    .line 216
    invoke-virtual {p0, v0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateAutoSuggestionTime(Landroid/os/TimestampedValue;Ljava/lang/Object;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_28

    if-nez v0, :cond_d

    .line 217
    monitor-exit p0

    return-void

    .line 220
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastExternalSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "External time suggestion received: suggestion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 223
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->doAutoTimeDetection(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_28

    .line 224
    monitor-exit p0

    return-void

    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized suggestGnssTime(Landroid/app/timedetector/GnssTimeSuggestion;)V
    .registers 4

    monitor-enter p0

    .line 228
    :try_start_1
    invoke-virtual {p1}, Landroid/app/timedetector/GnssTimeSuggestion;->getUnixEpochTime()Landroid/os/TimestampedValue;

    move-result-object v0

    .line 230
    invoke-virtual {p0, v0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateAutoSuggestionTime(Landroid/os/TimestampedValue;Ljava/lang/Object;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_28

    if-nez v0, :cond_d

    .line 231
    monitor-exit p0

    return-void

    .line 234
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastGnssSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GNSS time suggestion received: suggestion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 237
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->doAutoTimeDetection(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_28

    .line 238
    monitor-exit p0

    return-void

    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized suggestManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)Z
    .registers 5

    monitor-enter p0

    .line 242
    :try_start_1
    invoke-virtual {p1}, Landroid/app/timedetector/ManualTimeSuggestion;->getUnixEpochTime()Landroid/os/TimestampedValue;

    move-result-object v0

    .line 244
    invoke-virtual {p0, v0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionTime(Landroid/os/TimestampedValue;Ljava/lang/Object;)Z

    move-result v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_26

    if-nez v1, :cond_e

    const/4 p1, 0x0

    .line 245
    monitor-exit p0

    return p1

    .line 248
    :cond_e
    :try_start_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Manual time suggestion received: suggestion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    .line 249
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->setSystemClockIfRequired(ILandroid/os/TimestampedValue;Ljava/lang/String;)Z

    move-result p1
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_26

    monitor-exit p0

    return p1

    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized suggestNetworkTime(Landroid/app/timedetector/NetworkTimeSuggestion;)V
    .registers 4

    monitor-enter p0

    .line 254
    :try_start_1
    invoke-virtual {p1}, Landroid/app/timedetector/NetworkTimeSuggestion;->getUnixEpochTime()Landroid/os/TimestampedValue;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateAutoSuggestionTime(Landroid/os/TimestampedValue;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 256
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->isNtpSetByMdm()Z

    move-result v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_3e

    if-nez v0, :cond_13

    .line 258
    monitor-exit p0

    return-void

    .line 268
    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timedetector/NetworkTimeSuggestion;

    if-eqz v0, :cond_23

    .line 269
    invoke-virtual {v0, p1}, Landroid/app/timedetector/NetworkTimeSuggestion;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 270
    :cond_23
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New network time suggested. timeSuggestion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 276
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->doAutoTimeDetection(Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_13 .. :try_end_3c} :catchall_3e

    .line 277
    monitor-exit p0

    return-void

    :catchall_3e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized suggestTelephonyTime(Landroid/app/timedetector/TelephonyTimeSuggestion;)V
    .registers 4

    monitor-enter p0

    .line 287
    :try_start_1
    invoke-virtual {p1}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/os/TimestampedValue;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_33

    if-nez v0, :cond_9

    .line 288
    monitor-exit p0

    return-void

    .line 291
    :cond_9
    :try_start_9
    invoke-virtual {p1}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/os/TimestampedValue;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateAutoSuggestionTime(Landroid/os/TimestampedValue;Ljava/lang/Object;)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_33

    if-nez v0, :cond_15

    .line 292
    monitor-exit p0

    return-void

    .line 296
    :cond_15
    :try_start_15
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->storeTelephonySuggestion(Landroid/app/timedetector/TelephonyTimeSuggestion;)Z

    move-result v0
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_33

    if-nez v0, :cond_1d

    .line 297
    monitor-exit p0

    return-void

    .line 302
    :cond_1d
    :try_start_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New telephony time suggested. timeSuggestion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 303
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->doAutoTimeDetection(Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_1d .. :try_end_31} :catchall_33

    .line 304
    monitor-exit p0

    return-void

    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final validateAutoSuggestionTime(Landroid/os/TimestampedValue;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 450
    invoke-virtual {p0, p1, p2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionTime(Landroid/os/TimestampedValue;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 451
    invoke-virtual {p0, p1, p2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionAgainstLowerBound(Landroid/os/TimestampedValue;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final validateSuggestionAgainstLowerBound(Landroid/os/TimestampedValue;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 456
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->autoTimeLowerBound()Ljava/time/Instant;

    move-result-object p0

    .line 459
    invoke-virtual {p1}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 460
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Suggestion points to time before lower bound, skipping it. suggestion="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", lower bound="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "time_detector"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_3b
    const/4 p0, 0x1

    return p0
.end method

.method public final validateSuggestionTime(Landroid/os/TimestampedValue;Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 431
    invoke-virtual {p1}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "time_detector"

    if-nez v0, :cond_1f

    .line 432
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Suggested time value is null. suggestion="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 437
    :cond_1f
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->elapsedRealtimeMillis()J

    move-result-wide v3

    .line 438
    invoke-virtual {p1}, Landroid/os/TimestampedValue;->getReferenceTimeMillis()J

    move-result-wide p0

    cmp-long p0, v3, p0

    if-gez p0, :cond_4a

    .line 440
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "New reference time is in the future? Ignoring. elapsedRealtimeMillis="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", suggestion="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4a
    const/4 p0, 0x1

    return p0
.end method
