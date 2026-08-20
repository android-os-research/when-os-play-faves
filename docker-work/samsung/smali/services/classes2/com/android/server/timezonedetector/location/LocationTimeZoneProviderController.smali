.class public Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;
.super Ljava/lang/Object;
.source "LocationTimeZoneProviderController.java"

# interfaces
.implements Lcom/android/server/timezonedetector/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$MetricsLogger;,
        Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Callback;,
        Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;,
        Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$State;
    }
.end annotation


# static fields
.field public static final STATE_CERTAIN:Ljava/lang/String; = "CERTAIN"

.field public static final STATE_DESTROYED:Ljava/lang/String; = "DESTROYED"

.field public static final STATE_FAILED:Ljava/lang/String; = "FAILED"

.field public static final STATE_INITIALIZING:Ljava/lang/String; = "INITIALIZING"

.field public static final STATE_PROVIDERS_INITIALIZING:Ljava/lang/String; = "PROVIDERS_INITIALIZING"

.field public static final STATE_STOPPED:Ljava/lang/String; = "STOPPED"

.field public static final STATE_UNCERTAIN:Ljava/lang/String; = "UNCERTAIN"

.field public static final STATE_UNKNOWN:Ljava/lang/String; = "UNKNOWN"


# instance fields
.field public mCallback:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Callback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSharedLock"
        }
    .end annotation
.end field

.field public mCurrentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSharedLock"
        }
    .end annotation
.end field

.field public mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSharedLock"
        }
    .end annotation
.end field

.field public mLastSuggestion:Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSharedLock"
        }
    .end annotation
.end field

.field public final mMetricsLogger:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$MetricsLogger;

.field public final mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

.field public final mRecordStateChanges:Z

.field public final mRecordedStates:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSharedLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

.field public final mSharedLock:Ljava/lang/Object;

.field public final mState:Lcom/android/server/timezonedetector/ReferenceWithHistory;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSharedLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/timezonedetector/ReferenceWithHistory<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

.field public final mUncertaintyTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;


# direct methods
.method public static synthetic $r8$lambda$XdU-_0g10b1-U_OhFYCLV67DorM(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;JLjava/time/Duration;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->lambda$handleProviderUncertainty$0(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;JLjava/time/Duration;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/timezonedetector/location/ThreadingDomain;Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$MetricsLogger;Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;Z)V
    .registers 8

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mRecordedStates:Ljava/util/ArrayList;

    .line 172
    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 185
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    .line 186
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->getLockObject()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSharedLock:Ljava/lang/Object;

    .line 187
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->createSingleRunnableQueue()Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mUncertaintyTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    .line 188
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$MetricsLogger;

    iput-object p2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mMetricsLogger:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$MetricsLogger;

    .line 189
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 190
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 191
    iput-boolean p5, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mRecordStateChanges:Z

    .line 193
    monitor-enter v1

    :try_start_39
    const-string p0, "UNKNOWN"

    .line 194
    invoke-virtual {v0, p0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    monitor-exit v1

    return-void

    :catchall_40
    move-exception p0

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public static createUncertainSuggestion(JLjava/lang/String;)Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;
    .registers 4

    .line 772
    invoke-static {p0, p1}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->createUncertainSuggestion(J)Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 774
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->addDebugInfo([Ljava/lang/String;)V

    return-object p0
.end method

.method private synthetic lambda$handleProviderUncertainty$0(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;JLjava/time/Duration;)V
    .registers 5

    .line 721
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->onProviderUncertaintyTimeout(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;JLjava/time/Duration;)V

    return-void
.end method


# virtual methods
.method public final alterProvidersStartedStateIfRequired(Lcom/android/server/timezonedetector/ConfigurationInternal;Lcom/android/server/timezonedetector/ConfigurationInternal;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSharedLock"
        }
    .end annotation

    if-eqz p1, :cond_a

    .line 367
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isGeoDetectionExecutionEnabled()Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    .line 369
    :goto_b
    invoke-virtual {p2}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isGeoDetectionExecutionEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_12

    return-void

    :cond_12
    if-eqz v0, :cond_70

    const-string p1, "INITIALIZING"

    .line 384
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->setState(Ljava/lang/String;)V

    .line 387
    iget-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->tryStartProvider(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;Lcom/android/server/timezonedetector/ConfigurationInternal;)V

    .line 391
    iget-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object p1

    .line 392
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->isStarted()Z

    move-result p1

    if-nez p1, :cond_75

    .line 395
    iget-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->tryStartProvider(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;Lcom/android/server/timezonedetector/ConfigurationInternal;)V

    .line 397
    iget-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object p1

    .line 398
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->isStarted()Z

    move-result p1

    if-nez p1, :cond_75

    .line 401
    iget-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;

    .line 402
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;->elapsedRealtimeMillis()J

    move-result-wide p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Providers are failed: primary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 404
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " secondary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 405
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 401
    invoke-static {p1, p2, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->createUncertainSuggestion(JLjava/lang/String;)Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    move-result-object p1

    const-string p2, "FAILED"

    .line 406
    invoke-virtual {p0, p1, p2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->makeSuggestion(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;Ljava/lang/String;)V

    goto :goto_75

    :cond_70
    const-string p1, "Geo detection behavior disabled"

    .line 410
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->stopProviders(Ljava/lang/String;)V

    :cond_75
    :goto_75
    return-void
.end method

.method public final assertProviderKnown(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;)V
    .registers 4

    .line 495
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    if-eq p1, v0, :cond_20

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    if-ne p1, p0, :cond_9

    goto :goto_20

    .line 496
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    :goto_20
    return-void
.end method

.method public final cancelUncertaintyTimeout()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSharedLock"
        }
    .end annotation

    .line 687
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mUncertaintyTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->cancel()V

    return-void
.end method

.method public clearRecordedStates()V
    .registers 3

    .line 782
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 784
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 785
    :try_start_8
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mRecordedStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 786
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->clearRecordedStates()V

    .line 787
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->clearRecordedStates()V

    .line 788
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public destroy()V
    .registers 3

    .line 268
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 270
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    const-string v1, "destroy()"

    .line 271
    invoke-virtual {p0, v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->stopProviders(Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->destroy()V

    .line 275
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->destroy()V

    const-string v1, "DESTROYED"

    .line 276
    invoke-virtual {p0, v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->setState(Ljava/lang/String;)V

    .line 277
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 639
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "LocationTimeZoneProviderController:"

    .line 640
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 642
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentUserConfiguration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCurrentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 644
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "providerInitializationTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;

    .line 645
    invoke-virtual {v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;->getProviderInitializationTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 644
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "providerInitializationTimeoutFuzz="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;

    .line 647
    invoke-virtual {v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;->getProviderInitializationTimeoutFuzz()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 646
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uncertaintyDelay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;->getUncertaintyDelay()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLastSuggestion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mLastSuggestion:Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "State history:"

    .line 652
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 654
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 655
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v1, "Primary Provider:"

    .line 657
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 659
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-interface {v1, p1, p2}, Lcom/android/server/timezonedetector/Dumpable;->dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 660
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v1, "Secondary Provider:"

    .line 662
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 663
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 664
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-interface {p0, p1, p2}, Lcom/android/server/timezonedetector/Dumpable;->dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 665
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 667
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 668
    monitor-exit v0

    return-void

    :catchall_d9
    move-exception p0

    monitor-exit v0
    :try_end_db
    .catchall {:try_start_3 .. :try_end_db} :catchall_d9

    throw p0
.end method

.method public getStateForTests()Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;
    .registers 5

    .line 796
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 798
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 799
    :try_start_8
    new-instance v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;

    invoke-direct {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;-><init>()V

    .line 801
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mLastSuggestion:Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    if-eqz v2, :cond_14

    .line 802
    invoke-virtual {v1, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->setLastSuggestion(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;

    .line 804
    :cond_14
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->setControllerState(Ljava/lang/String;)Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mRecordedStates:Ljava/util/ArrayList;

    .line 805
    invoke-virtual {v2, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->setStateChanges(Ljava/util/List;)Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 806
    invoke-virtual {v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getRecordedStates()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->setPrimaryProviderStateChanges(Ljava/util/List;)Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 807
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getRecordedStates()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->setSecondaryProviderStateChanges(Ljava/util/List;)Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;

    .line 808
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->build()Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_3f
    move-exception p0

    .line 809
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_8 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method public getUncertaintyTimeoutDelayMillis()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 263
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mUncertaintyTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->getQueuedDelayMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final handleProviderFailedStateChange(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSharedLock"
        }
    .end annotation

    .line 505
    iget-object p1, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->provider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 506
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v0

    .line 507
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v1

    .line 510
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    if-ne p1, v2, :cond_20

    .line 511
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->isTerminated()Z

    move-result p1

    if-nez p1, :cond_5b

    .line 515
    iget-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCurrentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->tryStartProvider(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;Lcom/android/server/timezonedetector/ConfigurationInternal;)V

    goto :goto_5b

    .line 517
    :cond_20
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    if-ne p1, v2, :cond_5b

    .line 521
    iget v2, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5b

    .line 522
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->isTerminated()Z

    move-result v2

    if-nez v2, :cond_5b

    .line 523
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Secondary provider unexpected reported a failure: failed provider="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", primary provider="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", secondary provider="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 523
    invoke-static {p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;)V

    .line 532
    :cond_5b
    :goto_5b
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->isTerminated()Z

    move-result p1

    if-eqz p1, :cond_96

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->isTerminated()Z

    move-result p1

    if-eqz p1, :cond_96

    .line 536
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->cancelUncertaintyTimeout()V

    .line 540
    iget-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;

    .line 541
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;->elapsedRealtimeMillis()J

    move-result-wide v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Both providers are terminated: primary="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->provider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", secondary="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->provider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 540
    invoke-static {v2, v3, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->createUncertainSuggestion(JLjava/lang/String;)Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    move-result-object p1

    const-string v0, "FAILED"

    .line 545
    invoke-virtual {p0, p1, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->makeSuggestion(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;Ljava/lang/String;)V

    :cond_96
    return-void
.end method

.method public final handleProviderStartedStateChange(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSharedLock"
        }
    .end annotation

    .line 556
    iget-object v0, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->provider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 557
    iget-object p1, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->event:Landroid/service/timezone/TimeZoneProviderEvent;

    const-string/jumbo v1, "provider="

    if-nez p1, :cond_27

    .line 564
    iget-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;

    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;->elapsedRealtimeMillis()J

    move-result-wide v2

    .line 565
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", implicit uncertainty, event=null"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->handleProviderUncertainty(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;JLjava/lang/String;)V

    return-void

    .line 570
    :cond_27
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCurrentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isGeoDetectionExecutionEnabled()Z

    move-result v2

    const-string v3, "Provider="

    if-nez v2, :cond_52

    .line 573
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is started, but currentUserConfiguration="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCurrentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " suggests it shouldn\'t be."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;)V

    .line 578
    :cond_52
    invoke-virtual {p1}, Landroid/service/timezone/TimeZoneProviderEvent;->getType()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_9b

    const/4 v3, 0x2

    if-eq v2, v3, :cond_97

    const/4 v3, 0x3

    if-eq v2, v3, :cond_78

    .line 595
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown eventType="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/timezone/TimeZoneProviderEvent;->getType()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;)V

    goto :goto_b2

    .line 585
    :cond_78
    invoke-virtual {p1}, Landroid/service/timezone/TimeZoneProviderEvent;->getCreationElapsedMillis()J

    move-result-wide v2

    .line 586
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", explicit uncertainty. event="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->handleProviderUncertainty(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;JLjava/lang/String;)V

    goto :goto_b2

    .line 591
    :cond_97
    invoke-virtual {p0, v0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->handleProviderSuggestion(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;Landroid/service/timezone/TimeZoneProviderEvent;)V

    goto :goto_b2

    .line 581
    :cond_9b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is started, but event suggests it shouldn\'t be"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;)V

    :goto_b2
    return-void
.end method

.method public final handleProviderSuggestion(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;Landroid/service/timezone/TimeZoneProviderEvent;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSharedLock"
        }
    .end annotation

    .line 610
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->cancelUncertaintyTimeout()V

    .line 612
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    if-ne p1, v0, :cond_c

    .line 613
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->stopProviderIfStarted(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;)V

    .line 616
    :cond_c
    invoke-virtual {p2}, Landroid/service/timezone/TimeZoneProviderEvent;->getSuggestion()Landroid/service/timezone/TimeZoneProviderSuggestion;

    move-result-object v0

    .line 625
    invoke-virtual {v0}, Landroid/service/timezone/TimeZoneProviderSuggestion;->getElapsedRealtimeMillis()J

    move-result-wide v1

    .line 628
    invoke-virtual {v0}, Landroid/service/timezone/TimeZoneProviderSuggestion;->getTimeZoneIds()Ljava/util/List;

    move-result-object v0

    .line 627
    invoke-static {v1, v2, v0}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->createCertainSuggestion(JLjava/util/List;)Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    move-result-object v0

    .line 630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event received provider="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", providerEvent="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", suggestionCreationTime="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;

    .line 632
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;->elapsedRealtimeMillis()J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    .line 633
    invoke-virtual {v0, p2}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->addDebugInfo([Ljava/lang/String;)V

    const-string p1, "CERTAIN"

    .line 634
    invoke-virtual {p0, v0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->makeSuggestion(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;Ljava/lang/String;)V

    return-void
.end method

.method public handleProviderUncertainty(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;JLjava/lang/String;)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSharedLock"
        }
    .end annotation

    .line 712
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mUncertaintyTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->hasQueued()Z

    move-result v0

    if-nez v0, :cond_38

    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting uncertainty timeout: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 719
    iget-object p4, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;

    invoke-virtual {p4}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;->getUncertaintyDelay()Ljava/time/Duration;

    move-result-object p4

    .line 720
    iget-object v6, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mUncertaintyTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    new-instance v7, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$$ExternalSyntheticLambda1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;JLjava/time/Duration;)V

    .line 723
    invoke-virtual {p4}, Ljava/time/Duration;->toMillis()J

    move-result-wide p2

    .line 720
    invoke-virtual {v6, v7, p2, p3}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->runDelayed(Ljava/lang/Runnable;J)V

    .line 726
    :cond_38
    iget-object p2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    if-ne p1, p2, :cond_43

    .line 731
    iget-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    iget-object p2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCurrentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->tryStartProvider(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;Lcom/android/server/timezonedetector/ConfigurationInternal;)V

    :cond_43
    return-void
.end method

.method public initialize(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Callback;)V
    .registers 5

    .line 203
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 205
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    const-string v1, "initialize()"

    .line 206
    invoke-static {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 207
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;

    .line 208
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCallback:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Callback;

    .line 209
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;->getCurrentUserConfigurationInternal()Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCurrentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 211
    new-instance p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;)V

    const-string p2, "PROVIDERS_INITIALIZING"

    .line 213
    invoke-virtual {p0, p2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->setState(Ljava/lang/String;)V

    .line 214
    iget-object p2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {p2, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->initialize(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderListener;)V

    .line 215
    iget-object p2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {p2, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->initialize(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderListener;)V

    const-string p1, "STOPPED"

    .line 216
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->setState(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 218
    iget-object p2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCurrentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->alterProvidersStartedStateIfRequired(Lcom/android/server/timezonedetector/ConfigurationInternal;Lcom/android/server/timezonedetector/ConfigurationInternal;)V

    .line 220
    monitor-exit v0

    return-void

    :catchall_3e
    move-exception p0

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_8 .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public isUncertaintyTimeoutSet()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 257
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mUncertaintyTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->hasQueued()Z

    move-result p0

    return p0
.end method

.method public final makeSuggestion(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;Ljava/lang/String;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSharedLock"
        }
    .end annotation

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeSuggestion: suggestion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 679
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCallback:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Callback;

    invoke-virtual {v0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Callback;->suggest(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)V

    .line 680
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mLastSuggestion:Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    .line 681
    invoke-virtual {p0, p2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->setState(Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationInternalChanged()V
    .registers 6

    .line 229
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 231
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    const-string/jumbo v1, "onConfigChanged()"

    .line 232
    invoke-static {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCurrentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 235
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;->getCurrentUserConfigurationInternal()Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object v2

    .line 236
    iput-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCurrentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 238
    invoke-virtual {v2, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_68

    .line 239
    invoke-virtual {v2}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getUserId()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getUserId()I

    move-result v4

    if-eq v3, v4, :cond_65

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User changed. old="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getUserId()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", new="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v2}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getUserId()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping providers: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0, v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->stopProviders(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 247
    invoke-virtual {p0, v1, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->alterProvidersStartedStateIfRequired(Lcom/android/server/timezonedetector/ConfigurationInternal;Lcom/android/server/timezonedetector/ConfigurationInternal;)V

    goto :goto_68

    .line 249
    :cond_65
    invoke-virtual {p0, v1, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->alterProvidersStartedStateIfRequired(Lcom/android/server/timezonedetector/ConfigurationInternal;Lcom/android/server/timezonedetector/ConfigurationInternal;)V

    .line 252
    :cond_68
    :goto_68
    monitor-exit v0

    return-void

    :catchall_6a
    move-exception p0

    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_8 .. :try_end_6c} :catchall_6a

    throw p0
.end method

.method public onProviderStateChange(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;)V
    .registers 6

    .line 446
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 447
    iget-object v0, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->provider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 448
    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->assertProviderKnown(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;)V

    .line 450
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSharedLock:Ljava/lang/Object;

    monitor-enter v1

    .line 454
    :try_start_d
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "PROVIDERS_INITIALIZING"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 455
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onProviderStateChange: Ignoring provider state change because both providers have not yet completed initialization. providerState="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;)V

    .line 458
    monitor-exit v1

    return-void

    .line 461
    :cond_32
    iget v2, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    packed-switch v2, :pswitch_data_9a

    .line 488
    new-instance p0, Ljava/lang/StringBuilder;

    goto :goto_81

    .line 482
    :pswitch_3a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received notification of permanent failure for provider="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->handleProviderFailedStateChange(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;)V

    goto :goto_94

    .line 476
    :pswitch_52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onProviderStateChange: Received notification of a state change while started, provider="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->handleProviderStartedStateChange(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;)V

    goto :goto_94

    .line 468
    :pswitch_6b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onProviderStateChange: Unexpected state change for provider, provider="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;)V

    goto :goto_94

    .line 488
    :goto_81
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onProviderStateChange: Unexpected provider="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;)V

    .line 491
    :goto_94
    monitor-exit v1

    return-void

    :catchall_96
    move-exception p0

    monitor-exit v1
    :try_end_98
    .catchall {:try_start_d .. :try_end_98} :catchall_96

    throw p0

    nop

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_52
        :pswitch_52
        :pswitch_6b
        :pswitch_3a
        :pswitch_6b
    .end packed-switch
.end method

.method public final onProviderUncertaintyTimeout(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;JLjava/time/Duration;)V
    .registers 10

    .line 739
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 741
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 742
    :try_start_8
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;->elapsedRealtimeMillis()J

    move-result-wide v1

    .line 752
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uncertainty timeout triggered for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": primary="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", secondary="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", uncertaintyStarted="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    invoke-static {p2, p3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", afterUncertaintyTimeout="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", uncertaintyDelay="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 752
    invoke-static {p2, p3, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->createUncertainSuggestion(JLjava/lang/String;)Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    move-result-object p1

    const-string p2, "UNCERTAIN"

    .line 763
    invoke-virtual {p0, p1, p2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->makeSuggestion(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;Ljava/lang/String;)V

    .line 764
    monitor-exit v0

    return-void

    :catchall_62
    move-exception p0

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_8 .. :try_end_64} :catchall_62

    throw p0
.end method

.method public final setState(Ljava/lang/String;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSharedLock"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 287
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mRecordStateChanges:Z

    if-eqz v0, :cond_1a

    .line 289
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mRecordedStates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_1a
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mMetricsLogger:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$MetricsLogger;

    invoke-interface {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$MetricsLogger;->onStateChange(Ljava/lang/String;)V

    :cond_1f
    return-void
.end method

.method public final stopProvider(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSharedLock"
        }
    .end annotation

    .line 325
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object p0

    .line 326
    iget p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    packed-switch p0, :pswitch_data_6a

    .line 344
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown provider state: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;)V

    goto :goto_69

    .line 340
    :pswitch_1e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to stop "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": it is terminated."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    goto :goto_69

    .line 328
    :pswitch_38
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No need to stop "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": already stopped"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    goto :goto_69

    .line 334
    :pswitch_52
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Stopping "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->stopUpdates()V

    :goto_69
    return-void

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_38
        :pswitch_1e
        :pswitch_1e
    .end packed-switch
.end method

.method public final stopProviderIfStarted(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSharedLock"
        }
    .end annotation

    .line 318
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 319
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->stopProvider(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;)V

    :cond_d
    return-void
.end method

.method public final stopProviders(Ljava/lang/String;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSharedLock"
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->stopProviderIfStarted(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;)V

    .line 298
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->stopProviderIfStarted(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;)V

    .line 301
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->cancelUncertaintyTimeout()V

    .line 307
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "CERTAIN"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 308
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;

    .line 309
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;->elapsedRealtimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Withdraw previous suggestion, providers are stopping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 308
    invoke-static {v0, v1, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->createUncertainSuggestion(JLjava/lang/String;)Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    move-result-object p1

    const-string v0, "UNCERTAIN"

    .line 311
    invoke-virtual {p0, p1, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->makeSuggestion(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;Ljava/lang/String;)V

    :cond_3b
    const-string p1, "STOPPED"

    .line 313
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->setState(Ljava/lang/String;)V

    return-void
.end method

.method public final tryStartProvider(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;Lcom/android/server/timezonedetector/ConfigurationInternal;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSharedLock"
        }
    .end annotation

    .line 417
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v0

    .line 418
    iget v0, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    packed-switch v0, :pswitch_data_7e

    .line 439
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown provider state: provider="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 435
    :pswitch_20
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to start "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": it is terminated"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    goto :goto_7d

    .line 420
    :pswitch_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enabling "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;

    .line 422
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;->getProviderInitializationTimeout()Ljava/time/Duration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;

    .line 423
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;->getProviderInitializationTimeoutFuzz()Ljava/time/Duration;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;

    .line 424
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;->getProviderEventFilteringAgeThreshold()Ljava/time/Duration;

    move-result-object p0

    .line 421
    invoke-virtual {p1, p2, v0, v1, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->startUpdates(Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/time/Duration;Ljava/time/Duration;Ljava/time/Duration;)V

    goto :goto_7d

    .line 430
    :pswitch_64
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No need to start "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": already started"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    :goto_7d
    return-void

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_64
        :pswitch_64
        :pswitch_64
        :pswitch_3a
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method
