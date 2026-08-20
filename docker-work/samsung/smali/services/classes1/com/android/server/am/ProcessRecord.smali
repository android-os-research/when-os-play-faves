.class public Lcom/android/server/am/ProcessRecord;
.super Ljava/lang/Object;
.source "ProcessRecord.java"

# interfaces
.implements Lcom/android/server/wm/WindowProcessListener;


# static fields
.field public static final INVALID_KILL_TIMEOUT:I = -0x1

.field public static final TAG:Ljava/lang/String; = "ActivityManager"

.field public static final TGL_DELAYED_APP_DIED_TIME:I = 0x3e8

.field public static final TGL_KILL_REASON:Ljava/lang/String; = "TGL@"


# instance fields
.field public AMSExceptionFlag:I

.field public activeLaunchTime:J

.field public appKeepingTime:J

.field public final appZygote:Z

.field public callStack:Ljava/lang/String;

.field public dhaKeepEmptyFlag:I

.field public freezeUnfreezeTimeMARs:J

.field public frozenMARs:Z

.field public volatile info:Landroid/content/pm/ApplicationInfo;

.field public isAMSException:Z

.field public isActiveLaunch:Z

.field public isForKeeping:Z

.field public isFreezeAllowList:Z

.field public isMLException:Z

.field public isNeverKillException:Z

.field public isSDException:Z

.field public isSDListout:Z

.field public isSDMaxAdj:Z

.field public final isSdkSandbox:Z

.field public final isolated:Z

.field public lastCheckTimeExceptFreeze:J

.field public lastNandswapTime:J

.field public volatile mBindMountPending:Z

.field public volatile mClearedWaitingToKill:Z

.field public mCompat:Landroid/content/res/CompatibilityInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mDeathRecipient:Landroid/os/IBinder$DeathRecipient;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mDebugging:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mDedicated:Z

.field public mDisabledCompatChanges:[J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mDyingPid:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public final mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

.field public mExcessiveResourceUsage:Z

.field public mFixedAppContextDisplay:Z

.field public mGids:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public volatile mHostingRecord:Lcom/android/server/am/HostingRecord;

.field public mInFullBackup:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mInstr:Lcom/android/server/am/ActiveInstrumentation;
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mInstructionSet:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mIpmLaunchType:I

.field public volatile mIsCancelFromSeq:Z

.field public mIsRemovedName:Z

.field public mIsolatedEntryPoint:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mIsolatedEntryPointArgs:[Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mKeepProcessAlive:Z

.field public mKillProcessTimeout:I

.field public mKillTime:J
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mKilled:Z
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mKilledByAm:Z
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mLastActivityTime:J
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mLruSeq:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public volatile mMountMode:I

.field public final mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

.field public mOverrideDisplayId:I

.field public mPendingStart:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public volatile mPersistent:Z

.field public mPid:I
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mPkgDeps:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
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

.field public final mPkgList:Lcom/android/server/am/PackageList;

.field public volatile mPredecessor:Lcom/android/server/am/ProcessRecord;

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public final mProfile:Lcom/android/server/am/ProcessProfileRecord;

.field public final mProviders:Lcom/android/server/am/ProcessProviderRecord;

.field public final mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

.field public volatile mRemoved:Z

.field public mRenderThreadTid:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation
.end field

.field public mRequiredAbi:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public volatile mSeInfo:Ljava/lang/String;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final mServices:Lcom/android/server/am/ProcessServiceRecord;

.field public mShortStringName:Ljava/lang/String;

.field public mSkipToFinishActivities:Z

.field public volatile mStartElapsedTime:J

.field public mStartSeq:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public volatile mStartUid:I

.field public volatile mStartUptime:J

.field public final mState:Lcom/android/server/am/ProcessStateRecord;

.field public mStringName:Ljava/lang/String;

.field public volatile mSuccessor:Lcom/android/server/am/ProcessRecord;

.field public mSuccessorStartRunnable:Ljava/lang/Runnable;

.field public mTGLCallbackPosted:Z

.field public mThread:Landroid/app/IApplicationThread;
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mUidRecord:Lcom/android/server/am/UidRecord;
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mUnlocked:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation
.end field

.field public mUsingWrapper:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public mWaitedForDebugger:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation
.end field

.field public mWaitingToKill:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation
.end field

.field public final mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

.field public mlLaunchTime:J

.field public ppnState:I

.field public ppnStateLock:Ljava/lang/Object;

.field public final processInfo:Landroid/content/pm/ProcessInfo;

.field public final processName:Ljava/lang/String;

.field public final sdkSandboxClientAppPackage:Ljava/lang/String;

.field public final sdkSandboxClientAppVolumeUuid:Ljava/lang/String;

.field public final uid:I

.field public final userId:I


# direct methods
.method public static synthetic $r8$lambda$Dn-gBNzmID99o_DYdJnvXHwIvS4(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/ProcessRecord;->lambda$resetPackageList$2(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TeefSRostkUo3JJoClH0Y2OQQDU(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ProcessRecord;->lambda$resetPackageList$1(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dxGEzt5M_Frs6TZKSTS2T5TRQQE(Lcom/android/server/am/ProcessRecord;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/ProcessRecord;->lambda$killLocked$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V
    .registers 13

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 593
    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/ProcessRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .registers 21

    move-object v8, p0

    move-object v0, p1

    move-object v9, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v1, p6

    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 110
    iput-boolean v2, v8, Lcom/android/server/am/ProcessRecord;->mExcessiveResourceUsage:Z

    .line 122
    new-instance v10, Lcom/android/server/am/PackageList;

    invoke-direct {v10, p0}, Lcom/android/server/am/PackageList;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v10, v8, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 235
    iput v2, v8, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    .line 236
    iput-boolean v2, v8, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    .line 237
    iput-boolean v2, v8, Lcom/android/server/am/ProcessRecord;->isMLException:Z

    .line 238
    iput-boolean v2, v8, Lcom/android/server/am/ProcessRecord;->isNeverKillException:Z

    .line 240
    iput-boolean v2, v8, Lcom/android/server/am/ProcessRecord;->isSDException:Z

    .line 241
    iput-boolean v2, v8, Lcom/android/server/am/ProcessRecord;->isSDListout:Z

    .line 242
    iput-boolean v2, v8, Lcom/android/server/am/ProcessRecord;->isSDMaxAdj:Z

    const/4 v5, -0x1

    .line 244
    iput v5, v8, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    const-wide/16 v6, 0x0

    .line 422
    iput-wide v6, v8, Lcom/android/server/am/ProcessRecord;->lastNandswapTime:J

    .line 423
    iput v2, v8, Lcom/android/server/am/ProcessRecord;->ppnState:I

    .line 424
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, v8, Lcom/android/server/am/ProcessRecord;->ppnStateLock:Ljava/lang/Object;

    .line 428
    iput v5, v8, Lcom/android/server/am/ProcessRecord;->mOverrideDisplayId:I

    .line 432
    iput-boolean v2, v8, Lcom/android/server/am/ProcessRecord;->mIsCancelFromSeq:Z

    .line 436
    iput-boolean v2, v8, Lcom/android/server/am/ProcessRecord;->mDedicated:Z

    .line 440
    iput-boolean v2, v8, Lcom/android/server/am/ProcessRecord;->mIsRemovedName:Z

    const-string v6, "<empty>"

    .line 444
    iput-object v6, v8, Lcom/android/server/am/ProcessRecord;->callStack:Ljava/lang/String;

    .line 450
    iput v5, v8, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    const-wide/16 v6, -0x1

    .line 451
    iput-wide v6, v8, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    .line 1189
    iput-boolean v2, v8, Lcom/android/server/am/ProcessRecord;->mTGLCallbackPosted:Z

    .line 1554
    iput-boolean v2, v8, Lcom/android/server/am/ProcessRecord;->mClearedWaitingToKill:Z

    .line 1626
    iput-boolean v2, v8, Lcom/android/server/am/ProcessRecord;->mKeepProcessAlive:Z

    .line 1637
    iput v5, v8, Lcom/android/server/am/ProcessRecord;->mKillProcessTimeout:I

    .line 1660
    iput-boolean v2, v8, Lcom/android/server/am/ProcessRecord;->mFixedAppContextDisplay:Z

    .line 599
    iput-object v0, v8, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 600
    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v6, v8, Lcom/android/server/am/ProcessRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 601
    iput-object v9, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 603
    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v7, 0x0

    if-eqz v6, :cond_8e

    if-lez v1, :cond_6e

    .line 606
    invoke-virtual {v6, v1}, Landroid/content/pm/PackageManagerInternal;->getProcessesForUid(I)Landroid/util/ArrayMap;

    move-result-object v1

    if-eqz v1, :cond_7b

    move-object/from16 v6, p7

    .line 607
    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ProcessInfo;

    goto :goto_7c

    .line 610
    :cond_6e
    invoke-virtual {v6, v4}, Landroid/content/pm/PackageManagerInternal;->getProcessesForUid(I)Landroid/util/ArrayMap;

    move-result-object v1

    if-eqz v1, :cond_7b

    .line 611
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ProcessInfo;

    goto :goto_7c

    :cond_7b
    move-object v1, v7

    :goto_7c
    if-eqz v1, :cond_8f

    .line 613
    iget-object v6, v1, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    if-nez v6, :cond_8f

    iget v6, v1, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    if-ne v6, v5, :cond_8f

    iget v6, v1, Landroid/content/pm/ProcessInfo;->memtagMode:I

    if-ne v6, v5, :cond_8f

    iget v6, v1, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    if-ne v6, v5, :cond_8f

    :cond_8e
    move-object v1, v7

    .line 623
    :cond_8f
    iput-object v1, v8, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    .line 624
    invoke-static/range {p4 .. p4}, Landroid/os/Process;->isIsolated(I)Z

    move-result v1

    iput-boolean v1, v8, Lcom/android/server/am/ProcessRecord;->isolated:Z

    .line 625
    invoke-static/range {p4 .. p4}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    iput-boolean v1, v8, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    .line 626
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const v6, 0x15f90

    if-lt v5, v6, :cond_b1

    .line 627
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const v6, 0x182b7

    if-gt v5, v6, :cond_b1

    const/4 v5, 0x1

    goto :goto_b2

    :cond_b1
    move v5, v2

    :goto_b2
    iput-boolean v5, v8, Lcom/android/server/am/ProcessRecord;->appZygote:Z

    .line 628
    iput v4, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 629
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    iput v5, v8, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 630
    iput-object v3, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v6, p5

    .line 631
    iput-object v6, v8, Lcom/android/server/am/ProcessRecord;->sdkSandboxClientAppPackage:Ljava/lang/String;

    if-eqz v1, :cond_cd

    .line 633
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getClientInfoForSdkSandbox()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    iput-object v1, v8, Lcom/android/server/am/ProcessRecord;->sdkSandboxClientAppVolumeUuid:Ljava/lang/String;

    goto :goto_cf

    .line 635
    :cond_cd
    iput-object v7, v8, Lcom/android/server/am/ProcessRecord;->sdkSandboxClientAppVolumeUuid:Ljava/lang/String;

    .line 637
    :goto_cf
    iput-boolean v2, v8, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 638
    iput-boolean v2, v8, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    .line 639
    new-instance v1, Lcom/android/server/am/ProcessProfileRecord;

    invoke-direct {v1, p0}, Lcom/android/server/am/ProcessProfileRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v1, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 640
    new-instance v2, Lcom/android/server/am/ProcessServiceRecord;

    invoke-direct {v2, p0}, Lcom/android/server/am/ProcessServiceRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v2, v8, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 641
    new-instance v2, Lcom/android/server/am/ProcessProviderRecord;

    invoke-direct {v2, p0}, Lcom/android/server/am/ProcessProviderRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v2, v8, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 642
    new-instance v2, Lcom/android/server/am/ProcessReceiverRecord;

    invoke-direct {v2, p0}, Lcom/android/server/am/ProcessReceiverRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v2, v8, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    .line 643
    new-instance v2, Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-direct {v2, p0}, Lcom/android/server/am/ProcessErrorStateRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v2, v8, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 644
    new-instance v2, Lcom/android/server/am/ProcessStateRecord;

    invoke-direct {v2, p0}, Lcom/android/server/am/ProcessStateRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v2, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 645
    new-instance v6, Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-direct {v6, p0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v6, v8, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 646
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 647
    invoke-virtual {v1, v11, v12}, Lcom/android/server/am/ProcessProfileRecord;->init(J)V

    .line 648
    invoke-virtual {v6, v11, v12}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->init(J)V

    .line 649
    invoke-virtual {v2, v11, v12}, Lcom/android/server/am/ProcessStateRecord;->init(J)V

    .line 650
    new-instance v11, Lcom/android/server/wm/WindowProcessController;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object v0, v11

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/WindowProcessController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;IILjava/lang/Object;Lcom/android/server/wm/WindowProcessListener;)V

    iput-object v11, v8, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 652
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    iget-wide v2, v9, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-direct {v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    invoke-virtual {v10, v0, v1}, Lcom/android/server/am/PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    return-void
.end method

.method private synthetic lambda$killLocked$0()V
    .registers 4

    .line 1214
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1215
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "TGL@"

    invoke-virtual {v1, p0, v2}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 1216
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_16
    move-exception p0

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method private synthetic lambda$resetPackageList$1(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .registers 10

    .line 1371
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 p0, -0x1

    .line 1373
    invoke-static {p0}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v4

    iget-wide v5, p2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    const/4 v0, 0x3

    move-object v3, p1

    .line 1371
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method public static synthetic lambda$resetPackageList$2(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .registers 2

    .line 1378
    iget-object p1, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz p1, :cond_9

    if-eq p1, p0, :cond_9

    .line 1379
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    :cond_9
    return-void
.end method


# virtual methods
.method public addOrUpdateAllowBackgroundActivityStartsToken(Landroid/os/Binder;Landroid/os/IBinder;)V
    .registers 3

    .line 1420
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1421
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowProcessController;->addOrUpdateAllowBackgroundActivityStartsToken(Landroid/os/Binder;Landroid/os/IBinder;)V

    return-void
.end method

.method public addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z
    .registers 16

    .line 1335
    iget-object v0, p4, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1336
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_45

    .line 1337
    :try_start_6
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v2, p1}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 1338
    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    invoke-direct {v2, p2, p3}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    .line 1340
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getBaseProcessTracker()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v10

    if-eqz v10, :cond_35

    .line 1342
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v9, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v3, p4

    move-object v4, v2

    move-object v5, p1

    move-wide v7, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ProcessStatsService;->updateProcessStateHolderLocked(Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;Ljava/lang/String;IJLjava/lang/String;)V

    .line 1344
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 1345
    iget-object p0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eq p0, v10, :cond_3a

    .line 1346
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    goto :goto_3a

    .line 1349
    :cond_35
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    :cond_3a
    :goto_3a
    const/4 p0, 0x1

    .line 1351
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_6 .. :try_end_3c} :catchall_42

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_45

    return p0

    .line 1353
    :cond_3e
    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_42

    .line 1354
    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_45

    const/4 p0, 0x0

    return p0

    :catchall_42
    move-exception p0

    .line 1353
    :try_start_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    :try_start_44
    throw p0

    :catchall_45
    move-exception p0

    .line 1354
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_45

    throw p0
.end method

.method public appDied(Ljava/lang/String;)V
    .registers 4

    .line 1516
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1517
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 1518
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception p0

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public clearProfilerIfNeeded()V
    .registers 2

    .line 1432
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1433
    :try_start_7
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->clearProfilerLPf()V

    .line 1434
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 465
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 466
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 468
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "user #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, " uid="

    .line 469
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 470
    iget v4, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v4, v5, :cond_34

    const-string v4, " ISOLATED uid="

    .line 471
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    :cond_34
    const-string v4, " gids={"

    .line 473
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 474
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mGids:[I

    const-string v5, ", "

    const/4 v6, 0x0

    if-eqz v4, :cond_55

    move v4, v6

    .line 475
    :goto_41
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->mGids:[I

    array-length v7, v7

    if-ge v4, v7, :cond_55

    if-eqz v4, :cond_4b

    .line 476
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 477
    :cond_4b
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->mGids:[I

    aget v7, v7, v4

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    :cond_55
    const-string/jumbo v4, "}"

    .line 481
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 482
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    if-eqz v7, :cond_d4

    .line 483
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "processInfo:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v7, v7, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    if-eqz v7, :cond_91

    move v7, v6

    .line 485
    :goto_6f
    iget-object v8, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v8, v8, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v7, v8, :cond_91

    .line 486
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  deny: "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 487
    iget-object v8, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v8, v8, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6f

    .line 490
    :cond_91
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget v7, v7, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_b3

    .line 491
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  gwpAsanMode="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget v9, v9, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 493
    :cond_b3
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget v7, v7, Landroid/content/pm/ProcessInfo;->memtagMode:I

    if-eq v7, v8, :cond_d4

    .line 494
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  memtagMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget v8, v8, Landroid/content/pm/ProcessInfo;->memtagMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 497
    :cond_d4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "mRequiredAbi="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->mRequiredAbi:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, " instructionSet="

    .line 498
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->mInstructionSet:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 499
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v7, :cond_101

    .line 500
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "class="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 502
    :cond_101
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v7, :cond_117

    .line 503
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "manageSpaceActivityName="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 504
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 507
    :cond_117
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "dir="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, " publicDir="

    .line 508
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, " data="

    .line 509
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 510
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v7, p1, p2}, Lcom/android/server/am/PackageList;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 511
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->mPkgDeps:Landroid/util/ArraySet;

    if-eqz v7, :cond_16e

    .line 512
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "packageDependencies={"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 513
    :goto_150
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->mPkgDeps:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v6, v7, :cond_16b

    if-lez v6, :cond_15d

    .line 514
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 515
    :cond_15d
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->mPkgDeps:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_150

    .line 517
    :cond_16b
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 519
    :cond_16e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "compat="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mCompat:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 520
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    if-eqz v4, :cond_18d

    .line 521
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mInstr="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 523
    :cond_18d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "thread="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 524
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "pid="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 525
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "lastActivityTime="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 526
    iget-wide v4, p0, Lcom/android/server/am/ProcessRecord;->mLastActivityTime:J

    invoke-static {v4, v5, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 527
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "startUptimeTime="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 528
    iget-wide v4, p0, Lcom/android/server/am/ProcessRecord;->mStartElapsedTime:J

    invoke-static {v4, v5, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 529
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "startElapsedTime="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 530
    iget-wide v4, p0, Lcom/android/server/am/ProcessRecord;->mStartElapsedTime:J

    invoke-static {v4, v5, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 531
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 532
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-nez v2, :cond_1de

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    if-eqz v2, :cond_1f6

    .line 533
    :cond_1de
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "persistent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " removed="

    .line 534
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 536
    :cond_1f6
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    if-eqz v2, :cond_208

    .line 537
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mDebugging="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 539
    :cond_208
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    if-eqz v2, :cond_21a

    .line 540
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "pendingStart="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 542
    :cond_21a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "startSeq="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->mStartSeq:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 543
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mountMode="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-class v2, Lcom/android/internal/os/Zygote;

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->mMountMode:I

    const-string v4, "MOUNT_EXTERNAL_"

    .line 544
    invoke-static {v2, v4, v3}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 543
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    if-nez v2, :cond_24a

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    if-nez v2, :cond_24a

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mWaitingToKill:Ljava/lang/String;

    if-eqz v2, :cond_26c

    .line 546
    :cond_24a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "killed="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " killedByAm="

    .line 547
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " waitingToKill="

    .line 548
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mWaitingToKill:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 550
    :cond_26c
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPoint:Ljava/lang/String;

    if-nez v2, :cond_274

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPointArgs:[Ljava/lang/String;

    if-eqz v2, :cond_294

    .line 551
    :cond_274
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "isolatedEntryPoint="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPoint:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "isolatedEntryPointArgs="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 553
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPointArgs:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 555
    :cond_294
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_2a3

    .line 556
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/ProcessProfileRecord;->dumpCputime(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 558
    :cond_2a3
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/android/server/am/ProcessProfileRecord;->dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 559
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/android/server/am/ProcessStateRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 560
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/android/server/am/ProcessErrorStateRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 561
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/android/server/am/ProcessServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 562
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/android/server/am/ProcessProviderRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 563
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/android/server/am/ProcessReceiverRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 564
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 567
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->PICKED_ADJ_ENABLE:Z

    if-eqz v0, :cond_2d8

    .line 568
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "isMLException="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->isMLException:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 572
    :cond_2d8
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowProcessController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 575
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->callStack:Ljava/lang/String;

    const-string v1, "<empty>"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f5

    .line 576
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "removed from: "

    .line 577
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 578
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->callStack:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2f5
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 5

    const/4 v0, -0x1

    .line 1258
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 8

    .line 1262
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1263
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1264
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-wide v1, 0x10900000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1265
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide v1, 0x10500000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1266
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_4a

    const-wide v0, 0x10500000004L

    .line 1267
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000005L

    .line 1268
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1270
    :cond_4a
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v1, :cond_60

    const-wide v0, 0x10500000006L

    .line 1271
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_60
    const-wide v0, 0x10800000007L

    .line 1273
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    if-ltz p4, :cond_74

    const-wide v0, 0x10500000008L

    .line 1275
    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1277
    :cond_74
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 925
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    return-object p0
.end method

.method public getClientInfoForSdkSandbox()Landroid/content/pm/ApplicationInfo;
    .registers 8

    .line 992
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->sdkSandboxClientAppPackage:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 997
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    .line 998
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->sdkSandboxClientAppPackage:Ljava/lang/String;

    const-wide/16 v3, 0x0

    const/16 v5, 0x3e8

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0

    .line 993
    :cond_1b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "getClientInfoForSdkSandbox called for non-sandbox process"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCompat()Landroid/content/res/CompatibilityInfo;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 877
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mCompat:Landroid/content/res/CompatibilityInfo;

    return-object p0
.end method

.method public getCpuTime()J
    .registers 3

    .line 1485
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v0, p0}, Lcom/android/server/am/AppProfiler;->getCpuTimeForPid(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeathRecipient()Landroid/os/IBinder$DeathRecipient;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 910
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method public getDisabledCompatChanges()[J
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 887
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mDisabledCompatChanges:[J

    return-object p0
.end method

.method public getDisplayId()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public getDyingPid()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 730
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mDyingPid:I

    return p0
.end method

.method public getGids()[I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 740
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mGids:[I

    return-object p0
.end method

.method public getHostingRecord()Lcom/android/server/am/HostingRecord;
    .registers 1

    .line 799
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    return-object p0
.end method

.method public getInputDispatchingTimeoutMillis()J
    .registers 3

    .line 1533
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getInputDispatchingTimeoutMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInstructionSet()Ljava/lang/String;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 761
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mInstructionSet:Ljava/lang/String;

    return-object p0
.end method

.method public getIpmLaunchtype()I
    .registers 1

    .line 1580
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    return p0
.end method

.method public getIsolatedEntryPoint()Ljava/lang/String;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1062
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPoint:Ljava/lang/String;

    return-object p0
.end method

.method public getIsolatedEntryPointArgs()[Ljava/lang/String;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1072
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPointArgs:[Ljava/lang/String;

    return-object p0
.end method

.method public getKillProcessTimeout()I
    .registers 1

    .line 1644
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mKillProcessTimeout:I

    return p0
.end method

.method public getKillTime()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 955
    iget-wide v0, p0, Lcom/android/server/am/ProcessRecord;->mKillTime:J

    return-wide v0
.end method

.method public getLastActivityTime()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 1031
    iget-wide v0, p0, Lcom/android/server/am/ProcessRecord;->mLastActivityTime:J

    return-wide v0
.end method

.method public getLruProcessList()Ljava/util/List;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    .line 1550
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getLruSeq()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1052
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mLruSeq:I

    return p0
.end method

.method public getMlLaunchTime()J
    .registers 3

    .line 1584
    iget-wide v0, p0, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    return-wide v0
.end method

.method public getMountMode()I
    .registers 1

    .line 840
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mMountMode:I

    return p0
.end method

.method public getPackageList()[Ljava/lang/String;
    .registers 1

    .line 1402
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {p0}, Lcom/android/server/am/PackageList;->getPackageList()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPackageListWithVersionCode()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation

    .line 1406
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {p0}, Lcom/android/server/am/PackageList;->getPackageListWithVersionCode()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPid()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 681
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    return p0
.end method

.method public getPkgDeps()Landroid/util/ArraySet;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 671
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mPkgDeps:Landroid/util/ArraySet;

    return-object p0
.end method

.method public getPkgList()Lcom/android/server/am/PackageList;
    .registers 1

    .line 666
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    return-object p0
.end method

.method public getProcessClassEnum()I
    .registers 3

    .line 1537
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v0, v1, :cond_8

    const/4 p0, 0x3

    return p0

    .line 1540
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return p0

    .line 1543
    :cond_e
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_17

    const/4 v0, 0x2

    :cond_17
    return v0
.end method

.method public getRenderThreadTid()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 867
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mRenderThreadTid:I

    return p0
.end method

.method public getRequiredAbi()Ljava/lang/String;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 750
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mRequiredAbi:Ljava/lang/String;

    return-object p0
.end method

.method public getSeInfo()Ljava/lang/String;
    .registers 1

    .line 807
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mSeInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getStartElapsedTime()J
    .registers 3

    .line 828
    iget-wide v0, p0, Lcom/android/server/am/ProcessRecord;->mStartElapsedTime:J

    return-wide v0
.end method

.method public getStartSeq()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 790
    iget-wide v0, p0, Lcom/android/server/am/ProcessRecord;->mStartSeq:J

    return-wide v0
.end method

.method public getStartTime()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 824
    iget-wide v0, p0, Lcom/android/server/am/ProcessRecord;->mStartUptime:J

    return-wide v0
.end method

.method public getStartUid()I
    .registers 1

    .line 832
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mStartUid:I

    return p0
.end method

.method public getStartUptime()J
    .registers 3

    .line 815
    iget-wide v0, p0, Lcom/android/server/am/ProcessRecord;->mStartUptime:J

    return-wide v0
.end method

.method public getThread()Landroid/app/IApplicationThread;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 697
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    return-object p0
.end method

.method public getUidRecord()Lcom/android/server/am/UidRecord;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 657
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    return-object p0
.end method

.method public getWaitingToKill()Ljava/lang/String;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 965
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWaitingToKill:Ljava/lang/String;

    return-object p0
.end method

.method public getWindowProcessController()Lcom/android/server/wm/WindowProcessController;
    .registers 1

    .line 1410
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    return-object p0
.end method

.method public hasActivities()Z
    .registers 1

    .line 1096
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result p0

    return p0
.end method

.method public hasActivitiesOrRecentTasks()Z
    .registers 1

    .line 1100
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->hasActivitiesOrRecentTasks()Z

    move-result p0

    return p0
.end method

.method public hasRecentTasks()Z
    .registers 1

    .line 1104
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->hasRecentTasks()Z

    move-result p0

    return p0
.end method

.method public hasRestartService()Z
    .registers 5

    .line 1109
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1b

    .line 1111
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v3

    .line 1112
    invoke-virtual {v3, v1}, Lcom/android/server/am/ServiceRecord;->canStopIfKilled(Z)Z

    move-result v3

    if-nez v3, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1b
    return v1
.end method

.method public hasWaitedForDebugger()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 1021
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mWaitedForDebugger:Z

    return p0
.end method

.method public isActiveLaunch()Z
    .registers 1

    .line 1568
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    return p0
.end method

.method public isBindMountPending()Z
    .registers 1

    .line 848
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mBindMountPending:Z

    return p0
.end method

.method public isCached()Z
    .registers 1

    .line 1092
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result p0

    return p0
.end method

.method public isDebuggable()Z
    .registers 4

    .line 1003
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 1006
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    .line 1007
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getClientInfoForSdkSandbox()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 1008
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v2

    :goto_1d
    return v1

    :cond_1e
    return v2
.end method

.method public isDebugging()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 987
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    return p0
.end method

.method public isExcessiveResourceUsage()Z
    .registers 1

    .line 1651
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mExcessiveResourceUsage:Z

    return p0
.end method

.method public isFixedAppContextDisplay()Z
    .registers 1

    .line 1667
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mFixedAppContextDisplay:Z

    return p0
.end method

.method public isForKeeping()Z
    .registers 1

    .line 706
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->isForKeeping:Z

    return p0
.end method

.method public isInFullBackup()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1082
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mInFullBackup:Z

    return p0
.end method

.method public isInterestingToUserLocked()Z
    .registers 2

    .line 1144
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isInterestingToUser()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 1148
    :cond_a
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result p0

    return p0
.end method

.method public isKilled()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 945
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    return p0
.end method

.method public isKilledByAm()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 930
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    return p0
.end method

.method public isPendingStart()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 780
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    return p0
.end method

.method public isPersistent()Z
    .registers 1

    .line 775
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    return p0
.end method

.method public isRemoved()Z
    .registers 1

    .line 978
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    return p0
.end method

.method public isSkipTrimMemory()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 935
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    if-nez v0, :cond_b

    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->isForKeeping:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public isUnlocked()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 857
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mUnlocked:Z

    return p0
.end method

.method public isUsingWrapper()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1041
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mUsingWrapper:Z

    return p0
.end method

.method public killLocked(Ljava/lang/String;IIZ)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 1200
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;Ljava/lang/String;IIZ)V

    return-void
.end method

.method public killLocked(Ljava/lang/String;IZ)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1194
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    return-void
.end method

.method public killLocked(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1207
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-lez v0, :cond_48

    .line 1208
    invoke-static {v0}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result v0

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    if-eq v0, v3, :cond_48

    const-string p1, "ActivityManager"

    .line 1209
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Not TGL "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    iget-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mTGLCallbackPosted:Z

    if-eqz p1, :cond_37

    return-void

    .line 1212
    :cond_37
    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mTGLCallbackPosted:Z

    .line 1213
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance p2, Lcom/android/server/am/ProcessRecord$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/server/am/ProcessRecord$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/ProcessRecord;)V

    const-wide/16 p3, 0x3e8

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1222
    :cond_48
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    if-nez v0, :cond_167

    const-string/jumbo v0, "kill"

    const-wide/16 v3, 0x40

    .line 1223
    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v0, 0x6

    if-ne p3, v0, :cond_79

    .line 1224
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 1225
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getAnrAnnotation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_79

    .line 1226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {p2}, Lcom/android/server/am/ProcessErrorStateRecord;->getAnrAnnotation()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1228
    :cond_79
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_bf

    if-nez p5, :cond_89

    iget-object p5, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p5, p5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    if-ne p5, v0, :cond_bf

    .line 1229
    :cond_89
    iget-object p5, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v0, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Killing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (adj "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1229
    invoke-virtual {p5, v0, v5, v6}, Lcom/android/server/am/ActivityManagerService;->reportUidInfoMessageLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1233
    :cond_bf
    iget p5, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    const/4 v0, 0x0

    if-lez p5, :cond_143

    .line 1234
    iget-object p5, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p5, p5, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p5, p0, p3, p4, p2}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    const/16 p2, 0x7547

    const/4 p3, 0x5

    new-array p3, p3, [Ljava/lang/Object;

    .line 1235
    iget p4, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 1236
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v0

    iget p4, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v2

    iget-object p4, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    aput-object p4, p3, v1

    const/4 p4, 0x3

    iget-object p5, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p5}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p3, p4

    const/4 p4, 0x4

    aput-object p1, p3, p4

    .line 1235
    invoke-static {p2, p3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1237
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "B|killProcessQuiet comm="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 1238
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide p1

    .line 1239
    iget p3, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {p3}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 1240
    iget p3, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget p4, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {p3, p4}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    .line 1241
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "E|killProcessQuiet pss="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    goto :goto_145

    .line 1243
    :cond_143
    iput-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    .line 1245
    :goto_145
    iget-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-nez p1, :cond_164

    .line 1246
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter p1

    :try_start_14c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1247
    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    .line 1248
    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 1249
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/server/am/ProcessRecord;->mKillTime:J

    .line 1250
    monitor-exit p1
    :try_end_15a
    .catchall {:try_start_14c .. :try_end_15a} :catchall_15e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_164

    :catchall_15e
    move-exception p0

    :try_start_15f
    monitor-exit p1
    :try_end_160
    .catchall {:try_start_15f .. :try_end_160} :catchall_15e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 1252
    :cond_164
    :goto_164
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    :cond_167
    return-void
.end method

.method public makeActive(Landroid/app/IApplicationThread;Lcom/android/server/am/ProcessStatsService;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 716
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ProcessProfileRecord;->onProcessActive(Landroid/app/IApplicationThread;Lcom/android/server/am/ProcessStatsService;)V

    .line 717
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 718
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setThread(Landroid/app/IApplicationThread;)V

    return-void
.end method

.method public makeInactive(Lcom/android/server/am/ProcessStatsService;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    const/4 v0, 0x0

    .line 723
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 724
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowProcessController;->setThread(Landroid/app/IApplicationThread;)V

    .line 725
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessProfileRecord;->onProcessInactive(Lcom/android/server/am/ProcessStatsService;)V

    return-void
.end method

.method public onCleanupApplicationRecordLSP(Lcom/android/server/am/ProcessStatsService;ZZ)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 1123
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->onCleanupApplicationRecordLSP()V

    .line 1125
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessRecord;->resetPackageList(Lcom/android/server/am/ProcessStatsService;)V

    if-eqz p3, :cond_d

    .line 1127
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->unlinkDeathRecipient()V

    .line 1129
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessRecord;->makeInactive(Lcom/android/server/am/ProcessStatsService;)V

    const/4 p1, 0x0

    .line 1130
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessRecord;->setWaitingToKill(Ljava/lang/String;)V

    .line 1132
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->onCleanupApplicationRecordLSP()V

    .line 1133
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->onCleanupApplicationRecordLocked()V

    .line 1134
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessReceiverRecord;->onCleanupApplicationRecordLocked()V

    .line 1136
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessProviderRecord;->onCleanupApplicationRecordLocked(Z)Z

    move-result p0

    return p0
.end method

.method public onStartActivity(IZLjava/lang/String;J)V
    .registers 9

    .line 1491
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x0

    .line 1492
    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->mWaitingToKill:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1494
    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->mClearedWaitingToKill:Z

    if-eqz p2, :cond_21

    .line 1497
    iget-object p2, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object p2, p2, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_40

    .line 1498
    :try_start_15
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v2, p0}, Lcom/android/server/am/AppProfiler;->setProfileProcLPf(Lcom/android/server/am/ProcessRecord;)V

    .line 1499
    monitor-exit p2

    goto :goto_21

    :catchall_1e
    move-exception p0

    monitor-exit p2
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_1e

    :try_start_20
    throw p0

    :cond_21
    :goto_21
    if-eqz p3, :cond_2a

    .line 1502
    iget-object p2, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {p0, p3, p4, p5, p2}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    :cond_2a
    const/4 p2, 0x1

    .line 1506
    invoke-virtual {p0, v1, p2, p2}, Lcom/android/server/am/ProcessRecord;->updateProcessInfo(ZZZ)V

    .line 1508
    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessRecord;->setPendingUiClean(Z)V

    .line 1509
    iget-object p3, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p3, p2}, Lcom/android/server/am/ProcessStateRecord;->setHasShownUi(Z)V

    .line 1510
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateRecord;->forceProcessStateUpTo(I)V

    .line 1511
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_20 .. :try_end_3c} :catchall_40

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_40
    move-exception p0

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V
    .registers 2

    .line 1426
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    return-void
.end method

.method public resetPackageList(Lcom/android/server/am/ProcessStatsService;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1362
    iget-object v8, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1363
    :try_start_7
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getBaseProcessTracker()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v15

    .line 1364
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    monitor-enter v7
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_9c

    .line 1365
    :try_start_10
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v2}, Lcom/android/server/am/PackageList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v15, :cond_79

    .line 1367
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const/4 v10, -0x1

    .line 1369
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v11

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v4}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v14

    move-object v9, v15

    .line 1368
    invoke-virtual/range {v9 .. v14}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 1370
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    new-instance v5, Lcom/android/server/am/ProcessRecord$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lcom/android/server/am/ProcessRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v4, v5}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/BiConsumer;)V

    if-eq v2, v3, :cond_77

    .line 1377
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    new-instance v3, Lcom/android/server/am/ProcessRecord$$ExternalSyntheticLambda1;

    invoke-direct {v3, v15}, Lcom/android/server/am/ProcessRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/procstats/ProcessState;)V

    invoke-virtual {v2, v3}, Lcom/android/server/am/PackageList;->forEachPackageProcessStats(Ljava/util/function/Consumer;)V

    .line 1382
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v2}, Lcom/android/server/am/PackageList;->clear()V

    .line 1383
    new-instance v9, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v2, v2, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-direct {v9, v2, v3}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    .line 1385
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v5, v2, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;
    :try_end_5e
    .catchall {:try_start_10 .. :try_end_5e} :catchall_96

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v11, v7

    move-object v7, v10

    :try_start_63
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessStatsService;->updateProcessStateHolderLocked(Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;Ljava/lang/String;IJLjava/lang/String;)V

    .line 1387
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v9}, Lcom/android/server/am/PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 1388
    iget-object v0, v9, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, v15, :cond_93

    .line 1389
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    goto :goto_93

    :cond_77
    move-object v11, v7

    goto :goto_93

    :cond_79
    move-object v11, v7

    if-eq v2, v3, :cond_93

    .line 1393
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v1}, Lcom/android/server/am/PackageList;->clear()V

    .line 1394
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v4, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-direct {v3, v4, v5}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 1397
    :cond_93
    :goto_93
    monitor-exit v11
    :try_end_94
    .catchall {:try_start_63 .. :try_end_94} :catchall_9a

    .line 1398
    :try_start_94
    monitor-exit v8
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_9c

    return-void

    :catchall_96
    move-exception v0

    move-object v11, v7

    .line 1397
    :goto_98
    :try_start_98
    monitor-exit v11
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_9a

    :try_start_99
    throw v0

    :catchall_9a
    move-exception v0

    goto :goto_98

    :catchall_9c
    move-exception v0

    .line 1398
    monitor-exit v8
    :try_end_9e
    .catchall {:try_start_99 .. :try_end_9e} :catchall_9c

    throw v0
.end method

.method public scheduleCrashLocked(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1165
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    if-nez v0, :cond_49

    .line 1166
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_49

    .line 1167
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_19

    const-string p0, "ActivityManager"

    const-string/jumbo p1, "scheduleCrash: trying to crash system process!"

    .line 1168
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1171
    :cond_19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1173
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    invoke-interface {v2, p1, p2, p3}, Landroid/app/IApplicationThread;->scheduleCrash(Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_22} :catch_28
    .catchall {:try_start_1d .. :try_end_22} :catchall_26

    .line 1180
    :goto_22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_49

    :catchall_26
    move-exception p0

    goto :goto_45

    .line 1177
    :catch_28
    :try_start_28
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "scheduleCrash for \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' failed"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IZ)V
    :try_end_44
    .catchall {:try_start_28 .. :try_end_44} :catchall_26

    goto :goto_22

    .line 1180
    :goto_45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1181
    throw p0

    :cond_49
    :goto_49
    return-void
.end method

.method public setActiveInstrumentation(Lcom/android/server/am/ActiveInstrumentation;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 915
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    move v2, v0

    goto :goto_9

    :cond_8
    move v2, v1

    .line 917
    :goto_9
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    if-eqz v2, :cond_10

    .line 919
    iget v3, p1, Lcom/android/server/am/ActiveInstrumentation;->mSourceUid:I

    goto :goto_11

    :cond_10
    const/4 v3, -0x1

    :goto_11
    if-eqz v2, :cond_18

    iget-boolean p1, p1, Lcom/android/server/am/ActiveInstrumentation;->mHasBackgroundActivityStartsPermission:Z

    if-eqz p1, :cond_18

    goto :goto_19

    :cond_18
    move v0, v1

    .line 917
    :goto_19
    invoke-virtual {p0, v2, v3, v0}, Lcom/android/server/wm/WindowProcessController;->setInstrumenting(ZIZ)V

    return-void
.end method

.method public setActiveLaunch(Z)V
    .registers 2

    .line 1564
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    return-void
.end method

.method public setActiveLaunchTime(J)V
    .registers 3

    .line 1572
    iput-wide p1, p0, Lcom/android/server/am/ProcessRecord;->activeLaunchTime:J

    return-void
.end method

.method public setAppKeepingTime(J)V
    .registers 3

    .line 710
    iput-wide p1, p0, Lcom/android/server/am/ProcessRecord;->appKeepingTime:J

    return-void
.end method

.method public setBindMountPending(Z)V
    .registers 2

    .line 852
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mBindMountPending:Z

    return-void
.end method

.method public setClearWaitingToKill()V
    .registers 2

    const/4 v0, 0x1

    .line 1558
    iput-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mClearedWaitingToKill:Z

    return-void
.end method

.method public setCompat(Landroid/content/res/CompatibilityInfo;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 882
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mCompat:Landroid/content/res/CompatibilityInfo;

    return-void
.end method

.method public setDeathRecipient(Landroid/os/IBinder$DeathRecipient;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 905
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method public setDebugging(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1015
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    .line 1016
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setDebugging(Z)V

    return-void
.end method

.method public setDisabledCompatChanges([J)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 892
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mDisabledCompatChanges:[J

    return-void
.end method

.method public setDyingPid(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 735
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mDyingPid:I

    return-void
.end method

.method public setExcessiveResourceUsage(Z)V
    .registers 2

    .line 1655
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mExcessiveResourceUsage:Z

    return-void
.end method

.method public setFixedAppContextDisplay(Z)V
    .registers 2

    .line 1663
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mFixedAppContextDisplay:Z

    return-void
.end method

.method public setGids([I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 745
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mGids:[I

    return-void
.end method

.method public setHostingRecord(Lcom/android/server/am/HostingRecord;)V
    .registers 2

    .line 803
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    return-void
.end method

.method public setInFullBackup(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1087
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mInFullBackup:Z

    return-void
.end method

.method public setInstructionSet(Ljava/lang/String;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 766
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mInstructionSet:Ljava/lang/String;

    return-void
.end method

.method public setIpmLaunchType(I)V
    .registers 2

    .line 1576
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    return-void
.end method

.method public setIsforKeeping(Z)V
    .registers 2

    .line 702
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->isForKeeping:Z

    return-void
.end method

.method public setIsolatedEntryPoint(Ljava/lang/String;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1067
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPoint:Ljava/lang/String;

    return-void
.end method

.method public setIsolatedEntryPointArgs([Ljava/lang/String;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1077
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPointArgs:[Ljava/lang/String;

    return-void
.end method

.method public setKeepProcessAlive(Z)V
    .registers 2

    .line 1629
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mKeepProcessAlive:Z

    .line 1630
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setKeepProcessAlive(Z)V

    return-void
.end method

.method public setKillProcessTimeout(I)V
    .registers 2

    .line 1640
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mKillProcessTimeout:I

    return-void
.end method

.method public setKillTime(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 960
    iput-wide p1, p0, Lcom/android/server/am/ProcessRecord;->mKillTime:J

    return-void
.end method

.method public setKilled(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 950
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    return-void
.end method

.method public setKilledByAm(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 940
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    return-void
.end method

.method public setLastActivityTime(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 1036
    iput-wide p1, p0, Lcom/android/server/am/ProcessRecord;->mLastActivityTime:J

    return-void
.end method

.method public setLruSeq(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1057
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mLruSeq:I

    return-void
.end method

.method public setMlLaunchTime(J)V
    .registers 3

    .line 1588
    iput-wide p1, p0, Lcom/android/server/am/ProcessRecord;->mlLaunchTime:J

    return-void
.end method

.method public setMountMode(I)V
    .registers 2

    .line 844
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mMountMode:I

    return-void
.end method

.method public setOverrideDisplayId(I)V
    .registers 2

    return-void
.end method

.method public setPendingStart(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 785
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    return-void
.end method

.method public setPendingUiClean(Z)V
    .registers 3

    .line 1446
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1447
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessProfileRecord;->setPendingUiClean(Z)V

    .line 1448
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_10
    move-exception p0

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public setPendingUiCleanAndForceProcessStateUpTo(I)V
    .registers 4

    .line 1453
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x1

    .line 1454
    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessRecord;->setPendingUiClean(Z)V

    .line 1455
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateRecord;->forceProcessStateUpTo(I)V

    .line 1456
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_14
    move-exception p0

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setPersistent(Z)V
    .registers 2

    .line 770
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 771
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setPersistent(Z)V

    return-void
.end method

.method public setPid(I)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 686
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 687
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setPid(I)V

    const/4 v0, 0x0

    .line 688
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mShortStringName:Ljava/lang/String;

    .line 689
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mStringName:Ljava/lang/String;

    .line 690
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 691
    :try_start_11
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessProfileRecord;->setPid(I)V

    .line 692
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public setPkgDeps(Landroid/util/ArraySet;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 676
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mPkgDeps:Landroid/util/ArraySet;

    return-void
.end method

.method public setRemoved(Z)V
    .registers 2

    .line 982
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    return-void
.end method

.method public setRenderThreadTid(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 872
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mRenderThreadTid:I

    return-void
.end method

.method public setRequiredAbi(Ljava/lang/String;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 755
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mRequiredAbi:Ljava/lang/String;

    .line 756
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setRequiredAbi(Ljava/lang/String;)V

    return-void
.end method

.method public setRunningRemoteAnimation(Z)V
    .registers 4

    .line 1523
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_11

    const-string p0, "ActivityManager"

    const-string/jumbo p1, "system can\'t run remote animation"

    .line 1524
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1527
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_14
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1528
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateRecord;->setRunningRemoteAnimation(Z)V

    .line 1529
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_21

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_21
    move-exception p0

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setSeInfo(Ljava/lang/String;)V
    .registers 2

    .line 811
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mSeInfo:Ljava/lang/String;

    return-void
.end method

.method public setSkipToFinishActivities(Z)V
    .registers 4

    .line 1616
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mSkipToFinishActivities:Z

    if-eq v0, p1, :cond_45

    .line 1617
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mSkipToFinishActivities:Z

    .line 1618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSkipToFinishActivities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1619
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p0, :cond_37

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, ", Callers="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x5

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_39

    :cond_37
    const-string p0, ""

    :goto_39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    .line 1618
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    return-void
.end method

.method public setStartParams(ILcom/android/server/am/HostingRecord;Ljava/lang/String;JJ)V
    .registers 8

    .line 456
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mStartUid:I

    .line 457
    iput-object p2, p0, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    .line 458
    iput-object p3, p0, Lcom/android/server/am/ProcessRecord;->mSeInfo:Ljava/lang/String;

    .line 459
    iput-wide p4, p0, Lcom/android/server/am/ProcessRecord;->mStartUptime:J

    .line 460
    iput-wide p6, p0, Lcom/android/server/am/ProcessRecord;->mStartElapsedTime:J

    return-void
.end method

.method public setStartSeq(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 795
    iput-wide p1, p0, Lcom/android/server/am/ProcessRecord;->mStartSeq:J

    return-void
.end method

.method public setStartUid(I)V
    .registers 2

    .line 836
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mStartUid:I

    return-void
.end method

.method public setUidRecord(Lcom/android/server/am/UidRecord;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 662
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    return-void
.end method

.method public setUnlocked(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 862
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mUnlocked:Z

    return-void
.end method

.method public setUsingWrapper(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1046
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mUsingWrapper:Z

    .line 1047
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setUsingWrapper(Z)V

    return-void
.end method

.method public setWaitedForDebugger(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 1026
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mWaitedForDebugger:Z

    return-void
.end method

.method public setWaitingToKill(Ljava/lang/String;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 970
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mWaitingToKill:Ljava/lang/String;

    const/4 p1, 0x0

    .line 972
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mClearedWaitingToKill:Z

    return-void
.end method

.method public skipToFinishActivities()Z
    .registers 1

    .line 1611
    iget-boolean p0, p0, Lcom/android/server/am/ProcessRecord;->mSkipToFinishActivities:Z

    return p0
.end method

.method public toShortString()Ljava/lang/String;
    .registers 3

    .line 1281
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mShortStringName:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 1285
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1286
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->toShortString(Ljava/lang/StringBuilder;)V

    .line 1287
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mShortStringName:Ljava/lang/String;

    return-object v0
.end method

.method public toShortString(Ljava/lang/StringBuilder;)V
    .registers 5

    .line 1291
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    .line 1292
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1293
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SUPPORT_IQI:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v0, :cond_1b

    const-string v1, "com.att.iqi"

    const-string v2, "PKG_01"

    .line 1294
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    .line 1295
    :cond_1b
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1293
    :goto_1d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    .line 1296
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1297
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_33

    .line 1298
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_73

    :cond_33
    const/16 v0, 0x75

    .line 1300
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1301
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1302
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-lt v0, v1, :cond_51

    const/16 v2, 0x61

    .line 1304
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr v0, v1

    .line 1305
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_59

    :cond_51
    const/16 v1, 0x73

    .line 1307
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1308
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1310
    :goto_59
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v1, :cond_73

    const/16 v0, 0x69

    .line 1311
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1312
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const v0, 0x182b8

    sub-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_73
    :goto_73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1318
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mStringName:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 1322
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ProcessRecord{"

    .line 1323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1324
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 1325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1326
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->toShortString(Ljava/lang/StringBuilder;)V

    const/16 v1, 0x7d

    .line 1327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1328
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mStringName:Ljava/lang/String;

    return-object v0
.end method

.method public unlinkDeathRecipient()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 897
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_12

    .line 898
    invoke-interface {v0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_12
    const/4 v0, 0x0

    .line 900
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method public updateProcessInfo(ZZZ)V
    .registers 6

    .line 1462
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    if-eqz p1, :cond_11

    .line 1464
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p1, v1}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessServiceRecord;)V

    .line 1466
    :cond_11
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    if-nez p1, :cond_1a

    .line 1470
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_2f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1472
    :cond_1a
    :try_start_1a
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, p2, v1}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    if-eqz p3, :cond_2a

    .line 1474
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo p2, "updateOomAdj_activityChange"

    invoke-virtual {p1, p0, p2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    .line 1476
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_2f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2f
    move-exception p0

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public updateServiceConnectionActivities()V
    .registers 3

    .line 1439
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1440
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessServiceRecord;)V

    .line 1441
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_14
    move-exception p0

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
