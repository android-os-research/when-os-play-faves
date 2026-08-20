.class public final Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;
.super Ljava/lang/Object;
.source "TimeZoneDetectorStrategyImpl.java"

# interfaces
.implements Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;,
        Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;
    }
.end annotation


# static fields
.field public static final DBG:Z = false

.field public static final KEEP_SUGGESTION_HISTORY_SIZE:I = 0xa

.field public static final LOG_TAG:Ljava/lang/String; = "time_zone_detector"

.field public static final TELEPHONY_SCORE_HIGH:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TELEPHONY_SCORE_HIGHEST:I = 0x4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TELEPHONY_SCORE_LOW:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TELEPHONY_SCORE_MEDIUM:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TELEPHONY_SCORE_NONE:I = 0x0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TELEPHONY_SCORE_USAGE_THRESHOLD:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

.field public final mLatestGeoLocationSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/timezonedetector/ReferenceWithHistory<",
            "Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field public final mLatestManualSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/timezonedetector/ReferenceWithHistory<",
            "Landroid/app/timezonedetector/ManualTimeZoneSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field public final mTelephonySuggestionsBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/timezonedetector/ArrayMapWithHistory<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field public mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/TimestampedValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final mTimeZoneChangesLog:Landroid/util/LocalLog;


# direct methods
.method public static synthetic $r8$lambda$XFc6fNbxgIZNP6Z9K56FRJUdSWg(Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->handleConfigurationInternalChanged()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x1e

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/LocalLog;-><init>(IZ)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTimeZoneChangesLog:Landroid/util/LocalLog;

    .line 179
    new-instance v0, Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonySuggestionsBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    .line 188
    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestGeoLocationSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 195
    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestManualSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 231
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    iput-object p1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    .line 234
    new-instance v0, Landroid/os/TimestampedValue;

    .line 235
    invoke-interface {p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->elapsedRealtimeMillis()J

    move-result-wide v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, v3}, Landroid/os/TimestampedValue;-><init>(JLjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    .line 237
    monitor-enter p0

    .line 238
    :try_start_39
    new-instance v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;)V

    invoke-interface {p1, v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->setConfigurationInternalChangeListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V

    .line 240
    invoke-interface {p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->getCurrentUserConfigurationInternal()Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 241
    monitor-exit p0

    return-void

    :catchall_49
    move-exception p1

    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_39 .. :try_end_4b} :catchall_49

    throw p1
.end method

.method public static create(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/ServiceConfigAccessor;)Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;
    .registers 4

    .line 225
    new-instance v0, Lcom/android/server/timezonedetector/EnvironmentImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/timezonedetector/EnvironmentImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/ServiceConfigAccessor;)V

    .line 226
    new-instance p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;

    invoke-direct {p0, v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;)V

    return-object p0
.end method

.method public static formatDebugString(Landroid/os/TimestampedValue;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/TimestampedValue<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/TimestampedValue;->getReferenceTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static scoreTelephonySuggestion(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)I
    .registers 7

    .line 415
    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getZoneId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_38

    .line 417
    :cond_c
    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getMatchType()I

    move-result v0

    const/4 v5, 0x5

    if-eq v0, v5, :cond_37

    .line 418
    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getMatchType()I

    move-result v0

    if-ne v0, v4, :cond_1a

    goto :goto_37

    .line 421
    :cond_1a
    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getQuality()I

    move-result v0

    if-ne v0, v3, :cond_21

    goto :goto_38

    .line 423
    :cond_21
    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getQuality()I

    move-result v0

    if-ne v0, v2, :cond_29

    move v1, v2

    goto :goto_38

    .line 426
    :cond_29
    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getQuality()I

    move-result p0

    if-ne p0, v1, :cond_31

    move v1, v3

    goto :goto_38

    .line 430
    :cond_31
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_37
    :goto_37
    move v1, v4

    :goto_38
    return v1
.end method


# virtual methods
.method public final disableTelephonyFallbackIfNeeded()V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 540
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestGeoLocationSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    .line 541
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->getZoneIds()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_14

    move v3, v1

    goto :goto_15

    :cond_14
    move v3, v2

    :goto_15
    if-eqz v3, :cond_5c

    .line 542
    iget-object v3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    invoke-virtual {v3}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 550
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->getEffectiveFromElapsedMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    .line 551
    invoke-virtual {v0}, Landroid/os/TimestampedValue;->getReferenceTimeMillis()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_34

    goto :goto_35

    :cond_34
    move v1, v2

    :goto_35
    if-eqz v1, :cond_5c

    .line 554
    new-instance v0, Landroid/os/TimestampedValue;

    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    .line 555
    invoke-interface {v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->elapsedRealtimeMillis()J

    move-result-wide v1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, v3}, Landroid/os/TimestampedValue;-><init>(JLjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableTelephonyFallbackIfNeeded: mTelephonyTimeZoneFallbackEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 560
    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->logTimeZoneDetectorChange(Ljava/lang/String;)V

    :cond_5c
    return-void
.end method

.method public final doAutoTimeZoneDetection(Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 443
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getDetectionMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_29

    .line 480
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown detection mode: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getDetectionMode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "time_zone_detector"

    .line 480
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 477
    :cond_29
    invoke-virtual {p0, p2}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->doTelephonyTimeZoneDetection(Ljava/lang/String;)V

    goto :goto_5b

    .line 448
    :cond_2d
    invoke-virtual {p0, p2}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->doGeolocationTimeZoneDetection(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 452
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    .line 453
    invoke-virtual {v0}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 454
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isTelephonyFallbackSupported()Z

    move-result p1

    if-eqz p1, :cond_5b

    .line 472
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", telephony fallback mode"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->doTelephonyTimeZoneDetection(Ljava/lang/String;)V

    :cond_5b
    :goto_5b
    return-void
.end method

.method public final doGeolocationTimeZoneDetection(Ljava/lang/String;)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 495
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestGeoLocationSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 496
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 501
    :cond_c
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->getZoneIds()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_13

    return v1

    .line 507
    :cond_13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1b

    return v3

    .line 519
    :cond_1b
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    invoke-interface {v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->getDeviceTimeZone()Ljava/lang/String;

    move-result-object v2

    .line 520
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    goto :goto_2f

    .line 527
    :cond_28
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 529
    :goto_2f
    invoke-virtual {p0, v2, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->setDeviceTimeZoneIfRequired(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public final doTelephonyTimeZoneDetection(Ljava/lang/String;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 581
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->findBestTelephonySuggestion()Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 593
    :cond_7
    iget v1, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->score:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    if-nez v1, :cond_12

    return-void

    .line 606
    :cond_12
    iget-object v1, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->suggestion:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    invoke-virtual {v1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getZoneId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3a

    .line 608
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Empty zone suggestion scored higher than expected. This is an error: bestTelephonySuggestion="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " detectionReason="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "time_zone_detector"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 614
    :cond_3a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found good suggestion., bestTelephonySuggestion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", detectionReason="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 617
    invoke-virtual {p0, v1, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->setDeviceTimeZoneIfRequired(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string p2, "TimeZoneDetectorStrategy:"

    .line 707
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 710
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mCurrentConfigurationInternal="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 711
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[Capabilities="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->createCapabilitiesAndConfig()Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 713
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mEnvironment.isDeviceTimeZoneInitialized()="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    .line 714
    invoke-interface {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->isDeviceTimeZoneInitialized()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 713
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 715
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mEnvironment.getDeviceTimeZone()="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->getDeviceTimeZone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "Misc state:"

    .line 717
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 718
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 719
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mTelephonyTimeZoneFallbackEnabled="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    .line 720
    invoke-static {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->formatDebugString(Landroid/os/TimestampedValue;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 719
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 721
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p2, "Time zone change log:"

    .line 723
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 724
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 725
    iget-object p2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTimeZoneChangesLog:Landroid/util/LocalLog;

    invoke-virtual {p2, p1}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 726
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p2, "Manual suggestion history:"

    .line 728
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 729
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 730
    iget-object p2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestManualSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {p2, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 731
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p2, "Geolocation suggestion history:"

    .line 733
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 734
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 735
    iget-object p2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestGeoLocationSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {p2, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 736
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p2, "Telephony suggestion history:"

    .line 738
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 739
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 740
    iget-object p2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonySuggestionsBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-virtual {p2, p1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 741
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 742
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_da
    .catchall {:try_start_1 .. :try_end_da} :catchall_dc

    .line 743
    monitor-exit p0

    return-void

    :catchall_dc
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized enableTelephonyTimeZoneFallback()V
    .registers 6

    monitor-enter p0

    .line 342
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    invoke-virtual {v0}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 343
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 345
    new-instance v1, Landroid/os/TimestampedValue;

    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    .line 346
    invoke-interface {v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->elapsedRealtimeMillis()J

    move-result-wide v2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, v2, v3, v4}, Landroid/os/TimestampedValue;-><init>(JLjava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableTelephonyTimeZoneFallbackMode: currentUserConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mTelephonyTimeZoneFallbackEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 352
    invoke-virtual {p0, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->logTimeZoneDetectorChange(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->disableTelephonyFallbackIfNeeded()V

    .line 370
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isTelephonyFallbackSupported()Z

    move-result v1

    if-eqz v1, :cond_4c

    const-string v1, "enableTelephonyTimeZoneFallbackMode"

    .line 372
    invoke-virtual {p0, v0, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->doAutoTimeZoneDetection(Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_4e

    .line 375
    :cond_4c
    monitor-exit p0

    return-void

    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final findBestTelephonySuggestion()Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 654
    :goto_2
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonySuggestionsBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 655
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonySuggestionsBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    .line 656
    invoke-virtual {v2, v1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;

    if-nez v2, :cond_15

    goto :goto_30

    :cond_15
    if-nez v0, :cond_18

    goto :goto_2f

    .line 664
    :cond_18
    iget v3, v2, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->score:I

    iget v4, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->score:I

    if-le v3, v4, :cond_1f

    goto :goto_2f

    :cond_1f
    if-ne v3, v4, :cond_30

    .line 668
    iget-object v3, v2, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->suggestion:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    invoke-virtual {v3}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getSlotIndex()I

    move-result v3

    .line 669
    iget-object v4, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->suggestion:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    invoke-virtual {v4}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getSlotIndex()I

    move-result v4

    if-ge v3, v4, :cond_30

    :goto_2f
    move-object v0, v2

    :cond_30
    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_33
    return-object v0
.end method

.method public declared-synchronized findBestTelephonySuggestionForTests()Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 685
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->findBestTelephonySuggestion()Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;

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

.method public declared-synchronized generateMetricsState()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;
    .registers 8

    monitor-enter p0

    .line 383
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->findBestTelephonySuggestion()Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;

    move-result-object v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_b

    .line 386
    :cond_9
    iget-object v0, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->suggestion:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    :goto_b
    move-object v5, v0

    .line 388
    new-instance v1, Lcom/android/server/timezonedetector/OrdinalGenerator;

    new-instance v0, Lcom/android/server/timezonedetector/TimeZoneCanonicalizer;

    invoke-direct {v0}, Lcom/android/server/timezonedetector/TimeZoneCanonicalizer;-><init>()V

    invoke-direct {v1, v0}, Lcom/android/server/timezonedetector/OrdinalGenerator;-><init>(Ljava/util/function/Function;)V

    .line 390
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    .line 393
    invoke-interface {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->getDeviceTimeZone()Ljava/lang/String;

    move-result-object v3

    .line 394
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->getLatestManualSuggestion()Landroid/app/timezonedetector/ManualTimeZoneSuggestion;

    move-result-object v4

    .line 396
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->getLatestGeolocationSuggestion()Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    move-result-object v6

    .line 390
    invoke-static/range {v1 .. v6}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->create(Lcom/android/server/timezonedetector/OrdinalGenerator;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;Landroid/app/timezonedetector/ManualTimeZoneSuggestion;Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;

    move-result-object v0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    monitor-exit p0

    return-object v0

    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLatestGeolocationSuggestion()Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 767
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestGeoLocationSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLatestManualSuggestion()Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 750
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestManualSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLatestTelephonySuggestion(I)Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 759
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonySuggestionsBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized handleConfigurationInternalChanged()V
    .registers 4

    monitor-enter p0

    .line 689
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    .line 690
    invoke-interface {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->getCurrentUserConfigurationInternal()Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object v0

    .line 691
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleConfigurationInternalChanged: oldConfiguration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", newConfiguration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 694
    invoke-virtual {p0, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->logTimeZoneDetectorChange(Ljava/lang/String;)V

    .line 695
    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 699
    invoke-virtual {p0, v0, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->doAutoTimeZoneDetection(Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    .line 700
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isGeoTimeZoneDetectionSupported()Z
    .registers 2

    .line 408
    monitor-enter p0

    .line 409
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isGeoDetectionSupported()Z

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    .line 410
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized isTelephonyFallbackEnabledForTests()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 772
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    invoke-virtual {v0}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isTelephonyTimeZoneDetectionSupported()Z
    .registers 2

    .line 401
    monitor-enter p0

    .line 402
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isTelephonyDetectionSupported()Z

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    .line 403
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public final logTimeZoneDetectorChange(Ljava/lang/String;)V
    .registers 2

    .line 569
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTimeZoneChangesLog:Landroid/util/LocalLog;

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final setDeviceTimeZoneIfRequired(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 622
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->getDeviceTimeZone()Ljava/lang/String;

    move-result-object v0

    .line 625
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    return-void

    .line 637
    :cond_d
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    invoke-interface {v1, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->setDeviceTimeZone(Ljava/lang/String;)V

    .line 638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set device time zone., currentZoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", newZoneId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", cause="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 642
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->logTimeZoneDetectorChange(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized suggestGeolocationTimeZone(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)V
    .registers 5

    monitor-enter p0

    .line 248
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 254
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestGeoLocationSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->disableTelephonyFallbackIfNeeded()V

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New geolocation time zone suggested. suggestion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 272
    invoke-virtual {p0, v0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->doAutoTimeZoneDetection(Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 273
    monitor-exit p0

    return-void

    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized suggestManualTimeZone(ILandroid/app/timezonedetector/ManualTimeZoneSuggestion;)Z
    .registers 8

    monitor-enter p0

    .line 279
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 280
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getUserId()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, p1, :cond_2b

    const-string/jumbo v0, "time_zone_detector"

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Manual suggestion received but user != current user, userId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " suggestion="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_87

    .line 285
    monitor-exit p0

    return v2

    .line 288
    :cond_2b
    :try_start_2b
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-virtual {p2}, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->getZoneId()Ljava/lang/String;

    move-result-object p1

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Manual time suggestion received: suggestion="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->createCapabilitiesAndConfig()Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getCapabilities()Landroid/app/time/TimeZoneCapabilities;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Landroid/app/time/TimeZoneCapabilities;->getSuggestManualTimeZoneCapability()I

    move-result v3

    const/16 v4, 0x28

    if-eq v3, v4, :cond_7c

    const-string/jumbo p2, "time_zone_detector"

    .line 297
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User does not have the capability needed to set the time zone manually, capabilities="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", timeZoneId="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", cause="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catchall {:try_start_2b .. :try_end_7a} :catchall_87

    .line 301
    monitor-exit p0

    return v2

    .line 308
    :cond_7c
    :try_start_7c
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestManualSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0, p2}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    invoke-virtual {p0, p1, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->setDeviceTimeZoneIfRequired(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_84
    .catchall {:try_start_7c .. :try_end_84} :catchall_87

    const/4 p1, 0x1

    .line 311
    monitor-exit p0

    return p1

    :catchall_87
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized suggestTelephonyTimeZone(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)V
    .registers 6

    monitor-enter p0

    .line 318
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 323
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    invoke-static {p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->scoreTelephonySuggestion(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)I

    move-result v1

    .line 327
    new-instance v2, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;

    invoke-direct {v2, p1, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;-><init>(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;I)V

    .line 331
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonySuggestionsBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-virtual {p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getSlotIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New telephony time zone suggested. suggestion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 336
    invoke-virtual {p0, v0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->doAutoTimeZoneDetection(Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 337
    monitor-exit p0

    return-void

    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method
