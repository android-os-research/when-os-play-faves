.class public final Lcom/android/server/job/controllers/JobStatus;
.super Ljava/lang/Object;
.source "JobStatus.java"


# static fields
.field public static final CONSTRAINTS_OF_INTEREST:I = -0x6b5ffff1

.field public static final CONSTRAINT_BACKGROUND_NOT_RESTRICTED:I = 0x400000

.field public static final CONSTRAINT_BATTERY_NOT_LOW:I = 0x2

.field public static final CONSTRAINT_CHARGING:I = 0x1

.field public static final CONSTRAINT_CONNECTIVITY:I = 0x10000000

.field public static final CONSTRAINT_CONTENT_TRIGGER:I = 0x4000000

.field public static final CONSTRAINT_DEADLINE:I = 0x40000000

.field public static final CONSTRAINT_DEVICE_NOT_DOZING:I = 0x2000000

.field public static final CONSTRAINT_IDLE:I = 0x4

.field public static final CONSTRAINT_PREFETCH:I = 0x800000

.field public static final CONSTRAINT_STORAGE_NOT_LOW:I = 0x8

.field public static final CONSTRAINT_TARE_WEALTH:I = 0x8000000

.field public static final CONSTRAINT_TIMING_DELAY:I = -0x80000000

.field public static final CONSTRAINT_UID_NOT_RESTRICTED:I = 0x200000

.field public static final CONSTRAINT_WITHIN_QUOTA:I = 0x1000000

.field public static final DEBUG:Z

.field public static final DEBUG_PREPARE:Z = true

.field public static final DEFAULT_TRIGGER_MAX_DELAY:J = 0x1d4c0L

.field public static final DEFAULT_TRIGGER_UPDATE_DELAY:J = 0x2710L

.field public static final DYNAMIC_EXPEDITED_DEFERRAL_CONSTRAINTS:I = 0x2400000

.field public static final DYNAMIC_RESTRICTED_CONSTRAINTS:I = 0x10000007

.field public static final INTERNAL_FLAG_HAS_FOREGROUND_EXEMPTION:I = 0x1

.field public static final MEDIA_URIS_FOR_STANDBY_EXEMPTION:[Landroid/net/Uri;

.field public static final MIN_TRIGGER_MAX_DELAY:J = 0x3e8L

.field public static final MIN_TRIGGER_UPDATE_DELAY:J = 0x1f4L

.field public static final NO_EARLIEST_RUNTIME:J = 0x0L

.field public static final NO_LATEST_RUNTIME:J = 0x7fffffffffffffffL

.field public static final NUM_CONSTRAINT_CHANGE_HISTORY:I = 0xa

.field public static final OVERRIDE_FULL:I = 0x3

.field public static final OVERRIDE_NONE:I = 0x0

.field public static final OVERRIDE_SOFT:I = 0x2

.field public static final OVERRIDE_SORTING:I = 0x1

.field public static final SOFT_OVERRIDE_CONSTRAINTS:I = -0x7f7ffff1

.field public static final STATSD_CONSTRAINTS_TO_LOG:I = -0x327ffffc

.field public static final STATS_LOG_ENABLED:Z = false

.field public static final TAG:Ljava/lang/String; = "JobScheduler.JobStatus"

.field public static final TRACKING_BATTERY:I = 0x1

.field public static final TRACKING_CONNECTIVITY:I = 0x2

.field public static final TRACKING_CONTENT:I = 0x4

.field public static final TRACKING_IDLE:I = 0x8

.field public static final TRACKING_QUOTA:I = 0x40

.field public static final TRACKING_STORAGE:I = 0x10

.field public static final TRACKING_TIME:I = 0x20

.field public static final TRACKING_UID_RESTRICT:I = 0x80


# instance fields
.field public appHasDozeExemption:Z

.field public final batteryName:Ljava/lang/String;

.field public final callingUid:I

.field public changedAuthorities:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public changedUris:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

.field public final earliestRunTimeElapsedMillis:J

.field public enqueueTime:J

.field public executingWork:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/job/JobWorkItem;",
            ">;"
        }
    .end annotation
.end field

.field public final job:Landroid/app/job/JobInfo;

.field public lastEvaluatedBias:I

.field public final latestRunTimeElapsedMillis:J

.field public mConstraintChangeHistoryIndex:I

.field public final mConstraintStatusHistory:[I

.field public final mConstraintUpdatedTimesElapsed:[J

.field public mDynamicConstraints:I

.field public mExpeditedQuotaApproved:Z

.field public mExpeditedTareApproved:Z

.field public mFirstForceBatchedTimeElapsed:J

.field public final mHasExemptedMediaUrisOnly:Z

.field public mHasMediaBackupExemption:Z

.field public mInternalFlags:I

.field public mIsUserBgRestricted:Z

.field public mLastFailedRunTime:J

.field public mLastSuccessfulRunTime:J

.field public mLoggedBucketMismatch:Z

.field public mMinimumNetworkChunkBytes:J

.field public mOriginalLatestRunTimeElapsedMillis:J

.field public mPersistedUtcTimes:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mReadyDeadlineSatisfied:Z

.field public mReadyDynamicSatisfied:Z

.field public mReadyNotDozing:Z

.field public mReadyNotRestrictedInBg:Z

.field public mReadyTareWealth:Z

.field public mReadyWithinQuota:Z

.field public mReasonReadyToUnready:I

.field public final mRequiredConstraintsOfInterest:I

.field public mSatisfiedConstraintsOfInterest:I

.field public mTotalNetworkDownloadBytes:J

.field public mTotalNetworkUploadBytes:J

.field public madeActive:J

.field public madePending:J

.field public network:Landroid/net/Network;

.field public nextPendingWorkId:I

.field public final numFailures:I

.field public overrideState:I

.field public pendingWork:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/job/JobWorkItem;",
            ">;"
        }
    .end annotation
.end field

.field public prepared:Z

.field public final requiredConstraints:I

.field public satisfiedConstraints:I

.field public serviceInfo:Landroid/content/pm/ServiceInfo;

.field public final sourcePackageName:Ljava/lang/String;

.field public final sourceTag:Ljava/lang/String;

.field public final sourceUid:I

.field public final sourceUserId:I

.field public standbyBucket:I

.field public startedAsExpeditedJob:Z

.field public final tag:Ljava/lang/String;

.field public trackingControllers:I

.field public uidActive:Z

.field public unpreparedPoint:Ljava/lang/Throwable;

.field public uriPerms:Lcom/android/server/job/GrantedUriPermissions;

.field public whenStandbyDeferred:J


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 82
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/job/controllers/JobStatus;->DEBUG:Z

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    .line 134
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/job/controllers/JobStatus;->MEDIA_URIS_FOR_STANDBY_EXEMPTION:[Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;IJJJJII)V
    .registers 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p8

    move-wide/from16 v8, p10

    .line 479
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v10, 0x0

    .line 210
    iput-object v10, v0, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    const/4 v11, 0x0

    .line 255
    iput v11, v0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    .line 256
    iput v11, v0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 261
    iput v11, v0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    .line 349
    iput-boolean v11, v0, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    const/4 v12, 0x1

    .line 357
    iput v12, v0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    .line 360
    iput v11, v0, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    .line 396
    iput v11, v0, Lcom/android/server/job/controllers/JobStatus;->mConstraintChangeHistoryIndex:I

    const/16 v13, 0xa

    new-array v14, v13, [J

    .line 397
    iput-object v14, v0, Lcom/android/server/job/controllers/JobStatus;->mConstraintUpdatedTimesElapsed:[J

    new-array v13, v13, [I

    .line 398
    iput-object v13, v0, Lcom/android/server/job/controllers/JobStatus;->mConstraintStatusHistory:[I

    const-wide/16 v13, -0x1

    .line 406
    iput-wide v13, v0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    .line 407
    iput-wide v13, v0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    .line 408
    iput-wide v13, v0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    .line 451
    iput v11, v0, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    .line 480
    iput-object v1, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 481
    iput v2, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 482
    iput v5, v0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    const-wide/16 v13, 0x0

    const/4 v15, -0x1

    if-eq v4, v15, :cond_50

    if-eqz v3, :cond_50

    .line 487
    :try_start_47
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v12

    invoke-interface {v12, v3, v13, v14, v4}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v12
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4f} :catch_50

    goto :goto_51

    :catch_50
    :cond_50
    move v12, v15

    :goto_51
    if-ne v12, v15, :cond_68

    .line 494
    iput v2, v0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 495
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iput v2, v0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 496
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 497
    iput-object v10, v0, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    goto :goto_72

    .line 499
    :cond_68
    iput v12, v0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 500
    iput v4, v0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 501
    iput-object v3, v0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    move-object/from16 v2, p6

    .line 502
    iput-object v2, v0, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    .line 505
    :goto_72
    iget-object v2, v0, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    if-eqz v2, :cond_95

    .line 506
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_9d

    .line 507
    :cond_95
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    :goto_9d
    iput-object v2, v0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    .line 508
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*job*/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/job/controllers/JobStatus;->tag:Ljava/lang/String;

    .line 510
    iput-wide v6, v0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    .line 511
    iput-wide v8, v0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    .line 512
    iput-wide v8, v0, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    move/from16 v2, p7

    .line 513
    iput v2, v0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    .line 515
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getConstraintFlags()I

    move-result v2

    .line 516
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v3

    if-eqz v3, :cond_c9

    const/high16 v3, 0x10000000

    or-int/2addr v2, v3

    :cond_c9
    cmp-long v3, v6, v13

    if-eqz v3, :cond_d0

    const/high16 v3, -0x80000000

    or-int/2addr v2, v3

    :cond_d0
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v8, v3

    if-eqz v3, :cond_dc

    const/high16 v3, 0x40000000    # 2.0f

    or-int/2addr v2, v3

    .line 527
    :cond_dc
    iget v3, v0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-static {v3}, Lcom/android/server/job/controllers/UidRestrictController;->isUidIgnored(I)Z

    move-result v3

    if-nez v3, :cond_e7

    const/high16 v3, 0x200000

    or-int/2addr v2, v3

    .line 532
    :cond_e7
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v3

    if-eqz v3, :cond_10c

    const/high16 v3, 0x4000000

    or-int/2addr v2, v3

    .line 535
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v3

    array-length v4, v3

    move v6, v11

    :goto_f6
    if-ge v6, v4, :cond_10a

    aget-object v7, v3, v6

    .line 536
    sget-object v8, Lcom/android/server/job/controllers/JobStatus;->MEDIA_URIS_FOR_STANDBY_EXEMPTION:[Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_107

    goto :goto_10c

    :cond_107
    add-int/lit8 v6, v6, 0x1

    goto :goto_f6

    :cond_10a
    const/4 v12, 0x1

    goto :goto_10d

    :cond_10c
    :goto_10c
    move v12, v11

    .line 542
    :goto_10d
    iput-boolean v12, v0, Lcom/android/server/job/controllers/JobStatus;->mHasExemptedMediaUrisOnly:Z

    .line 543
    iput v2, v0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const v3, -0x6b5ffff1

    and-int/2addr v2, v3

    .line 544
    iput v2, v0, Lcom/android/server/job/controllers/JobStatus;->mRequiredConstraintsOfInterest:I

    move/from16 v2, p17

    .line 545
    invoke-virtual {v0, v2}, Lcom/android/server/job/controllers/JobStatus;->addDynamicConstraints(I)V

    .line 546
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->canRunInDoze()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    const/4 v2, 0x5

    if-ne v5, v2, :cond_12c

    const v2, 0x10000007

    .line 548
    invoke-virtual {v0, v2}, Lcom/android/server/job/controllers/JobStatus;->addDynamicConstraints(I)V

    goto :goto_12e

    .line 550
    :cond_12c
    iput-boolean v11, v0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    :goto_12e
    move-wide/from16 v2, p12

    .line 553
    iput-wide v2, v0, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    move-wide/from16 v2, p14

    .line 554
    iput-wide v2, v0, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    move/from16 v2, p16

    .line 556
    iput v2, v0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    .line 558
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->updateNetworkBytesLocked()V

    .line 560
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v2

    if-eqz v2, :cond_173

    .line 564
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v2, v1}, Landroid/app/job/JobInfo$Builder;-><init>(Landroid/app/job/JobInfo;)V

    .line 565
    new-instance v3, Landroid/net/NetworkRequest$Builder;

    .line 566
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/net/NetworkRequest$Builder;-><init>(Landroid/net/NetworkRequest;)V

    .line 567
    new-instance v1, Landroid/util/Range;

    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 568
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 567
    invoke-virtual {v3, v1}, Landroid/net/NetworkRequest$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;

    .line 569
    invoke-virtual {v3}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    .line 572
    invoke-virtual {v2, v11}, Landroid/app/job/JobInfo$Builder;->build(Z)Landroid/app/job/JobInfo;

    .line 575
    :cond_173
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->updateMediaBackupExemptionStatus()Z

    return-void
.end method

.method public constructor <init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;JJJJLandroid/util/Pair;II)V
    .registers 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/job/JobInfo;",
            "I",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "JJJJ",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;II)V"
        }
    .end annotation

    move-object/from16 v0, p15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    move-wide/from16 v15, p13

    move/from16 v17, p16

    move/from16 v18, p17

    const/4 v8, 0x0

    .line 610
    invoke-direct/range {v1 .. v18}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;IJJJJII)V

    .line 620
    iput-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    if-eqz v0, :cond_2f

    .line 622
    sget-boolean v0, Lcom/android/server/job/controllers/JobStatus;->DEBUG:Z

    if-eqz v0, :cond_2f

    const-string v0, "JobScheduler.JobStatus"

    const-string v1, "+ restored job with RTC times because of bad boot clock"

    .line 623
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 22

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    .line 581
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    .line 582
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v5

    .line 583
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v6

    .line 584
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    move-result v8

    .line 585
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v11

    .line 586
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLastSuccessfulRunTime()J

    move-result-wide v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLastFailedRunTime()J

    move-result-wide v15

    .line 587
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v17

    move-object/from16 v19, v1

    iget v1, v0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    move/from16 v18, v1

    move-object/from16 v1, v19

    .line 581
    invoke-direct/range {v1 .. v18}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;IJJJJII)V

    .line 588
    iget-object v1, v0, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    move-object/from16 v2, p0

    iput-object v1, v2, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    .line 589
    iget-object v0, v0, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    if-eqz v0, :cond_5c

    .line 590
    sget-boolean v0, Lcom/android/server/job/controllers/JobStatus;->DEBUG:Z

    if-eqz v0, :cond_5c

    .line 591
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string v1, "JobScheduler.JobStatus"

    const-string v2, "Cloning job with persisted run times"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5c
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/JobStatus;JJIJJ)V
    .registers 30

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    move/from16 v8, p6

    move-wide/from16 v13, p7

    move-wide/from16 v15, p9

    .line 633
    iget-object v2, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    .line 634
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v5

    .line 635
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v6

    .line 636
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v7

    .line 638
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v17

    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    move/from16 v18, v0

    .line 633
    invoke-direct/range {v1 .. v18}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;IJJJJII)V

    return-void
.end method

.method public static bucketName(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_2a

    .line 2010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_15
    const-string p0, "EXEMPTED"

    return-object p0

    :pswitch_18
    const-string p0, "RESTRICTED"

    return-object p0

    :pswitch_1b
    const-string p0, "NEVER"

    return-object p0

    :pswitch_1e
    const-string p0, "RARE"

    return-object p0

    :pswitch_21
    const-string p0, "FREQUENT"

    return-object p0

    :pswitch_24
    const-string p0, "WORKING_SET"

    return-object p0

    :pswitch_27
    const-string p0, "ACTIVE"

    return-object p0

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method

.method public static createFromJobInfo(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;)Lcom/android/server/job/controllers/JobStatus;
    .registers 29

    .line 652
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 654
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 656
    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v2

    const-wide v4, 0x757b12c00L

    .line 657
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 656
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-long v4, v0, v2

    .line 661
    invoke-static {}, Landroid/app/job/JobInfo;->getMinFlexMillis()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v8

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    sub-long v2, v4, v2

    :goto_35
    move-wide v14, v2

    move-wide/from16 v16, v4

    goto :goto_59

    .line 663
    :cond_39
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 664
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    goto :goto_47

    :cond_45
    const-wide/16 v2, 0x0

    .line 665
    :goto_47
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 666
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v4

    add-long/2addr v4, v0

    goto :goto_35

    :cond_53
    const-wide v4, 0x7fffffffffffffffL

    goto :goto_35

    :goto_59
    if-eqz p2, :cond_5e

    move-object/from16 v2, p2

    goto :goto_66

    .line 668
    :cond_5e
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_66
    move/from16 v3, p3

    .line 670
    invoke-static {v2, v3, v0, v1}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v11

    .line 672
    new-instance v0, Lcom/android/server/job/controllers/JobStatus;

    move-object v6, v0

    const/4 v13, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v12, p4

    invoke-direct/range {v6 .. v23}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;IJJJJII)V

    return-object v0
.end method

.method public static formatTime(J)Ljava/lang/CharSequence;
    .registers 3

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    .line 2298
    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static ungrantWorkItem(Landroid/app/job/JobWorkItem;)V
    .registers 2

    .line 719
    invoke-virtual {p0}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 720
    invoke-virtual {p0}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/job/GrantedUriPermissions;

    invoke-virtual {p0}, Lcom/android/server/job/GrantedUriPermissions;->revoke()V

    :cond_f
    return-void
.end method

.method public static ungrantWorkList(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/job/JobWorkItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_15

    .line 741
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    .line 743
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobWorkItem;

    invoke-static {v2}, Lcom/android/server/job/controllers/JobStatus;->ungrantWorkItem(Landroid/app/job/JobWorkItem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    return-void
.end method


# virtual methods
.method public final addDynamicConstraints(I)V
    .registers 4

    const/high16 v0, 0x1000000

    and-int/2addr v0, p1

    const-string v1, "JobScheduler.JobStatus"

    if-eqz v0, :cond_10

    const-string v0, "Tried to set quota as a dynamic constraint"

    .line 1531
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const v0, -0x1000001

    and-int/2addr p1, v0

    :cond_10
    const/high16 v0, 0x8000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_1e

    const-string v0, "Tried to set TARE as a dynamic constraint"

    .line 1536
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const v0, -0x8000001

    and-int/2addr p1, v0

    .line 1543
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-nez v0, :cond_28

    const v0, -0x10000001

    and-int/2addr p1, v0

    .line 1546
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v0

    if-nez v0, :cond_32

    const v0, -0x4000001

    and-int/2addr p1, v0

    .line 1550
    :cond_32
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    if-eqz p1, :cond_40

    .line 1551
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_40

    const/4 p1, 0x1

    goto :goto_41

    :cond_40
    const/4 p1, 0x0

    :goto_41
    iput-boolean p1, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    return-void
.end method

.method public addInternalFlags(I)V
    .registers 3

    .line 996
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    return-void
.end method

.method public areDynamicConstraintsSatisfied()Z
    .registers 1

    .line 1687
    iget-boolean p0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    return p0
.end method

.method public canRunInBatterySaver()Z
    .registers 3

    .line 1220
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_1b

    .line 1221
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v0

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v0, :cond_1a

    :cond_12
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    const/high16 v0, 0x400000

    and-int/2addr p0, v0

    if-nez p0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :cond_1b
    :goto_1b
    return v1
.end method

.method public canRunInDoze()Z
    .registers 3

    .line 1213
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->appHasDozeExemption:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1f

    .line 1214
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result v0

    and-int/2addr v0, v1

    if-nez v0, :cond_1f

    .line 1215
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v0

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v0, :cond_1e

    :cond_16
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    const/high16 v0, 0x2000000

    and-int/2addr p0, v0

    if-nez p0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :cond_1f
    :goto_1f
    return v1
.end method

.method public clearPersistedUtcTimes()V
    .registers 2

    const/4 v0, 0x0

    .line 1192
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    return-void
.end method

.method public clearTrackingController(I)Z
    .registers 4

    .line 1504
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int v1, v0, p1

    if-eqz v1, :cond_c

    not-int p1, p1

    and-int/2addr p1, v0

    .line 1505
    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public completeWorkLocked(I)Z
    .registers 7

    .line 725
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 726
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_27

    .line 728
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobWorkItem;

    .line 729
    invoke-virtual {v3}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result v4

    if-ne v4, p1, :cond_24

    .line 730
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 731
    invoke-static {v3}, Lcom/android/server/job/controllers/JobStatus;->ungrantWorkItem(Landroid/app/job/JobWorkItem;)V

    const/4 p0, 0x1

    return p0

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_27
    return v1
.end method

.method public final constraintToStopReason(I)I
    .registers 5

    const/4 v0, 0x1

    const/16 v1, 0xc

    if-eq p1, v0, :cond_67

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5f

    const/16 v0, 0x8

    const/4 v2, 0x4

    if-eq p1, v2, :cond_58

    if-eq p1, v0, :cond_55

    const/high16 v0, 0x400000

    if-eq p1, v0, :cond_4d

    const/high16 p0, 0x800000

    if-eq p1, p0, :cond_4a

    const/high16 p0, 0x1000000

    if-eq p1, p0, :cond_47

    const/high16 p0, 0x2000000

    if-eq p1, p0, :cond_46

    const/high16 p0, 0x8000000

    if-eq p1, p0, :cond_47

    const/high16 p0, 0x10000000

    if-eq p1, p0, :cond_44

    .line 1490
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported constraint ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") --stop reason mapping"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobScheduler.JobStatus"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_44
    const/4 p0, 0x7

    return p0

    :cond_46
    return v2

    :cond_47
    const/16 p0, 0xa

    return p0

    :cond_4a
    const/16 p0, 0xf

    return p0

    .line 1471
    :cond_4d
    iget-boolean p0, p0, Lcom/android/server/job/controllers/JobStatus;->mIsUserBgRestricted:Z

    if-eqz p0, :cond_54

    const/16 p0, 0xb

    return p0

    :cond_54
    return v2

    :cond_55
    const/16 p0, 0x9

    return p0

    .line 1452
    :cond_58
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_5e

    return v0

    :cond_5e
    return v1

    .line 1432
    :cond_5f
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_66

    const/4 p0, 0x5

    return p0

    :cond_66
    return v1

    .line 1441
    :cond_67
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_6e

    const/4 p0, 0x6

    return p0

    :cond_6e
    return v1
.end method

.method public dequeueWorkLocked()Landroid/app/job/JobWorkItem;
    .registers 3

    .line 695
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2c

    .line 696
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobWorkItem;

    if-eqz v0, :cond_28

    .line 698
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-nez v1, :cond_20

    .line 699
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 701
    :cond_20
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    invoke-virtual {v0}, Landroid/app/job/JobWorkItem;->bumpDeliveryCount()V

    .line 704
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->updateNetworkBytesLocked()V

    return-object v0

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method public disallowRunInBatterySaverAndDoze()V
    .registers 2

    const/high16 v0, 0x2400000

    .line 1520
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->addDynamicConstraints(I)V

    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;ZJ)V
    .registers 21
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-wide/from16 v10, p3

    .line 2017
    iget v0, v8, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v9, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v0, " tag="

    .line 2018
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v8, Lcom/android/server/job/controllers/JobStatus;->tag:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Source: uid="

    .line 2020
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-static {v9, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v0, " user="

    .line 2021
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v0, " pkg="

    .line 2022
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/16 v0, 0x80

    const/16 v1, 0x20

    const/4 v2, 0x0

    const-wide/16 v12, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_2f5

    const-string v4, "JobInfo:"

    .line 2024
    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2025
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v4, "Service: "

    .line 2027
    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2028
    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2029
    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v4

    if-eqz v4, :cond_84

    const-string v4, "PERIODIC: interval="

    .line 2030
    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2031
    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v4

    invoke-static {v4, v5, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v4, " flex="

    .line 2032
    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v4

    invoke-static {v4, v5, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2033
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2035
    :cond_84
    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v4

    if-eqz v4, :cond_91

    const-string v4, "PERSISTED"

    .line 2036
    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2038
    :cond_91
    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getBias()I

    move-result v4

    if-eqz v4, :cond_ab

    const-string v4, "Bias: "

    .line 2039
    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2040
    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getBias()I

    move-result v4

    invoke-static {v4}, Landroid/app/job/JobInfo;->getBiasString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_ab
    const-string v4, "Priority: "

    .line 2042
    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2043
    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v4

    invoke-static {v4}, Landroid/app/job/JobInfo;->getPriorityString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2044
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v4

    .line 2045
    iget-object v5, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v5

    if-eq v4, v5, :cond_d5

    const-string v5, " effective="

    .line 2046
    invoke-virtual {v9, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2047
    invoke-static {v4}, Landroid/app/job/JobInfo;->getPriorityString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2049
    :cond_d5
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2050
    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v4

    if-eqz v4, :cond_f2

    const-string v4, "Flags: "

    .line 2051
    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2052
    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2054
    :cond_f2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v4

    if-eqz v4, :cond_117

    const-string v4, "Internal flags: "

    .line 2055
    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2056
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2058
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v4

    and-int/2addr v4, v3

    if-eqz v4, :cond_114

    const-string v4, " HAS_FOREGROUND_EXEMPTION"

    .line 2059
    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2061
    :cond_114
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_117
    const-string v4, "Requires: charging="

    .line 2063
    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2064
    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v4

    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v4, " batteryNotLow="

    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2065
    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    move-result v4

    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v4, " deviceIdle="

    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2066
    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v4

    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 2067
    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v4

    if-eqz v4, :cond_1c3

    const-string v4, "Trigger content URIs:"

    .line 2068
    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2069
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v4, v2

    .line 2070
    :goto_152
    iget-object v5, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_17b

    .line 2071
    iget-object v5, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v5

    aget-object v5, v5, v4

    .line 2072
    invoke-virtual {v5}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2073
    invoke-virtual {v9, v1}, Landroid/util/IndentingPrintWriter;->print(C)V

    invoke-virtual {v5}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_152

    .line 2075
    :cond_17b
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2076
    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v4

    cmp-long v4, v4, v12

    if-ltz v4, :cond_199

    const-string v4, "Trigger update delay: "

    .line 2077
    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2078
    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v4

    invoke-static {v4, v5, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2079
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2081
    :cond_199
    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v4

    cmp-long v4, v4, v12

    if-ltz v4, :cond_1b4

    const-string v4, "Trigger max delay: "

    .line 2082
    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2083
    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v4

    invoke-static {v4, v5, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2084
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2086
    :cond_1b4
    iget-boolean v4, v8, Lcom/android/server/job/controllers/JobStatus;->mHasMediaBackupExemption:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "Has media backup exemption"

    invoke-virtual {v9, v5, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2088
    :cond_1c3
    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    if-eqz v4, :cond_1e9

    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PersistableBundle;->isDefinitelyEmpty()Z

    move-result v4

    if-nez v4, :cond_1e9

    const-string v4, "Extras: "

    .line 2089
    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2090
    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PersistableBundle;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2092
    :cond_1e9
    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_20f

    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Bundle;->isDefinitelyEmpty()Z

    move-result v4

    if-nez v4, :cond_20f

    const-string v4, "Transient extras: "

    .line 2093
    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2094
    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Bundle;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2096
    :cond_20f
    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    if-eqz v4, :cond_22d

    const-string v4, "Clip data: "

    .line 2097
    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2098
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2099
    iget-object v5, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2100
    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2102
    :cond_22d
    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    if-eqz v4, :cond_23b

    const-string v4, "Granted URI permissions:"

    .line 2103
    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2104
    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    invoke-virtual {v4, v9}, Lcom/android/server/job/GrantedUriPermissions;->dump(Ljava/io/PrintWriter;)V

    .line 2106
    :cond_23b
    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v4

    if-eqz v4, :cond_251

    const-string v4, "Network type: "

    .line 2107
    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2108
    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2110
    :cond_251
    iget-wide v4, v8, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_263

    const-string v4, "Network download bytes: "

    .line 2111
    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2112
    iget-wide v4, v8, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    invoke-virtual {v9, v4, v5}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 2114
    :cond_263
    iget-wide v4, v8, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_273

    const-string v4, "Network upload bytes: "

    .line 2115
    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2116
    iget-wide v4, v8, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    invoke-virtual {v9, v4, v5}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 2118
    :cond_273
    iget-wide v4, v8, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_283

    const-string v4, "Minimum network chunk bytes: "

    .line 2119
    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2120
    iget-wide v4, v8, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    invoke-virtual {v9, v4, v5}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 2122
    :cond_283
    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v4

    cmp-long v4, v4, v12

    if-eqz v4, :cond_29e

    const-string v4, "Minimum latency: "

    .line 2123
    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2124
    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v4

    invoke-static {v4, v5, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2125
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2127
    :cond_29e
    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v4

    cmp-long v4, v4, v12

    if-eqz v4, :cond_2b9

    const-string v4, "Max execution delay: "

    .line 2128
    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2129
    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v4

    invoke-static {v4, v5, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2130
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_2b9
    const-string v4, "Backoff: policy="

    .line 2132
    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v4

    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v4, " initial="

    .line 2133
    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v4

    invoke-static {v4, v5, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2134
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2135
    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v4

    if-eqz v4, :cond_2e5

    const-string v4, "Has early constraint"

    .line 2136
    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2138
    :cond_2e5
    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v4

    if-eqz v4, :cond_2f2

    const-string v4, "Has late constraint"

    .line 2139
    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2142
    :cond_2f2
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_2f5
    const-string v4, "Required constraints:"

    .line 2145
    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2146
    iget v4, v8, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    invoke-virtual {v8, v9, v4}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    .line 2147
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v4, "Dynamic constraints:"

    .line 2148
    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2149
    iget v4, v8, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    invoke-virtual {v8, v9, v4}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    .line 2150
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    if-eqz p2, :cond_386

    const-string v4, "Satisfied constraints:"

    .line 2152
    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2153
    iget v4, v8, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    invoke-virtual {v8, v9, v4}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    .line 2154
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v4, "Unsatisfied constraints:"

    .line 2155
    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2156
    iget v4, v8, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/high16 v5, 0x1000000

    or-int/2addr v4, v5

    const/high16 v5, 0x8000000

    or-int/2addr v4, v5

    iget v5, v8, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    not-int v5, v5

    and-int/2addr v4, v5

    invoke-virtual {v8, v9, v4}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    .line 2159
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v4, "Constraint history:"

    .line 2161
    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2162
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v4, v2

    :goto_33e
    const/16 v5, 0xa

    if-ge v4, v5, :cond_364

    .line 2164
    iget v6, v8, Lcom/android/server/job/controllers/JobStatus;->mConstraintChangeHistoryIndex:I

    add-int/2addr v6, v4

    rem-int/2addr v6, v5

    .line 2165
    iget-object v5, v8, Lcom/android/server/job/controllers/JobStatus;->mConstraintUpdatedTimesElapsed:[J

    aget-wide v14, v5, v6

    cmp-long v5, v14, v12

    if-nez v5, :cond_34f

    goto :goto_361

    .line 2168
    :cond_34f
    invoke-static {v14, v15, v10, v11, v9}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v5, " ="

    .line 2170
    invoke-virtual {v9, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2171
    iget-object v5, v8, Lcom/android/server/job/controllers/JobStatus;->mConstraintStatusHistory:[I

    aget v5, v5, v6

    invoke-virtual {v8, v9, v5}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    .line 2172
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_361
    add-int/lit8 v4, v4, 0x1

    goto :goto_33e

    .line 2174
    :cond_364
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2176
    iget-boolean v4, v8, Lcom/android/server/job/controllers/JobStatus;->appHasDozeExemption:Z

    if-eqz v4, :cond_370

    const-string v4, "Doze whitelisted: true"

    .line 2177
    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2179
    :cond_370
    iget-boolean v4, v8, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    if-eqz v4, :cond_379

    const-string v4, "Uid: active"

    .line 2180
    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2182
    :cond_379
    iget-object v4, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isExemptedFromAppStandby()Z

    move-result v4

    if-eqz v4, :cond_386

    const-string v4, "Is exempted from app standby"

    .line 2183
    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2186
    :cond_386
    iget v4, v8, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    if-eqz v4, :cond_3e7

    const-string v4, "Tracking:"

    .line 2187
    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2188
    iget v4, v8, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_399

    const-string v4, " BATTERY"

    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2189
    :cond_399
    iget v4, v8, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3a4

    const-string v4, " CONNECTIVITY"

    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2190
    :cond_3a4
    iget v4, v8, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_3af

    const-string v4, " CONTENT"

    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2191
    :cond_3af
    iget v4, v8, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3ba

    const-string v4, " IDLE"

    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2192
    :cond_3ba
    iget v4, v8, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_3c5

    const-string v4, " STORAGE"

    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2193
    :cond_3c5
    iget v4, v8, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_3cf

    const-string v1, " TIME"

    invoke-virtual {v9, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2194
    :cond_3cf
    iget v1, v8, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_3da

    const-string v1, " QUOTA"

    invoke-virtual {v9, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2196
    :cond_3da
    iget v1, v8, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_3e4

    const-string v0, " UID_RESTRICT"

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2198
    :cond_3e4
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_3e7
    const-string v0, "Implicit constraints:"

    .line 2201
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2202
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v0, "readyNotDozing: "

    .line 2203
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2204
    iget-boolean v0, v8, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "readyNotRestrictedInBg: "

    .line 2205
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2206
    iget-boolean v0, v8, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 2207
    iget-object v0, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    if-nez v0, :cond_41e

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v0

    if-eqz v0, :cond_41e

    const-string/jumbo v0, "readyDeadlineSatisfied: "

    .line 2208
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2209
    iget-boolean v0, v8, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 2211
    :cond_41e
    iget v0, v8, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    if-eqz v0, :cond_42d

    const-string/jumbo v0, "readyDynamicSatisfied: "

    .line 2212
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2213
    iget-boolean v0, v8, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    :cond_42d
    const-string/jumbo v0, "readyComponentEnabled: "

    .line 2215
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2216
    iget-object v0, v8, Lcom/android/server/job/controllers/JobStatus;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_438

    goto :goto_439

    :cond_438
    move v3, v2

    :goto_439
    invoke-virtual {v9, v3}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 2217
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_467

    const-string v0, "expeditedQuotaApproved: "

    .line 2218
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2219
    iget-boolean v0, v8, Lcom/android/server/job/controllers/JobStatus;->mExpeditedQuotaApproved:Z

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v0, " expeditedTareApproved: "

    .line 2220
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2221
    iget-boolean v0, v8, Lcom/android/server/job/controllers/JobStatus;->mExpeditedTareApproved:Z

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v0, " (started as EJ: "

    .line 2222
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2223
    iget-boolean v0, v8, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v0, ")"

    .line 2224
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2226
    :cond_467
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2228
    iget-object v0, v8, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    if-eqz v0, :cond_490

    const-string v0, "Changed authorities:"

    .line 2229
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2230
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v0, v2

    .line 2231
    :goto_477
    iget-object v1, v8, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_48d

    .line 2232
    iget-object v1, v8, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_477

    .line 2234
    :cond_48d
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2236
    :cond_490
    iget-object v0, v8, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    if-eqz v0, :cond_4b4

    const-string v0, "Changed URIs:"

    .line 2237
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2238
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v0, v2

    .line 2239
    :goto_49d
    iget-object v1, v8, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_4b1

    .line 2240
    iget-object v1, v8, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_49d

    .line 2242
    :cond_4b1
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2244
    :cond_4b4
    iget-object v0, v8, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    if-eqz v0, :cond_4c2

    const-string v0, "Network: "

    .line 2245
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v8, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2247
    :cond_4c2
    iget-object v0, v8, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_4e8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4e8

    const-string v0, "Pending work:"

    .line 2248
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    move v0, v2

    .line 2249
    :goto_4d2
    iget-object v1, v8, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4e8

    .line 2250
    iget-object v1, v8, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobWorkItem;

    invoke-virtual {v8, v9, v1, v0}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Landroid/util/IndentingPrintWriter;Landroid/app/job/JobWorkItem;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4d2

    .line 2253
    :cond_4e8
    iget-object v0, v8, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_50d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_50d

    const-string v0, "Executing work:"

    .line 2254
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2255
    :goto_4f7
    iget-object v0, v8, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_50d

    .line 2256
    iget-object v0, v8, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobWorkItem;

    invoke-virtual {v8, v9, v0, v2}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Landroid/util/IndentingPrintWriter;Landroid/app/job/JobWorkItem;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4f7

    :cond_50d
    const-string v0, "Standby bucket: "

    .line 2259
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2260
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2261
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2262
    iget-wide v0, v8, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    cmp-long v0, v0, v12

    if-eqz v0, :cond_52f

    const-string v0, "Deferred since: "

    .line 2263
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2264
    iget-wide v0, v8, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    invoke-static {v0, v1, v10, v11, v9}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2265
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2267
    :cond_52f
    iget-wide v0, v8, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    cmp-long v0, v0, v12

    if-eqz v0, :cond_542

    const-string v0, "Time since first force batch attempt: "

    .line 2268
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2269
    iget-wide v0, v8, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    invoke-static {v0, v1, v10, v11, v9}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2270
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2272
    :cond_542
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v0, "Enqueue time: "

    .line 2274
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2275
    iget-wide v0, v8, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    invoke-static {v0, v1, v10, v11, v9}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2276
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "Run time: earliest="

    .line 2277
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2278
    iget-wide v2, v8, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v6, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/io/PrintWriter;JJJ)V

    const-string v0, ", latest="

    .line 2279
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2280
    iget-wide v2, v8, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v4, 0x7fffffffffffffffL

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/io/PrintWriter;JJJ)V

    const-string v0, ", original latest="

    .line 2281
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2282
    iget-wide v2, v8, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/io/PrintWriter;JJJ)V

    .line 2283
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2284
    iget v0, v8, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    if-eqz v0, :cond_592

    const-string v0, "Num failures: "

    .line 2285
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, v8, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 2287
    :cond_592
    iget-wide v0, v8, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    cmp-long v0, v0, v12

    if-eqz v0, :cond_5a6

    const-string v0, "Last successful run: "

    .line 2288
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2289
    iget-wide v0, v8, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/JobStatus;->formatTime(J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2291
    :cond_5a6
    iget-wide v0, v8, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    cmp-long v0, v0, v12

    if-eqz v0, :cond_5ba

    const-string v0, "Last failed run: "

    .line 2292
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2293
    iget-wide v0, v8, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/JobStatus;->formatTime(J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_5ba
    return-void
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;JZJ)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2302
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 2304
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    const-wide v5, 0x10500000001L

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2305
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->tag:Ljava/lang/String;

    const-wide v7, 0x10900000002L

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2306
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v4

    const-wide v9, 0x10500000003L

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2307
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v4

    const-wide v9, 0x10500000004L

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2308
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    const-wide v9, 0x10900000005L

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v9, 0x1080000000aL

    const-wide v11, 0x10800000002L

    const/4 v4, 0x0

    if-eqz p4, :cond_24a

    const-wide v13, 0x10b00000006L

    .line 2311
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 2313
    iget-object v15, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v15}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v15

    const-wide v7, 0x10b00000001L

    invoke-virtual {v15, v1, v7, v8}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2315
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v7

    invoke-virtual {v1, v11, v12, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v7, 0x10300000003L

    .line 2316
    iget-object v15, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v15}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v11

    invoke-virtual {v1, v7, v8, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v7, 0x10300000004L

    .line 2317
    iget-object v11, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v11}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v11

    invoke-virtual {v1, v7, v8, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v7, 0x10800000005L

    .line 2319
    iget-object v11, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v11}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v11

    invoke-virtual {v1, v7, v8, v11}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v7, 0x11100000006L

    .line 2320
    iget-object v11, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v11}, Landroid/app/job/JobInfo;->getBias()I

    move-result v11

    invoke-virtual {v1, v7, v8, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v7, 0x10500000007L

    .line 2321
    iget-object v11, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v11}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v11

    invoke-virtual {v1, v7, v8, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v7, 0x10300000018L

    .line 2322
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v11

    invoke-virtual {v1, v7, v8, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v7, 0x10800000008L

    .line 2325
    iget-object v11, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v11}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v11

    invoke-virtual {v1, v7, v8, v11}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v7, 0x10800000009L

    .line 2326
    iget-object v11, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v11}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    move-result v11

    invoke-virtual {v1, v7, v8, v11}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2327
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v7

    invoke-virtual {v1, v9, v10, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2329
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v7

    if-eqz v7, :cond_163

    move v7, v4

    .line 2330
    :goto_ed
    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v8}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v8

    array-length v8, v8

    if-ge v7, v8, :cond_131

    const-wide v11, 0x20b0000000bL

    .line 2331
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 2332
    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v8}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v8

    aget-object v8, v8, v7

    .line 2334
    invoke-virtual {v8}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v15

    invoke-virtual {v1, v5, v6, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2335
    invoke-virtual {v8}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_121

    .line 2337
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    const-wide v5, 0x10900000002L

    invoke-virtual {v1, v5, v6, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_126

    :cond_121
    const-wide v5, 0x10900000002L

    .line 2340
    :goto_126
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v7, v7, 0x1

    const-wide v5, 0x10500000001L

    goto :goto_ed

    .line 2342
    :cond_131
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_14b

    const-wide v5, 0x1030000000cL

    .line 2343
    iget-object v11, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 2344
    invoke-virtual {v11}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v11

    .line 2343
    invoke-virtual {v1, v5, v6, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2346
    :cond_14b
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-ltz v5, :cond_163

    const-wide v5, 0x1030000000dL

    .line 2347
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 2348
    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v7

    .line 2347
    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2351
    :cond_163
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v5

    if-eqz v5, :cond_185

    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PersistableBundle;->isDefinitelyEmpty()Z

    move-result v5

    if-nez v5, :cond_185

    .line 2352
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v5

    const-wide v6, 0x10b0000000eL

    invoke-virtual {v5, v1, v6, v7}, Landroid/os/PersistableBundle;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2354
    :cond_185
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_1a7

    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Bundle;->isDefinitelyEmpty()Z

    move-result v5

    if-nez v5, :cond_1a7

    .line 2355
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v5

    const-wide v6, 0x10b0000000fL

    invoke-virtual {v5, v1, v6, v7}, Landroid/os/Bundle;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2357
    :cond_1a7
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v5

    if-eqz v5, :cond_1bd

    .line 2358
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v5

    const-wide v6, 0x10b00000010L

    invoke-virtual {v5, v1, v6, v7}, Landroid/content/ClipData;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2360
    :cond_1bd
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    if-eqz v5, :cond_1c9

    const-wide v6, 0x10b00000011L

    .line 2361
    invoke-virtual {v5, v1, v6, v7}, Lcom/android/server/job/GrantedUriPermissions;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2363
    :cond_1c9
    iget-wide v5, v0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    const-wide/16 v7, -0x1

    cmp-long v11, v5, v7

    if-eqz v11, :cond_1d9

    const-wide v11, 0x10300000019L

    .line 2364
    invoke-virtual {v1, v11, v12, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2367
    :cond_1d9
    iget-wide v5, v0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    cmp-long v7, v5, v7

    if-eqz v7, :cond_1e7

    const-wide v7, 0x1030000001aL

    .line 2368
    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_1e7
    const-wide v5, 0x10300000014L

    .line 2371
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v7

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10300000015L

    .line 2372
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v7

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10b00000016L

    .line 2374
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    const-wide v7, 0x10e00000001L

    .line 2375
    iget-object v11, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v11}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v11

    invoke-virtual {v1, v7, v8, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v7, 0x10300000002L

    .line 2376
    iget-object v11, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 2377
    invoke-virtual {v11}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v11

    .line 2376
    invoke-virtual {v1, v7, v8, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2378
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v5, 0x10800000017L

    .line 2380
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v7

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v5, 0x10800000018L

    .line 2381
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v7

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2383
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_24a
    const-wide v5, 0x20e00000007L

    .line 2386
    iget v7, v0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    invoke-virtual {v0, v1, v5, v6, v7}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    const-wide v5, 0x20e0000001fL

    .line 2387
    iget v7, v0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    invoke-virtual {v0, v1, v5, v6, v7}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    if-eqz p4, :cond_298

    const-wide v5, 0x20e00000008L

    .line 2389
    iget v7, v0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    invoke-virtual {v0, v1, v5, v6, v7}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    const-wide v5, 0x20e00000009L

    .line 2390
    iget v7, v0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/high16 v8, 0x1000000

    or-int/2addr v7, v8

    iget v8, v0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    not-int v8, v8

    and-int/2addr v7, v8

    invoke-virtual {v0, v1, v5, v6, v7}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2392
    iget-boolean v5, v0, Lcom/android/server/job/controllers/JobStatus;->appHasDozeExemption:Z

    invoke-virtual {v1, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v5, 0x1080000001aL

    .line 2393
    iget-boolean v7, v0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v5, 0x1080000001bL

    .line 2394
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 2395
    invoke-virtual {v7}, Landroid/app/job/JobInfo;->isExemptedFromAppStandby()Z

    move-result v7

    .line 2394
    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2399
    :cond_298
    iget v5, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    const-wide v7, 0x20e0000000bL

    if-eqz v5, :cond_2a6

    .line 2400
    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2403
    :cond_2a6
    iget v5, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    const/4 v9, 0x2

    and-int/2addr v5, v9

    if-eqz v5, :cond_2af

    .line 2404
    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2407
    :cond_2af
    iget v5, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    const/4 v6, 0x4

    and-int/2addr v5, v6

    if-eqz v5, :cond_2b8

    .line 2408
    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2411
    :cond_2b8
    iget v5, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_2c2

    const/4 v5, 0x3

    .line 2412
    invoke-virtual {v1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2415
    :cond_2c2
    iget v5, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_2cb

    .line 2416
    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2419
    :cond_2cb
    iget v5, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_2d5

    const/4 v5, 0x5

    .line 2420
    invoke-virtual {v1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2423
    :cond_2d5
    iget v5, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_2df

    const/4 v5, 0x6

    .line 2424
    invoke-virtual {v1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2428
    :cond_2df
    iget v5, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_2e9

    const/4 v5, 0x7

    .line 2429
    invoke-virtual {v1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_2e9
    const-wide v5, 0x10b00000019L    # 5.665728762E-312

    .line 2435
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    const-wide v7, 0x10800000001L

    .line 2436
    iget-boolean v9, v0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2437
    iget-boolean v7, v0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    const-wide v8, 0x10800000002L

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v7, 0x10800000003L

    .line 2441
    iget-boolean v9, v0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2443
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2445
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    if-eqz v5, :cond_333

    move v5, v4

    .line 2446
    :goto_318
    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v5, v6, :cond_333

    const-wide v6, 0x2090000000cL

    .line 2447
    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v8, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_318

    .line 2450
    :cond_333
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    if-eqz v5, :cond_357

    move v5, v4

    .line 2451
    :goto_338
    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v5, v6, :cond_357

    .line 2452
    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    const-wide v7, 0x2090000000dL

    .line 2453
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_338

    .line 2457
    :cond_357
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v5, :cond_377

    move v5, v4

    .line 2458
    :goto_35c
    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_377

    const-wide v6, 0x20b0000000fL

    .line 2459
    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/job/JobWorkItem;

    invoke-virtual {v0, v1, v6, v7, v8}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Landroid/util/proto/ProtoOutputStream;JLandroid/app/job/JobWorkItem;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_35c

    .line 2462
    :cond_377
    iget-object v5, v0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz v5, :cond_397

    move v5, v4

    .line 2463
    :goto_37c
    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_397

    const-wide v6, 0x20b00000010L

    .line 2464
    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/job/JobWorkItem;

    invoke-virtual {v0, v1, v6, v7, v8}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Landroid/util/proto/ProtoOutputStream;JLandroid/app/job/JobWorkItem;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_37c

    :cond_397
    const-wide v5, 0x10e00000011L

    .line 2468
    iget v7, v0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10300000012L

    .line 2469
    iget-wide v7, v0, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    sub-long v7, p5, v7

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x1030000001cL

    .line 2471
    iget-wide v7, v0, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-nez v11, :cond_3bc

    move-wide v7, v9

    goto :goto_3be

    :cond_3bc
    sub-long v7, p5, v7

    .line 2470
    :goto_3be
    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x1030000001dL

    .line 2473
    iget-wide v7, v0, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    cmp-long v11, v7, v9

    if-nez v11, :cond_3ce

    move-wide v7, v9

    goto :goto_3d0

    :cond_3ce
    sub-long v7, p5, v7

    .line 2472
    :goto_3d0
    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2475
    iget-wide v5, v0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    cmp-long v7, v5, v9

    const-wide v8, 0x11200000013L

    if-nez v7, :cond_3e2

    .line 2476
    invoke-virtual {v1, v8, v9, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_3e7

    :cond_3e2
    sub-long v5, v5, p5

    .line 2478
    invoke-virtual {v1, v8, v9, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2481
    :goto_3e7
    iget-wide v5, v0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v7, v5, v7

    const-wide v8, 0x11200000014L

    if-nez v7, :cond_3fb

    .line 2482
    invoke-virtual {v1, v8, v9, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_400

    :cond_3fb
    sub-long v5, v5, p5

    .line 2484
    invoke-virtual {v1, v8, v9, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :goto_400
    const-wide v4, 0x1040000001eL

    .line 2487
    iget-wide v6, v0, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x10500000015L

    .line 2490
    iget v6, v0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10300000016L

    .line 2491
    iget-wide v6, v0, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x10300000017L

    .line 2492
    iget-wide v6, v0, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2494
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 5

    and-int/lit8 p0, p4, 0x1

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    .line 1926
    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_8
    and-int/lit8 p0, p4, 0x2

    if-eqz p0, :cond_10

    const/4 p0, 0x2

    .line 1929
    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_10
    and-int/lit8 p0, p4, 0x8

    if-eqz p0, :cond_18

    const/4 p0, 0x3

    .line 1932
    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_18
    const/high16 p0, -0x80000000

    and-int/2addr p0, p4

    if-eqz p0, :cond_21

    const/4 p0, 0x4

    .line 1935
    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_21
    const/high16 p0, 0x40000000    # 2.0f

    and-int/2addr p0, p4

    if-eqz p0, :cond_2a

    const/4 p0, 0x5

    .line 1938
    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_2a
    and-int/lit8 p0, p4, 0x4

    if-eqz p0, :cond_32

    const/4 p0, 0x6

    .line 1941
    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_32
    const/high16 p0, 0x10000000

    and-int/2addr p0, p4

    if-eqz p0, :cond_3b

    const/4 p0, 0x7

    .line 1944
    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_3b
    const/high16 p0, 0x4000000

    and-int/2addr p0, p4

    if-eqz p0, :cond_45

    const/16 p0, 0x8

    .line 1947
    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_45
    const/high16 p0, 0x2000000

    and-int/2addr p0, p4

    if-eqz p0, :cond_4f

    const/16 p0, 0x9

    .line 1950
    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_4f
    const/high16 p0, 0x1000000

    and-int/2addr p0, p4

    if-eqz p0, :cond_59

    const/16 p0, 0xa

    .line 1953
    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_59
    const/high16 p0, 0x400000

    and-int/2addr p0, p4

    if-eqz p0, :cond_63

    const/16 p0, 0xb

    .line 1956
    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_63
    return-void
.end method

.method public dumpConstraints(Ljava/io/PrintWriter;I)V
    .registers 3

    and-int/lit8 p0, p2, 0x1

    if-eqz p0, :cond_9

    const-string p0, " CHARGING"

    .line 1843
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_9
    and-int/lit8 p0, p2, 0x2

    if-eqz p0, :cond_12

    const-string p0, " BATTERY_NOT_LOW"

    .line 1846
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_12
    and-int/lit8 p0, p2, 0x8

    if-eqz p0, :cond_1b

    const-string p0, " STORAGE_NOT_LOW"

    .line 1849
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1b
    const/high16 p0, -0x80000000

    and-int/2addr p0, p2

    if-eqz p0, :cond_25

    const-string p0, " TIMING_DELAY"

    .line 1852
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_25
    const/high16 p0, 0x40000000    # 2.0f

    and-int/2addr p0, p2

    if-eqz p0, :cond_2f

    const-string p0, " DEADLINE"

    .line 1855
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2f
    and-int/lit8 p0, p2, 0x4

    if-eqz p0, :cond_38

    const-string p0, " IDLE"

    .line 1858
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_38
    const/high16 p0, 0x10000000

    and-int/2addr p0, p2

    if-eqz p0, :cond_42

    const-string p0, " CONNECTIVITY"

    .line 1861
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_42
    const/high16 p0, 0x4000000

    and-int/2addr p0, p2

    if-eqz p0, :cond_4c

    const-string p0, " CONTENT_TRIGGER"

    .line 1864
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4c
    const/high16 p0, 0x2000000

    and-int/2addr p0, p2

    if-eqz p0, :cond_56

    const-string p0, " DEVICE_NOT_DOZING"

    .line 1867
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_56
    const/high16 p0, 0x400000

    and-int/2addr p0, p2

    if-eqz p0, :cond_60

    const-string p0, " BACKGROUND_NOT_RESTRICTED"

    .line 1870
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_60
    const/high16 p0, 0x800000

    and-int/2addr p0, p2

    if-eqz p0, :cond_6a

    const-string p0, " PREFETCH"

    .line 1873
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_6a
    const/high16 p0, 0x8000000

    and-int/2addr p0, p2

    if-eqz p0, :cond_74

    const-string p0, " TARE_WEALTH"

    .line 1876
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_74
    const/high16 p0, 0x1000000

    and-int/2addr p0, p2

    if-eqz p0, :cond_7e

    const-string p0, " WITHIN_QUOTA"

    .line 1879
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_7e
    const/high16 p0, 0x200000

    and-int/2addr p0, p2

    if-eqz p0, :cond_88

    const-string p0, " UID_NOT_RESTRICTED"

    .line 1883
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_88
    if-eqz p2, :cond_9b

    const-string p0, " [0x"

    .line 1887
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1888
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "]"

    .line 1889
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_9b
    return-void
.end method

.method public final dumpJobWorkItem(Landroid/util/IndentingPrintWriter;Landroid/app/job/JobWorkItem;I)V
    .registers 4

    .line 1961
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p0, "#"

    .line 1962
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string p0, ": #"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1963
    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string p0, " "

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getDeliveryCount()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string/jumbo p0, "x "

    .line 1964
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1965
    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4a

    const-string p0, "URI grants:"

    .line 1966
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1967
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1968
    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/job/GrantedUriPermissions;

    invoke-virtual {p0, p1}, Lcom/android/server/job/GrantedUriPermissions;->dump(Ljava/io/PrintWriter;)V

    .line 1969
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1971
    :cond_4a
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final dumpJobWorkItem(Landroid/util/proto/ProtoOutputStream;JLandroid/app/job/JobWorkItem;)V
    .registers 7

    .line 1975
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1977
    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result p0

    const-wide v0, 0x10500000001L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1978
    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getDeliveryCount()I

    move-result p0

    const-wide v0, 0x10500000002L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1979
    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_2e

    .line 1980
    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-wide v0, 0x10b00000003L

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Intent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1982
    :cond_2e
    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3e

    .line 1984
    check-cast p0, Lcom/android/server/job/GrantedUriPermissions;

    const-wide v0, 0x10b00000004L

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/job/GrantedUriPermissions;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1987
    :cond_3e
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public enqueueWorkLocked(Landroid/app/job/JobWorkItem;)V
    .registers 7

    .line 680
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 681
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 683
    :cond_b
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    invoke-virtual {p1, v0}, Landroid/app/job/JobWorkItem;->setWorkId(I)V

    .line 684
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    .line 685
    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 686
    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/job/GrantedUriPermissions;->checkGrantFlags(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 687
    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 688
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v4

    .line 687
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/job/GrantedUriPermissions;->createFromIntent(Landroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/job/JobWorkItem;->setGrants(Ljava/lang/Object;)V

    .line 690
    :cond_3f
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->updateNetworkBytesLocked()V

    return-void
.end method

.method public final formatRunTime(Ljava/io/PrintWriter;JJJ)V
    .registers 8

    cmp-long p0, p2, p4

    if-nez p0, :cond_b

    const-string/jumbo p0, "none"

    .line 1785
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_f

    :cond_b
    sub-long/2addr p2, p6

    .line 1787
    invoke-static {p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    :goto_f
    return-void
.end method

.method public final formatRunTime(Ljava/lang/StringBuilder;JJJ)V
    .registers 8

    cmp-long p0, p2, p4

    if-nez p0, :cond_b

    const-string/jumbo p0, "none"

    .line 1793
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_b
    sub-long/2addr p2, p6

    .line 1795
    invoke-static {p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    :goto_f
    return-void
.end method

.method public getBatteryName()Ljava/lang/String;
    .registers 1

    .line 952
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    return-object p0
.end method

.method public getBias()I
    .registers 1

    .line 960
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getBias()I

    move-result p0

    return p0
.end method

.method public getBucketName()Ljava/lang/String;
    .registers 1

    .line 1994
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    invoke-static {p0}, Lcom/android/server/job/controllers/JobStatus;->bucketName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEarliestRunTime()J
    .registers 3

    .line 1135
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    return-wide v0
.end method

.method public getEffectivePriority()I
    .registers 4

    .line 969
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v0

    .line 970
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_c

    return v0

    .line 974
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 p0, 0x190

    return p0

    .line 979
    :cond_15
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    div-int/2addr p0, v2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_27

    if-eq p0, v2, :cond_20

    const/16 p0, 0x64

    return p0

    :cond_20
    const/16 p0, 0xc8

    .line 982
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_27
    const/16 p0, 0x12c

    .line 981
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getEffectiveStandbyBucket()I
    .registers 3

    .line 855
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_8

    return v0

    .line 859
    :cond_8
    iget-boolean v1, p0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    if-nez v1, :cond_28

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isExemptedFromAppStandby()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_28

    :cond_17
    const/4 v1, 0x5

    if-eq v0, v1, :cond_27

    const/4 v1, 0x4

    if-eq v0, v1, :cond_27

    .line 864
    iget-boolean p0, p0, Lcom/android/server/job/controllers/JobStatus;->mHasMediaBackupExemption:Z

    if-eqz p0, :cond_27

    const/4 p0, 0x1

    .line 868
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_27
    return v0

    :cond_28
    :goto_28
    const/4 p0, 0x0

    return p0
.end method

.method public getEstimatedNetworkDownloadBytes()J
    .registers 3

    .line 1053
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    return-wide v0
.end method

.method public getEstimatedNetworkUploadBytes()J
    .registers 3

    .line 1057
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    return-wide v0
.end method

.method public getFirstForceBatchedTimeElapsed()J
    .registers 3

    .line 917
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    return-wide v0
.end method

.method public getFlags()I
    .registers 1

    .line 988
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getFlags()I

    move-result p0

    return p0
.end method

.method public getFractionRunTime()F
    .registers 13

    .line 1167
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1168
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const-wide v7, 0x7fffffffffffffffL

    const/high16 v9, 0x3f800000    # 1.0f

    if-nez v6, :cond_1c

    iget-wide v10, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    cmp-long v6, v10, v7

    if-nez v6, :cond_1c

    return v9

    :cond_1c
    cmp-long v4, v2, v4

    const/4 v5, 0x0

    if-nez v4, :cond_2a

    .line 1172
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    cmp-long p0, v0, v2

    if-ltz p0, :cond_28

    goto :goto_29

    :cond_28
    move v9, v5

    :goto_29
    return v9

    .line 1173
    :cond_2a
    iget-wide v10, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    cmp-long p0, v10, v7

    if-nez p0, :cond_37

    cmp-long p0, v0, v2

    if-ltz p0, :cond_35

    goto :goto_36

    :cond_35
    move v9, v5

    :goto_36
    return v9

    :cond_37
    cmp-long p0, v0, v2

    if-gtz p0, :cond_3c

    return v5

    :cond_3c
    cmp-long p0, v0, v10

    if-ltz p0, :cond_41

    return v9

    :cond_41
    sub-long/2addr v0, v2

    long-to-float p0, v0

    sub-long/2addr v10, v2

    long-to-float v0, v10

    div-float/2addr p0, v0

    return p0
.end method

.method public getInternalFlags()I
    .registers 1

    .line 992
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    return p0
.end method

.method public getJob()Landroid/app/job/JobInfo;
    .registers 1

    .line 813
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    return-object p0
.end method

.method public getJobId()I
    .registers 1

    .line 817
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getId()I

    move-result p0

    return p0
.end method

.method public getLastFailedRunTime()J
    .registers 3

    .line 1572
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    return-wide v0
.end method

.method public getLastSuccessfulRunTime()J
    .registers 3

    .line 1568
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    return-wide v0
.end method

.method public getLatestRunTimeElapsed()J
    .registers 3

    .line 1139
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    return-wide v0
.end method

.method public getMinimumNetworkChunkBytes()J
    .registers 3

    .line 1061
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    return-wide v0
.end method

.method public getNumFailures()I
    .registers 1

    .line 827
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    return p0
.end method

.method public getOriginalLatestRunTimeElapsed()J
    .registers 3

    .line 1143
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    return-wide v0
.end method

.method public getPersistedUtcTimes()Landroid/util/Pair;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1188
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    return-object p0
.end method

.method public final getProtoConstraint(I)I
    .registers 3

    const/high16 p0, -0x80000000

    const/4 v0, 0x4

    if-eq p1, p0, :cond_3c

    if-eq p1, v0, :cond_3a

    const/16 p0, 0x8

    if-eq p1, p0, :cond_38

    const/high16 v0, 0x400000

    if-eq p1, v0, :cond_35

    const/high16 v0, 0x1000000

    if-eq p1, v0, :cond_32

    const/high16 v0, 0x2000000

    if-eq p1, v0, :cond_2f

    const/high16 v0, 0x4000000

    if-eq p1, v0, :cond_2e

    const/high16 p0, 0x10000000

    if-eq p1, p0, :cond_2d

    const/high16 p0, 0x40000000    # 2.0f

    if-eq p1, p0, :cond_2b

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2a

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2a

    const/4 p0, 0x0

    :cond_2a
    return p0

    :cond_2b
    const/4 p0, 0x5

    return p0

    :cond_2d
    const/4 p0, 0x7

    :cond_2e
    return p0

    :cond_2f
    const/16 p0, 0x9

    return p0

    :cond_32
    const/16 p0, 0xa

    return p0

    :cond_35
    const/16 p0, 0xb

    return p0

    :cond_38
    const/4 p0, 0x3

    return p0

    :cond_3a
    const/4 p0, 0x6

    return p0

    :cond_3c
    return v0
.end method

.method public getSatisfiedConstraintFlags()I
    .registers 1

    .line 1000
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    return p0
.end method

.method public getServiceComponent()Landroid/content/ComponentName;
    .registers 1

    .line 831
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getSourcePackageName()Ljava/lang/String;
    .registers 1

    .line 835
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getSourceTag()Ljava/lang/String;
    .registers 1

    .line 944
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    return-object p0
.end method

.method public getSourceUid()I
    .registers 1

    .line 839
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    return p0
.end method

.method public getSourceUserId()I
    .registers 1

    .line 843
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    return p0
.end method

.method public getStandbyBucket()I
    .registers 1

    .line 875
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    return p0
.end method

.method public getStopReason()I
    .registers 1

    .line 1152
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    return p0
.end method

.method public getTag()Ljava/lang/String;
    .registers 1

    .line 956
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public getTriggerContentMaxDelay()J
    .registers 5

    .line 1123
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_10

    const-wide/32 v0, 0x1d4c0

    return-wide v0

    :cond_10
    const-wide/16 v2, 0x3e8

    .line 1127
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTriggerContentUpdateDelay()J
    .registers 5

    .line 1115
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_f

    const-wide/16 v0, 0x2710

    return-wide v0

    :cond_f
    const-wide/16 v2, 0x1f4

    .line 1119
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUid()I
    .registers 1

    .line 948
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    return p0
.end method

.method public getUserId()I
    .registers 1

    .line 847
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    return p0
.end method

.method public getWhenStandbyDeferred()J
    .registers 3

    .line 904
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    return-wide v0
.end method

.method public hasBatteryNotLowConstraint()Z
    .registers 2

    const/4 v0, 0x2

    .line 1076
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result p0

    return p0
.end method

.method public hasChargingConstraint()Z
    .registers 2

    const/4 v0, 0x1

    .line 1072
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result p0

    return p0
.end method

.method public hasConnectivityConstraint()Z
    .registers 2

    .line 1068
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/high16 v0, 0x10000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public final hasConstraint(I)Z
    .registers 3

    .line 1111
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/2addr v0, p1

    if-nez v0, :cond_d

    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public hasContentTriggerConstraint()Z
    .registers 2

    .line 1103
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/high16 v0, 0x4000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public hasDeadlineConstraint()Z
    .registers 2

    const/high16 v0, 0x40000000    # 2.0f

    .line 1093
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result p0

    return p0
.end method

.method public hasExecutingWorkLocked()Z
    .registers 1

    .line 715
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public hasIdleConstraint()Z
    .registers 2

    const/4 v0, 0x4

    .line 1097
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result p0

    return p0
.end method

.method public hasPowerConstraint()Z
    .registers 2

    const/4 v0, 0x3

    .line 1081
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result p0

    return p0
.end method

.method public hasStorageNotLowConstraint()Z
    .registers 2

    const/16 v0, 0x8

    .line 1085
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result p0

    return p0
.end method

.method public hasTimingDelayConstraint()Z
    .registers 2

    const/high16 v0, -0x80000000

    .line 1089
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result p0

    return p0
.end method

.method public hasWorkLocked()Z
    .registers 2

    .line 711
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_10

    :cond_a
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasExecutingWorkLocked()Z

    move-result p0

    if-eqz p0, :cond_12

    :cond_10
    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public isConstraintSatisfied(I)Z
    .registers 2

    .line 1496
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isConstraintsSatisfied()Z
    .registers 2

    .line 1694
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied(I)Z

    move-result p0

    return p0
.end method

.method public final isConstraintsSatisfied(I)Z
    .registers 5

    .line 1698
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_7

    return v1

    :cond_7
    const/4 v2, 0x2

    if-ne v0, v2, :cond_11

    .line 1706
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const v2, -0x7f7ffff1

    and-int/2addr v0, v2

    or-int/2addr p1, v0

    .line 1709
    :cond_11
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mRequiredConstraintsOfInterest:I

    and-int/2addr p1, p0

    if-ne p1, p0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return v1
.end method

.method public isExpeditedQuotaApproved()Z
    .registers 1

    .line 1500
    iget-boolean p0, p0, Lcom/android/server/job/controllers/JobStatus;->mExpeditedQuotaApproved:Z

    return p0
.end method

.method public isPersisted()Z
    .registers 1

    .line 1131
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result p0

    return p0
.end method

.method public isPreparedLocked()Z
    .registers 1

    .line 809
    iget-boolean p0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    return p0
.end method

.method public isReady()Z
    .registers 2

    .line 1579
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    move-result p0

    return p0
.end method

.method public final isReady(I)Z
    .registers 5

    .line 1658
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyTareWealth:Z

    if-nez v0, :cond_13

    :cond_9
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    if-nez v0, :cond_13

    .line 1659
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1660
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1b

    :cond_1a
    return v1

    .line 1668
    :cond_1b
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    if-eqz v0, :cond_32

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_32

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    if-nez v0, :cond_31

    .line 1669
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied(I)Z

    move-result p0

    if-eqz p0, :cond_32

    :cond_31
    const/4 v1, 0x1

    :cond_32
    return v1
.end method

.method public isRequestedExpeditedJob()Z
    .registers 1

    .line 1197
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public matches(II)Z
    .registers 4

    .line 1713
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    if-ne v0, p2, :cond_e

    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    if-ne p0, p1, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public maybeAddForegroundExemption(Ljava/util/function/Predicate;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1005
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_29

    .line 1009
    :cond_11
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_18

    return-void

    .line 1012
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 1013
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/JobStatus;->addInternalFlags(I)V

    :cond_29
    :goto_29
    return-void
.end method

.method public maybeLogBucketMismatch()V
    .registers 3

    .line 895
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mLoggedBucketMismatch:Z

    if-nez v0, :cond_26

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " became active but still in NEVER bucket"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.JobStatus"

    .line 896
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 898
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mLoggedBucketMismatch:Z

    :cond_26
    return-void
.end method

.method public prepareLocked()V
    .registers 8

    .line 775
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    if-eqz v0, :cond_1b

    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already prepared: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "JobScheduler.JobStatus"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1b
    const/4 v0, 0x1

    .line 779
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    const/4 v0, 0x0

    .line 781
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    .line 783
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 785
    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 786
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getClipGrantFlags()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v6

    .line 785
    invoke-static/range {v1 .. v6}, Lcom/android/server/job/GrantedUriPermissions;->createFromClip(Landroid/content/ClipData;ILjava/lang/String;IILjava/lang/String;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    :cond_3f
    return-void
.end method

.method public printUniqueId(Ljava/io/PrintWriter;)V
    .registers 3

    .line 821
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v0, "/"

    .line 822
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 823
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getId()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    return-void
.end method

.method public final readinessStatusWithConstraint(IZ)Z
    .registers 12

    .line 1592
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x8000000

    const/high16 v4, 0x2000000

    const/high16 v5, 0x1000000

    const/high16 v6, 0x400000

    const/4 v7, 0x0

    if-eq p1, v6, :cond_43

    if-eq p1, v5, :cond_3e

    if-eq p1, v4, :cond_39

    if-eq p1, v3, :cond_34

    if-eq p1, v2, :cond_2f

    if-eqz p2, :cond_1d

    or-int p2, v0, p1

    goto :goto_1f

    :cond_1d
    not-int p2, p1

    and-int/2addr p2, v0

    :goto_1f
    move v0, p2

    .line 1620
    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    if-eqz p2, :cond_2a

    and-int v8, v0, p2

    if-ne p2, v8, :cond_2a

    move p2, v1

    goto :goto_2b

    :cond_2a
    move p2, v7

    :goto_2b
    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    move v8, v7

    goto :goto_47

    .line 1599
    :cond_2f
    iget-boolean v8, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    .line 1600
    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    goto :goto_47

    .line 1607
    :cond_34
    iget-boolean v8, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyTareWealth:Z

    .line 1608
    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyTareWealth:Z

    goto :goto_47

    .line 1603
    :cond_39
    iget-boolean v8, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    .line 1604
    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    goto :goto_47

    .line 1611
    :cond_3e
    iget-boolean v8, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    .line 1612
    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    goto :goto_47

    .line 1595
    :cond_43
    iget-boolean v8, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    .line 1596
    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    .line 1626
    :goto_47
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    move-result p2

    if-eq p1, v6, :cond_6f

    if-eq p1, v5, :cond_6c

    if-eq p1, v4, :cond_69

    if-eq p1, v3, :cond_66

    if-eq p1, v2, :cond_63

    .line 1645
    iget p1, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    if-eqz p1, :cond_5f

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_5f

    goto :goto_60

    :cond_5f
    move v1, v7

    :goto_60
    iput-boolean v1, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    goto :goto_71

    .line 1633
    :cond_63
    iput-boolean v8, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    goto :goto_71

    .line 1639
    :cond_66
    iput-boolean v8, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyTareWealth:Z

    goto :goto_71

    .line 1636
    :cond_69
    iput-boolean v8, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    goto :goto_71

    .line 1642
    :cond_6c
    iput-boolean v8, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    goto :goto_71

    .line 1630
    :cond_6f
    iput-boolean v8, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    :goto_71
    return p2
.end method

.method public final removeDynamicConstraints(I)V
    .registers 3

    .line 1562
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    if-eqz p1, :cond_f

    .line 1563
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    iput-boolean p1, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    return-void
.end method

.method public setBackgroundNotRestrictedConstraintSatisfied(JZZ)Z
    .registers 5

    .line 1297
    iput-boolean p4, p0, Lcom/android/server/job/controllers/JobStatus;->mIsUserBgRestricted:Z

    const/high16 p4, 0x400000

    .line 1298
    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1300
    iput-boolean p3, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public setBatteryNotLowConstraintSatisfied(JZ)Z
    .registers 5

    const/4 v0, 0x2

    .line 1239
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p0

    return p0
.end method

.method public setChargingConstraintSatisfied(JZ)Z
    .registers 5

    const/4 v0, 0x1

    .line 1234
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p0

    return p0
.end method

.method public setConnectivityConstraintSatisfied(JZ)Z
    .registers 5

    const/high16 v0, 0x10000000

    .line 1274
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p0

    return p0
.end method

.method public setConstraintSatisfied(IJZ)Z
    .registers 11

    .line 1389
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    :goto_a
    if-ne v0, p4, :cond_d

    return v2

    .line 1393
    :cond_d
    sget-boolean v0, Lcom/android/server/job/controllers/JobStatus;->DEBUG:Z

    if-eqz v0, :cond_43

    .line 1394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Constraint "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p4, :cond_28

    const-string v3, "NOT "

    goto :goto_2a

    :cond_28
    const-string v3, ""

    .line 1395
    :goto_2a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "satisfied for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1396
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "JobScheduler.JobStatus"

    .line 1394
    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    if-nez p4, :cond_4d

    .line 1398
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    if-eqz v0, :cond_4d

    move v0, v1

    goto :goto_4e

    :cond_4d
    move v0, v2

    .line 1399
    :goto_4e
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    not-int v4, p1

    and-int/2addr v3, v4

    if-eqz p4, :cond_56

    move v4, p1

    goto :goto_57

    :cond_56
    move v4, v2

    :goto_57
    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const v4, -0x6b5ffff1

    and-int/2addr v4, v3

    .line 1400
    iput v4, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 1401
    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    if-eqz v4, :cond_6a

    and-int v5, v3, v4

    if-ne v4, v5, :cond_6a

    move v4, v1

    goto :goto_6b

    :cond_6a
    move v4, v2

    :goto_6b
    iput-boolean v4, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    .line 1412
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintUpdatedTimesElapsed:[J

    iget v5, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintChangeHistoryIndex:I

    aput-wide p2, v4, v5

    .line 1413
    iget-object p2, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintStatusHistory:[I

    aput v3, p2, v5

    add-int/2addr v5, v1

    .line 1414
    rem-int/lit8 v5, v5, 0xa

    iput v5, p0, Lcom/android/server/job/controllers/JobStatus;->mConstraintChangeHistoryIndex:I

    .line 1418
    invoke-virtual {p0, p1, p4}, Lcom/android/server/job/controllers/JobStatus;->readinessStatusWithConstraint(IZ)Z

    move-result p2

    if-eqz v0, :cond_8b

    if-nez p2, :cond_8b

    .line 1420
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/JobStatus;->constraintToStopReason(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    goto :goto_91

    :cond_8b
    if-nez v0, :cond_91

    if-eqz p2, :cond_91

    .line 1422
    iput v2, p0, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    :cond_91
    :goto_91
    return v1
.end method

.method public setContentTriggerConstraintSatisfied(JZ)Z
    .registers 5

    const/high16 v0, 0x4000000

    .line 1279
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p0

    return p0
.end method

.method public setDeadlineConstraintSatisfied(JZ)Z
    .registers 5

    const/high16 v0, 0x40000000    # 2.0f

    .line 1259
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1e

    .line 1261
    iget-object p1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result p1

    if-eqz p1, :cond_1b

    if-eqz p3, :cond_1b

    move p2, v0

    :cond_1b
    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    return v0

    :cond_1e
    return p2
.end method

.method public setDeviceNotDozingConstraintSatisfied(JZZ)Z
    .registers 5

    .line 1285
    iput-boolean p4, p0, Lcom/android/server/job/controllers/JobStatus;->appHasDozeExemption:Z

    const/high16 p4, 0x2000000

    .line 1286
    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    if-nez p3, :cond_14

    .line 1288
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->canRunInDoze()Z

    move-result p3

    if-eqz p3, :cond_15

    :cond_14
    move p2, p1

    :cond_15
    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    return p1

    :cond_18
    return p2
.end method

.method public setExpeditedJobQuotaApproved(JZ)Z
    .registers 5

    .line 1333
    iget-boolean p1, p0, Lcom/android/server/job/controllers/JobStatus;->mExpeditedQuotaApproved:Z

    const/4 p2, 0x0

    if-ne p1, p3, :cond_6

    return p2

    :cond_6
    const/4 p1, 0x1

    if-nez p3, :cond_11

    .line 1336
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, p1

    goto :goto_12

    :cond_11
    move v0, p2

    .line 1337
    :goto_12
    iput-boolean p3, p0, Lcom/android/server/job/controllers/JobStatus;->mExpeditedQuotaApproved:Z

    .line 1338
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->updateExpeditedDependencies()V

    .line 1339
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result p3

    if-eqz v0, :cond_24

    if-nez p3, :cond_24

    const/16 p2, 0xa

    .line 1341
    iput p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    goto :goto_2a

    :cond_24
    if-nez v0, :cond_2a

    if-eqz p3, :cond_2a

    .line 1343
    iput p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    :cond_2a
    :goto_2a
    return p1
.end method

.method public setExpeditedJobTareApproved(JZ)Z
    .registers 5

    .line 1355
    iget-boolean p1, p0, Lcom/android/server/job/controllers/JobStatus;->mExpeditedTareApproved:Z

    const/4 p2, 0x0

    if-ne p1, p3, :cond_6

    return p2

    :cond_6
    const/4 p1, 0x1

    if-nez p3, :cond_11

    .line 1358
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, p1

    goto :goto_12

    :cond_11
    move v0, p2

    .line 1359
    :goto_12
    iput-boolean p3, p0, Lcom/android/server/job/controllers/JobStatus;->mExpeditedTareApproved:Z

    .line 1360
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->updateExpeditedDependencies()V

    .line 1361
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result p3

    if-eqz v0, :cond_24

    if-nez p3, :cond_24

    const/16 p2, 0xa

    .line 1363
    iput p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    goto :goto_2a

    :cond_24
    if-nez v0, :cond_2a

    if-eqz p3, :cond_2a

    .line 1365
    iput p2, p0, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    :cond_2a
    :goto_2a
    return p1
.end method

.method public setFirstForceBatchedTimeElapsed(J)V
    .registers 3

    .line 921
    iput-wide p1, p0, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    return-void
.end method

.method public setIdleConstraintSatisfied(JZ)Z
    .registers 5

    const/4 v0, 0x4

    .line 1269
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p0

    return p0
.end method

.method public setOriginalLatestRunTimeElapsed(J)V
    .registers 3

    .line 1147
    iput-wide p1, p0, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    return-void
.end method

.method public setPrefetchConstraintSatisfied(JZ)Z
    .registers 5

    const/high16 v0, 0x800000

    .line 1249
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p0

    return p0
.end method

.method public setQuotaConstraintSatisfied(JZ)Z
    .registers 5

    const/high16 v0, 0x1000000

    .line 1308
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1310
    iput-boolean p3, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public setStandbyBucket(I)V
    .registers 5

    const v0, 0x10000007

    const/4 v1, 0x5

    if-ne p1, v1, :cond_a

    .line 881
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->addDynamicConstraints(I)V

    goto :goto_11

    .line 882
    :cond_a
    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    if-ne v2, v1, :cond_11

    .line 884
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->removeDynamicConstraints(I)V

    .line 887
    :cond_11
    :goto_11
    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    const/4 p1, 0x0

    .line 888
    iput-boolean p1, p0, Lcom/android/server/job/controllers/JobStatus;->mLoggedBucketMismatch:Z

    return-void
.end method

.method public setStorageNotLowConstraintSatisfied(JZ)Z
    .registers 5

    const/16 v0, 0x8

    .line 1244
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p0

    return p0
.end method

.method public setTareWealthConstraintSatisfied(JZ)Z
    .registers 5

    const/high16 v0, 0x8000000

    .line 1318
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1320
    iput-boolean p3, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyTareWealth:Z

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public setTimingDelayConstraintSatisfied(JZ)Z
    .registers 5

    const/high16 v0, -0x80000000

    .line 1254
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p0

    return p0
.end method

.method public setTrackingController(I)V
    .registers 3

    .line 1512
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    return-void
.end method

.method public setUidActive(Z)Z
    .registers 3

    .line 1380
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    if-eq p1, v0, :cond_8

    .line 1381
    iput-boolean p1, p0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public setUidRestrictConstraintSatisfied(JZ)Z
    .registers 5

    const/high16 v0, 0x200000

    .line 1228
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p0

    return p0
.end method

.method public setWhenStandbyDeferred(J)V
    .registers 3

    .line 909
    iput-wide p1, p0, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    return-void
.end method

.method public shouldTreatAsExpeditedJob()Z
    .registers 2

    .line 1205
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mExpeditedQuotaApproved:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mExpeditedTareApproved:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_37

    .line 752
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_11

    .line 753
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 755
    :cond_11
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-nez v1, :cond_1a

    .line 756
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    goto :goto_2b

    .line 757
    :cond_1a
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2b

    .line 758
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 760
    :cond_2b
    :goto_2b
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 761
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 762
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    iput v0, p1, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    .line 763
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->updateNetworkBytesLocked()V

    goto :goto_45

    .line 766
    :cond_37
    iget-object p1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/server/job/controllers/JobStatus;->ungrantWorkList(Ljava/util/ArrayList;)V

    .line 767
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 768
    iget-object p1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/server/job/controllers/JobStatus;->ungrantWorkList(Ljava/util/ArrayList;)V

    .line 769
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 771
    :goto_45
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->updateNetworkBytesLocked()V

    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .registers 3

    .line 1804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1805
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    .line 1806
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1807
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    const-string v1, "/"

    .line 1808
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1809
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 1810
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1811
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1812
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toShortStringExceptUniqueId()Ljava/lang/String;
    .registers 3

    .line 1820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1821
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 1822
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1823
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1824
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    .line 1718
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "JobStatus{"

    .line 1719
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1720
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #"

    .line 1721
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1722
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v8, v0}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    const-string v0, "/"

    .line 1723
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1724
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    .line 1725
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1726
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " u="

    .line 1727
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1728
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " s="

    .line 1729
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1730
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1731
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_64

    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_89

    .line 1733
    :cond_64
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v9

    const-string v0, " TIME="

    .line 1734
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1735
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, v8

    move-wide v6, v9

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/lang/StringBuilder;JJJ)V

    const-string v0, ":"

    .line 1736
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1737
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/lang/StringBuilder;JJJ)V

    .line 1739
    :cond_89
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v0

    if-eqz v0, :cond_96

    const-string v0, " NET"

    .line 1740
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1742
    :cond_96
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v0

    if-eqz v0, :cond_a3

    const-string v0, " CHARGING"

    .line 1743
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1745
    :cond_a3
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    move-result v0

    if-eqz v0, :cond_b0

    const-string v0, " BATNOTLOW"

    .line 1746
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1748
    :cond_b0
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isRequireStorageNotLow()Z

    move-result v0

    if-eqz v0, :cond_bd

    const-string v0, " STORENOTLOW"

    .line 1749
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1751
    :cond_bd
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v0

    if-eqz v0, :cond_ca

    const-string v0, " IDLE"

    .line 1752
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1754
    :cond_ca
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    if-eqz v0, :cond_d7

    const-string v0, " PERIODIC"

    .line 1755
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1757
    :cond_d7
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v0

    if-eqz v0, :cond_e4

    const-string v0, " PERSISTED"

    .line 1758
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1760
    :cond_e4
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-nez v0, :cond_f0

    const-string v0, " WAIT:DEV_NOT_DOZING"

    .line 1761
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1763
    :cond_f0
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v0

    if-eqz v0, :cond_10a

    const-string v0, " URIS="

    .line 1764
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1765
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1767
    :cond_10a
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    if-eqz v0, :cond_118

    const-string v0, " failures="

    .line 1768
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1769
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1771
    :cond_118
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    if-eqz v0, :cond_124

    const-string p0, " READY"

    .line 1772
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_144

    :cond_124
    const-string v0, " satisfied:0x"

    .line 1774
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " unsatisfied:0x"

    .line 1775
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->mRequiredConstraintsOfInterest:I

    and-int/2addr v0, p0

    xor-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_144
    const-string/jumbo p0, "}"

    .line 1779
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1780
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unprepareLocked()V
    .registers 3

    .line 791
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    if-nez v0, :cond_24

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hasn\'t been prepared: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.JobStatus"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    if-eqz p0, :cond_23

    const-string v0, "Was already unprepared at "

    .line 794
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_23
    return-void

    :cond_24
    const/4 v0, 0x0

    .line 798
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    .line 800
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    .line 802
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    if-eqz v0, :cond_3c

    .line 803
    invoke-virtual {v0}, Lcom/android/server/job/GrantedUriPermissions;->revoke()V

    const/4 v0, 0x0

    .line 804
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    :cond_3c
    return-void
.end method

.method public final updateExpeditedDependencies()V
    .registers 2

    const/high16 v0, 0x2000000

    .line 1375
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->canRunInDoze()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    return-void
.end method

.method public updateMediaBackupExemptionStatus()Z
    .registers 6

    .line 930
    const-class v0, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobSchedulerInternal;

    .line 931
    iget-boolean v1, p0, Lcom/android/server/job/controllers/JobStatus;->mHasExemptedMediaUrisOnly:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 932
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v1

    if-nez v1, :cond_36

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 933
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 934
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v1

    const/16 v4, 0x12c

    if-lt v1, v4, :cond_36

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 935
    invoke-interface {v0, v4}, Lcom/android/server/job/JobSchedulerInternal;->getCloudMediaProviderPackage(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    move v0, v2

    goto :goto_37

    :cond_36
    move v0, v3

    .line 936
    :goto_37
    iget-boolean v1, p0, Lcom/android/server/job/controllers/JobStatus;->mHasMediaBackupExemption:Z

    if-ne v1, v0, :cond_3c

    return v3

    .line 939
    :cond_3c
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mHasMediaBackupExemption:Z

    return v2
.end method

.method public final updateNetworkBytesLocked()V
    .registers 9

    .line 1018
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    .line 1019
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getEstimatedNetworkUploadBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    .line 1020
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getMinimumNetworkChunkBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    .line 1022
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_7f

    const/4 v0, 0x0

    .line 1023
    :goto_1d
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7f

    .line 1024
    iget-wide v1, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_42

    .line 1028
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobWorkItem;

    invoke-virtual {v1}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_42

    .line 1030
    iget-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    add-long/2addr v5, v1

    iput-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    .line 1033
    :cond_42
    iget-wide v1, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5d

    .line 1037
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobWorkItem;

    invoke-virtual {v1}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkUploadBytes()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5d

    .line 1039
    iget-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    add-long/2addr v5, v1

    iput-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    .line 1042
    :cond_5d
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobWorkItem;

    invoke-virtual {v1}, Landroid/app/job/JobWorkItem;->getMinimumNetworkChunkBytes()J

    move-result-wide v1

    .line 1043
    iget-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    cmp-long v7, v5, v3

    if-nez v7, :cond_72

    .line 1044
    iput-wide v1, p0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    goto :goto_7c

    :cond_72
    cmp-long v3, v1, v3

    if-eqz v3, :cond_7c

    .line 1046
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    :cond_7c
    :goto_7c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_7f
    return-void
.end method

.method public wouldBeReadyWithConstraint(I)Z
    .registers 3

    const/4 v0, 0x1

    .line 1587
    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/JobStatus;->readinessStatusWithConstraint(IZ)Z

    move-result p0

    return p0
.end method

.method public writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 1832
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1834
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1835
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1836
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    const-wide v0, 0x10900000003L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1838
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
