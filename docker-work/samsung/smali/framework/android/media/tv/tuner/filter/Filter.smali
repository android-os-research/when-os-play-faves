.class public Landroid/media/tv/tuner/filter/Filter;
.super Ljava/lang/Object;
.source "Filter.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/filter/Filter$MonitorEventMask;,
        Landroid/media/tv/tuner/filter/Filter$ScramblingStatus;,
        Landroid/media/tv/tuner/filter/Filter$Status;,
        Landroid/media/tv/tuner/filter/Filter$Subtype;,
        Landroid/media/tv/tuner/filter/Filter$Type;
    }
.end annotation


# static fields
.field public static final whitelist MONITOR_EVENT_IP_CID_CHANGE:I = 0x2

.field public static final whitelist MONITOR_EVENT_SCRAMBLING_STATUS:I = 0x1

.field public static final whitelist SCRAMBLING_STATUS_NOT_SCRAMBLED:I = 0x2

.field public static final whitelist SCRAMBLING_STATUS_SCRAMBLED:I = 0x4

.field public static final whitelist SCRAMBLING_STATUS_UNKNOWN:I = 0x1

.field public static final whitelist STATUS_DATA_READY:I = 0x1

.field public static final whitelist STATUS_HIGH_WATER:I = 0x4

.field public static final whitelist STATUS_LOW_WATER:I = 0x2

.field public static final whitelist STATUS_OVERFLOW:I = 0x8

.field public static final whitelist SUBTYPE_AUDIO:I = 0x3

.field public static final whitelist SUBTYPE_DOWNLOAD:I = 0x5

.field public static final whitelist SUBTYPE_IP:I = 0xd

.field public static final whitelist SUBTYPE_IP_PAYLOAD:I = 0xc

.field public static final whitelist SUBTYPE_MMTP:I = 0xa

.field public static final whitelist SUBTYPE_NTP:I = 0xb

.field public static final whitelist SUBTYPE_PAYLOAD_THROUGH:I = 0xe

.field public static final whitelist SUBTYPE_PCR:I = 0x8

.field public static final whitelist SUBTYPE_PES:I = 0x2

.field public static final whitelist SUBTYPE_PTP:I = 0x10

.field public static final whitelist SUBTYPE_RECORD:I = 0x6

.field public static final whitelist SUBTYPE_SECTION:I = 0x1

.field public static final whitelist SUBTYPE_TEMI:I = 0x9

.field public static final whitelist SUBTYPE_TLV:I = 0xf

.field public static final whitelist SUBTYPE_TS:I = 0x7

.field public static final whitelist SUBTYPE_UNDEFINED:I = 0x0

.field public static final whitelist SUBTYPE_VIDEO:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "Filter"

.field public static final whitelist TYPE_ALP:I = 0x10

.field public static final whitelist TYPE_IP:I = 0x4

.field public static final whitelist TYPE_MMTP:I = 0x2

.field public static final whitelist TYPE_TLV:I = 0x8

.field public static final whitelist TYPE_TS:I = 0x1

.field public static final whitelist TYPE_UNDEFINED:I


# instance fields
.field private blacklist mCallback:Landroid/media/tv/tuner/filter/FilterCallback;

.field private final blacklist mCallbackLock:Ljava/lang/Object;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mId:J

.field private blacklist mIsClosed:Z

.field private blacklist mIsShared:Z

.field private blacklist mIsStarted:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mMainType:I

.field private blacklist mNativeContext:J

.field private blacklist mSource:Landroid/media/tv/tuner/filter/Filter;

.field private blacklist mStarted:Z

.field private blacklist mSubtype:I


# direct methods
.method private constructor blacklist <init>(J)V
    .registers 4
    .param p1, "id"    # J

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mCallbackLock:Ljava/lang/Object;

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    .line 238
    iput-boolean v0, p0, Landroid/media/tv/tuner/filter/Filter;->mIsStarted:Z

    .line 239
    iput-boolean v0, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    .line 240
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    .line 260
    iput-wide p1, p0, Landroid/media/tv/tuner/filter/Filter;->mId:J

    .line 261
    return-void
.end method

.method private native blacklist nativeAcquireSharedFilterToken()Ljava/lang/String;
.end method

.method private native blacklist nativeClose()I
.end method

.method private native blacklist nativeConfigureFilter(IILandroid/media/tv/tuner/filter/FilterConfiguration;)I
.end method

.method private native blacklist nativeConfigureMonitorEvent(I)I
.end method

.method private native blacklist nativeFlushFilter()I
.end method

.method private native blacklist nativeFreeSharedFilterToken(Ljava/lang/String;)V
.end method

.method private native blacklist nativeGetId()I
.end method

.method private native blacklist nativeGetId64Bit()J
.end method

.method private native blacklist nativeRead([BJJ)I
.end method

.method private native blacklist nativeSetDataSizeDelayHint(I)I
.end method

.method private native blacklist nativeSetDataSource(Landroid/media/tv/tuner/filter/Filter;)I
.end method

.method private native blacklist nativeSetTimeDelayHint(I)I
.end method

.method private native blacklist nativeStartFilter()I
.end method

.method private native blacklist nativeStopFilter()I
.end method

.method private blacklist onFilterEvent([Landroid/media/tv/tuner/filter/FilterEvent;)V
    .registers 7
    .param p1, "events"    # [Landroid/media/tv/tuner/filter/FilterEvent;

    .line 278
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mCallback:Landroid/media/tv/tuner/filter/FilterCallback;

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_14

    .line 280
    new-instance v2, Landroid/media/tv/tuner/filter/Filter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/filter/Filter$$ExternalSyntheticLambda0;-><init>(Landroid/media/tv/tuner/filter/Filter;[Landroid/media/tv/tuner/filter/FilterEvent;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_27

    .line 294
    :cond_14
    array-length v1, p1

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_27

    aget-object v3, p1, v2

    .line 295
    .local v3, "event":Landroid/media/tv/tuner/filter/FilterEvent;
    instance-of v4, v3, Landroid/media/tv/tuner/filter/MediaEvent;

    if-eqz v4, :cond_24

    .line 296
    move-object v4, v3

    check-cast v4, Landroid/media/tv/tuner/filter/MediaEvent;

    invoke-virtual {v4}, Landroid/media/tv/tuner/filter/MediaEvent;->release()V

    .line 294
    .end local v3    # "event":Landroid/media/tv/tuner/filter/FilterEvent;
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 300
    :cond_27
    :goto_27
    monitor-exit v0

    .line 301
    return-void

    .line 300
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private blacklist onFilterStatus(I)V
    .registers 5
    .param p1, "status"    # I

    .line 264
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 265
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mCallback:Landroid/media/tv/tuner/filter/FilterCallback;

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_13

    .line 266
    new-instance v2, Landroid/media/tv/tuner/filter/Filter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/filter/Filter$$ExternalSyntheticLambda1;-><init>(Landroid/media/tv/tuner/filter/Filter;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 274
    :cond_13
    monitor-exit v0

    .line 275
    return-void

    .line 274
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method


# virtual methods
.method public whitelist acquireSharedFilterToken()Ljava/lang/String;
    .registers 5

    .line 589
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 590
    :try_start_3
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 591
    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsStarted:Z

    if-nez v1, :cond_1e

    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    if-eqz v1, :cond_13

    goto :goto_1e

    .line 596
    :cond_13
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/Filter;->nativeAcquireSharedFilterToken()Ljava/lang/String;

    move-result-object v1

    .line 597
    .local v1, "token":Ljava/lang/String;
    if-eqz v1, :cond_1c

    .line 598
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    .line 600
    :cond_1c
    monitor-exit v0

    return-object v1

    .line 592
    .end local v1    # "token":Ljava/lang/String;
    :cond_1e
    :goto_1e
    const-string v1, "Filter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Acquire shared filter in a wrong state, started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/media/tv/tuner/filter/Filter;->mIsStarted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "shared: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 601
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public whitelist test-api close()V
    .registers 4

    .line 563
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 564
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mCallback:Landroid/media/tv/tuner/filter/FilterCallback;

    .line 565
    iput-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mExecutor:Ljava/util/concurrent/Executor;

    .line 566
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_29

    .line 568
    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 569
    :try_start_c
    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    if-eqz v0, :cond_12

    .line 570
    monitor-exit v1

    return-void

    .line 572
    :cond_12
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/Filter;->nativeClose()I

    move-result v0

    .line 573
    .local v0, "res":I
    if-eqz v0, :cond_1e

    .line 574
    const-string v2, "Failed to close filter."

    invoke-static {v0, v2}, Landroid/media/tv/tuner/TunerUtils;->throwExceptionForResult(ILjava/lang/String;)V

    goto :goto_24

    .line 576
    :cond_1e
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsStarted:Z

    .line 577
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    .line 579
    .end local v0    # "res":I
    :goto_24
    monitor-exit v1

    .line 580
    return-void

    .line 579
    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_26

    throw v0

    .line 566
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public whitelist configure(Landroid/media/tv/tuner/filter/FilterConfiguration;)I
    .registers 8
    .param p1, "config"    # Landroid/media/tv/tuner/filter/FilterConfiguration;

    .line 340
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 341
    :try_start_3
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 342
    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    if-eqz v1, :cond_11

    .line 343
    const/4 v1, 0x3

    monitor-exit v0

    return v1

    .line 345
    :cond_11
    invoke-virtual {p1}, Landroid/media/tv/tuner/filter/FilterConfiguration;->getSettings()Landroid/media/tv/tuner/filter/Settings;

    move-result-object v1

    .line 346
    .local v1, "s":Landroid/media/tv/tuner/filter/Settings;
    if-nez v1, :cond_1a

    iget v2, p0, Landroid/media/tv/tuner/filter/Filter;->mSubtype:I

    goto :goto_1e

    :cond_1a
    invoke-virtual {v1}, Landroid/media/tv/tuner/filter/Settings;->getType()I

    move-result v2

    .line 347
    .local v2, "subType":I
    :goto_1e
    iget v3, p0, Landroid/media/tv/tuner/filter/Filter;->mMainType:I

    invoke-virtual {p1}, Landroid/media/tv/tuner/filter/FilterConfiguration;->getType()I

    move-result v4

    if-ne v3, v4, :cond_34

    iget v3, p0, Landroid/media/tv/tuner/filter/Filter;->mSubtype:I

    if-ne v3, v2, :cond_34

    .line 352
    invoke-virtual {p1}, Landroid/media/tv/tuner/filter/FilterConfiguration;->getType()I

    move-result v3

    invoke-direct {p0, v3, v2, p1}, Landroid/media/tv/tuner/filter/Filter;->nativeConfigureFilter(IILandroid/media/tv/tuner/filter/FilterConfiguration;)I

    move-result v3

    monitor-exit v0

    return v3

    .line 348
    :cond_34
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid filter config. filter main type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/media/tv/tuner/filter/Filter;->mMainType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", filter subtype="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/media/tv/tuner/filter/Filter;->mSubtype:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". config main type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 350
    invoke-virtual {p1}, Landroid/media/tv/tuner/filter/FilterConfiguration;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", config subtype="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/tv/tuner/filter/Filter;
    .end local p1    # "config":Landroid/media/tv/tuner/filter/FilterConfiguration;
    throw v3

    .line 353
    .end local v1    # "s":Landroid/media/tv/tuner/filter/Settings;
    .end local v2    # "subType":I
    .restart local p0    # "this":Landroid/media/tv/tuner/filter/Filter;
    .restart local p1    # "config":Landroid/media/tv/tuner/filter/FilterConfiguration;
    :catchall_73
    move-exception v1

    monitor-exit v0
    :try_end_75
    .catchall {:try_start_3 .. :try_end_75} :catchall_73

    throw v1
.end method

.method public whitelist delayCallbackForDurationMillis(J)I
    .registers 5
    .param p1, "durationInMs"    # J

    .line 636
    const-string/jumbo v0, "setTimeDelayHint"

    const/high16 v1, 0x20000

    invoke-static {v1, v0}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 638
    const/4 v0, 0x1

    return v0

    .line 641
    :cond_d
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_27

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_27

    .line 642
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 643
    long-to-int v1, p1

    :try_start_1e
    invoke-direct {p0, v1}, Landroid/media/tv/tuner/filter/Filter;->nativeSetTimeDelayHint(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 644
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_24

    throw v1

    .line 646
    :cond_27
    const/4 v0, 0x4

    return v0
.end method

.method public whitelist delayCallbackUntilBytesAccumulated(I)I
    .registers 4
    .param p1, "bytesAccumulated"    # I

    .line 666
    const-string/jumbo v0, "setTimeDelayHint"

    const/high16 v1, 0x20000

    invoke-static {v1, v0}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 668
    const/4 v0, 0x1

    return v0

    .line 671
    :cond_d
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 672
    :try_start_10
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/Filter;->nativeSetDataSizeDelayHint(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 673
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public whitelist flush()I
    .registers 4

    .line 524
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 525
    :try_start_3
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 526
    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    if-eqz v1, :cond_11

    .line 527
    const/4 v1, 0x3

    monitor-exit v0

    return v1

    .line 529
    :cond_11
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/Filter;->nativeFlushFilter()I

    move-result v1

    monitor-exit v0

    return v1

    .line 530
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public whitelist freeSharedFilterToken(Ljava/lang/String;)V
    .registers 5
    .param p1, "filterToken"    # Ljava/lang/String;

    .line 610
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 611
    :try_start_3
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 612
    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    if-nez v1, :cond_10

    .line 613
    monitor-exit v0

    return-void

    .line 615
    :cond_10
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/Filter;->nativeFreeSharedFilterToken(Ljava/lang/String;)V

    .line 616
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    .line 617
    monitor-exit v0

    .line 618
    return-void

    .line 617
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public blacklist getCallback()Landroid/media/tv/tuner/filter/FilterCallback;
    .registers 3

    .line 319
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 320
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mCallback:Landroid/media/tv/tuner/filter/FilterCallback;

    monitor-exit v0

    return-object v1

    .line 321
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist getId()I
    .registers 4

    .line 362
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 363
    :try_start_3
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 364
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/Filter;->nativeGetId()I

    move-result v1

    monitor-exit v0

    return v1

    .line 365
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public whitelist getIdLong()J
    .registers 4

    .line 372
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 373
    :try_start_3
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 374
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/Filter;->nativeGetId64Bit()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 375
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method synthetic blacklist lambda$onFilterEvent$1$android-media-tv-tuner-filter-Filter([Landroid/media/tv/tuner/filter/FilterEvent;)V
    .registers 7
    .param p1, "events"    # [Landroid/media/tv/tuner/filter/FilterEvent;

    .line 281
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 282
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mCallback:Landroid/media/tv/tuner/filter/FilterCallback;

    if-eqz v1, :cond_b

    .line 283
    invoke-interface {v1, p0, p1}, Landroid/media/tv/tuner/filter/FilterCallback;->onFilterEvent(Landroid/media/tv/tuner/filter/Filter;[Landroid/media/tv/tuner/filter/FilterEvent;)V

    goto :goto_1e

    .line 285
    :cond_b
    array-length v1, p1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_1e

    aget-object v3, p1, v2

    .line 286
    .local v3, "event":Landroid/media/tv/tuner/filter/FilterEvent;
    instance-of v4, v3, Landroid/media/tv/tuner/filter/MediaEvent;

    if-eqz v4, :cond_1b

    .line 287
    move-object v4, v3

    check-cast v4, Landroid/media/tv/tuner/filter/MediaEvent;

    invoke-virtual {v4}, Landroid/media/tv/tuner/filter/MediaEvent;->release()V

    .line 285
    .end local v3    # "event":Landroid/media/tv/tuner/filter/FilterEvent;
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 291
    :cond_1e
    :goto_1e
    monitor-exit v0

    .line 292
    return-void

    .line 291
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method synthetic blacklist lambda$onFilterStatus$0$android-media-tv-tuner-filter-Filter(I)V
    .registers 4
    .param p1, "status"    # I

    .line 267
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mCallback:Landroid/media/tv/tuner/filter/FilterCallback;

    if-eqz v1, :cond_a

    .line 269
    invoke-interface {v1, p0, p1}, Landroid/media/tv/tuner/filter/FilterCallback;->onFilterStatusChanged(Landroid/media/tv/tuner/filter/Filter;I)V

    .line 271
    :cond_a
    monitor-exit v0

    .line 272
    return-void

    .line 271
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public whitelist read([BJJ)I
    .registers 15
    .param p1, "buffer"    # [B
    .param p2, "offset"    # J
    .param p4, "size"    # J

    .line 544
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 545
    :try_start_3
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 546
    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    if-eqz v1, :cond_11

    .line 547
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 549
    :cond_11
    array-length v1, p1

    int-to-long v1, v1

    sub-long/2addr v1, p2

    invoke-static {p4, p5, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_24

    .line 550
    .end local p4    # "size":J
    .local v7, "size":J
    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    :try_start_1b
    invoke-direct/range {v3 .. v8}, Landroid/media/tv/tuner/filter/Filter;->nativeRead([BJJ)I

    move-result p4

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_21

    return p4

    .line 551
    :catchall_21
    move-exception v1

    move-wide p4, v7

    goto :goto_25

    .end local v7    # "size":J
    .restart local p4    # "size":J
    :catchall_24
    move-exception v1

    :goto_25
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public blacklist setCallback(Landroid/media/tv/tuner/filter/FilterCallback;Ljava/util/concurrent/Executor;)V
    .registers 5
    .param p1, "cb"    # Landroid/media/tv/tuner/filter/FilterCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 311
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 312
    :try_start_3
    iput-object p1, p0, Landroid/media/tv/tuner/filter/Filter;->mCallback:Landroid/media/tv/tuner/filter/FilterCallback;

    .line 313
    iput-object p2, p0, Landroid/media/tv/tuner/filter/Filter;->mExecutor:Ljava/util/concurrent/Executor;

    .line 314
    monitor-exit v0

    .line 315
    return-void

    .line 314
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public whitelist setDataSource(Landroid/media/tv/tuner/filter/Filter;)I
    .registers 5
    .param p1, "source"    # Landroid/media/tv/tuner/filter/Filter;

    .line 438
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 439
    :try_start_3
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 440
    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    if-eqz v1, :cond_11

    .line 441
    const/4 v1, 0x3

    monitor-exit v0

    return v1

    .line 443
    :cond_11
    iget-object v1, p0, Landroid/media/tv/tuner/filter/Filter;->mSource:Landroid/media/tv/tuner/filter/Filter;

    if-nez v1, :cond_1f

    .line 446
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/Filter;->nativeSetDataSource(Landroid/media/tv/tuner/filter/Filter;)I

    move-result v1

    .line 447
    .local v1, "res":I
    if-nez v1, :cond_1d

    .line 448
    iput-object p1, p0, Landroid/media/tv/tuner/filter/Filter;->mSource:Landroid/media/tv/tuner/filter/Filter;

    .line 450
    :cond_1d
    monitor-exit v0

    return v1

    .line 444
    .end local v1    # "res":I
    :cond_1f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Data source is existing"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/tv/tuner/filter/Filter;
    .end local p1    # "source":Landroid/media/tv/tuner/filter/Filter;
    throw v1

    .line 451
    .restart local p0    # "this":Landroid/media/tv/tuner/filter/Filter;
    .restart local p1    # "source":Landroid/media/tv/tuner/filter/Filter;
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public whitelist setMonitorEventMask(I)I
    .registers 5
    .param p1, "monitorEventMask"    # I

    .line 408
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 409
    :try_start_3
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 410
    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    if-eqz v1, :cond_11

    .line 411
    const/4 v1, 0x3

    monitor-exit v0

    return v1

    .line 413
    :cond_11
    const v1, 0x10001

    const-string v2, "setMonitorEventMask"

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 415
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 417
    :cond_1f
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/Filter;->nativeConfigureMonitorEvent(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 418
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public blacklist setType(II)V
    .registers 4
    .param p1, "mainType"    # I
    .param p2, "subtype"    # I

    .line 305
    iput p1, p0, Landroid/media/tv/tuner/filter/Filter;->mMainType:I

    .line 306
    invoke-static {p1, p2}, Landroid/media/tv/tuner/TunerUtils;->getFilterSubtype(II)I

    move-result v0

    iput v0, p0, Landroid/media/tv/tuner/filter/Filter;->mSubtype:I

    .line 307
    return-void
.end method

.method public whitelist start()I
    .registers 4

    .line 469
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 470
    :try_start_3
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 471
    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    if-eqz v1, :cond_11

    .line 472
    const/4 v1, 0x3

    monitor-exit v0

    return v1

    .line 474
    :cond_11
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/Filter;->nativeStartFilter()I

    move-result v1

    .line 475
    .local v1, "res":I
    if-nez v1, :cond_1a

    .line 476
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsStarted:Z

    .line 478
    :cond_1a
    monitor-exit v0

    return v1

    .line 479
    .end local v1    # "res":I
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public whitelist stop()I
    .registers 4

    .line 499
    iget-object v0, p0, Landroid/media/tv/tuner/filter/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 500
    :try_start_3
    const-string v1, "Filter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 501
    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/Filter;->mIsShared:Z

    if-eqz v1, :cond_11

    .line 502
    const/4 v1, 0x3

    monitor-exit v0

    return v1

    .line 504
    :cond_11
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/Filter;->nativeStopFilter()I

    move-result v1

    .line 505
    .local v1, "res":I
    if-nez v1, :cond_1a

    .line 506
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/tv/tuner/filter/Filter;->mIsStarted:Z

    .line 508
    :cond_1a
    monitor-exit v0

    return v1

    .line 509
    .end local v1    # "res":I
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method
