.class public final Lcom/android/server/am/ProcessStateRecord;
.super Ljava/lang/Object;
.source "ProcessStateRecord.java"


# static fields
.field public static final VALUE_FALSE:I = 0x0

.field public static final VALUE_INVALID:I = -0x1

.field public static final VALUE_TRUE:I = 0x1


# instance fields
.field public mAdjSeq:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mAdjSource:Ljava/lang/Object;
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mAdjSourceProcState:I
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mAdjTarget:Ljava/lang/Object;
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mAdjType:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mAdjTypeCode:I
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public mBackgroundRestricted:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mCacheOomRankerRss:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mCacheOomRankerRssTimeMs:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mCacheOomRankerUseCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mCached:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mCachedAdj:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mCachedCompatChanges:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mCachedForegroundActivities:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mCachedHasActivities:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mCachedHasRecentTasks:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mCachedHasVisibleActivities:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mCachedIsHeavyWeight:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mCachedIsHomeProcess:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mCachedIsPreviousProcess:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mCachedIsReceivingBroadcast:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mCachedProcState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mCachedSchedGroup:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mCompletedAdjSeq:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mContainsCycle:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mCurAdj:I
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mCurBoundByNonBgRestrictedApp:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mCurCapability:I
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mCurProcState:I
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mCurRawAdj:I
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mCurRawProcState:I
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mCurSchedGroup:I
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mEmpty:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mFgInteractionTime:J
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mForcingToImportant:Ljava/lang/Object;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mHasForegroundActivities:Z
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mHasOverlayUi:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mHasShownUi:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mHasStartedServices:Z
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mHasTopUi:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mInteractionEventTime:J
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mLastCanKillOnBgRestrictedAndIdleTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mLastInvisibleTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mLastStateTime:J
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mLastTopTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mMaxAdj:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mNoKillOnBgRestrictedAndIdle:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mNotCachedSinceIdle:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation
.end field

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public mProcStateChanged:Z
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mReachable:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mRepForegroundActivities:Z
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mRepProcState:I
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mReportedInteraction:Z
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mRunningRemoteAnimation:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mSavedPriority:I
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public mServiceB:Z
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mServiceHighRam:Z
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mSetAdj:I
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mSetBoundByNonBgRestrictedApp:Z

.field public mSetCached:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mSetCapability:I
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mSetNoKillOnBgRestrictedAndIdle:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mSetProcState:I
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mSetRawAdj:I
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mSetSchedGroup:I
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mSlowAbnormal:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mSystemNoUi:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mVerifiedAdj:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mWhenUnimportant:J
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0T30tD6TkAoY0hWolDQyjgAPC1s(Lcom/android/server/am/ProcessStateRecord;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ProcessStateRecord;->lambda$forceProcessStateUpTo$1(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bIiYeLi_RQfV33p2KZda84nfLfo(Lcom/android/server/am/ProcessStateRecord;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ProcessStateRecord;->lambda$setReportedProcState$0(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .registers 5

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e9

    .line 55
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    const/16 v0, -0x2710

    .line 61
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 67
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    .line 73
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 79
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 85
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mVerifiedAdj:I

    const/4 v1, 0x0

    .line 92
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 98
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    .line 104
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    .line 110
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    const/16 v2, 0x14

    .line 116
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 122
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    .line 128
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 134
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 304
    iput-boolean v1, p0, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    .line 310
    iput-boolean v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    .line 316
    iput-boolean v1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetBoundByNonBgRestrictedApp:Z

    const/4 v2, -0x1

    .line 421
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    .line 423
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    .line 425
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    .line 427
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    .line 429
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    .line 431
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    .line 433
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    const/4 v2, 0x3

    new-array v2, v2, [I

    .line 439
    fill-array-data v2, :array_58

    iput-object v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedCompatChanges:[I

    .line 446
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    .line 448
    iput-boolean v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedForegroundActivities:Z

    const/16 v0, 0x13

    .line 450
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedProcState:I

    .line 452
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    .line 461
    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 462
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 463
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    return-void

    :array_58
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private synthetic lambda$forceProcessStateUpTo$1(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .registers 11

    .line 629
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    .line 631
    invoke-static {p0}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v5

    iget-wide v6, p2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    const/4 v1, 0x3

    move-object v4, p1

    .line 629
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method private synthetic lambda$setReportedProcState$0(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .registers 11

    .line 608
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    .line 610
    invoke-static {p0}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v5

    iget-wide v6, p2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    const/4 v1, 0x3

    move-object v4, p1

    .line 608
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method


# virtual methods
.method public computeOomAdjFromActivitiesIfNecessary(Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;IZZIIIII)V
    .registers 22
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    move-object v0, p0

    move-object v11, p1

    .line 1116
    iget v1, v0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_9

    return-void

    .line 1119
    :cond_9
    iget-object v2, v0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    move-object v1, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->initialize(Lcom/android/server/am/ProcessRecord;IZZIIIII)V

    const/16 v1, 0x63

    .line 1121
    iget-object v2, v0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1122
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowProcessController;->computeOomAdjFromActivities(Lcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;)I

    move-result v2

    .line 1121
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1124
    iget v2, v11, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    iput v2, v0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    .line 1125
    iget-boolean v3, v11, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    iput-boolean v3, v0, Lcom/android/server/am/ProcessStateRecord;->mCachedForegroundActivities:Z

    .line 1126
    iget-boolean v3, v11, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mHasVisibleActivities:Z

    iput v3, v0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    .line 1127
    iget v3, v11, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    iput v3, v0, Lcom/android/server/am/ProcessStateRecord;->mCachedProcState:I

    .line 1128
    iget v3, v11, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    iput v3, v0, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_48

    add-int/2addr v2, v1

    .line 1131
    iput v2, v0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    :cond_48
    return-void
.end method

.method public containsCycle()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 876
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mContainsCycle:Z

    return p0
.end method

.method public decAdjSeq()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 846
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    return-void
.end method

.method public decCompletedAdjSeq()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 861
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 1304
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mReportedInteraction:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_c

    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_45

    .line 1305
    :cond_c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "reportedInteraction="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1306
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mReportedInteraction:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1307
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2e

    const-string v0, " time="

    .line 1308
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1309
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1311
    :cond_2e
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_42

    const-string v0, " fgInteractionTime="

    .line 1312
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1313
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1315
    :cond_42
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1317
    :cond_45
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "adjSeq="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " lruSeq="

    .line 1318
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getLruSeq()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1319
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "oom adj: max="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " curRaw="

    .line 1320
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " setRaw="

    .line 1321
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " cur="

    .line 1322
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " set="

    .line 1323
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1324
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCurSchedGroup="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " setSchedGroup="

    .line 1325
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " systemNoUi="

    .line 1326
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1327
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "curProcState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mRepProcState="

    .line 1328
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " setProcState="

    .line 1329
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " lastStateTime="

    .line 1330
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1331
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getLastStateTime()J

    move-result-wide v3

    invoke-static {v3, v4, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1332
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1333
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "curCapability="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1334
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    invoke-static {p1, v0}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    const-string v0, " setCapability="

    .line 1335
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1336
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    invoke-static {p1, v0}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    .line 1337
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1338
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    if-eqz v0, :cond_11c

    const-string v0, " backgroundRestricted="

    .line 1339
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1340
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " boundByNonBgRestrictedApp="

    .line 1341
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1342
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetBoundByNonBgRestrictedApp:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1344
    :cond_11c
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1345
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    if-nez v0, :cond_12d

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->hasPendingUiClean()Z

    move-result v0

    if-eqz v0, :cond_14b

    .line 1346
    :cond_12d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "hasShownUi="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " pendingUiClean="

    .line 1347
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->hasPendingUiClean()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1349
    :cond_14b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "cached="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCached:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " empty="

    .line 1350
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mEmpty:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1351
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceB:Z

    if-eqz v0, :cond_17e

    .line 1352
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "serviceb="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceB:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " serviceHighRam="

    .line 1353
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceHighRam:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1355
    :cond_17e
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mNotCachedSinceIdle:Z

    if-eqz v0, :cond_1a0

    .line 1356
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "notCachedSinceIdle="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mNotCachedSinceIdle:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " initialIdlePss="

    .line 1357
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->getInitialIdlePss()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 1359
    :cond_1a0
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->hasTopUi()Z

    move-result v0

    if-nez v0, :cond_1b0

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->hasOverlayUi()Z

    move-result v0

    if-nez v0, :cond_1b0

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    if-eqz v0, :cond_1d6

    .line 1360
    :cond_1b0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "hasTopUi="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->hasTopUi()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " hasOverlayUi="

    .line 1361
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->hasOverlayUi()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " runningRemoteAnimation="

    .line 1362
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1364
    :cond_1d6
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    if-nez v0, :cond_1de

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepForegroundActivities:Z

    if-eqz v0, :cond_1fa

    .line 1365
    :cond_1de
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "foregroundActivities="

    .line 1366
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " (rep="

    .line 1367
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepForegroundActivities:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1369
    :cond_1fa
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    const/16 v3, 0xa

    if-le v0, v3, :cond_212

    .line 1370
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "whenUnimportant="

    .line 1371
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1372
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mWhenUnimportant:J

    sub-long/2addr v3, p3

    invoke-static {v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1373
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1375
    :cond_212
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_229

    .line 1376
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastTopTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1377
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    invoke-static {v3, v4, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1378
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1380
    :cond_229
    iget-wide p3, p0, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    cmp-long v0, p3, v1

    if-lez v0, :cond_254

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p3, p3, v0

    if-gez p3, :cond_254

    .line 1381
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "lastInvisibleTime="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1382
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    .line 1383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long p3, v0, p3

    .line 1384
    iget-wide v2, p0, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    add-long/2addr p3, v2

    .line 1386
    invoke-static {p1, p3, p4, v0, v1}, Landroid/util/TimeUtils;->dumpTimeWithDelta(Ljava/io/PrintWriter;JJ)V

    .line 1387
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1389
    :cond_254
    iget-boolean p3, p0, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    if-eqz p3, :cond_266

    .line 1390
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "hasStartedServices="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_266
    return-void
.end method

.method public forceProcessStateUpTo(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 623
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    if-le v0, p1, :cond_2b

    .line 624
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 625
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    .line 626
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 627
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 628
    iget-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object p1

    new-instance v1, Lcom/android/server/am/ProcessStateRecord$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/am/ProcessStateRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ProcessStateRecord;)V

    invoke-virtual {p1, v1}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/BiConsumer;)V

    .line 634
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_25

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_2b

    :catchall_25
    move-exception p0

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :cond_2b
    :goto_2b
    return-void
.end method

.method public getAbnormalStatus()Z
    .registers 1

    .line 990
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mSlowAbnormal:Z

    return p0
.end method

.method public getAdjSeq()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 851
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    return p0
.end method

.method public getAdjSource()Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 962
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    return-object p0
.end method

.method public getAdjSourceProcState()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 972
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSourceProcState:I

    return p0
.end method

.method public getAdjTarget()Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 982
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    return-object p0
.end method

.method public getAdjType()Ljava/lang/String;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 942
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    return-object p0
.end method

.method public getAdjTypeCode()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 952
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTypeCode:I

    return p0
.end method

.method public getCacheOomRankerRss()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1294
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerRss:J

    return-wide v0
.end method

.method public getCacheOomRankerRssTimeMs()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1299
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerRssTimeMs:J

    return-wide v0
.end method

.method public getCacheOomRankerUseCount()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 922
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerUseCount:I

    return p0
.end method

.method public getCachedAdj()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1137
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    return p0
.end method

.method public getCachedCompatChange(I)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1104
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedCompatChanges:[I

    aget v1, v0, p1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_16

    .line 1106
    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v3, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, p1, v3, v2}, Lcom/android/server/am/OomAdjuster;->isChangeEnabled(ILandroid/content/pm/ApplicationInfo;Z)Z

    move-result v1

    .line 1107
    aput v1, v0, p1

    .line 1109
    :cond_16
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedCompatChanges:[I

    aget p0, p0, p1

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1e

    move v2, p1

    :cond_1e
    return v2
.end method

.method public getCachedForegroundActivities()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1142
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedForegroundActivities:Z

    return p0
.end method

.method public getCachedHasActivities()Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1020
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_25

    .line 1021
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result v0

    .line 1022
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    const/16 v2, 0x10

    if-ne v0, v1, :cond_1e

    .line 1024
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    goto :goto_25

    .line 1026
    :cond_1e
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    .line 1029
    :cond_25
    :goto_25
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    if-ne p0, v1, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    return v1
.end method

.method public getCachedHasRecentTasks()Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1078
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 1079
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasRecentTasks()Z

    move-result v0

    .line 1080
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    .line 1082
    :cond_11
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method public getCachedHasVisibleActivities()Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1043
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 1044
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasVisibleActivities()Z

    move-result v0

    .line 1045
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    .line 1047
    :cond_11
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method public getCachedIsHeavyWeight()Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1034
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 1035
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isHeavyWeightProcess()Z

    move-result v0

    .line 1036
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    .line 1038
    :cond_11
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method public getCachedIsHomeProcess()Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1052
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1e

    .line 1053
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1054
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    .line 1055
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iput-boolean v2, v0, Lcom/android/server/am/AppProfiler;->mHasHomeProcess:Z

    goto :goto_1e

    .line 1057
    :cond_1c
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    .line 1060
    :cond_1e
    :goto_1e
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    if-ne p0, v2, :cond_23

    move v1, v2

    :cond_23
    return v1
.end method

.method public getCachedIsPreviousProcess()Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1065
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1e

    .line 1066
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isPreviousProcess()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1067
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    .line 1068
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iput-boolean v2, v0, Lcom/android/server/am/AppProfiler;->mHasPreviousProcess:Z

    goto :goto_1e

    .line 1070
    :cond_1c
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    .line 1073
    :cond_1e
    :goto_1e
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    if-ne p0, v2, :cond_23

    move v1, v2

    :cond_23
    return v1
.end method

.method public getCachedIsReceivingBroadcast(Landroid/util/ArraySet;)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/BroadcastQueue;",
            ">;)Z"
        }
    .end annotation

    .line 1087
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_36

    .line 1088
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 1089
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v3, p1}, Lcom/android/server/am/ActivityManagerService;->isReceivingBroadcastLocked(Lcom/android/server/am/ProcessRecord;Landroid/util/ArraySet;)Z

    move-result v0

    .line 1090
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    const/16 v3, 0x20

    if-ne v0, v2, :cond_2f

    .line 1092
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    const/4 p1, 0x2

    goto :goto_25

    :cond_24
    move p1, v1

    .line 1093
    :goto_25
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    .line 1094
    iget-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p1, v3}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    goto :goto_36

    .line 1096
    :cond_2f
    iget-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p1, v3}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    .line 1099
    :cond_36
    :goto_36
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    if-ne p0, v2, :cond_3b

    move v1, v2

    :cond_3b
    return v1
.end method

.method public getCachedProcState()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1147
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedProcState:I

    return p0
.end method

.method public getCachedSchedGroup()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1152
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    return p0
.end method

.method public getCompletedAdjSeq()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 866
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    return p0
.end method

.method public getCurAdj()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 509
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    return p0
.end method

.method public getCurCapability()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 549
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    return p0
.end method

.method public getCurProcState()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 591
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    return p0
.end method

.method public getCurRawAdj()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 489
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    return p0
.end method

.method public getCurRawProcState()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 601
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    return p0
.end method

.method public getCurrentSchedulingGroup()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 570
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    return p0
.end method

.method public getFgInteractionTime()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 826
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    return-wide v0
.end method

.method public getForcingToImportant()Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 836
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mForcingToImportant:Ljava/lang/Object;

    return-object p0
.end method

.method public getInteractionEventTime()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 815
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    return-wide v0
.end method

.method public getLastCanKillOnBgRestrictedAndIdleTime()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1284
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mLastCanKillOnBgRestrictedAndIdleTime:J

    return-wide v0
.end method

.method public getLastInvisibleTime()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1243
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    return-wide v0
.end method

.method public getLastStateTime()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 659
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mLastStateTime:J

    return-wide v0
.end method

.method public getLastTopTime()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 897
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    return-wide v0
.end method

.method public getMaxAdj()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 477
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    return p0
.end method

.method public getReportedProcState()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 618
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    return p0
.end method

.method public getSavedPriority()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 669
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mSavedPriority:I

    return p0
.end method

.method public getSetAdj()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 519
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    return p0
.end method

.method public getSetAdjWithServices()I
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 524
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    const/16 v1, 0x384

    if-lt v0, v1, :cond_d

    .line 525
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    if-eqz p0, :cond_d

    const/16 p0, 0x320

    return p0

    :cond_d
    return v0
.end method

.method public getSetCapability()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 559
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    return p0
.end method

.method public getSetProcState()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 649
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    return p0
.end method

.method public getSetRawAdj()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 499
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    return p0
.end method

.method public getSetSchedGroup()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 580
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    return p0
.end method

.method public getVerifiedAdj()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 539
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mVerifiedAdj:I

    return p0
.end method

.method public getWhenUnimportant()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 887
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mWhenUnimportant:J

    return-wide v0
.end method

.method public hasForegroundActivities()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 724
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    return p0
.end method

.method public hasOverlayUi()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 766
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasOverlayUi:Z

    return p0
.end method

.method public hasProcStateChanged()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 794
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mProcStateChanged:Z

    return p0
.end method

.method public hasRepForegroundActivities()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 734
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepForegroundActivities:Z

    return p0
.end method

.method public hasReportedInteraction()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 804
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mReportedInteraction:Z

    return p0
.end method

.method public hasShownUi()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 744
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    return p0
.end method

.method public hasStartedServices()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 714
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    return p0
.end method

.method public hasTopUi()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 755
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasTopUi:Z

    return p0
.end method

.method public init(J)V
    .registers 3

    .line 467
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mLastStateTime:J

    return-void
.end method

.method public isAllowedStartFgs()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1198
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    const/4 v0, 0x5

    if-gt p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isBackgroundRestricted()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1203
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    return p0
.end method

.method public isCached()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 917
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCached:Z

    return p0
.end method

.method public isCurBoundByNonBgRestrictedApp()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1213
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    return p0
.end method

.method public isEmpty()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 907
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mEmpty:Z

    return p0
.end method

.method public isNotCachedSinceIdle()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 699
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mNotCachedSinceIdle:Z

    return p0
.end method

.method public isReachable()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 995
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    return p0
.end method

.method public isRunningRemoteAnimation()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 771
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    return p0
.end method

.method public isServiceB()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 679
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceB:Z

    return p0
.end method

.method public isServiceHighRam()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 689
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceHighRam:Z

    return p0
.end method

.method public isSetBoundByNonBgRestrictedApp()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1223
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetBoundByNonBgRestrictedApp:Z

    return p0
.end method

.method public isSetCached()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1263
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCached:Z

    return p0
.end method

.method public isSetNoKillOnBgRestrictedAndIdle()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1273
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetNoKillOnBgRestrictedAndIdle:Z

    return p0
.end method

.method public isSystemNoUi()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 932
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    return p0
.end method

.method public makeAdjReason()Ljava/lang/String;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 1157
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return-object p0

    .line 1158
    :cond_b
    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x20

    .line 1159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1160
    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    instance-of v2, v1, Landroid/content/ComponentName;

    const-string/jumbo v3, "{null}"

    if-eqz v2, :cond_2a

    .line 1161
    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    :cond_2a
    if-eqz v1, :cond_34

    .line 1163
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 1165
    :cond_34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_37
    const-string v1, "<="

    .line 1167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    instance-of v2, v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_59

    const-string v1, "Proc{"

    .line 1169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 1171
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_66

    :cond_59
    if-eqz v1, :cond_63

    .line 1173
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_66

    .line 1175
    :cond_63
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    :goto_66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCleanupApplicationRecordLSP()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1184
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessStateRecord;->setHasForegroundActivities(Z)V

    .line 1185
    iput-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    const/4 v1, 0x0

    .line 1186
    iput-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mForcingToImportant:Ljava/lang/Object;

    const/16 v1, -0x2710

    .line 1187
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mVerifiedAdj:I

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 1188
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 1189
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    const/16 v1, 0x14

    .line 1190
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1191
    :goto_25
    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedCompatChanges:[I

    array-length v2, v1

    if-ge v0, v2, :cond_30

    const/4 v2, -0x1

    .line 1192
    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_30
    return-void
.end method

.method public resetCachedInfo()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    const/4 v0, -0x1

    .line 1005
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    .line 1006
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    .line 1007
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    .line 1008
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    .line 1009
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    .line 1010
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    .line 1011
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    const/16 v0, -0x2710

    .line 1012
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    const/4 v0, 0x0

    .line 1013
    iput-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedForegroundActivities:Z

    const/16 v1, 0x13

    .line 1014
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedProcState:I

    .line 1015
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    return-void
.end method

.method public setAbnormalStatus(Z)V
    .registers 2

    .line 986
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSlowAbnormal:Z

    return-void
.end method

.method public setAdjSeq(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 841
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    return-void
.end method

.method public setAdjSource(Ljava/lang/Object;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 957
    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    return-void
.end method

.method public setAdjSourceProcState(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 967
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSourceProcState:I

    return-void
.end method

.method public setAdjTarget(Ljava/lang/Object;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 977
    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    return-void
.end method

.method public setAdjType(Ljava/lang/String;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 937
    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    return-void
.end method

.method public setAdjTypeCode(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 947
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTypeCode:I

    return-void
.end method

.method public setBackgroundRestricted(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1208
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    return-void
.end method

.method public setCacheOomRankerRss(JJ)V
    .registers 5

    .line 1288
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerRss:J

    .line 1289
    iput-wide p3, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerRssTimeMs:J

    return-void
.end method

.method public setCached(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 912
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCached:Z

    return-void
.end method

.method public setCompletedAdjSeq(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 856
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    return-void
.end method

.method public setContainsCycle(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 871
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mContainsCycle:Z

    return-void
.end method

.method public setCurAdj(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 504
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    return-void
.end method

.method public setCurBoundByNonBgRestrictedApp(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1218
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    return-void
.end method

.method public setCurCapability(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 544
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    return-void
.end method

.method public setCurProcState(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 585
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 586
    iget-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p1

    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowProcessController;->setCurrentProcState(I)V

    return-void
.end method

.method public setCurRawAdj(I)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 482
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 483
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    const/16 v0, 0xc8

    if-gt p1, v0, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setPerceptible(Z)V

    return-void
.end method

.method public setCurRawProcState(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 596
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    return-void
.end method

.method public setCurrentSchedulingGroup(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 564
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    .line 565
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setCurrentSchedulingGroup(I)V

    return-void
.end method

.method public setEmpty(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 902
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mEmpty:Z

    return-void
.end method

.method public setFgInteractionTime(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 820
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    .line 821
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowProcessController;->setFgInteractionTime(J)V

    return-void
.end method

.method public setForcingToImportant(Ljava/lang/Object;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 831
    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mForcingToImportant:Ljava/lang/Object;

    return-void
.end method

.method public setHasForegroundActivities(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 719
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    return-void
.end method

.method public setHasOverlayUi(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 760
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasOverlayUi:Z

    .line 761
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setHasOverlayUi(Z)V

    return-void
.end method

.method public setHasShownUi(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 739
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    return-void
.end method

.method public setHasStartedServices(Z)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 704
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    const/16 v0, 0x80

    if-eqz p1, :cond_e

    .line 706
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    goto :goto_15

    .line 708
    :cond_e
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    :goto_15
    return-void
.end method

.method public setHasTopUi(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 749
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasTopUi:Z

    .line 750
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setHasTopUi(Z)V

    return-void
.end method

.method public setInteractionEventTime(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 809
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    .line 810
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowProcessController;->setInteractionEventTime(J)V

    return-void
.end method

.method public setLastCanKillOnBgRestrictedAndIdleTime(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1278
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mLastCanKillOnBgRestrictedAndIdleTime:J

    return-void
.end method

.method public setLastStateTime(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 654
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mLastStateTime:J

    return-void
.end method

.method public setLastTopTime(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 892
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    return-void
.end method

.method public setMaxAdj(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 472
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    return-void
.end method

.method public setNoKillOnBgRestrictedAndIdle(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1248
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mNoKillOnBgRestrictedAndIdle:Z

    return-void
.end method

.method public setNotCachedSinceIdle(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 694
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mNotCachedSinceIdle:Z

    return-void
.end method

.method public setProcStateChanged(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 789
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mProcStateChanged:Z

    return-void
.end method

.method public setReachable(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1000
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    return-void
.end method

.method public setRepForegroundActivities(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 729
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mRepForegroundActivities:Z

    return-void
.end method

.method public setReportedInteraction(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 799
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mReportedInteraction:Z

    return-void
.end method

.method public setReportedProcState(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 606
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    .line 607
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/ProcessStateRecord$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/am/ProcessStateRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ProcessStateRecord;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/BiConsumer;)V

    .line 613
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setReportedProcState(I)V

    return-void
.end method

.method public setRunningRemoteAnimation(Z)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 776
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 779
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    .line 780
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_2f

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting runningRemoteAnimation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " for pid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 782
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityManager"

    .line 781
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_2f
    iget-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v0, "updateOomAdj_uiVisibility"

    invoke-virtual {p1, p0, v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    return-void
.end method

.method public setSavedPriority(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 664
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSavedPriority:I

    return-void
.end method

.method public setServiceB(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 674
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceB:Z

    return-void
.end method

.method public setServiceHighRam(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 684
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceHighRam:Z

    return-void
.end method

.method public setSetAdj(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 514
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    return-void
.end method

.method public setSetBoundByNonBgRestrictedApp(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1228
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetBoundByNonBgRestrictedApp:Z

    return-void
.end method

.method public setSetCached(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1258
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCached:Z

    return-void
.end method

.method public setSetCapability(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 554
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    return-void
.end method

.method public setSetNoKillOnBgRestrictedAndIdle(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1268
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetNoKillOnBgRestrictedAndIdle:Z

    return-void
.end method

.method public setSetProcState(I)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 640
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    invoke-static {v0}, Landroid/app/ActivityManager;->isProcStateCached(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 641
    invoke-static {p1}, Landroid/app/ActivityManager;->isProcStateCached(I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 642
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerUseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerUseCount:I

    .line 644
    :cond_14
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    return-void
.end method

.method public setSetRawAdj(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 494
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    return-void
.end method

.method public setSetSchedGroup(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 575
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    return-void
.end method

.method public setSystemNoUi(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 927
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    return-void
.end method

.method public setVerifiedAdj(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 534
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mVerifiedAdj:I

    return-void
.end method

.method public setWhenUnimportant(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 881
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mWhenUnimportant:J

    .line 882
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowProcessController;->setWhenUnimportant(J)V

    return-void
.end method

.method public shouldNotKillOnBgRestrictedAndIdle()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1253
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mNoKillOnBgRestrictedAndIdle:Z

    return p0
.end method

.method public updateLastInvisibleTime(Z)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    if-eqz p1, :cond_a

    .line 1234
    iput-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    goto :goto_16

    .line 1235
    :cond_a
    iget-wide v2, p0, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    cmp-long p1, v2, v0

    if-nez p1, :cond_16

    .line 1236
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    :cond_16
    :goto_16
    return-void
.end method
