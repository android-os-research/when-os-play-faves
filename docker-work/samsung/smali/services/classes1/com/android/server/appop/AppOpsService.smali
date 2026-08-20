.class public Lcom/android/server/appop/AppOpsService;
.super Lcom/android/internal/app/IAppOpsService$Stub;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;,
        Lcom/android/server/appop/AppOpsService$NoteOpTrace;,
        Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;,
        Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;,
        Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;,
        Lcom/android/server/appop/AppOpsService$Shell;,
        Lcom/android/server/appop/AppOpsService$ChangeRec;,
        Lcom/android/server/appop/AppOpsService$NotedCallback;,
        Lcom/android/server/appop/AppOpsService$StartedCallback;,
        Lcom/android/server/appop/AppOpsService$ActiveCallback;,
        Lcom/android/server/appop/AppOpsService$ModeCallback;,
        Lcom/android/server/appop/AppOpsService$Op;,
        Lcom/android/server/appop/AppOpsService$AttributedOp;,
        Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;,
        Lcom/android/server/appop/AppOpsService$PackageVerificationResult;,
        Lcom/android/server/appop/AppOpsService$Ops;,
        Lcom/android/server/appop/AppOpsService$UidState;,
        Lcom/android/server/appop/AppOpsService$Constants;,
        Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;,
        Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;
    }
.end annotation


# static fields
.field public static final CURRENT_VERSION:I = 0x1

.field public static final DEBUG:Z

.field public static final MAX_UNFORWARDED_OPS:I = 0xa

.field public static final MAX_UNUSED_POOLED_OBJECTS:I = 0x3

.field public static final NO_VERSION:I = -0x1

.field public static final OPS_RESTRICTED_ON_SUSPEND:[I

.field public static final PROCESS_STATE_TO_UID_STATE:[I

.field public static final RARELY_USED_PACKAGES_INITIALIZATION_DELAY_MILLIS:I = 0x493e0

.field public static final SS_SHELL_STR:Ljava/lang/String; = "might be shell"

.field public static final SS_SHELL_UID:I = 0x1

.field public static final TAG:Ljava/lang/String; = "AppOps"

.field public static final UID_ANY:I = -0x2

.field public static final WRITE_DELAY:J = 0x1b7740L


# instance fields
.field public final dpmi:Landroid/app/admin/DevicePolicyManagerInternal;

.field public mAcceptableLeftDistance:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final mActiveWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/appop/AppOpsService$ActiveCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mAppOpsManagerInternal:Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

.field public mAppOpsPublished:Z

.field public final mAsyncOpWatchers:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/internal/app/IAppOpsAsyncNotedCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

.field public volatile mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

.field public mCollectedRuntimePermissionMessage:Landroid/app/RuntimeAppOpAccessMessage;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final mConstants:Lcom/android/server/appop/AppOpsService$Constants;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public mFastWriteScheduled:Z

.field public final mFile:Landroid/util/AtomicFile;

.field public final mHandler:Landroid/os/Handler;

.field public volatile mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

.field public final mInProgressStartOpEventPool:Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mIsReadingWhileBooting:Z

.field public mLastRealtime:J

.field public mMessagesCollectedCount:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mNoteOpCallerStacktraces:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$NoteOpTrace;",
            ">;"
        }
    .end annotation
.end field

.field public final mNoteOpCallerStacktracesFile:Ljava/io/File;

.field public final mNotedWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/appop/AppOpsService$NotedCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field public mOnPackageUpdatedReceiver:Landroid/content/BroadcastReceiver;

.field public final mOpEventProxyInfoPool:Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final mOpGlobalRestrictions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;",
            ">;"
        }
    .end annotation
.end field

.field public final mOpModeWatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mOpUserRestrictions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;",
            ">;"
        }
    .end annotation
.end field

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPackageModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mPermissionAccessInformationController:Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;

.field public final mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field public mProfileOwners:Landroid/util/SparseIntArray;

.field public mRarelyUsedPackages:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
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

.field public mSampledAppOpCode:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mSampledPackage:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mSamplingStrategy:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final mStartedWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/appop/AppOpsService$StartedCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mSwitchedOps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field public final mUidStates:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/appop/AppOpsService$UidState;",
            ">;"
        }
    .end annotation
.end field

.field public final mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/AsyncNotedAppOp;",
            ">;>;"
        }
    .end annotation
.end field

.field public mWriteNoteOpsScheduled:Z

.field public final mWriteRunner:Ljava/lang/Runnable;

.field public mWriteScheduled:Z


# direct methods
.method public static synthetic $r8$lambda$6eUUjWoSV6jYQZnTSAKV3P6Zd3U(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;II)V
    .registers 8

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/appop/AppOpsService;->notifyOpChecked(Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$CkC7NFGAXqPtWmw4hPZid_o7wF8(Lcom/android/server/appop/AppOpsService;)Ljava/util/List;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageListAndResample()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GbnVL7FStoP-5ugbMrKPtxPc-7Q(Lcom/android/server/appop/AppOpsService;IIZLcom/android/internal/app/IAppOpsCallback;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedForAllPkgsInUid(IIZLcom/android/internal/app/IAppOpsCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LRr7STrkYtPwp1nW5np6fZk1AUQ(Landroid/app/AsyncNotedAppOp;[ZILjava/lang/String;ILjava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService;->lambda$collectAsyncNotedOp$2(Landroid/app/AsyncNotedAppOp;[ZILjava/lang/String;ILjava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PKLfueNQM1N0Jpnmxcaqqma0eNY(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PZVYmZF9I2wMooN5sdolUJHCO-4(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsService;->lambda$systemReady$0(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$UhW7SeBkHHHfuwTQAOdyrxrpRvA(Lcom/android/server/appop/AppOpsService;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->notifyWatchersOfChange(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zyngadgl87QMxYI929vq0ZyGXcM(Lcom/android/server/appop/AppOpsService;IZI)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsService;->updateStartedOpModeForUser(IZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$cQF62lZT2B382dOHCevnBWdZGys(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$ModeCallback;IILjava/lang/String;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Lcom/android/server/appop/AppOpsService$ModeCallback;IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cU4tPCldqmXEiXiHWKEnCIAX32s(Landroid/os/RemoteCallback;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/appop/AppOpsService;->lambda$getHistoricalOps$1(Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iL6zhZ4RXAu41fUZUa_yXTwYmtE(Lcom/android/server/appop/AppOpsService;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/appop/AppOpsService;->lambda$collectNoteOpCallsForValidation$3(Lcom/android/server/appop/AppOpsService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ueiy_QOdjs5waSxjG-x7aX5-gP4(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;ZII)V
    .registers 9

    invoke-virtual/range {p0 .. p8}, Lcom/android/server/appop/AppOpsService;->notifyOpActiveChanged(Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;ZII)V

    return-void
.end method

.method public static synthetic $r8$lambda$y2H8_9L2D3J-gli7MqsLRngTgtU(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;IIIII)V
    .registers 11

    invoke-virtual/range {p0 .. p10}, Lcom/android/server/appop/AppOpsService;->notifyOpStarted(Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;IIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$zNYjiRegD7DR2rGVXmVvy9TP0eI(Lcom/android/server/appop/AppOpsService;JI)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsService;->updatePendingState(JI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityManagerInternal(Lcom/android/server/appop/AppOpsService;)Landroid/app/ActivityManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAsyncOpWatchers(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInProgressStartOpEventPool(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;
    .registers 1

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mInProgressStartOpEventPool:Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOpEventProxyInfoPool(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;
    .registers 1

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mOpEventProxyInfoPool:Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOpGlobalRestrictions(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mOpGlobalRestrictions:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOpUserRestrictions(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRarelyUsedPackages(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmRarelyUsedPackages(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckAudioOperationImpl(Lcom/android/server/appop/AppOpsService;IIILjava/lang/String;)I
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->checkAudioOperationImpl(IIILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcheckOperationImpl(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;Z)I
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->checkOperationImpl(IILjava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mfinishOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->finishOperationImpl(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfinishProxyOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)Ljava/lang/Void;
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->finishProxyOperationImpl(Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetPackageListAndResample(Lcom/android/server/appop/AppOpsService;)Ljava/util/List;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageListAndResample()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetPackageManagerInternal(Lcom/android/server/appop/AppOpsService;)Landroid/content/pm/PackageManagerInternal;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$minitializeRarelyUsedPackagesList(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->initializeRarelyUsedPackagesList(Landroid/util/ArraySet;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misSamplingTarget(Lcom/android/server/appop/AppOpsService;Landroid/content/pm/PackageInfo;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->isSamplingTarget(Landroid/content/pm/PackageInfo;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mnoteOperationImpl(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;
    .registers 8

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/appop/AppOpsService;->noteOperationImpl(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mnoteProxyOperationImpl(Lcom/android/server/appop/AppOpsService;ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService;->noteProxyOperationImpl(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyOpChanged(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyWatchersOfChange(Lcom/android/server/appop/AppOpsService;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->notifyWatchersOfChange(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleFastWriteLocked(Lcom/android/server/appop/AppOpsService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleOpActiveChangedIfNeededLocked(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;ZII)V
    .registers 8

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;ZII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleOpStartedIfNeededLocked(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;IIIII)V
    .registers 10

    invoke-virtual/range {p0 .. p9}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IIIII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetMode(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->setMode(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetUidMode(Lcom/android/server/appop/AppOpsService;IIILcom/android/internal/app/IAppOpsCallback;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->setUidMode(IIILcom/android/internal/app/IAppOpsCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .registers 12

    invoke-virtual/range {p0 .. p11}, Lcom/android/server/appop/AppOpsService;->startOperationImpl(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mstartProxyOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;
    .registers 12

    invoke-virtual/range {p0 .. p11}, Lcom/android/server/appop/AppOpsService;->startProxyOperationImpl(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateAppWidgetVisibility(Lcom/android/server/appop/AppOpsService;Landroid/util/SparseArray;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->updateAppWidgetVisibility(Landroid/util/SparseArray;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateStartedOpModeForUser(Lcom/android/server/appop/AppOpsService;IZI)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsService;->updateStartedOpModeForUser(IZI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetOPS_RESTRICTED_ON_SUSPEND()[I
    .registers 1

    sget-object v0, Lcom/android/server/appop/AppOpsService;->OPS_RESTRICTED_ON_SUSPEND:[I

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smonClientDeath(Lcom/android/server/appop/AppOpsService$AttributedOp;Landroid/os/IBinder;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/appop/AppOpsService;->onClientDeath(Lcom/android/server/appop/AppOpsService$AttributedOp;Landroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smresolveUid(Ljava/lang/String;)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/appop/AppOpsService;->resolveUid(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ro.boot.debug_level"

    const-string/jumbo v1, "unknown"

    .line 232
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x4948"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    const/16 v0, 0x15

    new-array v0, v0, [I

    .line 259
    fill-array-data v0, :array_24

    sput-object v0, Lcom/android/server/appop/AppOpsService;->PROCESS_STATE_TO_UID_STATE:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 283
    fill-array-data v0, :array_52

    sput-object v0, Lcom/android/server/appop/AppOpsService;->OPS_RESTRICTED_ON_SUSPEND:[I

    return-void

    :array_24
    .array-data 4
        0x64
        0x64
        0xc8
        0x1f4
        0x190
        0x1f4
        0x258
        0x258
        0x258
        0x258
        0x258
        0x258
        0x2bc
        0x2bc
        0x2bc
        0x2bc
        0x2bc
        0x2bc
        0x2bc
        0x2bc
        0x2bc
    .end array-data

    :array_52
    .array-data 4
        0x1c
        0x1b
        0x1a
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 7

    .line 1830
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsService$Stub;-><init>()V

    .line 237
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktraces:Landroid/util/ArraySet;

    .line 301
    new-instance v0, Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;

    invoke-direct {v0, p0}, Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;-><init>(Lcom/android/server/appop/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpEventProxyInfoPool:Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;

    .line 305
    new-instance v0, Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;

    invoke-direct {v0, p0}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;-><init>(Lcom/android/server/appop/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mInProgressStartOpEventPool:Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;

    .line 309
    new-instance v0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl-IA;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsManagerInternal:Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

    .line 311
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 312
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->dpmi:Landroid/app/admin/DevicePolicyManagerInternal;

    const-string/jumbo v0, "platform_compat"

    .line 315
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 314
    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 324
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    .line 336
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;

    .line 344
    new-instance v0, Lcom/android/server/appop/AppOpsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/appop/AppOpsService$1;-><init>(Lcom/android/server/appop/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    .line 360
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 364
    new-instance v0, Lcom/android/server/appop/HistoricalRegistry;

    invoke-direct {v0, p0}, Lcom/android/server/appop/HistoricalRegistry;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 371
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    .line 377
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpGlobalRestrictions:Landroid/util/ArrayMap;

    .line 382
    new-instance v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-direct {v0, p0, v1, v1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 389
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mSwitchedOps:Landroid/util/SparseArray;

    .line 394
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    const/4 v0, -0x1

    .line 398
    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mSampledAppOpCode:I

    const/4 v0, 0x0

    .line 402
    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    .line 410
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    .line 1590
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 1591
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 1592
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    .line 1593
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 1594
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    .line 1595
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 1596
    new-instance v2, Lcom/android/server/appop/AudioRestrictionManager;

    invoke-direct {v2}, Lcom/android/server/appop/AudioRestrictionManager;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    .line 1872
    new-instance v2, Lcom/android/server/appop/AppOpsService$2;

    invoke-direct {v2, p0}, Lcom/android/server/appop/AppOpsService$2;-><init>(Lcom/android/server/appop/AppOpsService;)V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOnPackageUpdatedReceiver:Landroid/content/BroadcastReceiver;

    .line 1831
    iput-object p3, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 1833
    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsPublished:Z

    .line 1835
    new-instance v2, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;

    invoke-direct {v2, p3}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mPermissionAccessInformationController:Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;

    .line 1840
    invoke-static {p0, v0}, Lcom/android/server/LockGuard;->installLock(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 1841
    new-instance p3, Landroid/util/AtomicFile;

    const-string v2, "appops"

    invoke-direct {p3, p1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    .line 1847
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktracesFile:Ljava/io/File;

    .line 1849
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 1850
    new-instance p1, Lcom/android/server/appop/AppOpsService$Constants;

    invoke-direct {p1, p0, p2}, Lcom/android/server/appop/AppOpsService$Constants;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    const/4 p1, 0x1

    .line 1852
    iput-boolean p1, p0, Lcom/android/server/appop/AppOpsService;->mIsReadingWhileBooting:Z

    .line 1853
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->readState()V

    .line 1855
    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mIsReadingWhileBooting:Z

    :goto_e7
    const/16 p1, 0x79

    if-ge v0, p1, :cond_101

    .line 1858
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 1859
    iget-object p2, p0, Lcom/android/server/appop/AppOpsService;->mSwitchedOps:Landroid/util/SparseArray;

    .line 1860
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    invoke-static {p3, v0}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p3

    .line 1859
    invoke-virtual {p2, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e7

    :cond_101
    return-void
.end method

.method public static addCallbacks(Ljava/util/HashMap;IILjava/lang/String;ILandroid/util/ArraySet;)Ljava/util/HashMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appop/AppOpsService$ChangeRec;",
            ">;>;II",
            "Ljava/lang/String;",
            "I",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            ">;)",
            "Ljava/util/HashMap<",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appop/AppOpsService$ChangeRec;",
            ">;>;"
        }
    .end annotation

    if-nez p5, :cond_3

    return-object p0

    :cond_3
    if-nez p0, :cond_a

    .line 3056
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 3058
    :cond_a
    invoke-virtual {p5}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_29

    .line 3060
    invoke-virtual {p5, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 3061
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 3062
    invoke-static {v3, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->addChange(Ljava/util/ArrayList;IILjava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    if-eq v4, v3, :cond_26

    .line 3064
    invoke-virtual {p0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_29
    return-object p0
.end method

.method public static addChange(Ljava/util/ArrayList;IILjava/lang/String;I)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appop/AppOpsService$ChangeRec;",
            ">;II",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appop/AppOpsService$ChangeRec;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_9

    .line 3031
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_27

    .line 3033
    :cond_9
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_e
    if-ge v2, v1, :cond_27

    .line 3035
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$ChangeRec;

    .line 3036
    iget v4, v3, Lcom/android/server/appop/AppOpsService$ChangeRec;->op:I

    if-ne v4, p1, :cond_24

    iget-object v3, v3, Lcom/android/server/appop/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    const/4 v0, 0x1

    goto :goto_27

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_27
    :goto_27
    if-nez v0, :cond_31

    .line 3043
    new-instance v0, Lcom/android/server/appop/AppOpsService$ChangeRec;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService$ChangeRec;-><init>(IILjava/lang/String;I)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    return-object p0
.end method

.method public static dumpCommandHelp(Ljava/io/PrintWriter;)V
    .registers 2

    const-string v0, "AppOps service (appops) commands:"

    .line 5751
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 5752
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    .line 5753
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  start [--user <USER_ID>] [--attribution <ATTRIBUTION_TAG>] <PACKAGE | UID> <OP> "

    .line 5754
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Starts a given operation for a particular application."

    .line 5756
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  stop [--user <USER_ID>] [--attribution <ATTRIBUTION_TAG>] <PACKAGE | UID> <OP> "

    .line 5757
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Stops a given operation for a particular application."

    .line 5759
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  set [--user <USER_ID>] <[--uid] PACKAGE | UID> <OP> <MODE>"

    .line 5760
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Set the mode for a particular application and operation."

    .line 5761
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  get [--user <USER_ID>] [--attribution <ATTRIBUTION_TAG>] <PACKAGE | UID> [<OP>]"

    .line 5762
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Return the mode for a particular application and optional operation."

    .line 5764
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  query-op [--user <USER_ID>] <OP> [<MODE>]"

    .line 5765
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print all packages that currently have the given op in the given mode."

    .line 5766
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  reset [--user <USER_ID>] [<PACKAGE>]"

    .line 5767
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Reset the given application or all applications to default modes."

    .line 5768
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  write-settings"

    .line 5769
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Immediately write pending changes to storage."

    .line 5770
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  read-settings"

    .line 5771
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Read the last written settings, replacing current state in RAM."

    .line 5772
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  options:"

    .line 5773
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    <PACKAGE> an Android package name or its UID if prefixed by --uid"

    .line 5774
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    <OP>      an AppOps operation."

    .line 5775
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    <MODE>    one of allow, ignore, deny, or default"

    .line 5776
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    <USER_ID> the user id under which the package is installed. If --user is"

    .line 5777
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "              not specified, the current user is assumed."

    .line 5778
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static getOpEntryForResult(Lcom/android/server/appop/AppOpsService$Op;J)Landroid/app/AppOpsManager$OpEntry;
    .registers 3

    .line 2316
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$Op;->createEntryLocked()Landroid/app/AppOpsManager$OpEntry;

    move-result-object p0

    return-object p0
.end method

.method public static getPackagesForUid(I)[Ljava/lang/String;
    .registers 2

    .line 7414
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 7416
    :try_start_6
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    goto :goto_10

    :catch_f
    :cond_f
    const/4 p0, 0x0

    :goto_10
    if-nez p0, :cond_14

    .line 7422
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_14
    return-object p0
.end method

.method public static synthetic lambda$collectAsyncNotedOp$2(Landroid/app/AsyncNotedAppOp;[ZILjava/lang/String;ILjava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V
    .registers 7

    .line 3850
    :try_start_0
    invoke-interface {p6, p0}, Lcom/android/internal/app/IAppOpsAsyncNotedCallback;->opNoted(Landroid/app/AsyncNotedAppOp;)V

    const/4 p0, 0x0

    const/4 p6, 0x1

    .line 3851
    aput-boolean p6, p1, p0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_3c

    :catch_8
    move-exception p0

    .line 3853
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Could not forward noteOp of "

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppOps"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3c
    return-void
.end method

.method public static synthetic lambda$collectNoteOpCallsForValidation$3(Lcom/android/server/appop/AppOpsService;)V
    .registers 1

    .line 7852
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->writeNoteOps()V

    return-void
.end method

.method public static synthetic lambda$collectNoteOpCallsForValidation$4(Lcom/android/server/appop/AppOpsService;)V
    .registers 2

    .line 7851
    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$getHistoricalOps$1(Landroid/os/RemoteCallback;)V
    .registers 2

    .line 2465
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$systemReady$0(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    .line 2004
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOnPackageUpdatedReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "package"

    const/4 v2, 0x0

    .line 2005
    invoke-static {p1, p2, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "android.intent.extra.UID"

    .line 2006
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 2004
    invoke-virtual {v0, p0, p1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static onClientDeath(Lcom/android/server/appop/AppOpsService$AttributedOp;Landroid/os/IBinder;)V
    .registers 2

    .line 1803
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->onClientDeath(Landroid/os/IBinder;)V

    return-void
.end method

.method public static onShellCommand(Lcom/android/server/appop/AppOpsService$Shell;Ljava/lang/String;)I
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_b

    .line 5783
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 5785
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 5786
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const/4 v4, -0x1

    .line 5788
    :try_start_14
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v5, :sswitch_data_404

    goto :goto_75

    :sswitch_1e
    const-string/jumbo v5, "read-settings"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_75

    const/4 v5, 0x5

    goto :goto_76

    :sswitch_29
    const-string/jumbo v5, "start"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_75

    const/4 v5, 0x6

    goto :goto_76

    :sswitch_34
    const-string/jumbo v5, "reset"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_75

    const/4 v5, 0x3

    goto :goto_76

    :sswitch_3f
    const-string/jumbo v5, "stop"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_75

    const/4 v5, 0x7

    goto :goto_76

    :sswitch_4a
    const-string/jumbo v5, "set"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_75

    move v5, v7

    goto :goto_76

    :sswitch_55
    const-string v5, "get"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_75

    move v5, v6

    goto :goto_76

    :sswitch_5f
    const-string/jumbo v5, "query-op"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_75

    const/4 v5, 0x2

    goto :goto_76

    :sswitch_6a
    const-string/jumbo v5, "write-settings"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_75

    const/4 v5, 0x4

    goto :goto_76

    :cond_75
    :goto_75
    move v5, v4

    :goto_76
    const/4 v8, 0x0

    packed-switch v5, :pswitch_data_426

    .line 6041
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_3ec

    .line 6027
    :pswitch_80
    invoke-virtual {v0, v6, v3}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v1

    if-gez v1, :cond_87

    return v1

    .line 6032
    :cond_87
    iget-object v12, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v12, :cond_99

    .line 6033
    iget-object v8, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget-object v9, v0, Lcom/android/server/appop/AppOpsService$Shell;->mToken:Landroid/os/IBinder;

    iget v10, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v11, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget-object v13, v0, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    invoke-interface/range {v8 .. v13}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_99
    return v4

    .line 6011
    :pswitch_9a
    invoke-virtual {v0, v6, v3}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v1

    if-gez v1, :cond_a1

    return v1

    .line 6016
    :cond_a1
    iget-object v12, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v12, :cond_bd

    .line 6017
    iget-object v8, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget-object v9, v0, Lcom/android/server/appop/AppOpsService$Shell;->mToken:Landroid/os/IBinder;

    iget v10, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v11, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget-object v13, v0, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    const/4 v14, 0x1

    const/4 v15, 0x1

    const-string v16, "appops start shell command"

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v19, -0x1

    invoke-interface/range {v8 .. v19}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    return v7

    :cond_bd
    return v4

    .line 5999
    :pswitch_be
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 6000
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 5999
    invoke-virtual {v1, v3, v5, v4}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 6001
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_cf
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_cf} :catch_3ed

    .line 6003
    :try_start_cf
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService;->readState()V

    const-string v0, "Last settings read."

    .line 6004
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_d9
    .catchall {:try_start_cf .. :try_end_d9} :catchall_dd

    .line 6006
    :try_start_d9
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :catchall_dd
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6007
    throw v0

    .line 5984
    :pswitch_e2
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 5985
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 5984
    invoke-virtual {v1, v3, v5, v4}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 5986
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_f3
    .catch Landroid/os/RemoteException; {:try_start_d9 .. :try_end_f3} :catch_3ed

    .line 5988
    :try_start_f3
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    monitor-enter v1
    :try_end_f6
    .catchall {:try_start_f3 .. :try_end_f6} :catchall_111

    .line 5989
    :try_start_f6
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    iget-object v8, v3, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v3, v3, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v8, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5990
    monitor-exit v1
    :try_end_100
    .catchall {:try_start_f6 .. :try_end_100} :catchall_10e

    .line 5991
    :try_start_100
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService;->writeState()V

    const-string v0, "Current settings written."

    .line 5992
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_10a
    .catchall {:try_start_100 .. :try_end_10a} :catchall_111

    .line 5994
    :try_start_10a
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_10d
    .catch Landroid/os/RemoteException; {:try_start_10a .. :try_end_10d} :catch_3ed

    return v7

    :catchall_10e
    move-exception v0

    .line 5990
    :try_start_10f
    monitor-exit v1
    :try_end_110
    .catchall {:try_start_10f .. :try_end_110} :catchall_10e

    :try_start_110
    throw v0
    :try_end_111
    .catchall {:try_start_110 .. :try_end_111} :catchall_111

    :catchall_111
    move-exception v0

    .line 5994
    :try_start_112
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5995
    throw v0

    :pswitch_116
    const/4 v1, -0x2

    move v5, v1

    .line 5950
    :goto_118
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_148

    const-string v9, "--user"

    .line 5951
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12f

    .line 5952
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 5953
    invoke-static {v5}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v5

    goto :goto_118

    :cond_12f
    if-nez v8, :cond_133

    move-object v8, v6

    goto :goto_118

    .line 5958
    :cond_133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unsupported argument: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_148
    if-ne v5, v1, :cond_14e

    .line 5965
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 5968
    :cond_14e
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, v5, v8}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V

    const-string v0, "Reset all modes for: "

    .line 5969
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-ne v5, v4, :cond_160

    const-string v0, "all users"

    .line 5971
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_169

    :cond_160
    const-string/jumbo v0, "user "

    .line 5973
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(I)V

    :goto_169
    const-string v0, ", "

    .line 5975
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v8, :cond_176

    const-string v0, "all packages"

    .line 5977
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_17f

    :cond_176
    const-string/jumbo v0, "package "

    .line 5979
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_17f
    return v7

    .line 5920
    :pswitch_180
    invoke-virtual {v0, v6, v3}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserOpMode(ILjava/io/PrintWriter;)I

    move-result v1

    if-gez v1, :cond_187

    return v1

    .line 5924
    :cond_187
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    new-array v3, v6, [I

    iget v5, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    aput v5, v3, v7

    invoke-interface {v1, v3}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1e3

    .line 5926
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_19c

    goto :goto_1e3

    :cond_19c
    move v3, v7

    .line 5930
    :goto_19d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1e2

    .line 5931
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$PackageOps;

    .line 5933
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v8}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v8

    move v9, v7

    .line 5934
    :goto_1b4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_1d5

    .line 5935
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AppOpsManager$OpEntry;

    .line 5936
    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v11

    iget v12, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-ne v11, v12, :cond_1d2

    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v10

    iget v11, v0, Lcom/android/server/appop/AppOpsService$Shell;->mode:I

    if-ne v10, v11, :cond_1d2

    move v8, v6

    goto :goto_1d6

    :cond_1d2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1b4

    :cond_1d5
    move v8, v7

    :goto_1d6
    if-eqz v8, :cond_1df

    .line 5942
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1df
    add-int/lit8 v3, v3, 0x1

    goto :goto_19d

    :cond_1e2
    return v7

    :cond_1e3
    :goto_1e3
    const-string v0, "No operations."

    .line 5927
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v7

    .line 5822
    :pswitch_1e9
    invoke-virtual {v0, v7, v3}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v1

    if-gez v1, :cond_1f0

    return v1

    .line 5827
    :cond_1f0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5828
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_228

    .line 5830
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v5, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    .line 5832
    iget v9, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-eq v9, v4, :cond_206

    new-array v10, v6, [I

    aput v9, v10, v7

    goto :goto_207

    :cond_206
    move-object v10, v8

    .line 5830
    :goto_207
    invoke-interface {v3, v5, v10}, Lcom/android/internal/app/IAppOpsService;->getUidOps(I[I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_210

    .line 5834
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5836
    :cond_210
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v5, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget-object v9, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 5838
    iget v10, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-eq v10, v4, :cond_21e

    new-array v8, v6, [I

    aput v10, v8, v7

    .line 5836
    :cond_21e
    invoke-interface {v3, v5, v9, v8}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_238

    .line 5840
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_238

    .line 5843
    :cond_228
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    .line 5845
    iget v5, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-eq v5, v4, :cond_234

    new-array v8, v6, [I

    aput v5, v8, v7

    .line 5843
    :cond_234
    invoke-interface {v1, v3, v8}, Lcom/android/internal/app/IAppOpsService;->getUidOps(I[I)Ljava/util/List;

    move-result-object v1

    :cond_238
    :goto_238
    if-eqz v1, :cond_36a

    .line 5847
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_242

    goto/16 :goto_36a

    .line 5855
    :cond_242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move v3, v7

    .line 5856
    :goto_247
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_368

    .line 5857
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$PackageOps;

    .line 5858
    invoke-virtual {v8}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_25e

    const-string v9, "Uid mode: "

    .line 5859
    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5861
    :cond_25e
    invoke-virtual {v8}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v8

    move v9, v7

    .line 5862
    :goto_263
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_363

    .line 5863
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AppOpsManager$OpEntry;

    .line 5864
    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v11

    invoke-static {v11}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, ": "

    .line 5865
    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5866
    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v11

    invoke-static {v11}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5867
    iget-object v11, v0, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    const-wide/16 v12, -0x1

    const/16 v14, 0x1f

    if-nez v11, :cond_2ef

    .line 5868
    invoke-virtual {v10, v14}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(I)J

    move-result-wide v15

    cmp-long v11, v15, v12

    if-eqz v11, :cond_2b0

    const-string v11, "; time="

    .line 5869
    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5871
    invoke-virtual {v10, v14}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(I)J

    move-result-wide v15

    move-object/from16 p1, v8

    sub-long v7, v5, v15

    .line 5870
    invoke-static {v7, v8, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v7, " ago"

    .line 5872
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2b2

    :cond_2b0
    move-object/from16 p1, v8

    .line 5874
    :goto_2b2
    invoke-virtual {v10, v14}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(I)J

    move-result-wide v7

    cmp-long v7, v7, v12

    if-eqz v7, :cond_2cd

    const-string v7, "; rejectTime="

    .line 5875
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5877
    invoke-virtual {v10, v14}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(I)J

    move-result-wide v7

    sub-long v7, v5, v7

    .line 5876
    invoke-static {v7, v8, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v7, " ago"

    .line 5878
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5880
    :cond_2cd
    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_2da

    const-string v7, " (running)"

    .line 5881
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_359

    .line 5882
    :cond_2da
    invoke-virtual {v10, v14}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(I)J

    move-result-wide v7

    cmp-long v7, v7, v12

    if-eqz v7, :cond_359

    const-string v7, "; duration="

    .line 5883
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5884
    invoke-virtual {v10, v14}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(I)J

    move-result-wide v7

    invoke-static {v7, v8, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    goto :goto_359

    :cond_2ef
    move-object/from16 p1, v8

    .line 5888
    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$AttributedOpEntry;

    if-eqz v7, :cond_359

    .line 5890
    invoke-virtual {v7, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v15

    cmp-long v8, v15, v12

    if-eqz v8, :cond_31a

    const-string v8, "; time="

    .line 5891
    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5893
    invoke-virtual {v7, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v15

    sub-long v11, v5, v15

    .line 5892
    invoke-static {v11, v12, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v10, " ago"

    .line 5895
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5897
    :cond_31a
    invoke-virtual {v7, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(I)J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-eqz v10, :cond_337

    const-string v10, "; rejectTime="

    .line 5898
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5900
    invoke-virtual {v7, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(I)J

    move-result-wide v10

    sub-long v10, v5, v10

    .line 5899
    invoke-static {v10, v11, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v10, " ago"

    .line 5902
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5904
    :cond_337
    invoke-virtual {v7}, Landroid/app/AppOpsManager$AttributedOpEntry;->isRunning()Z

    move-result v10

    if-eqz v10, :cond_343

    const-string v7, " (running)"

    .line 5905
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_359

    .line 5906
    :cond_343
    invoke-virtual {v7, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(I)J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-eqz v10, :cond_359

    const-string v10, "; duration="

    .line 5908
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5910
    invoke-virtual {v7, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(I)J

    move-result-wide v10

    .line 5909
    invoke-static {v10, v11, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5914
    :cond_359
    :goto_359
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v8, p1

    const/4 v7, 0x0

    goto/16 :goto_263

    :cond_363
    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x0

    goto/16 :goto_247

    :cond_368
    move v0, v7

    return v0

    :cond_36a
    :goto_36a
    const-string v1, "No operations."

    .line 5848
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5849
    iget v1, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-le v1, v4, :cond_395

    const/16 v3, 0x79

    if-ge v1, v3, :cond_395

    .line 5850
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default mode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 5851
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    .line 5850
    invoke-static {v0}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_395
    const/4 v0, 0x0

    return v0

    .line 5790
    :pswitch_397
    invoke-virtual {v0, v6, v3}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(ZLjava/io/PrintWriter;)I

    move-result v1

    if-gez v1, :cond_39e

    return v1

    .line 5794
    :cond_39e
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3aa

    const-string v0, "Error: Mode not specified."

    .line 5796
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 5800
    :cond_3aa
    invoke-static {v1, v3}, Lcom/android/server/appop/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v1

    if-gez v1, :cond_3b1

    return v4

    .line 5805
    :cond_3b1
    iget-boolean v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->targetsUid:Z

    if-nez v3, :cond_3c3

    iget-object v5, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_3c3

    .line 5806
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v6, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    invoke-interface {v3, v6, v0, v5, v1}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V

    goto :goto_3eb

    :cond_3c3
    if-eqz v3, :cond_3e2

    .line 5808
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;
    :try_end_3c7
    .catch Landroid/os/RemoteException; {:try_start_112 .. :try_end_3c7} :catch_3ed

    if-eqz v3, :cond_3e2

    .line 5810
    :try_start_3c9
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    iget-object v3, v3, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    iget v6, v0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 5811
    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3

    .line 5812
    iget-object v5, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    invoke-interface {v5, v0, v3, v1}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_3e0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3c9 .. :try_end_3e0} :catch_3e1
    .catch Landroid/os/RemoteException; {:try_start_3c9 .. :try_end_3e0} :catch_3ed

    goto :goto_3eb

    :catch_3e1
    return v4

    .line 5817
    :cond_3e2
    :try_start_3e2
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    iget v5, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    invoke-interface {v3, v5, v0, v1}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_3eb
    .catch Landroid/os/RemoteException; {:try_start_3e2 .. :try_end_3eb} :catch_3ed

    :goto_3eb
    const/4 v0, 0x0

    :goto_3ec
    return v0

    :catch_3ed
    move-exception v0

    .line 6044
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    nop

    :sswitch_data_404
    .sparse-switch
        -0x658cadaf -> :sswitch_6a
        -0x458a76fa -> :sswitch_5f
        0x18f56 -> :sswitch_55
        0x1bc62 -> :sswitch_4a
        0x360802 -> :sswitch_3f
        0x6761d4f -> :sswitch_34
        0x68ac462 -> :sswitch_29
        0x7c514e7a -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_426
    .packed-switch 0x0
        :pswitch_397
        :pswitch_1e9
        :pswitch_180
        :pswitch_116
        :pswitch_e2
        :pswitch_be
        :pswitch_9a
        :pswitch_80
    .end packed-switch
.end method

.method public static resolveUid(Ljava/lang/String;)I
    .registers 4

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    .line 7393
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_64

    :goto_c
    move p0, v0

    goto :goto_52

    :sswitch_e
    const-string v1, "audioserver"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_c

    :cond_17
    const/4 p0, 0x5

    goto :goto_52

    :sswitch_19
    const-string/jumbo v1, "shell"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto :goto_c

    :cond_23
    const/4 p0, 0x4

    goto :goto_52

    :sswitch_25
    const-string/jumbo v1, "media"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f

    goto :goto_c

    :cond_2f
    const/4 p0, 0x3

    goto :goto_52

    :sswitch_31
    const-string/jumbo v1, "root"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3b

    goto :goto_c

    :cond_3b
    const/4 p0, 0x2

    goto :goto_52

    :sswitch_3d
    const-string v1, "cameraserver"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_46

    goto :goto_c

    :cond_46
    const/4 p0, 0x1

    goto :goto_52

    :sswitch_48
    const-string v1, "dumpstate"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_51

    goto :goto_c

    :cond_51
    move p0, v2

    :goto_52
    packed-switch p0, :pswitch_data_7e

    return v0

    :pswitch_56
    const/16 p0, 0x411

    return p0

    :pswitch_59
    const/16 p0, 0x3f5

    return p0

    :pswitch_5c
    return v2

    :pswitch_5d
    const/16 p0, 0x417

    return p0

    :pswitch_60
    const/16 p0, 0x7d0

    return p0

    nop

    :sswitch_data_64
    .sparse-switch
        -0x4faa5ce3 -> :sswitch_48
        -0x1dbbd58 -> :sswitch_3d
        0x3580e2 -> :sswitch_31
        0x62f6fe4 -> :sswitch_25
        0x6855e30 -> :sswitch_19
        0x50251299 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_60
        :pswitch_5d
        :pswitch_5c
        :pswitch_59
        :pswitch_60
        :pswitch_56
    .end packed-switch
.end method


# virtual methods
.method public addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V
    .registers 5

    .line 7080
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string v2, "addHistoricalOps"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7083
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {p0, p1}, Lcom/android/server/appop/HistoricalRegistry;->addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V

    return-void
.end method

.method public checkAudioOperation(IIILjava/lang/String;)I
    .registers 5

    .line 3414
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->checkAudioOperation(IIILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final checkAudioOperationImpl(IIILjava/lang/String;)I
    .registers 6

    .line 3418
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/appop/AudioRestrictionManager;->checkAudioOperation(IIILjava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_9

    return p2

    .line 3423
    :cond_9
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/appop/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public checkOperation(IILjava/lang/String;)I
    .registers 10

    .line 3354
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->checkOperation(IILjava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public final checkOperationImpl(IILjava/lang/String;Ljava/lang/String;Z)I
    .registers 13

    .line 3360
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 3361
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, p3, v0}, Lcom/android/server/appop/AppOpsService;->verifyIncomingPackage(Ljava/lang/String;I)V

    .line 3363
    invoke-static {p2, p3}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, p4

    move v6, p5

    .line 3367
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->checkOperationUnchecked(IILjava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public checkOperationRaw(IILjava/lang/String;Ljava/lang/String;)I
    .registers 11

    .line 3348
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    const/4 v5, 0x1

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->checkOperation(IILjava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public final checkOperationUnchecked(IILjava/lang/String;Ljava/lang/String;Z)I
    .registers 16

    const/4 v0, 0x0

    .line 3384
    :try_start_1
    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_5} :catch_67

    .line 3390
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedDueToSuspend(ILjava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_d

    return v2

    .line 3393
    :cond_d
    monitor-enter p0

    .line 3394
    :try_start_e
    iget-object v8, v0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v9, 0x1

    move-object v3, p0

    move v4, p2

    move v5, p1

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;Z)Z

    move-result p4

    if-eqz p4, :cond_1e

    .line 3395
    monitor-exit p0

    return v2

    .line 3397
    :cond_1e
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    const/4 p4, 0x0

    .line 3398
    invoke-virtual {p0, p2, p4}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object p4

    if-eqz p4, :cond_42

    .line 3399
    iget-object v1, p4, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_42

    .line 3400
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_42

    .line 3401
    iget-object p2, p4, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    if-eqz p5, :cond_3c

    goto :goto_40

    .line 3402
    :cond_3c
    invoke-virtual {p4, p1, p2}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result p2

    :goto_40
    monitor-exit p0

    return p2

    :cond_42
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3404
    iget-object v6, v0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/appop/AppOpsService;->getOpLocked(IILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object p2

    if-nez p2, :cond_57

    .line 3406
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result p1

    monitor-exit p0

    return p1

    :cond_57
    if-eqz p5, :cond_5e

    .line 3408
    invoke-static {p2}, Lcom/android/server/appop/AppOpsService$Op;->-$$Nest$fgetmode(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result p1

    goto :goto_62

    :cond_5e
    invoke-virtual {p2}, Lcom/android/server/appop/AppOpsService$Op;->evalMode()I

    move-result p1

    :goto_62
    monitor-exit p0

    return p1

    :catchall_64
    move-exception p1

    .line 3409
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_e .. :try_end_66} :catchall_64

    throw p1

    :catch_67
    move-exception p0

    const-string p2, "AppOps"

    const-string p3, "checkOperation"

    .line 3386
    invoke-static {p2, p3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3387
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result p0

    return p0
.end method

.method public checkPackage(ILjava/lang/String;)I
    .registers 5

    .line 3457
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 3459
    :try_start_5
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    .line 3462
    invoke-static {p2}, Lcom/android/server/appop/AppOpsService;->resolveUid(Ljava/lang/String;)I

    move-result v0

    if-eq v0, p1, :cond_1c

    .line 3463
    invoke-virtual {p0, p2}, Lcom/android/server/appop/AppOpsService;->isPackageExisted(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-virtual {p0, p2}, Lcom/android/server/appop/AppOpsService;->filterAppAccessUnlocked(Ljava/lang/String;)Z

    move-result p0
    :try_end_18
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_18} :catch_1e

    if-nez p0, :cond_1b

    goto :goto_1c

    :cond_1b
    return v1

    :cond_1c
    :goto_1c
    const/4 p0, 0x0

    return p0

    :catch_1e
    return v1
.end method

.method public final checkSystemUid(Ljava/lang/String;)V
    .registers 3

    .line 7383
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_9

    return-void

    .line 7385
    :cond_9
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must by called by the system"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearHistory()V
    .registers 4

    .line 7096
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string v2, "clearHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7099
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry;->clearAllHistory()V

    return-void
.end method

.method public final collectAsyncNotedOp(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V
    .registers 32

    move-object/from16 v7, p0

    .line 3827
    invoke-static/range {p6 .. p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3829
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 3831
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 3833
    :try_start_d
    monitor-enter p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_97

    move/from16 v0, p1

    move-object/from16 v6, p2

    .line 3834
    :try_start_12
    invoke-virtual {v7, v6, v0}, Lcom/android/server/appop/AppOpsService;->getAsyncNotedOpsKey(Ljava/lang/String;I)Landroid/util/Pair;

    move-result-object v5

    .line 3836
    iget-object v1, v7, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/RemoteCallbackList;

    .line 3837
    new-instance v3, Landroid/app/AsyncNotedAppOp;

    .line 3838
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object v8, v3

    move/from16 v9, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p6

    invoke-direct/range {v8 .. v14}, Landroid/app/AsyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;J)V

    const/4 v8, 0x1

    new-array v9, v8, [Z

    const/4 v10, 0x0

    aput-boolean v10, v9, v10

    and-int/lit8 v1, p5, 0x9

    if-eqz v1, :cond_4e

    if-eqz p7, :cond_4e

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object v11, v3

    move-object/from16 v3, p2

    move-object v12, v4

    move/from16 v4, p3

    move-object v13, v5

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    .line 3843
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->reportRuntimeAppOpAccessMessageAsyncLocked(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    :cond_4e
    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    :goto_51
    if-eqz v12, :cond_69

    .line 3848
    new-instance v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda6;

    move-object/from16 v17, v1

    move-object/from16 v18, v11

    move-object/from16 v19, v9

    move/from16 v20, p3

    move-object/from16 v21, p2

    move/from16 v22, p1

    move-object/from16 v23, p4

    invoke-direct/range {v17 .. v23}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda6;-><init>(Landroid/app/AsyncNotedAppOp;[ZILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v12, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    :cond_69
    aget-boolean v0, v9, v10

    if-nez v0, :cond_8f

    .line 3861
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService;->mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_81

    .line 3863
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 3864
    iget-object v1, v7, Lcom/android/server/appop/AppOpsService;->mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v13, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3867
    :cond_81
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3868
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_8f

    .line 3869
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3872
    :cond_8f
    monitor-exit p0
    :try_end_90
    .catchall {:try_start_12 .. :try_end_90} :catchall_94

    .line 3874
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_94
    move-exception v0

    .line 3872
    :try_start_95
    monitor-exit p0
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    :try_start_96
    throw v0
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_97

    :catchall_97
    move-exception v0

    .line 3874
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3875
    throw v0
.end method

.method public collectNoteOpCallsForValidation(Ljava/lang/String;ILjava/lang/String;J)V
    .registers 6

    return-void
.end method

.method public final collectOps(Lcom/android/server/appop/AppOpsService$Ops;[I)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/appop/AppOpsService$Ops;",
            "[I)",
            "Ljava/util/ArrayList<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    .line 2261
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 p0, 0x0

    if-nez p2, :cond_22

    .line 2263
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2264
    :goto_c
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge p0, v2, :cond_42

    .line 2265
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$Op;

    .line 2266
    invoke-static {v2, v0, v1}, Lcom/android/server/appop/AppOpsService;->getOpEntryForResult(Lcom/android/server/appop/AppOpsService$Op;J)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_c

    :cond_22
    const/4 v2, 0x0

    .line 2269
    :goto_23
    array-length v3, p2

    if-ge p0, v3, :cond_41

    .line 2270
    aget v3, p2, p0

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$Op;

    if-eqz v3, :cond_3e

    if-nez v2, :cond_37

    .line 2273
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2275
    :cond_37
    invoke-static {v3, v0, v1}, Lcom/android/server/appop/AppOpsService;->getOpEntryForResult(Lcom/android/server/appop/AppOpsService$Op;J)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3e
    add-int/lit8 p0, p0, 0x1

    goto :goto_23

    :cond_41
    move-object p2, v2

    :cond_42
    return-object p2
.end method

.method public collectRuntimeAppOpAccessMessage()Landroid/app/RuntimeAppOpAccessMessage;
    .registers 6

    .line 7206
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 7208
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->getInstrumentationSourceUid(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_17

    move v0, v1

    goto :goto_18

    :cond_17
    move v0, v2

    .line 7209
    :goto_18
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-ne v3, v4, :cond_23

    goto :goto_24

    :cond_23
    move v1, v2

    :goto_24
    const/4 v2, 0x0

    if-nez v1, :cond_2a

    if-nez v0, :cond_2a

    return-object v2

    .line 7213
    :cond_2a
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_APP_OPS_STATS"

    .line 7214
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 7213
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 7216
    monitor-enter p0

    .line 7217
    :try_start_3a
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCollectedRuntimePermissionMessage:Landroid/app/RuntimeAppOpAccessMessage;

    .line 7218
    iput-object v2, p0, Lcom/android/server/appop/AppOpsService;->mCollectedRuntimePermissionMessage:Landroid/app/RuntimeAppOpAccessMessage;

    .line 7219
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_4e

    .line 7220
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda16;

    invoke-direct {v2}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda16;-><init>()V

    invoke-static {v2, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-object v0

    :catchall_4e
    move-exception v0

    .line 7219
    :try_start_4f
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v0
.end method

.method public final collectUidOps(Lcom/android/server/appop/AppOpsService$UidState;[I)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/appop/AppOpsService$UidState;",
            "[I)",
            "Ljava/util/ArrayList<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    .line 2285
    iget-object p0, p1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 2289
    :cond_6
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    if-nez p0, :cond_d

    return-object v0

    :cond_d
    const/4 v1, 0x0

    if-nez p2, :cond_32

    .line 2295
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_15
    if-ge v1, p0, :cond_5c

    .line 2297
    iget-object v0, p1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 2298
    new-instance v2, Landroid/app/AppOpsManager$OpEntry;

    iget-object v3, p1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Landroid/app/AppOpsManager$OpEntry;-><init>(IILjava/util/Map;)V

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 2301
    :cond_32
    :goto_32
    array-length p0, p2

    if-ge v1, p0, :cond_5b

    .line 2302
    aget p0, p2, v1

    .line 2303
    iget-object v2, p1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_58

    if-nez v0, :cond_46

    .line 2305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2307
    :cond_46
    new-instance v2, Landroid/app/AppOpsManager$OpEntry;

    iget-object v3, p1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 2308
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Landroid/app/AppOpsManager$OpEntry;-><init>(IILjava/util/Map;)V

    .line 2307
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_5b
    move-object p2, v0

    :cond_5c
    return-object p2
.end method

.method public final commitUidPendingStateLocked(Lcom/android/server/appop/AppOpsService$UidState;)V
    .registers 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 4619
    iget-boolean v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->hasForegroundWatchers:Z

    const/4 v8, 0x4

    if-eqz v0, :cond_ff

    .line 4620
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v9, 0x1

    sub-int/2addr v0, v9

    move v10, v0

    :goto_12
    if-ltz v10, :cond_ff

    .line 4621
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_fa

    .line 4624
    :cond_1e
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    .line 4627
    invoke-static {v11}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v0

    int-to-long v0, v0

    .line 4628
    iget v2, v7, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    int-to-long v2, v2

    cmp-long v2, v2, v0

    const/4 v3, 0x0

    if-gtz v2, :cond_33

    move v2, v9

    goto :goto_34

    :cond_33
    move v2, v3

    .line 4629
    :goto_34
    iget v4, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    int-to-long v4, v4

    cmp-long v0, v4, v0

    if-gtz v0, :cond_3c

    move v3, v9

    :cond_3c
    if-ne v2, v3, :cond_4c

    .line 4630
    iget v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->capability:I

    iget v1, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingCapability:I

    if-ne v0, v1, :cond_4c

    iget-boolean v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->appWidgetVisible:Z

    iget-boolean v1, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingAppWidgetVisible:Z

    if-ne v0, v1, :cond_4c

    goto/16 :goto_fa

    .line 4636
    :cond_4c
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_7d

    .line 4637
    invoke-virtual {v0, v11}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_7d

    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 4638
    invoke-virtual {v0, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-ne v0, v8, :cond_7d

    .line 4639
    iget-object v12, v6, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;-><init>()V

    .line 4641
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v1, v7, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v5, 0x0

    move-object/from16 v1, p0

    .line 4639
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_fa

    .line 4642
    :cond_7d
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_fa

    .line 4643
    iget-object v0, v6, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/util/ArraySet;

    if-eqz v12, :cond_fa

    .line 4645
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v9

    move v13, v0

    :goto_92
    if-ltz v13, :cond_fa

    .line 4646
    invoke-virtual {v12, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 4647
    iget v0, v14, Lcom/android/server/appop/AppOpsService$ModeCallback;->mFlags:I

    and-int/2addr v0, v9

    if-eqz v0, :cond_f6

    iget v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 4648
    invoke-virtual {v14, v0}, Lcom/android/server/appop/AppOpsService$ModeCallback;->isWatchingUid(I)Z

    move-result v0

    if-nez v0, :cond_a9

    goto :goto_f6

    .line 4651
    :cond_a9
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v9

    move v15, v0

    :goto_b1
    if-ltz v15, :cond_f6

    .line 4652
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$Ops;

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$Op;

    if-nez v0, :cond_c4

    goto :goto_f2

    .line 4656
    :cond_c4
    invoke-static {v0}, Lcom/android/server/appop/AppOpsService$Op;->-$$Nest$fgetmode(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v0

    if-ne v0, v8, :cond_f2

    .line 4657
    iget-object v5, v6, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda5;-><init>()V

    .line 4659
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v1, v7, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, v7, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 4660
    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Ljava/lang/String;

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v9, v5

    move-object/from16 v5, v16

    .line 4657
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_f2
    :goto_f2
    add-int/lit8 v15, v15, -0x1

    const/4 v9, 0x1

    goto :goto_b1

    :cond_f6
    :goto_f6
    add-int/lit8 v13, v13, -0x1

    const/4 v9, 0x1

    goto :goto_92

    :cond_fa
    :goto_fa
    add-int/lit8 v10, v10, -0x1

    const/4 v9, 0x1

    goto/16 :goto_12

    .line 4668
    :cond_ff
    iget v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingCapability:I

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_10c

    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_10c

    and-int/2addr v0, v8

    if-eqz v0, :cond_148

    .line 4671
    :cond_10c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "commitUidPendingStateLocked() :: UID - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/android/server/appop/AppOpsService$UidState;->capability:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingCapability:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppOps"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4675
    :cond_148
    iget v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    iput v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    .line 4676
    iget v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingCapability:I

    iput v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->capability:I

    .line 4677
    iget-boolean v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingAppWidgetVisible:Z

    iput-boolean v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->appWidgetVisible:Z

    const-wide/16 v0, 0x0

    .line 4678
    iput-wide v0, v7, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    return-void
.end method

.method public final deferResetOpToDpm(ILjava/lang/String;I)V
    .registers 4

    .line 3228
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->dpmi:Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/admin/DevicePolicyManagerInternal;->resetOp(ILjava/lang/String;I)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 43
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v14, p2

    move-object/from16 v1, p3

    .line 6216
    iget-object v2, v13, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v3, "AppOps"

    invoke-static {v2, v3, v14}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    if-nez v2, :cond_11

    return-void

    :cond_11
    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v1, :cond_1a4

    move v5, v4

    move v6, v5

    move v7, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    move-object v4, v3

    .line 6231
    :goto_21
    array-length v12, v1

    if-ge v8, v12, :cond_18b

    .line 6232
    aget-object v12, v1, v8

    const-string v15, "-h"

    .line 6233
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_32

    .line 6234
    invoke-virtual {v13, v14}, Lcom/android/server/appop/AppOpsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_32
    const-string v15, "-a"

    .line 6236
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3e

    :cond_3a
    :goto_3a
    const/16 v20, 0x1

    goto/16 :goto_14e

    :cond_3e
    const-string v15, "--op"

    .line 6238
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5c

    add-int/lit8 v8, v8, 0x1

    .line 6240
    array-length v7, v1

    if-lt v8, v7, :cond_51

    const-string v1, "No argument for --op option"

    .line 6241
    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 6244
    :cond_51
    aget-object v7, v1, v8

    invoke-static {v7, v14}, Lcom/android/server/appop/AppOpsService$Shell;->-$$Nest$smstrOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v7

    or-int/lit8 v11, v11, 0x8

    if-gez v7, :cond_3a

    return-void

    :cond_5c
    const-string v15, "--package"

    .line 6249
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b1

    add-int/lit8 v8, v8, 0x1

    .line 6251
    array-length v3, v1

    if-lt v8, v3, :cond_6f

    const-string v1, "No argument for --package option"

    .line 6252
    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 6255
    :cond_6f
    aget-object v3, v1, v8

    or-int/lit8 v11, v11, 0x2

    .line 6258
    :try_start_73
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v12
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_77} :catch_85

    move-object v15, v4

    move/from16 v18, v5

    const-wide/32 v4, 0xc02000

    move/from16 v19, v2

    const/4 v2, 0x0

    :try_start_80
    invoke-interface {v12, v3, v4, v5, v2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v6
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_80 .. :try_end_84} :catch_8a

    goto :goto_8a

    :catch_85
    move/from16 v19, v2

    move-object v15, v4

    move/from16 v18, v5

    :catch_8a
    :goto_8a
    if-gez v6, :cond_a1

    .line 6264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 6267
    :cond_a1
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/4 v4, 0x1

    or-int/2addr v11, v4

    move v6, v2

    move/from16 v20, v4

    move-object v4, v15

    move/from16 v5, v18

    move/from16 v2, v19

    goto/16 :goto_14e

    :cond_b1
    move/from16 v19, v2

    move-object v15, v4

    move/from16 v18, v5

    const-string v2, "--attributionTag"

    .line 6269
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d4

    add-int/lit8 v8, v8, 0x1

    .line 6271
    array-length v2, v1

    if-lt v8, v2, :cond_c9

    const-string v1, "No argument for --attributionTag option"

    .line 6272
    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 6275
    :cond_c9
    aget-object v2, v1, v8

    or-int/lit8 v11, v11, 0x4

    move-object v4, v2

    move/from16 v5, v18

    :goto_d0
    move/from16 v2, v19

    goto/16 :goto_3a

    :cond_d4
    const-string v2, "--mode"

    .line 6277
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f3

    add-int/lit8 v8, v8, 0x1

    .line 6279
    array-length v2, v1

    if-lt v8, v2, :cond_e7

    const-string v1, "No argument for --mode option"

    .line 6280
    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 6283
    :cond_e7
    aget-object v2, v1, v8

    invoke-static {v2, v14}, Lcom/android/server/appop/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v2

    if-gez v2, :cond_f0

    return-void

    :cond_f0
    move v5, v2

    move-object v4, v15

    goto :goto_d0

    :cond_f3
    const-string v2, "--watchers"

    .line 6287
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_103

    move-object v4, v15

    move/from16 v5, v18

    move/from16 v2, v19

    const/4 v10, 0x1

    goto/16 :goto_3a

    :cond_103
    const-string v2, "--include-discrete"

    .line 6289
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13e

    add-int/lit8 v8, v8, 0x1

    .line 6291
    array-length v2, v1

    if-lt v8, v2, :cond_116

    const-string v1, "No argument for --include-discrete option"

    .line 6292
    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 6296
    :cond_116
    :try_start_116
    aget-object v2, v1, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_120
    .catch Ljava/lang/NumberFormatException; {:try_start_116 .. :try_end_120} :catch_127

    move-object v4, v15

    move/from16 v5, v18

    const/16 v16, 0x1

    goto/16 :goto_3a

    .line 6298
    :catch_127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong parameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v8

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_13e
    const-string v2, "--history"

    .line 6302
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_152

    move-object v4, v15

    move/from16 v5, v18

    move/from16 v2, v19

    const/4 v9, 0x1

    goto/16 :goto_3a

    :goto_14e
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_21

    .line 6304
    :cond_152
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_176

    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_176

    .line 6305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 6308
    :cond_176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_18b
    move/from16 v19, v2

    move-object v15, v4

    move/from16 v18, v5

    const/16 v20, 0x1

    move/from16 v21, v10

    move/from16 v23, v16

    move/from16 v12, v18

    move/from16 v22, v19

    move v10, v7

    move/from16 v19, v9

    move/from16 v18, v11

    move-object/from16 v16, v15

    move-object v11, v3

    move v15, v6

    goto :goto_1b6

    :cond_1a4
    const/16 v20, 0x1

    move/from16 v22, v2

    move-object v11, v3

    move-object/from16 v16, v11

    move v10, v4

    move v12, v10

    move v15, v12

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    .line 6314
    :goto_1b6
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v8, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6315
    new-instance v24, Ljava/util/Date;

    invoke-direct/range {v24 .. v24}, Ljava/util/Date;-><init>()V

    .line 6316
    monitor-enter p0

    :try_start_1c4
    const-string v1, "Current AppOps Service state:"

    .line 6317
    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-nez v19, :cond_1d2

    if-nez v21, :cond_1d2

    .line 6319
    iget-object v1, v13, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    invoke-virtual {v1, v14}, Lcom/android/server/appop/AppOpsService$Constants;->dump(Ljava/io/PrintWriter;)V

    .line 6321
    :cond_1d2
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 6322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    .line 6323
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 6324
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    if-nez v18, :cond_21f

    if-gez v12, :cond_21f

    .line 6326
    iget-object v1, v13, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_21f

    if-nez v21, :cond_21f

    if-nez v19, :cond_21f

    const-string v1, "  Profile owners:"

    .line 6328
    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 6329
    :goto_1f2
    iget-object v2, v13, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_21c

    const-string v2, "    User #"

    .line 6330
    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6331
    iget-object v2, v13, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    .line 6332
    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6333
    iget-object v2, v13, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-static {v14, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 6334
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f2

    .line 6336
    :cond_21c
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 6338
    :cond_21f
    iget-object v1, v13, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_2b0

    if-nez v19, :cond_2b0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 6340
    :goto_22c
    iget-object v4, v13, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_2b1

    if-ltz v10, :cond_240

    .line 6341
    iget-object v4, v13, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    if-eq v10, v4, :cond_240

    goto/16 :goto_2ac

    .line 6345
    :cond_240
    iget-object v4, v13, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    move/from16 p1, v3

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 6346
    :goto_24c
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v7, v3, :cond_2aa

    .line 6347
    invoke-virtual {v4, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$ModeCallback;

    if-eqz v11, :cond_268

    move-object/from16 p3, v4

    .line 6348
    iget v4, v3, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchingUid:I

    .line 6349
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-eq v15, v4, :cond_26a

    move v4, v2

    move/from16 v2, p1

    goto :goto_2a2

    :cond_268
    move-object/from16 p3, v4

    :cond_26a
    if-nez v2, :cond_274

    const-string v2, "  Op mode watchers:"

    .line 6354
    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v4, v20

    goto :goto_275

    :cond_274
    move v4, v2

    :goto_275
    if-nez v9, :cond_290

    const-string v2, "    Op "

    .line 6358
    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6359
    iget-object v2, v13, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ":"

    .line 6360
    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v9, v20

    :cond_290
    const-string v2, "      #"

    .line 6363
    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6364
    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    move/from16 v2, v20

    :goto_2a2
    add-int/lit8 v7, v7, 0x1

    move/from16 p1, v2

    move v2, v4

    move-object/from16 v4, p3

    goto :goto_24c

    :cond_2aa
    move/from16 v3, p1

    :goto_2ac
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_22c

    :cond_2b0
    const/4 v3, 0x0

    .line 6368
    :cond_2b1
    iget-object v1, v13, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_324

    if-gez v10, :cond_324

    if-nez v19, :cond_324

    move v4, v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 6370
    :goto_2c0
    iget-object v3, v13, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_323

    if-eqz v11, :cond_2d7

    .line 6371
    iget-object v3, v13, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d7

    goto :goto_320

    :cond_2d7
    if-nez v2, :cond_2e1

    const-string v2, "  Package mode watchers:"

    .line 6376
    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v4, v20

    goto :goto_2e2

    :cond_2e1
    move v4, v2

    :goto_2e2
    const-string v2, "    Pkg "

    .line 6379
    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v13, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ":"

    .line 6380
    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6381
    iget-object v2, v13, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    const/4 v3, 0x0

    .line 6382
    :goto_300
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v3, v7, :cond_31d

    const-string v7, "      #"

    .line 6383
    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6384
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_300

    :cond_31d
    move v2, v4

    move/from16 v4, v20

    :goto_320
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c0

    :cond_323
    move v3, v4

    .line 6388
    :cond_324
    iget-object v1, v13, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_37d

    if-gez v10, :cond_37d

    if-nez v19, :cond_37d

    move v4, v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 6390
    :goto_333
    iget-object v3, v13, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_37e

    .line 6391
    iget-object v3, v13, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$ModeCallback;

    if-eqz v11, :cond_34e

    .line 6392
    iget v7, v3, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchingUid:I

    .line 6393
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    if-eq v15, v7, :cond_34e

    goto :goto_37a

    :cond_34e
    if-nez v2, :cond_358

    const-string v2, "  All op mode watchers:"

    .line 6398
    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v4, v20

    goto :goto_359

    :cond_358
    move v4, v2

    :goto_359
    const-string v2, "    "

    .line 6401
    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6402
    iget-object v2, v13, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ": "

    .line 6403
    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    move v2, v4

    move/from16 v4, v20

    :goto_37a
    add-int/lit8 v1, v1, 0x1

    goto :goto_333

    :cond_37d
    move v4, v3

    .line 6406
    :cond_37e
    iget-object v1, v13, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_42c

    if-gez v12, :cond_42c

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 6409
    :goto_38a
    iget-object v7, v13, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v1, v7, :cond_42a

    .line 6410
    iget-object v7, v13, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 6411
    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    .line 6412
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-gtz v9, :cond_3a2

    goto/16 :goto_426

    :cond_3a2
    const/4 v9, 0x0

    .line 6415
    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v9, v27

    check-cast v9, Lcom/android/server/appop/AppOpsService$ActiveCallback;

    if-ltz v10, :cond_3b5

    .line 6416
    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v27

    if-gez v27, :cond_3b5

    goto/16 :goto_426

    :cond_3b5
    if-eqz v11, :cond_3c0

    .line 6419
    iget v2, v9, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mWatchingUid:I

    .line 6420
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    if-eq v15, v2, :cond_3c0

    goto :goto_426

    :cond_3c0
    if-nez v4, :cond_3c9

    const-string v2, "  All op active watchers:"

    .line 6424
    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v4, v20

    :cond_3c9
    const-string v2, "    "

    .line 6427
    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6428
    iget-object v2, v13, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 6429
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 6428
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " ->"

    .line 6430
    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "        ["

    .line 6431
    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6432
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_3ee
    if-ge v3, v2, :cond_415

    if-lez v3, :cond_3fa

    move/from16 v27, v4

    const/16 v4, 0x20

    .line 6435
    invoke-virtual {v14, v4}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_3fc

    :cond_3fa
    move/from16 v27, v4

    .line 6437
    :goto_3fc
    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v4, v2, -0x1

    if-ge v3, v4, :cond_410

    const/16 v4, 0x2c

    .line 6439
    invoke-virtual {v14, v4}, Ljava/io/PrintWriter;->print(C)V

    :cond_410
    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v27

    goto :goto_3ee

    :cond_415
    move/from16 v27, v4

    const-string v2, "]"

    .line 6442
    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "        "

    .line 6443
    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6444
    invoke-virtual {v14, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    move/from16 v4, v27

    :goto_426
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_38a

    :cond_42a
    move/from16 v4, v20

    .line 6447
    :cond_42c
    iget-object v1, v13, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_4dc

    if-gez v12, :cond_4dc

    .line 6451
    iget-object v1, v13, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_43e
    if-ge v2, v1, :cond_4da

    .line 6453
    iget-object v4, v13, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    .line 6454
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 6455
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-gtz v7, :cond_44f

    goto :goto_469

    :cond_44f
    const/4 v7, 0x0

    .line 6459
    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/AppOpsService$StartedCallback;

    if-ltz v10, :cond_45f

    .line 6460
    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    if-gez v7, :cond_45f

    goto :goto_469

    :cond_45f
    if-eqz v11, :cond_46c

    .line 6464
    iget v7, v9, Lcom/android/server/appop/AppOpsService$StartedCallback;->mWatchingUid:I

    .line 6465
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    if-eq v15, v7, :cond_46c

    :goto_469
    move/from16 v27, v1

    goto :goto_4d4

    :cond_46c
    if-nez v3, :cond_475

    const-string v3, "  All op started watchers:"

    .line 6470
    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v3, v20

    :cond_475
    const-string v7, "    "

    .line 6474
    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6475
    iget-object v7, v13, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    .line 6476
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    .line 6475
    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, " ->"

    .line 6477
    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "        ["

    .line 6479
    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6480
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v7

    move/from16 v27, v1

    const/4 v1, 0x0

    :goto_49c
    if-ge v1, v7, :cond_4c3

    if-lez v1, :cond_4a8

    move/from16 v28, v3

    const/16 v3, 0x20

    .line 6483
    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_4aa

    :cond_4a8
    move/from16 v28, v3

    .line 6486
    :goto_4aa
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v3, v7, -0x1

    if-ge v1, v3, :cond_4be

    const/16 v3, 0x2c

    .line 6488
    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->print(C)V

    :cond_4be
    add-int/lit8 v1, v1, 0x1

    move/from16 v3, v28

    goto :goto_49c

    :cond_4c3
    move/from16 v28, v3

    const-string v1, "]"

    .line 6491
    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "        "

    .line 6493
    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6494
    invoke-virtual {v14, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    move/from16 v3, v28

    :goto_4d4
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v27

    goto/16 :goto_43e

    :cond_4da
    move/from16 v4, v20

    .line 6497
    :cond_4dc
    iget-object v1, v13, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_591

    if-gez v12, :cond_591

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 6500
    :goto_4e8
    iget-object v3, v13, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_58f

    .line 6501
    iget-object v3, v13, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 6502
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 6503
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-gtz v4, :cond_500

    const/4 v9, 0x0

    goto :goto_51a

    :cond_500
    const/4 v9, 0x0

    .line 6506
    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$NotedCallback;

    if-ltz v10, :cond_510

    .line 6507
    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    if-gez v7, :cond_510

    goto :goto_51a

    :cond_510
    if-eqz v11, :cond_51f

    .line 6510
    iget v7, v4, Lcom/android/server/appop/AppOpsService$NotedCallback;->mWatchingUid:I

    .line 6511
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    if-eq v15, v7, :cond_51f

    :goto_51a
    move/from16 v27, v1

    const/16 v1, 0x2c

    goto :goto_589

    :cond_51f
    if-nez v1, :cond_528

    const-string v1, "  All op noted watchers:"

    .line 6515
    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v1, v20

    :cond_528
    const-string v7, "    "

    .line 6518
    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6519
    iget-object v7, v13, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 6520
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    .line 6519
    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, " ->"

    .line 6521
    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "        ["

    .line 6522
    invoke-virtual {v14, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6523
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v7

    :goto_54c
    if-ge v9, v7, :cond_578

    if-lez v9, :cond_558

    move/from16 v27, v1

    const/16 v1, 0x20

    .line 6526
    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_55c

    :cond_558
    move/from16 v27, v1

    const/16 v1, 0x20

    .line 6528
    :goto_55c
    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v28

    invoke-static/range {v28 .. v28}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v7, -0x1

    if-ge v9, v1, :cond_571

    const/16 v1, 0x2c

    .line 6530
    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_573

    :cond_571
    const/16 v1, 0x2c

    :goto_573
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, v27

    goto :goto_54c

    :cond_578
    move/from16 v27, v1

    const/16 v1, 0x2c

    const-string v3, "]"

    .line 6533
    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "        "

    .line 6534
    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6535
    invoke-virtual {v14, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_589
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v27

    goto/16 :goto_4e8

    :cond_58f
    move/from16 v4, v20

    .line 6538
    :cond_591
    iget-object v1, v13, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    invoke-virtual {v1}, Lcom/android/server/appop/AudioRestrictionManager;->hasActiveRestrictions()Z

    move-result v1

    if-eqz v1, :cond_5b1

    if-gez v10, :cond_5b1

    if-eqz v11, :cond_5b1

    if-gez v12, :cond_5b1

    if-nez v21, :cond_5b1

    .line 6540
    iget-object v1, v13, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    invoke-virtual {v1, v14}, Lcom/android/server/appop/AudioRestrictionManager;->dump(Ljava/io/PrintWriter;)Z

    move-result v1

    if-nez v1, :cond_5ae

    if-eqz v4, :cond_5ac

    goto :goto_5ae

    :cond_5ac
    const/4 v2, 0x0

    goto :goto_5b0

    :cond_5ae
    :goto_5ae
    move/from16 v2, v20

    :goto_5b0
    move v4, v2

    :cond_5b1
    if-eqz v4, :cond_5b6

    .line 6543
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_5b6
    const/4 v9, 0x0

    .line 6545
    :goto_5b7
    iget-object v1, v13, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v9, v1, :cond_924

    .line 6546
    iget-object v1, v13, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$UidState;

    .line 6547
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 6548
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v21, :cond_902

    if-eqz v19, :cond_5d1

    goto/16 :goto_902

    :cond_5d1
    if-gez v10, :cond_5e0

    if-nez v11, :cond_5e0

    if-ltz v12, :cond_5d8

    goto :goto_5e0

    :cond_5d8
    move-object/from16 v28, v8

    move/from16 v30, v9

    move/from16 v31, v15

    goto/16 :goto_6b8

    :cond_5e0
    :goto_5e0
    if-ltz v10, :cond_5ed

    if-eqz v2, :cond_5eb

    .line 6555
    invoke-virtual {v2, v10}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_5eb

    goto :goto_5ed

    :cond_5eb
    const/4 v3, 0x0

    goto :goto_5ef

    :cond_5ed
    :goto_5ed
    move/from16 v3, v20

    :goto_5ef
    if-eqz v11, :cond_5fe

    move/from16 p1, v3

    .line 6556
    iget-object v3, v13, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-ne v15, v3, :cond_5fc

    goto :goto_600

    :cond_5fc
    const/4 v3, 0x0

    goto :goto_602

    :cond_5fe
    move/from16 p1, v3

    :goto_600
    move/from16 v3, v20

    :goto_602
    if-gez v12, :cond_607

    move/from16 v27, v20

    goto :goto_609

    :cond_607
    const/16 v27, 0x0

    :goto_609
    if-nez v27, :cond_62a

    if-eqz v2, :cond_62a

    move/from16 p3, v3

    const/4 v3, 0x0

    :goto_610
    if-nez v27, :cond_627

    move-object/from16 v28, v8

    .line 6559
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-ge v3, v8, :cond_62d

    .line 6560
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    if-ne v8, v12, :cond_622

    move/from16 v27, v20

    :cond_622
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v8, v28

    goto :goto_610

    :cond_627
    :goto_627
    move-object/from16 v28, v8

    goto :goto_62d

    :cond_62a
    move/from16 p3, v3

    goto :goto_627

    :cond_62d
    :goto_62d
    if-eqz v7, :cond_69a

    move/from16 v8, p1

    move/from16 v29, v27

    const/4 v3, 0x0

    move/from16 v27, p3

    :goto_636
    if-eqz v8, :cond_640

    if-eqz v27, :cond_640

    if-nez v29, :cond_63d

    goto :goto_640

    :cond_63d
    move/from16 v30, v9

    goto :goto_693

    :cond_640
    :goto_640
    move/from16 v30, v9

    .line 6567
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v3, v9, :cond_693

    .line 6569
    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/AppOpsService$Ops;

    if-nez v8, :cond_65a

    if-eqz v9, :cond_65a

    .line 6570
    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v31

    if-ltz v31, :cond_65a

    move/from16 v8, v20

    :cond_65a
    move/from16 p1, v8

    if-nez v29, :cond_67c

    const/4 v8, 0x0

    :goto_65f
    if-nez v29, :cond_67c

    move/from16 v31, v15

    .line 6574
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-ge v8, v15, :cond_67e

    .line 6575
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/appop/AppOpsService$Op;

    invoke-static {v15}, Lcom/android/server/appop/AppOpsService$Op;->-$$Nest$fgetmode(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v15

    if-ne v15, v12, :cond_677

    move/from16 v29, v20

    :cond_677
    add-int/lit8 v8, v8, 0x1

    move/from16 v15, v31

    goto :goto_65f

    :cond_67c
    move/from16 v31, v15

    :cond_67e
    if-nez v27, :cond_68a

    .line 6580
    iget-object v8, v9, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_68a

    move/from16 v27, v20

    :cond_68a
    add-int/lit8 v3, v3, 0x1

    move/from16 v8, p1

    move/from16 v9, v30

    move/from16 v15, v31

    goto :goto_636

    :cond_693
    :goto_693
    move/from16 v31, v15

    move/from16 v3, v27

    move/from16 v27, v29

    goto :goto_6a2

    :cond_69a
    move/from16 v30, v9

    move/from16 v31, v15

    move/from16 v8, p1

    move/from16 v3, p3

    .line 6585
    :goto_6a2
    iget-object v9, v1, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    if-eqz v9, :cond_6b0

    if-nez v8, :cond_6b0

    .line 6586
    invoke-virtual {v9, v10}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v9

    if-lez v9, :cond_6b0

    move/from16 v8, v20

    :cond_6b0
    if-eqz v8, :cond_8f5

    if-eqz v3, :cond_8f5

    if-nez v27, :cond_6b8

    goto/16 :goto_8f5

    :cond_6b8
    :goto_6b8
    const-string v3, "  Uid "

    .line 6595
    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v14, v3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v3, ":"

    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    state="

    .line 6596
    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6597
    iget v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    invoke-static {v3}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6598
    iget v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    iget v4, v1, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    if-eq v3, v4, :cond_6e9

    const-string v3, "    pendingState="

    .line 6599
    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6600
    iget v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    invoke-static {v3}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6e9
    const-string v3, "    capability="

    .line 6602
    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6603
    iget v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->capability:I

    invoke-static {v14, v3}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    .line 6604
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 6605
    iget v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->capability:I

    iget v4, v1, Lcom/android/server/appop/AppOpsService$UidState;->pendingCapability:I

    if-eq v3, v4, :cond_709

    const-string v3, "    pendingCapability="

    .line 6606
    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6607
    iget v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->pendingCapability:I

    invoke-static {v14, v3}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    .line 6608
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_709
    const-string v3, "    appWidgetVisible="

    .line 6610
    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6611
    iget-boolean v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->appWidgetVisible:Z

    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 6612
    iget-boolean v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->appWidgetVisible:Z

    iget-boolean v4, v1, Lcom/android/server/appop/AppOpsService$UidState;->pendingAppWidgetVisible:Z

    if-eq v3, v4, :cond_723

    const-string v3, "    pendingAppWidgetVisible="

    .line 6613
    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6614
    iget-boolean v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->pendingAppWidgetVisible:Z

    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 6616
    :cond_723
    iget-wide v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    const-wide/16 v8, 0x0

    cmp-long v3, v3, v8

    if-eqz v3, :cond_738

    const-string v3, "    pendingStateCommitTime="

    .line 6617
    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6618
    iget-wide v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    invoke-static {v3, v4, v5, v6, v14}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 6619
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 6621
    :cond_738
    iget-object v3, v1, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_78e

    if-ltz v12, :cond_741

    const/4 v3, 0x4

    if-ne v12, v3, :cond_78e

    :cond_741
    const-string v3, "    foregroundOps:"

    .line 6623
    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 6624
    :goto_747
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_784

    if-ltz v10, :cond_75a

    .line 6625
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    if-eq v10, v4, :cond_75a

    goto :goto_781

    :cond_75a
    const-string v4, "      "

    .line 6628
    invoke-virtual {v14, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6629
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ": "

    .line 6630
    invoke-virtual {v14, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6631
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_77c

    const-string v4, "WATCHER"

    goto :goto_77e

    :cond_77c
    const-string v4, "SILENT"

    :goto_77e
    invoke-virtual {v14, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_781
    add-int/lit8 v3, v3, 0x1

    goto :goto_747

    :cond_784
    const-string v3, "    hasForegroundWatchers="

    .line 6633
    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6634
    iget-boolean v1, v1, Lcom/android/server/appop/AppOpsService$UidState;->hasForegroundWatchers:Z

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_78e
    if-eqz v2, :cond_7c4

    .line 6639
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_795
    if-ge v3, v1, :cond_7c4

    .line 6641
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 6642
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    if-ltz v10, :cond_7a4

    if-eq v10, v4, :cond_7a4

    goto :goto_7c1

    :cond_7a4
    if-ltz v12, :cond_7a9

    if-eq v12, v8, :cond_7a9

    goto :goto_7c1

    :cond_7a9
    const-string v9, "      "

    .line 6649
    invoke-virtual {v14, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ": mode="

    .line 6650
    invoke-virtual {v14, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_7c1
    add-int/lit8 v3, v3, 0x1

    goto :goto_795

    :cond_7c4
    if-nez v7, :cond_7d6

    :cond_7c6
    move-wide/from16 v33, v5

    move/from16 v37, v10

    move-object/from16 v38, v11

    move/from16 v20, v12

    move-object/from16 v17, v28

    move/from16 v28, v30

    const/16 v36, 0x0

    goto/16 :goto_8f3

    :cond_7d6
    const/4 v15, 0x0

    .line 6658
    :goto_7d7
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v15, v1, :cond_7c6

    .line 6659
    invoke-virtual {v7, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/server/appop/AppOpsService$Ops;

    if-eqz v11, :cond_7f0

    .line 6660
    iget-object v1, v8, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7f0

    goto/16 :goto_8cf

    :cond_7f0
    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 6664
    :goto_7f2
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v9, v1, :cond_8cf

    .line 6665
    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/server/appop/AppOpsService$Op;

    .line 6666
    iget v1, v4, Lcom/android/server/appop/AppOpsService$Op;->op:I

    if-ltz v10, :cond_806

    if-eq v10, v1, :cond_806

    goto :goto_80e

    :cond_806
    if-ltz v12, :cond_824

    .line 6670
    invoke-static {v4}, Lcom/android/server/appop/AppOpsService$Op;->-$$Nest$fgetmode(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v3

    if-eq v12, v3, :cond_824

    :goto_80e
    move-wide/from16 v33, v5

    move-object/from16 v35, v7

    move/from16 v32, v9

    move/from16 v37, v10

    move-object/from16 v38, v11

    move/from16 v20, v12

    move-object/from16 v17, v28

    move/from16 v28, v30

    const/16 v36, 0x0

    move-object/from16 v30, v8

    goto/16 :goto_8b9

    :cond_824
    if-nez v2, :cond_838

    const-string v2, "    Package "

    .line 6674
    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v8, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v27, v20

    goto :goto_83a

    :cond_838
    move/from16 v27, v2

    :goto_83a
    const-string v2, "      "

    .line 6677
    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " ("

    .line 6678
    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/server/appop/AppOpsService$Op;->-$$Nest$fgetmode(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v2

    invoke-static {v2}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6679
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v2

    if-eq v2, v1, :cond_885

    const-string v1, " / switch "

    .line 6681
    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6682
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6683
    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$Op;

    if-eqz v1, :cond_875

    .line 6684
    invoke-static {v1}, Lcom/android/server/appop/AppOpsService$Op;->-$$Nest$fgetmode(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v1

    goto :goto_879

    .line 6685
    :cond_875
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v1

    :goto_879
    const-string v2, "="

    .line 6686
    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_885
    const-string v1, "): "

    .line 6688
    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v29, "        "

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    move-object/from16 v32, v4

    move/from16 v4, v18

    move-wide/from16 v33, v5

    move-object/from16 v35, v7

    move-object/from16 v7, v32

    move/from16 v32, v9

    move-object/from16 v17, v28

    move/from16 v28, v30

    const/16 v36, 0x0

    move-object/from16 v30, v8

    move-wide/from16 v8, v25

    move/from16 v37, v10

    move-object/from16 v10, v17

    move-object/from16 v38, v11

    move-object/from16 v11, v24

    move/from16 v20, v12

    move-object/from16 v12, v29

    .line 6689
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/appop/AppOpsService;->dumpStatesLocked(Ljava/io/PrintWriter;Ljava/lang/String;IJLcom/android/server/appop/AppOpsService$Op;JLjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V

    move/from16 v2, v27

    :goto_8b9
    add-int/lit8 v9, v32, 0x1

    move/from16 v12, v20

    move-object/from16 v8, v30

    move-wide/from16 v5, v33

    move-object/from16 v7, v35

    move/from16 v10, v37

    move-object/from16 v11, v38

    const/16 v20, 0x1

    move/from16 v30, v28

    move-object/from16 v28, v17

    goto/16 :goto_7f2

    :cond_8cf
    :goto_8cf
    move-wide/from16 v33, v5

    move-object/from16 v35, v7

    move/from16 v37, v10

    move-object/from16 v38, v11

    move/from16 v20, v12

    move-object/from16 v17, v28

    move/from16 v28, v30

    const/16 v36, 0x0

    add-int/lit8 v15, v15, 0x1

    move/from16 v12, v20

    move/from16 v30, v28

    move-wide/from16 v5, v33

    move-object/from16 v7, v35

    move/from16 v10, v37

    move-object/from16 v11, v38

    const/16 v20, 0x1

    move-object/from16 v28, v17

    goto/16 :goto_7d7

    :goto_8f3
    const/4 v4, 0x1

    goto :goto_912

    :cond_8f5
    :goto_8f5
    move-wide/from16 v33, v5

    move/from16 v37, v10

    move-object/from16 v38, v11

    move/from16 v20, v12

    move-object/from16 v17, v28

    move/from16 v28, v30

    goto :goto_910

    :cond_902
    :goto_902
    move-wide/from16 v33, v5

    move-object/from16 v17, v8

    move/from16 v28, v9

    move/from16 v37, v10

    move-object/from16 v38, v11

    move/from16 v20, v12

    move/from16 v31, v15

    :goto_910
    const/16 v36, 0x0

    :goto_912
    add-int/lit8 v9, v28, 0x1

    move-object/from16 v8, v17

    move/from16 v12, v20

    move/from16 v15, v31

    move-wide/from16 v5, v33

    move/from16 v10, v37

    move-object/from16 v11, v38

    const/16 v20, 0x1

    goto/16 :goto_5b7

    :cond_924
    move-object/from16 v17, v8

    move/from16 v37, v10

    move-object/from16 v38, v11

    move/from16 v20, v12

    move/from16 v31, v15

    const/16 v36, 0x0

    if-eqz v4, :cond_935

    .line 6695
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 6698
    :cond_935
    iget-object v1, v13, Lcom/android/server/appop/AppOpsService;->mOpGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    move/from16 v2, v36

    :goto_93d
    if-ge v2, v1, :cond_9b9

    .line 6700
    iget-object v3, v13, Lcom/android/server/appop/AppOpsService;->mOpGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 6701
    iget-object v4, v13, Lcom/android/server/appop/AppOpsService;->mOpGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;

    .line 6702
    iget-object v4, v4, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->mRestrictedOps:Landroid/util/ArraySet;

    .line 6704
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Global restrictions for token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6705
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    .line 6706
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6707
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    move/from16 v6, v36

    :goto_97a
    if-ge v6, v5, :cond_99c

    .line 6709
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_988

    const-string v7, ", "

    .line 6710
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6712
    :cond_988
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_97a

    :cond_99c
    const/4 v8, 0x1

    const-string v4, "]"

    .line 6714
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6715
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "      Restricted ops: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_93d

    :cond_9b9
    const/4 v8, 0x1

    .line 6719
    iget-object v1, v13, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    move/from16 v2, v36

    :goto_9c2
    if-ge v2, v1, :cond_b6b

    .line 6721
    iget-object v3, v13, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 6722
    iget-object v4, v13, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;

    if-gez v20, :cond_b5a

    if-nez v21, :cond_b5a

    if-eqz v19, :cond_9dc

    goto/16 :goto_b5a

    .line 6729
    :cond_9dc
    iget-object v5, v4, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v5, :cond_9e5

    .line 6730
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    goto :goto_9e7

    :cond_9e5
    move/from16 v5, v36

    :goto_9e7
    if-lez v5, :cond_aca

    move-object/from16 v9, v38

    if-nez v9, :cond_ac5

    move/from16 v6, v36

    move v7, v6

    move v12, v7

    :goto_9f1
    if-ge v6, v5, :cond_ac0

    .line 6734
    iget-object v10, v4, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 6735
    iget-object v11, v4, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Z

    if-nez v11, :cond_a06

    move/from16 v15, v37

    goto :goto_a11

    :cond_a06
    move/from16 v15, v37

    if-ltz v15, :cond_a18

    .line 6739
    array-length v8, v11

    if-ge v15, v8, :cond_a11

    aget-boolean v8, v11, v15

    if-nez v8, :cond_a18

    :cond_a11
    :goto_a11
    move/from16 p1, v1

    move/from16 p3, v5

    const/4 v8, 0x1

    goto/16 :goto_ab6

    :cond_a18
    if-nez v12, :cond_a53

    const-string v8, ""

    .line 6746
    iget v12, v4, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->callingRestriction:I

    if-lez v12, :cond_a33

    .line 6747
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " by "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v4, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->callingRestriction:I

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 6750
    :cond_a33
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p1, v1

    const-string v1, "  User restrictions for token "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v12, 0x1

    goto :goto_a55

    :cond_a53
    move/from16 p1, v1

    :goto_a55
    if-nez v7, :cond_a5d

    const-string v1, "      Restricted ops:"

    .line 6754
    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v7, 0x1

    .line 6757
    :cond_a5d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    .line 6758
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6759
    array-length v8, v11

    move/from16 p3, v5

    move/from16 v5, v36

    :goto_a6c
    if-ge v5, v8, :cond_a96

    .line 6761
    aget-boolean v25, v11, v5

    if-eqz v25, :cond_a8a

    move/from16 v25, v7

    .line 6762
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    move/from16 v26, v8

    const/4 v8, 0x1

    if-le v7, v8, :cond_a82

    const-string v7, ", "

    .line 6763
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6765
    :cond_a82
    invoke-static {v5}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a8f

    :cond_a8a
    move/from16 v25, v7

    move/from16 v26, v8

    const/4 v8, 0x1

    :goto_a8f
    add-int/lit8 v5, v5, 0x1

    move/from16 v7, v25

    move/from16 v8, v26

    goto :goto_a6c

    :cond_a96
    move/from16 v25, v7

    const/4 v8, 0x1

    const-string v5, "]"

    .line 6768
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "        "

    .line 6769
    invoke-virtual {v14, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "user: "

    invoke-virtual {v14, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, " restricted ops: "

    .line 6770
    invoke-virtual {v14, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    move/from16 v7, v25

    :goto_ab6
    add-int/lit8 v6, v6, 0x1

    move/from16 v1, p1

    move/from16 v5, p3

    move/from16 v37, v15

    goto/16 :goto_9f1

    :cond_ac0
    move/from16 p1, v1

    move/from16 v15, v37

    goto :goto_ad2

    :cond_ac5
    move/from16 p1, v1

    move/from16 v15, v37

    goto :goto_ad0

    :cond_aca
    move/from16 p1, v1

    move/from16 v15, v37

    move-object/from16 v9, v38

    :goto_ad0
    move/from16 v12, v36

    .line 6774
    :goto_ad2
    iget-object v1, v4, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserExcludedPackageTags:Landroid/util/SparseArray;

    if-eqz v1, :cond_adb

    .line 6775
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    goto :goto_add

    :cond_adb
    move/from16 v1, v36

    :goto_add
    if-lez v1, :cond_b60

    if-gez v15, :cond_b60

    .line 6777
    new-instance v5, Landroid/util/IndentingPrintWriter;

    invoke-direct {v5, v14}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 6778
    invoke-virtual {v5}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move/from16 v6, v36

    move v7, v6

    :goto_aec
    if-ge v6, v1, :cond_b56

    .line 6781
    iget-object v10, v4, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserExcludedPackageTags:Landroid/util/SparseArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 6782
    iget-object v11, v4, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->perUserExcludedPackageTags:Landroid/util/SparseArray;

    .line 6783
    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PackageTagsList;

    if-nez v11, :cond_aff

    goto :goto_b52

    :cond_aff
    if-eqz v9, :cond_b06

    .line 6789
    invoke-virtual {v11, v9}, Landroid/os/PackageTagsList;->includes(Ljava/lang/String;)Z

    move-result v25

    goto :goto_b08

    :cond_b06
    move/from16 v25, v8

    :goto_b08
    if-nez v25, :cond_b0b

    goto :goto_b52

    :cond_b0b
    if-nez v12, :cond_b27

    .line 6797
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "User restrictions for token "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 v12, 0x1

    .line 6801
    :cond_b27
    invoke-virtual {v5}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    if-nez v7, :cond_b32

    const-string v7, "Excluded packages:"

    .line 6803
    invoke-virtual {v5, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 v7, 0x1

    .line 6807
    :cond_b32
    invoke-virtual {v5}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v8, "user: "

    .line 6808
    invoke-virtual {v5, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6809
    invoke-virtual {v5, v10}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v8, " packages: "

    .line 6810
    invoke-virtual {v5, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6812
    invoke-virtual {v5}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6813
    invoke-virtual {v11, v5}, Landroid/os/PackageTagsList;->dump(Ljava/io/PrintWriter;)V

    .line 6815
    invoke-virtual {v5}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6816
    invoke-virtual {v5}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 6817
    invoke-virtual {v5}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :goto_b52
    add-int/lit8 v6, v6, 0x1

    const/4 v8, 0x1

    goto :goto_aec

    .line 6819
    :cond_b56
    invoke-virtual {v5}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_b60

    :cond_b5a
    :goto_b5a
    move/from16 p1, v1

    move/from16 v15, v37

    move-object/from16 v9, v38

    :cond_b60
    :goto_b60
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, p1

    move-object/from16 v38, v9

    move/from16 v37, v15

    const/4 v8, 0x1

    goto/16 :goto_9c2

    :cond_b6b
    move/from16 v15, v37

    move-object/from16 v9, v38

    if-nez v19, :cond_b99

    if-nez v21, :cond_b99

    .line 6824
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 6825
    iget-object v1, v13, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-static {v1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->-$$Nest$fgetmPolicy(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    move-result-object v1

    if-eqz v1, :cond_b94

    iget-object v1, v13, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-static {v1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->-$$Nest$fgetmPolicy(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    move-result-object v1

    instance-of v1, v1, Lcom/android/server/policy/AppOpsPolicy;

    if-eqz v1, :cond_b94

    .line 6827
    iget-object v1, v13, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-static {v1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->-$$Nest$fgetmPolicy(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/AppOpsPolicy;

    .line 6828
    invoke-virtual {v1, v14}, Lcom/android/server/policy/AppOpsPolicy;->dumpTags(Ljava/io/PrintWriter;)V

    goto :goto_b99

    :cond_b94
    const-string v1, "  AppOps policy not set."

    .line 6830
    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6833
    :cond_b99
    :goto_b99
    monitor-exit p0
    :try_end_b9a
    .catchall {:try_start_1c4 .. :try_end_b9a} :catchall_bce

    if-eqz v19, :cond_baf

    if-nez v21, :cond_baf

    .line 6837
    iget-object v1, v13, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    const-string v2, "  "

    move-object/from16 v3, p2

    move/from16 v4, v31

    move-object v5, v9

    move-object/from16 v6, v16

    move v7, v15

    move/from16 v8, v18

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/HistoricalRegistry;->dump(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;II)V

    :cond_baf
    if-eqz v23, :cond_bcd

    const-string v1, "Discrete accesses: "

    .line 6841
    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6842
    iget-object v1, v13, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    const-string v10, "  "

    move-object/from16 v2, p2

    move/from16 v3, v31

    move-object v4, v9

    move-object/from16 v5, v16

    move/from16 v6, v18

    move v7, v15

    move-object/from16 v8, v17

    move-object/from16 v9, v24

    move/from16 v11, v22

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/appop/HistoricalRegistry;->dumpDiscreteData(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;IILjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V

    :cond_bcd
    return-void

    :catchall_bce
    move-exception v0

    move-object v1, v0

    .line 6833
    :try_start_bd0
    monitor-exit p0
    :try_end_bd1
    .catchall {:try_start_bd0 .. :try_end_bd1} :catchall_bce

    throw v1
.end method

.method public final dumpHelp(Ljava/io/PrintWriter;)V
    .registers 2

    const-string p0, "AppOps service (appops) dump options:"

    .line 6050
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  -h"

    .line 6051
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Print this help text."

    .line 6052
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  --op [OP]"

    .line 6053
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Limit output to data associated with the given app op code."

    .line 6054
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  --mode [MODE]"

    .line 6055
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Limit output to data associated with the given app op mode."

    .line 6056
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  --package [PACKAGE]"

    .line 6057
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Limit output to data associated with the given package name."

    .line 6058
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  --attributionTag [attributionTag]"

    .line 6059
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Limit output to data associated with the given attribution tag."

    .line 6060
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  --include-discrete [n]"

    .line 6061
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Include discrete ops limited to n per dimension. Use zero for no limit."

    .line 6062
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  --watchers"

    .line 6063
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Only output the watcher sections."

    .line 6064
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  --history"

    .line 6065
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Only output history."

    .line 6066
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final dumpStatesLocked(Ljava/io/PrintWriter;JLcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;JLjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V
    .registers 45

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    .line 6090
    invoke-virtual/range {p4 .. p5}, Lcom/android/server/appop/AppOpsService$Op;->createSingleAttributionEntryLocked(Ljava/lang/String;)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v4

    .line 6091
    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 6093
    invoke-virtual {v4}, Landroid/app/AppOpsManager$AttributedOpEntry;->collectKeys()Landroid/util/ArraySet;

    move-result-object v5

    .line 6095
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_1f
    if-ge v8, v6, :cond_195

    .line 6097
    invoke-virtual {v5, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 6099
    invoke-static {v11, v12}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v13

    .line 6100
    invoke-static {v11, v12}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v14

    move v15, v8

    .line 6102
    invoke-virtual {v4, v13, v13, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(III)J

    move-result-wide v7

    .line 6103
    invoke-virtual {v4, v13, v13, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(III)J

    move-result-wide v9

    move-object/from16 v18, v5

    .line 6105
    invoke-virtual {v4, v13, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getSettedUidAccess(II)I

    move-result v5

    move/from16 v19, v6

    .line 6106
    invoke-virtual {v4, v13, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getSettedUidReject(II)I

    move-result v6

    move-wide/from16 v20, v9

    .line 6108
    invoke-virtual {v4, v13, v13, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(III)J

    move-result-wide v9

    .line 6109
    invoke-virtual {v4, v13, v13, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v13

    const/4 v14, -0x1

    const/16 v22, 0x0

    if-eqz v13, :cond_6e

    .line 6115
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v22

    .line 6116
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getAttributionTag()Ljava/lang/String;

    move-result-object v14

    .line 6117
    invoke-virtual {v13}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result v13

    const-wide/16 v16, 0x0

    move-object/from16 v33, v22

    move-object/from16 v22, v4

    move-object v4, v14

    move v14, v13

    move-object/from16 v13, v33

    goto :goto_75

    :cond_6e
    move-object/from16 v13, v22

    const-wide/16 v16, 0x0

    move-object/from16 v22, v4

    move-object v4, v13

    :goto_75
    cmp-long v23, v7, v16

    const-string/jumbo v1, "might be shell"

    move/from16 v24, v15

    const-string v15, " by "

    move/from16 v25, v6

    const-string v6, "]"

    move-object/from16 v26, v1

    const-string v1, ", attributionTag="

    move-object/from16 v27, v15

    const-string v15, ", pkg="

    move/from16 v28, v5

    const-string/jumbo v5, "uid="

    move-object/from16 v29, v6

    const-string v6, " proxy["

    move-object/from16 v30, v4

    const-string v4, ")"

    move-object/from16 v31, v1

    const-string v1, " ("

    move-object/from16 v32, v13

    if-lez v23, :cond_123

    .line 6121
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v13, "Access: "

    .line 6122
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6123
    invoke-static {v11, v12}, Landroid/app/AppOpsManager;->keyToString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v13, " "

    .line 6124
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6125
    invoke-virtual {v2, v7, v8}, Ljava/util/Date;->setTime(J)V

    .line 6126
    invoke-virtual/range {p8 .. p9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6127
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sub-long v7, v7, p6

    .line 6128
    invoke-static {v7, v8, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6129
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v7, 0x0

    cmp-long v13, v9, v7

    if-lez v13, :cond_d6

    const-string v7, " duration="

    .line 6131
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6132
    invoke-static {v9, v10, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    :cond_d6
    if-ltz v14, :cond_f9

    .line 6135
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6136
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6137
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 6138
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v7, v32

    .line 6139
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v8, v31

    .line 6140
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v9, v30

    .line 6141
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v10, v29

    .line 6142
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_101

    :cond_f9
    move-object/from16 v10, v29

    move-object/from16 v9, v30

    move-object/from16 v8, v31

    move-object/from16 v7, v32

    :goto_101
    if-lez v28, :cond_11b

    move-object/from16 v13, v27

    .line 6146
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v29, v10

    move/from16 v13, v28

    const/4 v10, 0x1

    if-ne v13, v10, :cond_115

    move-object/from16 v10, v26

    .line 6148
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_11f

    :cond_115
    move-object/from16 v10, v26

    .line 6150
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_11f

    :cond_11b
    move-object/from16 v29, v10

    move-object/from16 v10, v26

    .line 6154
    :goto_11f
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_12b

    :cond_123
    move-object/from16 v10, v26

    move-object/from16 v9, v30

    move-object/from16 v8, v31

    move-object/from16 v7, v32

    :goto_12b
    const-wide/16 v16, 0x0

    cmp-long v13, v20, v16

    if-lez v13, :cond_189

    .line 6158
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v13, "Reject: "

    .line 6159
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6160
    invoke-static {v11, v12}, Landroid/app/AppOpsManager;->keyToString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v11, v20

    .line 6161
    invoke-virtual {v2, v11, v12}, Ljava/util/Date;->setTime(J)V

    .line 6162
    invoke-virtual/range {p8 .. p9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6163
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sub-long v11, v11, p6

    .line 6164
    invoke-static {v11, v12, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6165
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-ltz v14, :cond_173

    .line 6167
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6168
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6169
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 6170
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6171
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6172
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6173
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v1, v29

    .line 6174
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_173
    if-lez v25, :cond_186

    move-object/from16 v1, v27

    .line 6178
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v1, v25

    const/4 v4, 0x1

    if-ne v1, v4, :cond_183

    .line 6180
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_186

    .line 6182
    :cond_183
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 6186
    :cond_186
    :goto_186
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_189
    add-int/lit8 v8, v24, 0x1

    move-object/from16 v1, p5

    move-object/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v4, v22

    goto/16 :goto_1f

    :cond_195
    move-object/from16 v1, p4

    const-wide/16 v16, 0x0

    .line 6190
    iget-object v1, v1, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    move-object/from16 v2, p5

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$AttributedOp;

    .line 6191
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_211

    const-wide v4, 0x7fffffffffffffffL

    .line 6194
    invoke-static {v1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->-$$Nest$fgetmInProgressEvents(Lcom/android/server/appop/AppOpsService$AttributedOp;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    move-wide/from16 v9, v16

    const/4 v7, 0x0

    :goto_1b9
    if-ge v7, v2, :cond_1d7

    .line 6196
    invoke-static {v1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->-$$Nest$fgetmInProgressEvents(Lcom/android/server/appop/AppOpsService$AttributedOp;)Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    .line 6198
    invoke-virtual {v6}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getStartElapsedTime()J

    move-result-wide v11

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 6199
    iget v6, v6, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    int-to-long v11, v6

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_1b9

    .line 6202
    :cond_1d7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Running start at: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sub-long v1, p2, v4

    .line 6203
    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6204
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-wide/16 v1, 0x1

    cmp-long v1, v9, v1

    if-lez v1, :cond_211

    .line 6207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startNesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6208
    invoke-virtual {v0, v9, v10}, Ljava/io/PrintWriter;->println(J)V

    :cond_211
    return-void
.end method

.method public final dumpStatesLocked(Ljava/io/PrintWriter;Ljava/lang/String;IJLcom/android/server/appop/AppOpsService$Op;JLjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V
    .registers 29

    move-object/from16 v11, p1

    move-object/from16 v12, p6

    move-object/from16 v13, p11

    .line 6072
    iget-object v0, v12, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v14

    const/4 v0, 0x0

    move v15, v0

    :goto_e
    if-ge v15, v14, :cond_88

    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_23

    .line 6074
    iget-object v0, v12, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    .line 6075
    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v10, p2

    .line 6074
    invoke-static {v0, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_85

    :cond_23
    move-object/from16 v10, p2

    .line 6079
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=[\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6080
    iget-object v0, v12, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    move-object/from16 v4, p6

    move-wide/from16 v6, p7

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, v16

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/AppOpsService;->dumpStatesLocked(Ljava/io/PrintWriter;JLcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;JLjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V

    .line 6082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_85
    add-int/lit8 v15, v15, 0x1

    goto :goto_e

    :cond_88
    return-void
.end method

.method public final enforceGetAppOpsStatsPermissionIfNeeded(ILjava/lang/String;)V
    .registers 5

    .line 2382
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2384
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_b

    return-void

    :cond_b
    if-ne p1, v0, :cond_16

    if-eqz p2, :cond_16

    .line 2389
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->checkPackage(ILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_16

    return-void

    .line 2393
    :cond_16
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2394
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    const/4 p2, 0x0

    const-string v1, "android.permission.GET_APP_OPS_STATS"

    .line 2393
    invoke-virtual {p0, v1, p1, v0, p2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public final enforceManageAppOpsModes(III)V
    .registers 6

    .line 2578
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_7

    return-void

    .line 2581
    :cond_7
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 2582
    monitor-enter p0

    .line 2583
    :try_start_c
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_21

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, p2, :cond_21

    if-ltz p3, :cond_21

    .line 2584
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    if-ne p1, p2, :cond_21

    .line 2587
    monitor-exit p0

    return-void

    .line 2590
    :cond_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_33

    .line 2591
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.MANAGE_APP_OPS_MODES"

    .line 2592
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    const/4 v0, 0x0

    .line 2591
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    return-void

    :catchall_33
    move-exception p1

    .line 2590
    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p1
.end method

.method public final ensureHistoricalOpRequestIsValid(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJJI)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IJJI)V"
        }
    .end annotation

    and-int/lit8 p0, p5, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_10

    if-eq p1, v0, :cond_b

    move p0, v2

    goto :goto_c

    :cond_b
    move p0, v1

    .line 2404
    :goto_c
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    goto :goto_18

    :cond_10
    if-ne p1, v0, :cond_14

    move p0, v2

    goto :goto_15

    :cond_14
    move p0, v1

    .line 2406
    :goto_15
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    :goto_18
    and-int/lit8 p0, p5, 0x2

    if-eqz p0, :cond_20

    .line 2410
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    :cond_20
    if-nez p2, :cond_24

    move p0, v2

    goto :goto_25

    :cond_24
    move p0, v1

    .line 2412
    :goto_25
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    :goto_28
    and-int/lit8 p0, p5, 0x4

    if-nez p0, :cond_34

    if-nez p3, :cond_30

    move p0, v2

    goto :goto_31

    :cond_30
    move p0, v1

    .line 2416
    :goto_31
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    :cond_34
    and-int/lit8 p0, p5, 0x8

    if-eqz p0, :cond_3c

    .line 2420
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_44

    :cond_3c
    if-nez p4, :cond_40

    move p0, v2

    goto :goto_41

    :cond_40
    move p0, v1

    .line 2422
    :goto_41
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    :goto_44
    const/16 p0, 0xf

    .line 2425
    invoke-static {p5, p0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 2428
    invoke-static {p6, p7}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(J)J

    cmp-long p0, p8, p6

    if-lez p0, :cond_51

    move v1, v2

    .line 2429
    :cond_51
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    const/16 p0, 0x1f

    .line 2430
    invoke-static {p10, p0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    return-void
.end method

.method public final evalAllForegroundOpsLocked()V
    .registers 4

    .line 3232
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1e

    .line 3233
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$UidState;

    .line 3234
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_1b

    .line 3235
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1e
    return-void
.end method

.method public extractAsyncOps(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/AsyncNotedAppOp;",
            ">;"
        }
    .end annotation

    .line 3960
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3962
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    .line 3964
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    .line 3966
    monitor-enter p0

    .line 3967
    :try_start_c
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUnforwardedAsyncNotedOps:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getAsyncNotedOpsKey(Ljava/lang/String;I)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    monitor-exit p0

    return-object p1

    :catchall_1a
    move-exception p1

    .line 3968
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public final filterAppAccessUnlocked(Ljava/lang/String;)Z
    .registers 4

    .line 3484
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    .line 3485
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 3486
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, p1, p0, v1}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 4220
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final finishOperationImpl(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 4226
    invoke-virtual {p0, p3}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 4227
    invoke-virtual {p0, p2}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 4228
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, p4, v0}, Lcom/android/server/appop/AppOpsService;->verifyIncomingPackage(Ljava/lang/String;I)V

    .line 4230
    invoke-static {p3, p4}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_14

    return-void

    :cond_14
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p5

    .line 4235
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->finishOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final finishOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 4289
    :try_start_0
    invoke-virtual {p0, p3, p4, p5}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object v0

    .line 4290
    iget-boolean v1, v0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_6} :catch_d4

    if-nez v1, :cond_9

    const/4 p5, 0x0

    .line 4298
    :cond_9
    monitor-enter p0

    .line 4299
    :try_start_a
    iget-boolean v6, v0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z

    iget-object v7, v0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v8, 0x1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->getOpLocked(IILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v0

    if-nez v0, :cond_4e

    const-string p1, "AppOps"

    .line 4302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Operation not found: uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " pkg="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "("

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ") op="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4303
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4302
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4304
    monitor-exit p0

    return-void

    .line 4306
    :cond_4e
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$AttributedOp;

    if-nez v0, :cond_8c

    const-string p1, "AppOps"

    .line 4308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attribution not found: uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " pkg="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "("

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ") op="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4309
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4308
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4310
    monitor-exit p0

    return-void

    .line 4313
    :cond_8c
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v1

    if-nez v1, :cond_cc

    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_99

    goto :goto_cc

    :cond_99
    const-string p1, "AppOps"

    .line 4316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Operation not started: uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " pkg="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "("

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ") op="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4317
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4316
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cf

    .line 4314
    :cond_cc
    :goto_cc
    invoke-virtual {v0, p1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->finished(Landroid/os/IBinder;)V

    .line 4319
    :goto_cf
    monitor-exit p0

    return-void

    :catchall_d1
    move-exception p1

    monitor-exit p0
    :try_end_d3
    .catchall {:try_start_a .. :try_end_d3} :catchall_d1

    throw p1

    :catch_d4
    move-exception p0

    const-string p1, "AppOps"

    const-string p2, "Cannot finishOperation"

    .line 4294
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)V
    .registers 5

    .line 4241
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)V

    return-void
.end method

.method public final finishProxyOperationImpl(Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)Ljava/lang/Void;
    .registers 17

    move-object v6, p0

    move-object v0, p3

    .line 4247
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v3

    .line 4248
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4249
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 4250
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v7

    .line 4251
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v8

    .line 4252
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getNextAttributionTag()Ljava/lang/String;

    move-result-object v9

    if-eqz p4, :cond_24

    .line 4255
    invoke-virtual {p0, p3}, Lcom/android/server/appop/AppOpsService;->isCallerAndAttributionTrusted(Landroid/content/AttributionSource;)Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v2, 0x1

    goto :goto_25

    :cond_24
    const/4 v2, 0x0

    .line 4257
    :goto_25
    invoke-virtual {p0, p3}, Lcom/android/server/appop/AppOpsService;->verifyIncomingProxyUid(Landroid/content/AttributionSource;)V

    move v10, p2

    .line 4258
    invoke-virtual {p0, p2}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 4259
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/appop/AppOpsService;->verifyIncomingPackage(Ljava/lang/String;I)V

    .line 4260
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v8, v0}, Lcom/android/server/appop/AppOpsService;->verifyIncomingPackage(Ljava/lang/String;I)V

    .line 4262
    invoke-static {v3, v1}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    if-nez v4, :cond_42

    return-object v11

    :cond_42
    if-nez v2, :cond_4a

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 4269
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService;->finishOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 4273
    :cond_4a
    invoke-static {v7, v8}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_51

    return-object v11

    :cond_51
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, v7

    move-object v5, v9

    .line 4279
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService;->finishOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    return-object v11
.end method

.method public getAppOpsServiceDelegate()Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    .registers 2

    .line 3331
    monitor-enter p0

    .line 3332
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    if-eqz v0, :cond_a

    .line 3333
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->getCheckOpsDelegate()Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    move-result-object v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    .line 3334
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public final getAsyncNotedOpsKey(Ljava/lang/String;I)Landroid/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3904
    new-instance p0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getBypassforPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/app/AppOpsManager$RestrictionBypass;
    .registers 9

    .line 4715
    new-instance v0, Landroid/app/AppOpsManager$RestrictionBypass;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x3e8

    if-ne v1, v4, :cond_e

    move v1, v2

    goto :goto_f

    :cond_e
    move v1, v3

    :goto_f
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isPrivileged()Z

    move-result v4

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const/4 v5, -0x1

    .line 4717
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result p1

    const-string v6, "android.permission.EXEMPT_FROM_AUDIO_RECORD_RESTRICTIONS"

    .line 4716
    invoke-virtual {p0, v6, v5, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_23

    goto :goto_24

    :cond_23
    move v2, v3

    :goto_24
    invoke-direct {v0, v1, v4, v2}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    return-object v0
.end method

.method public getHistoricalOps(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILandroid/os/RemoteCallback;)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIJJI",
            "Landroid/os/RemoteCallback;",
            ")V"
        }
    .end annotation

    move-object v11, p0

    move-object/from16 v12, p4

    move-object/from16 v13, p12

    .line 2437
    iget-object v0, v11, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p6

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    move/from16 v10, p11

    .line 2439
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/AppOpsService;->ensureHistoricalOpRequestIsValid(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJJI)V

    const-string v0, "callback cannot be null"

    .line 2441
    invoke-static {v13, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2442
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    and-int/lit8 v1, p6, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3c

    .line 2443
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    move/from16 v4, p1

    if-ne v4, v1, :cond_3e

    move v1, v3

    goto :goto_3f

    :cond_3c
    move/from16 v4, p1

    :cond_3e
    move v1, v2

    :goto_3f
    if-nez v1, :cond_b4

    .line 2446
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->getInstrumentationSourceUid(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4e

    move v0, v3

    goto :goto_4f

    :cond_4e
    move v0, v2

    .line 2447
    :goto_4f
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-ne v1, v5, :cond_5b

    move v1, v3

    goto :goto_5c

    :cond_5b
    move v1, v2

    .line 2450
    :goto_5c
    :try_start_5c
    iget-object v5, v11, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2451
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2452
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 2450
    invoke-virtual {v14, v5, v2, v6}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v5

    .line 2453
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6
    :try_end_76
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5c .. :try_end_76} :catch_b3

    if-ne v5, v6, :cond_7a

    move v5, v3

    goto :goto_7b

    :cond_7a
    move v5, v2

    .line 2458
    :goto_7b
    iget-object v6, v11, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2460
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const-string v9, "android.permission.GET_HISTORICAL_APP_OPS_STATS"

    .line 2458
    invoke-virtual {v6, v9, v7, v8}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v6

    if-nez v6, :cond_8e

    move v2, v3

    :cond_8e
    if-nez v1, :cond_a1

    if-nez v0, :cond_a1

    if-nez v5, :cond_a1

    if-nez v2, :cond_a1

    .line 2465
    iget-object v0, v11, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda3;

    invoke-direct {v1, v13}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda3;-><init>(Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 2469
    :cond_a1
    iget-object v0, v11, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2470
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.GET_APP_OPS_STATS"

    const-string v5, "getHistoricalOps"

    .line 2469
    invoke-virtual {v0, v3, v1, v2, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_b4

    :catch_b3
    return-void

    :cond_b4
    :goto_b4
    const/4 v0, 0x0

    if-eqz v12, :cond_c5

    .line 2474
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v12, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v5, v1

    goto :goto_c6

    :cond_c5
    move-object v5, v0

    :goto_c6
    and-int/lit8 v1, p5, 0x4

    if-eqz v1, :cond_d1

    .line 2478
    iget-object v1, v11, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2479
    invoke-static {v1}, Landroid/permission/PermissionManager;->getIndicatorExemptedPackages(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    goto :goto_d2

    :cond_d1
    move-object v1, v0

    :goto_d2
    if-eqz v1, :cond_e0

    .line 2484
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 2483
    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :cond_e0
    move-object v12, v0

    .line 2487
    iget-object v14, v11, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda4;-><init>()V

    iget-object v1, v11, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 2488
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2489
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v11, v12

    move-object/from16 v12, p12

    .line 2487
    invoke-static/range {v0 .. v12}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/DodecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v0

    .line 2490
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v0

    .line 2487
    invoke-virtual {v14, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getHistoricalOpsFromDiskRaw(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILandroid/os/RemoteCallback;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIJJI",
            "Landroid/os/RemoteCallback;",
            ")V"
        }
    .end annotation

    move-object v11, p0

    move-object/from16 v12, p4

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p6

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    move/from16 v10, p11

    .line 2497
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/AppOpsService;->ensureHistoricalOpRequestIsValid(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IJJI)V

    const-string v0, "callback cannot be null"

    move-object/from16 v13, p12

    .line 2499
    invoke-static {v13, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2501
    iget-object v0, v11, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2502
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_APPOPS"

    const-string v4, "getHistoricalOps"

    .line 2501
    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    const/4 v0, 0x0

    if-eqz v12, :cond_3f

    .line 2505
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v12, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v6, v1

    goto :goto_40

    :cond_3f
    move-object v6, v0

    :goto_40
    and-int/lit8 v1, p5, 0x4

    if-eqz v1, :cond_4b

    .line 2509
    iget-object v1, v11, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2510
    invoke-static {v1}, Landroid/permission/PermissionManager;->getIndicatorExemptedPackages(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    goto :goto_4c

    :cond_4b
    move-object v1, v0

    :goto_4c
    if-eqz v1, :cond_5a

    .line 2515
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 2514
    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :cond_5a
    move-object v12, v0

    .line 2518
    iget-object v0, v11, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda8;-><init>()V

    iget-object v2, v11, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 2519
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 2520
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v13, p12

    .line 2518
    invoke-static/range {v1 .. v13}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/DodecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 2521
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 2518
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final getOpLocked(IILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Op;
    .registers 15

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    move v6, p7

    .line 4969
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object p3

    if-nez p3, :cond_f

    const/4 p0, 0x0

    return-object p0

    .line 4974
    :cond_f
    invoke-virtual {p0, p3, p1, p2, p7}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object p0

    return-object p0
.end method

.method public final getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;
    .registers 12

    .line 4978
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$Op;

    if-nez v0, :cond_1c

    if-nez p4, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 4983
    :cond_c
    new-instance v6, Lcom/android/server/appop/AppOpsService$Op;

    iget-object v2, p1, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget-object v3, p1, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    move-object v0, v6

    move-object v1, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService$Op;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;II)V

    .line 4984
    invoke-virtual {p1, p2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1c
    if-eqz p4, :cond_21

    .line 4987
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->scheduleWriteLocked()V

    :cond_21
    return-object v0
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 2358
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->enforceGetAppOpsStatsPermissionIfNeeded(ILjava/lang/String;)V

    .line 2359
    invoke-static {p1, p2}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    .line 2361
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 2363
    :cond_e
    monitor-enter p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    .line 2364
    :try_start_15
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_1e

    .line 2367
    monitor-exit p0

    return-object p2

    .line 2369
    :cond_1e
    invoke-virtual {p0, p1, p3}, Lcom/android/server/appop/AppOpsService;->collectOps(Lcom/android/server/appop/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object p3

    if-nez p3, :cond_26

    .line 2371
    monitor-exit p0

    return-object p2

    .line 2373
    :cond_26
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2374
    new-instance v0, Landroid/app/AppOpsManager$PackageOps;

    iget-object v1, p1, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget p1, p1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-direct {v0, v1, p1, p3}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 2376
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2377
    monitor-exit p0

    return-object p2

    :catchall_3b
    move-exception p1

    .line 2378
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_15 .. :try_end_3d} :catchall_3b

    throw p1
.end method

.method public final getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;
    .registers 8

    .line 4898
    invoke-virtual {p0, p1, p6}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_8

    return-object p1

    .line 4903
    :cond_8
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_16

    if-nez p6, :cond_f

    return-object p1

    .line 4907
    :cond_f
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 4910
    :cond_16
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$Ops;

    if-nez v0, :cond_2d

    if-nez p6, :cond_23

    return-object p1

    .line 4915
    :cond_23
    new-instance v0, Lcom/android/server/appop/AppOpsService$Ops;

    invoke-direct {v0, p2, p0}, Lcom/android/server/appop/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 4916
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    if-eqz p6, :cond_47

    if-eqz p5, :cond_33

    .line 4921
    iput-object p5, v0, Lcom/android/server/appop/AppOpsService$Ops;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    :cond_33
    if-eqz p3, :cond_47

    .line 4925
    iget-object p0, v0, Lcom/android/server/appop/AppOpsService$Ops;->knownAttributionTags:Landroid/util/ArraySet;

    invoke-virtual {p0, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_42

    .line 4927
    iget-object p0, v0, Lcom/android/server/appop/AppOpsService$Ops;->validAttributionTags:Landroid/util/ArraySet;

    invoke-virtual {p0, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 4929
    :cond_42
    iget-object p0, v0, Lcom/android/server/appop/AppOpsService$Ops;->validAttributionTags:Landroid/util/ArraySet;

    invoke-virtual {p0, p3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_47
    :goto_47
    return-object v0
.end method

.method public final getPackageListAndResample()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7248
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageNamesForSampling()Ljava/util/List;

    move-result-object v0

    .line 7249
    monitor-enter p0

    .line 7250
    :try_start_5
    invoke-virtual {p0, v0}, Lcom/android/server/appop/AppOpsService;->resamplePackageAndAppOpLocked(Ljava/util/List;)V

    .line 7251
    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public final getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .registers 2

    .line 4700
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_e

    .line 4701
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 4704
    :cond_e
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public final getPackageNamesForSampling()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7337
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 7339
    invoke-virtual {v1}, Landroid/content/pm/PackageManagerInternal;->getPackageList()Lcom/android/server/pm/PackageList;

    move-result-object v2

    .line 7340
    invoke-virtual {v2}, Lcom/android/server/pm/PackageList;->getPackageNames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_19
    :goto_19
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const-wide/16 v4, 0x1000

    .line 7342
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v7

    move-object v2, v1

    .line 7341
    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;JII)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 7343
    invoke-virtual {p0, v2}, Lcom/android/server/appop/AppOpsService;->isSamplingTarget(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 7344
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_43
    return-object v0
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 2321
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2322
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.GET_APP_OPS_STATS"

    .line 2323
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 2324
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x0

    .line 2322
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;IILandroid/os/IBinder;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    move v1, v2

    .line 2326
    :goto_1b
    monitor-enter p0

    .line 2327
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v4, v2

    :goto_23
    if-ge v4, v3, :cond_70

    .line 2329
    iget-object v6, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/AppOpsService$UidState;

    .line 2330
    iget-object v7, v6, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v7, :cond_6d

    invoke-virtual {v7}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_38

    goto :goto_6d

    .line 2333
    :cond_38
    iget-object v6, v6, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 2334
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    move v8, v2

    :goto_3f
    if-ge v8, v7, :cond_6d

    .line 2336
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/AppOpsService$Ops;

    .line 2337
    invoke-virtual {p0, v9, p1}, Lcom/android/server/appop/AppOpsService;->collectOps(Lcom/android/server/appop/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_6a

    if-nez v5, :cond_54

    .line 2340
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2342
    :cond_54
    new-instance v11, Landroid/app/AppOpsManager$PackageOps;

    iget-object v12, v9, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v13, v9, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v13, v13, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-direct {v11, v12, v13, v10}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    if-nez v1, :cond_67

    .line 2345
    iget-object v9, v9, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v9, v9, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    if-ne v0, v9, :cond_6a

    .line 2346
    :cond_67
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6a
    add-int/lit8 v8, v8, 0x1

    goto :goto_3f

    :cond_6d
    :goto_6d
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 2351
    :cond_70
    monitor-exit p0

    return-object v5

    :catchall_72
    move-exception p1

    monitor-exit p0
    :try_end_74
    .catchall {:try_start_1c .. :try_end_74} :catchall_72

    throw p1
.end method

.method public final getRuntimeAppOpsList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    const/16 v2, 0x79

    if-ge v1, v2, :cond_1a

    .line 7327
    invoke-virtual {p0, v1}, Lcom/android/server/appop/AppOpsService;->shouldCollectNotes(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 7328
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1a
    return-object v0
.end method

.method public getUidOps(I[I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 2534
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_APP_OPS_STATS"

    .line 2535
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    .line 2534
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2536
    monitor-enter p0

    const/4 v0, 0x0

    .line 2537
    :try_start_12
    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object p1

    if-nez p1, :cond_1a

    .line 2539
    monitor-exit p0

    return-object v4

    .line 2541
    :cond_1a
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService;->collectUidOps(Lcom/android/server/appop/AppOpsService$UidState;[I)Ljava/util/ArrayList;

    move-result-object p2

    if-nez p2, :cond_22

    .line 2543
    monitor-exit p0

    return-object v4

    .line 2545
    :cond_22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2546
    new-instance v1, Landroid/app/AppOpsManager$PackageOps;

    iget p1, p1, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-direct {v1, v4, p1, p2}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 2548
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2549
    monitor-exit p0

    return-object v0

    :catchall_33
    move-exception p1

    .line 2550
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_12 .. :try_end_35} :catchall_33

    throw p1
.end method

.method public final getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;
    .registers 4

    .line 4585
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$UidState;

    if-nez v0, :cond_19

    if-nez p2, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 4590
    :cond_e
    new-instance v0, Lcom/android/server/appop/AppOpsService$UidState;

    invoke-direct {v0, p0, p1}, Lcom/android/server/appop/AppOpsService$UidState;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    .line 4591
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1c

    .line 4593
    :cond_19
    invoke-virtual {p0, v0}, Lcom/android/server/appop/AppOpsService;->updatePendingStateIfNeededLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    :goto_1c
    return-object v0
.end method

.method public final initializeRarelyUsedPackagesList(Landroid/util/ArraySet;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7283
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 7284
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getRuntimeAppOpsList()Ljava/util/List;

    move-result-object v1

    .line 7285
    new-instance v2, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    .line 7287
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v5, 0x7

    invoke-virtual {v3, v5, v6, v4}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const-wide v5, 0x7fffffffffffffffL

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;-><init>(JJ)V

    .line 7288
    invoke-virtual {v2, v1}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setOpNames(Ljava/util/List;)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setFlags(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v1

    .line 7289
    invoke-virtual {v1}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->build()Landroid/app/AppOpsManager$HistoricalOpsRequest;

    move-result-object v1

    .line 7290
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/server/appop/AppOpsService$8;

    invoke-direct {v3, p0, p1}, Lcom/android/server/appop/AppOpsService$8;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AppOpsManager;->getHistoricalOps(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final isAttributionInPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z
    .registers 7

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    :cond_4
    const/4 v0, 0x1

    if-nez p2, :cond_8

    return v0

    .line 4872
    :cond_8
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getAttributions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 4873
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getAttributions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v2, p0

    :goto_17
    if-ge v2, v1, :cond_31

    .line 4875
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getAttributions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedAttribution;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedAttribution;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    return v0

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_31
    return p0
.end method

.method public final isCallerAndAttributionTrusted(Landroid/content/AttributionSource;)Z
    .registers 6

    .line 4575
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 4576
    invoke-virtual {p1, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_14

    return v2

    .line 4579
    :cond_14
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 4580
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const-string v3, "android.permission.UPDATE_APP_OPS_STATS"

    .line 4579
    invoke-virtual {p0, v3, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;IILandroid/os/IBinder;)I

    move-result p0

    if-nez p0, :cond_28

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    :goto_29
    return v2
.end method

.method public final isModeChangeAllowedForCode(I)Z
    .registers 3

    const/16 p0, 0x3a

    if-ne p1, p0, :cond_1f

    :try_start_4
    const-string/jumbo p0, "restriction_policy"

    .line 3882
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 3884
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isMockLocationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1e} :catch_1f

    return p0

    :catch_1f
    :cond_1f
    const/4 p0, 0x1

    return p0
.end method

.method public final isOpRestrictedDueToSuspend(ILjava/lang/String;I)Z
    .registers 4

    .line 4993
    sget-object p0, Lcom/android/server/appop/AppOpsService;->OPS_RESTRICTED_ON_SUSPEND:[I

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 4996
    :cond_a
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 4997
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManagerInternal;->isPackageSuspended(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final isOpRestrictedLocked(IILjava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;Z)Z
    .registers 22

    move-object v1, p0

    move/from16 v0, p2

    move-object/from16 v8, p5

    .line 5002
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mOpGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v9, 0x0

    move v3, v9

    :goto_d
    const/4 v10, 0x1

    if-ge v3, v2, :cond_22

    .line 5005
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService;->mOpGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;

    .line 5006
    invoke-virtual {v4, v0}, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->hasRestriction(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    return v10

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 5011
    :cond_22
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 5012
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v12

    move v13, v9

    :goto_2d
    if-ge v13, v12, :cond_a8

    .line 5017
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;

    move-object v2, v14

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move v6, v11

    move/from16 v7, p6

    .line 5018
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->hasRestriction(ILjava/lang/String;Ljava/lang/String;IZ)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 5020
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->opAllowSystemBypassRestriction(I)Landroid/app/AppOpsManager$RestrictionBypass;

    move-result-object v2

    if-eqz v2, :cond_78

    .line 5023
    monitor-enter p0

    .line 5024
    :try_start_4f
    iget-boolean v3, v2, Landroid/app/AppOpsManager$RestrictionBypass;->isSystemUid:Z

    if-eqz v3, :cond_5b

    if-eqz v8, :cond_5b

    iget-boolean v3, v8, Landroid/app/AppOpsManager$RestrictionBypass;->isSystemUid:Z

    if-eqz v3, :cond_5b

    .line 5025
    monitor-exit p0

    return v9

    .line 5027
    :cond_5b
    iget-boolean v3, v2, Landroid/app/AppOpsManager$RestrictionBypass;->isPrivileged:Z

    if-eqz v3, :cond_67

    if-eqz v8, :cond_67

    iget-boolean v3, v8, Landroid/app/AppOpsManager$RestrictionBypass;->isPrivileged:Z

    if-eqz v3, :cond_67

    .line 5028
    monitor-exit p0

    return v9

    .line 5030
    :cond_67
    iget-boolean v2, v2, Landroid/app/AppOpsManager$RestrictionBypass;->isRecordAudioRestrictionExcept:Z

    if-eqz v2, :cond_73

    if-eqz v8, :cond_73

    iget-boolean v2, v8, Landroid/app/AppOpsManager$RestrictionBypass;->isRecordAudioRestrictionExcept:Z

    if-eqz v2, :cond_73

    .line 5032
    monitor-exit p0

    return v9

    .line 5034
    :cond_73
    monitor-exit p0

    goto :goto_78

    :catchall_75
    move-exception v0

    monitor-exit p0
    :try_end_77
    .catchall {:try_start_4f .. :try_end_77} :catchall_75

    throw v0

    .line 5037
    :cond_78
    :goto_78
    iget v1, v14, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->callingRestriction:I

    if-lez v1, :cond_a4

    const-string v1, "AppOps"

    .line 5038
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", OP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is restricted by "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v14, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->callingRestriction:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a4
    return v10

    :cond_a5
    add-int/lit8 v13, v13, 0x1

    goto :goto_2d

    :cond_a8
    return v9
.end method

.method public isOperationActive(IILjava/lang/String;)Z
    .registers 13

    .line 6978
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p2, :cond_12

    .line 6979
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WATCH_APPOPS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    return v1

    .line 6984
    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 6985
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, p3, v0}, Lcom/android/server/appop/AppOpsService;->verifyIncomingPackage(Ljava/lang/String;I)V

    .line 6987
    invoke-static {p2, p3}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_23

    return v1

    .line 6992
    :cond_23
    monitor-enter p0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move v3, p2

    .line 6993
    :try_start_2a
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object p2

    if-nez p2, :cond_32

    .line 6995
    monitor-exit p0

    return v1

    .line 6998
    :cond_32
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/appop/AppOpsService$Op;

    if-nez p1, :cond_3c

    .line 7000
    monitor-exit p0

    return v1

    .line 7003
    :cond_3c
    invoke-virtual {p1}, Lcom/android/server/appop/AppOpsService$Op;->isRunning()Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_42
    move-exception p1

    .line 7004
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_2a .. :try_end_44} :catchall_42

    throw p1
.end method

.method public final isPackageExisted(Ljava/lang/String;)Z
    .registers 2

    .line 3473
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 3474
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public isProxying(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .registers 13

    .line 7011
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7012
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7013
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    int-to-long v0, v0

    .line 7014
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x1

    :try_start_10
    new-array v5, v4, [I

    const/4 v6, 0x0

    aput p1, v5, v6

    .line 7016
    invoke-virtual {p0, p4, p5, v5}, Lcom/android/server/appop/AppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_71

    .line 7018
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_22

    goto :goto_71

    .line 7021
    :cond_22
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {p0}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object p0

    .line 7022
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_75

    if-eqz p1, :cond_36

    .line 7035
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    .line 7025
    :cond_36
    :try_start_36
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager$OpEntry;

    .line 7026
    invoke-virtual {p0}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result p1
    :try_end_40
    .catchall {:try_start_36 .. :try_end_40} :catchall_75

    if-nez p1, :cond_46

    .line 7035
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :cond_46
    const/16 p1, 0x18

    .line 7029
    :try_start_48
    invoke-virtual {p0, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object p0

    if-eqz p0, :cond_6c

    .line 7031
    invoke-virtual {p0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result p1

    int-to-long p4, p1

    cmp-long p1, v0, p4

    if-nez p1, :cond_6c

    .line 7032
    invoke-virtual {p0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6c

    .line 7033
    invoke-virtual {p0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getAttributionTag()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0
    :try_end_69
    .catchall {:try_start_48 .. :try_end_69} :catchall_75

    if-eqz p0, :cond_6c

    goto :goto_6d

    :cond_6c
    move v4, v6

    .line 7035
    :goto_6d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_71
    :goto_71
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :catchall_75
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7036
    throw p0
.end method

.method public final isSamplingTarget(Landroid/content/pm/PackageInfo;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 7355
    :cond_4
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez p1, :cond_9

    return v0

    .line 7359
    :cond_9
    array-length v1, p1

    move v2, v0

    :goto_b
    if-ge v2, v1, :cond_24

    aget-object v3, p1, v2

    .line 7362
    :try_start_f
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v3
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_19} :catch_21

    .line 7366
    invoke-virtual {v3}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_21

    return v4

    :catch_21
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_24
    return v0
.end method

.method public noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;
    .registers 16

    .line 3558
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public final noteOperationImpl(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;
    .registers 20

    move-object v0, p0

    move-object v1, p3

    move v2, p2

    .line 3565
    invoke-virtual {p0, p2}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 3566
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 3567
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {p0, p3, v3}, Lcom/android/server/appop/AppOpsService;->verifyIncomingPackage(Ljava/lang/String;I)V

    .line 3569
    invoke-static {p2, p3}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_20

    .line 3571
    new-instance v0, Landroid/app/SyncNotedAppOp;

    const/4 v2, 0x1

    move v4, p1

    move-object/from16 v5, p4

    invoke-direct {v0, v2, p1, v5, p3}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_20
    move v4, p1

    move-object/from16 v5, p4

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object/from16 v4, p4

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    .line 3574
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/appop/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method public final noteOperationUnchecked(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;
    .registers 32

    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v0, p2

    move-object/from16 v11, p3

    move-object/from16 v1, p4

    move/from16 v8, p8

    const/4 v12, 0x2

    move-object/from16 v13, p6

    .line 3586
    :try_start_f
    invoke-virtual {v9, v0, v11, v1, v13}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object v14

    .line 3588
    iget-boolean v2, v14, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_15} :catch_29d

    if-nez v2, :cond_18

    const/4 v1, 0x0

    :cond_18
    move-object v15, v1

    .line 3597
    monitor-enter p0

    .line 3598
    :try_start_1a
    iget-boolean v5, v14, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z

    iget-object v6, v14, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v15

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v7

    if-nez v7, :cond_79

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v15

    move/from16 v6, p8

    .line 3601
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;II)V

    .line 3603
    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v1, :cond_72

    const-string v1, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "noteOperation: no op for code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " package "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "flags: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3605
    invoke-static/range {p8 .. p8}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3603
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3606
    :cond_72
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v12, v10, v15, v11}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v0

    :cond_79
    const/4 v12, 0x1

    .line 3609
    invoke-virtual {v9, v7, v10, v0, v12}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v6

    .line 3610
    invoke-static {v6, v6, v15}, Lcom/android/server/appop/AppOpsService$Op;->-$$Nest$mgetOrCreateAttribution(Lcom/android/server/appop/AppOpsService$Op;Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$AttributedOp;

    move-result-object v5

    .line 3611
    invoke-virtual {v5}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_c8

    const-string v1, "AppOps"

    .line 3612
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Noting op not finished: uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " startTime of in progress event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/server/appop/AppOpsService$AttributedOp;->-$$Nest$fgetmInProgressEvents(Lcom/android/server/appop/AppOpsService$AttributedOp;)Landroid/util/ArrayMap;

    move-result-object v3

    .line 3614
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    move-object/from16 p4, v5

    invoke-virtual {v3}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getStartTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3612
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ca

    :cond_c8
    move-object/from16 p4, v5

    .line 3617
    :goto_ca
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v5

    .line 3618
    iget-object v4, v7, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 3619
    iget-object v14, v14, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p1

    move-object v12, v4

    move-object/from16 v4, p3

    move-object/from16 v18, p4

    move/from16 v19, v5

    move-object v5, v15

    move-object v13, v6

    move-object v6, v14

    move-object v14, v7

    move/from16 v7, v17

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;Z)Z

    move-result v1

    if-eqz v1, :cond_10d

    .line 3620
    iget v1, v12, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    iget v2, v13, Lcom/android/server/appop/AppOpsService$Op;->mSettedUid:I

    move-object/from16 v7, v18

    invoke-virtual {v7, v1, v8, v2}, Lcom/android/server/appop/AppOpsService$AttributedOp;->rejected(III)V

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v15

    move/from16 v6, p8

    .line 3621
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;II)V

    .line 3623
    new-instance v0, Landroid/app/SyncNotedAppOp;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v10, v15, v11}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v0

    :cond_10d
    move-object/from16 v7, v18

    .line 3628
    iget-object v1, v12, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move/from16 v2, v19

    if-eqz v1, :cond_197

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_197

    .line 3629
    iget-object v1, v12, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v12, v10, v1}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v14

    if-eqz v14, :cond_194

    .line 3631
    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v1, :cond_16e

    const-string v1, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "noteOperation: uid reject #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " flags: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3633
    invoke-static/range {p8 .. p8}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3631
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3634
    :cond_16e
    iget v1, v12, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    iget-object v3, v12, Lcom/android/server/appop/AppOpsService$UidState;->setOpUids:Landroid/util/SparseIntArray;

    const/4 v6, 0x0

    if-eqz v3, :cond_17a

    invoke-virtual {v3, v2, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    goto :goto_17b

    :cond_17a
    move v4, v6

    :goto_17b
    invoke-virtual {v7, v1, v8, v4}, Lcom/android/server/appop/AppOpsService$AttributedOp;->rejected(III)V

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v15

    move/from16 v6, p8

    move v7, v14

    .line 3635
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;II)V

    .line 3637
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v14, v10, v15, v11}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v0

    :cond_194
    const/4 v6, 0x0

    goto/16 :goto_20b

    :cond_197
    const/4 v6, 0x0

    if-eq v2, v10, :cond_1a0

    const/4 v1, 0x1

    .line 3640
    invoke-virtual {v9, v14, v2, v0, v1}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v1

    goto :goto_1a1

    :cond_1a0
    move-object v1, v13

    .line 3642
    :goto_1a1
    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$Op;->evalMode()I

    move-result v14

    if-eqz v14, :cond_20b

    .line 3644
    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v1, :cond_1ee

    const-string v1, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "noteOperation: reject #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") uid "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " package "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " flags: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3646
    invoke-static/range {p8 .. p8}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3644
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3647
    :cond_1ee
    iget v1, v12, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    iget v2, v13, Lcom/android/server/appop/AppOpsService$Op;->mSettedUid:I

    invoke-virtual {v7, v1, v8, v2}, Lcom/android/server/appop/AppOpsService$AttributedOp;->rejected(III)V

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v15

    move/from16 v6, p8

    move v7, v14

    .line 3648
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;II)V

    .line 3650
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v14, v10, v15, v11}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v0

    .line 3653
    :cond_20b
    :goto_20b
    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v1, :cond_25b

    const-string v1, "AppOps"

    .line 3654
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "noteOperation: allowing code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v15, :cond_234

    const-string v3, ""

    goto :goto_245

    .line 3657
    :cond_234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_245
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3658
    invoke-static/range {p8 .. p8}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3654
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25b
    const/4 v14, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v15

    move v0, v6

    move/from16 v6, p8

    move-object/from16 v16, v7

    move v7, v14

    .line 3660
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->scheduleOpNotedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;II)V

    .line 3662
    iget v5, v12, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    iget v7, v13, Lcom/android/server/appop/AppOpsService$Op;->mSettedUid:I

    move-object/from16 v1, v16

    move/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move/from16 v6, p8

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService$AttributedOp;->accessed(ILjava/lang/String;Ljava/lang/String;III)V

    if-eqz p9, :cond_293

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p1

    move-object v5, v15

    move/from16 v6, p8

    move-object/from16 v7, p10

    move/from16 v8, p11

    .line 3666
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->collectAsyncNotedOp(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 3670
    :cond_293
    new-instance v1, Landroid/app/SyncNotedAppOp;

    invoke-direct {v1, v0, v10, v15, v11}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v1

    :catchall_29a
    move-exception v0

    .line 3672
    monitor-exit p0
    :try_end_29c
    .catchall {:try_start_1a .. :try_end_29c} :catchall_29a

    throw v0

    :catch_29d
    move-exception v0

    const-string v2, "AppOps"

    const-string/jumbo v3, "noteOperation"

    .line 3592
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3593
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v12, v10, v1, v11}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;
    .registers 14

    .line 3493
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public final noteProxyOperationImpl(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;
    .registers 30

    move-object/from16 v12, p0

    move/from16 v13, p1

    move-object/from16 v0, p2

    .line 3500
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v14

    .line 3501
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3502
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v15

    .line 3503
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v11

    .line 3504
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v10

    .line 3505
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getNextAttributionTag()Ljava/lang/String;

    move-result-object v9

    .line 3507
    invoke-virtual {v12, v0}, Lcom/android/server/appop/AppOpsService;->verifyIncomingProxyUid(Landroid/content/AttributionSource;)V

    .line 3508
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 3509
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v12, v10, v2}, Lcom/android/server/appop/AppOpsService;->verifyIncomingPackage(Ljava/lang/String;I)V

    .line 3510
    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v12, v1, v2}, Lcom/android/server/appop/AppOpsService;->verifyIncomingPackage(Ljava/lang/String;I)V

    const/4 v2, 0x0

    const/4 v8, 0x1

    if-eqz p6, :cond_3e

    .line 3513
    invoke-virtual {v12, v0}, Lcom/android/server/appop/AppOpsService;->isCallerAndAttributionTrusted(Landroid/content/AttributionSource;)Z

    move-result v0

    if-eqz v0, :cond_3e

    move v0, v8

    goto :goto_3f

    :cond_3e
    move v0, v2

    .line 3515
    :goto_3f
    invoke-static {v14, v1}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_4b

    .line 3518
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v8, v13, v9, v10}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 3522
    :cond_4b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-ne v1, v11, :cond_53

    move v1, v8

    goto :goto_54

    :cond_53
    move v1, v2

    .line 3523
    :goto_54
    iget-object v3, v12, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const/4 v4, -0x1

    const-string v5, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v3, v5, v4, v14}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_65

    if-eqz v1, :cond_62

    goto :goto_65

    :cond_62
    move/from16 v17, v2

    goto :goto_67

    :cond_65
    :goto_65
    move/from16 v17, v8

    :goto_67
    if-nez v0, :cond_bb

    if-eqz v17, :cond_6d

    const/4 v0, 0x2

    goto :goto_6e

    :cond_6d
    const/4 v0, 0x4

    :goto_6e
    move/from16 v18, v0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    xor-int/lit8 v19, v17, 0x1

    .line 3531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "proxy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v14

    move-object/from16 v3, v16

    move-object v4, v15

    move/from16 v8, v18

    move-object/from16 v21, v9

    move/from16 v9, v19

    move-object/from16 v22, v10

    move-object/from16 v10, v20

    move v12, v11

    move/from16 v11, p5

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/appop/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    .line 3534
    invoke-virtual {v0}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v1

    if-eqz v1, :cond_b6

    .line 3535
    new-instance v1, Landroid/app/SyncNotedAppOp;

    invoke-virtual {v0}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v0

    move-object/from16 v4, v21

    move-object/from16 v2, v22

    invoke-direct {v1, v0, v13, v4, v2}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_b6
    move-object/from16 v4, v21

    move-object/from16 v2, v22

    goto :goto_be

    :cond_bb
    move-object v4, v9

    move-object v2, v10

    move v12, v11

    .line 3540
    :goto_be
    invoke-static {v12, v2}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_cb

    .line 3543
    new-instance v0, Landroid/app/SyncNotedAppOp;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v13, v4, v2}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_cb
    if-eqz v17, :cond_d0

    const/16 v0, 0x8

    goto :goto_d2

    :cond_d0
    const/16 v0, 0x10

    :goto_d2
    move v8, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v12

    move v5, v14

    move-object/from16 v6, v16

    move-object v7, v15

    move/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    .line 3549
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/appop/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method public final notifyOpActiveChanged(Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;ZII)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$ActiveCallback;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZII)V"
        }
    .end annotation

    .line 4355
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4357
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_3b

    move-object/from16 v4, p1

    .line 4359
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$ActiveCallback;
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_3f

    .line 4361
    :try_start_13
    iget v6, v5, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mCallingPid:I

    iget v7, v5, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mCallingUid:I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_17} :catch_36
    .catchall {:try_start_13 .. :try_end_17} :catchall_3f

    move-object/from16 v8, p0

    move/from16 v15, p2

    :try_start_1b
    invoke-virtual {v8, v15, v6, v7}, Lcom/android/server/appop/AppOpsService;->shouldIgnoreCallback(III)Z

    move-result v6

    if-eqz v6, :cond_22

    goto :goto_38

    .line 4364
    :cond_22
    iget-object v9, v5, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mCallback:Lcom/android/internal/app/IAppOpsActiveCallback;

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    move/from16 v16, p8

    invoke-interface/range {v9 .. v16}, Lcom/android/internal/app/IAppOpsActiveCallback;->opActiveChanged(IILjava/lang/String;Ljava/lang/String;ZII)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_35} :catch_38
    .catchall {:try_start_1b .. :try_end_35} :catchall_3f

    goto :goto_38

    :catch_36
    move-object/from16 v8, p0

    :catch_38
    :goto_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 4371
    :cond_3b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_3f
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4372
    throw v0
.end method

.method public final notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            ">;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2986
    :goto_1
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 2987
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 2988
    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Lcom/android/server/appop/AppOpsService$ModeCallback;IILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    return-void
.end method

.method public final notifyOpChanged(Lcom/android/server/appop/AppOpsService$ModeCallback;IILjava/lang/String;)V
    .registers 12

    const/4 v0, -0x2

    if-eq p3, v0, :cond_a

    .line 2994
    iget v1, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchingUid:I

    if-ltz v1, :cond_a

    if-eq v1, p3, :cond_a

    return-void

    .line 3000
    :cond_a
    iget v1, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mWatchedOpCode:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_18

    .line 3001
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mSwitchedOps:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    goto :goto_26

    :cond_18
    const/4 v0, -0x1

    const/4 v3, 0x1

    if-ne v1, v0, :cond_22

    new-array v0, v3, [I

    aput p2, v0, v2

    move-object p2, v0

    goto :goto_26

    :cond_22
    new-array p2, v3, [I

    aput v1, p2, v2

    .line 3008
    :goto_26
    array-length v0, p2

    :goto_27
    if-ge v2, v0, :cond_4b

    aget v1, p2, v2

    .line 3012
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 3014
    :try_start_2f
    iget v5, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mCallingPid:I

    iget v6, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mCallingUid:I

    invoke-virtual {p0, v1, v5, v6}, Lcom/android/server/appop/AppOpsService;->shouldIgnoreCallback(III)Z

    move-result v5

    if-eqz v5, :cond_3a

    goto :goto_45

    .line 3018
    :cond_3a
    iget-object v5, p1, Lcom/android/server/appop/AppOpsService$ModeCallback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v5, v1, p3, p4}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(IILjava/lang/String;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_3f} :catch_45
    .catchall {:try_start_2f .. :try_end_3f} :catchall_40

    goto :goto_45

    :catchall_40
    move-exception p0

    .line 3022
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3023
    throw p0

    .line 3022
    :catch_45
    :goto_45
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_4b
    return-void
.end method

.method public final notifyOpChangedForAllPkgsInUid(IIZLcom/android/internal/app/IAppOpsCallback;)V
    .registers 21

    move-object/from16 v7, p0

    .line 2705
    invoke-static/range {p2 .. p2}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 2708
    monitor-enter p0

    .line 2709
    :try_start_7
    iget-object v1, v7, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move/from16 v8, p1

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    const/4 v9, 0x0

    const/4 v2, 0x0

    if-eqz v1, :cond_40

    .line 2711
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    move v4, v9

    :goto_1a
    if-ge v4, v3, :cond_40

    .line 2713
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$ModeCallback;

    if-eqz p3, :cond_2b

    .line 2714
    iget v6, v5, Lcom/android/server/appop/AppOpsService$ModeCallback;->mFlags:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_2b

    goto :goto_3d

    .line 2718
    :cond_2b
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 2719
    invoke-static {v6, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    if-nez v2, :cond_3a

    .line 2721
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 2723
    :cond_3a
    invoke-virtual {v2, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 2727
    :cond_40
    array-length v1, v0

    move-object v10, v2

    move v2, v9

    :goto_43
    if-ge v2, v1, :cond_87

    aget-object v3, v0, v2

    .line 2728
    iget-object v4, v7, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    if-eqz v4, :cond_84

    if-nez v10, :cond_58

    .line 2731
    new-instance v10, Landroid/util/ArrayMap;

    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    .line 2733
    :cond_58
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    move v6, v9

    :goto_5d
    if-ge v6, v5, :cond_84

    .line 2735
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/appop/AppOpsService$ModeCallback;

    if-eqz p3, :cond_6e

    .line 2736
    iget v12, v11, Lcom/android/server/appop/AppOpsService$ModeCallback;->mFlags:I

    and-int/lit8 v12, v12, 0x1

    if-nez v12, :cond_6e

    goto :goto_81

    .line 2740
    :cond_6e
    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArraySet;

    if-nez v12, :cond_7e

    .line 2742
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 2743
    invoke-virtual {v10, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2745
    :cond_7e
    invoke-virtual {v12, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_81
    add-int/lit8 v6, v6, 0x1

    goto :goto_5d

    :cond_84
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    :cond_87
    if-eqz v10, :cond_98

    if-eqz p4, :cond_98

    .line 2751
    iget-object v0, v7, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface/range {p4 .. p4}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2753
    :cond_98
    monitor-exit p0
    :try_end_99
    .catchall {:try_start_7 .. :try_end_99} :catchall_fc

    if-nez v10, :cond_9c

    return-void

    :cond_9c
    move v0, v9

    .line 2759
    :goto_9d
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_fb

    .line 2760
    invoke-virtual {v10, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 2761
    invoke-virtual {v10, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/util/ArraySet;

    if-nez v12, :cond_ce

    .line 2763
    iget-object v12, v7, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda5;-><init>()V

    .line 2765
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object v3, v11

    .line 2763
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_f8

    .line 2768
    :cond_ce
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v13

    move v14, v9

    :goto_d3
    if-ge v14, v13, :cond_f8

    .line 2770
    invoke-virtual {v12, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 2771
    iget-object v15, v7, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda5;-><init>()V

    .line 2773
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v2, p0

    move-object v3, v11

    .line 2771
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_d3

    :cond_f8
    :goto_f8
    add-int/lit8 v0, v0, 0x1

    goto :goto_9d

    :cond_fb
    return-void

    :catchall_fc
    move-exception v0

    .line 2753
    :try_start_fd
    monitor-exit p0
    :try_end_fe
    .catchall {:try_start_fd .. :try_end_fe} :catchall_fc

    throw v0
.end method

.method public final notifyOpChangedSync(IILjava/lang/String;II)V
    .registers 12

    .line 2879
    const-class p0, Landroid/os/storage/StorageManagerInternal;

    .line 2880
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/os/storage/StorageManagerInternal;

    if-eqz v0, :cond_13

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 2882
    invoke-virtual/range {v0 .. v5}, Landroid/os/storage/StorageManagerInternal;->onAppOpsChanged(IILjava/lang/String;II)V

    :cond_13
    return-void
.end method

.method public final notifyOpChecked(Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;II)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$NotedCallback;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 4462
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4464
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_39

    move-object/from16 v4, p1

    .line 4466
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$NotedCallback;
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_3d

    .line 4468
    :try_start_13
    iget v6, v5, Lcom/android/server/appop/AppOpsService$NotedCallback;->mCallingPid:I

    iget v7, v5, Lcom/android/server/appop/AppOpsService$NotedCallback;->mCallingUid:I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_17} :catch_34
    .catchall {:try_start_13 .. :try_end_17} :catchall_3d

    move-object/from16 v8, p0

    move/from16 v15, p2

    :try_start_1b
    invoke-virtual {v8, v15, v6, v7}, Lcom/android/server/appop/AppOpsService;->shouldIgnoreCallback(III)Z

    move-result v6

    if-eqz v6, :cond_22

    goto :goto_36

    .line 4471
    :cond_22
    iget-object v9, v5, Lcom/android/server/appop/AppOpsService$NotedCallback;->mCallback:Lcom/android/internal/app/IAppOpsNotedCallback;

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    invoke-interface/range {v9 .. v15}, Lcom/android/internal/app/IAppOpsNotedCallback;->opNoted(IILjava/lang/String;Ljava/lang/String;II)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_33} :catch_36
    .catchall {:try_start_1b .. :try_end_33} :catchall_3d

    goto :goto_36

    :catch_34
    move-object/from16 v8, p0

    :catch_36
    :goto_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 4478
    :cond_39
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_3d
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4479
    throw v0
.end method

.method public final notifyOpStarted(Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;IIIII)V
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$StartedCallback;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIII)V"
        }
    .end annotation

    .line 4411
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4413
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_3f

    move-object/from16 v4, p1

    .line 4415
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$StartedCallback;
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_43

    .line 4417
    :try_start_13
    iget v6, v5, Lcom/android/server/appop/AppOpsService$StartedCallback;->mCallingPid:I

    iget v7, v5, Lcom/android/server/appop/AppOpsService$StartedCallback;->mCallingUid:I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_17} :catch_3a
    .catchall {:try_start_13 .. :try_end_17} :catchall_43

    move-object/from16 v8, p0

    move/from16 v15, p2

    :try_start_1b
    invoke-virtual {v8, v15, v6, v7}, Lcom/android/server/appop/AppOpsService;->shouldIgnoreCallback(III)Z

    move-result v6

    if-eqz v6, :cond_22

    goto :goto_3c

    .line 4420
    :cond_22
    iget-object v9, v5, Lcom/android/server/appop/AppOpsService$StartedCallback;->mCallback:Lcom/android/internal/app/IAppOpsStartedCallback;

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    move/from16 v16, p8

    move/from16 v17, p9

    move/from16 v18, p10

    invoke-interface/range {v9 .. v18}, Lcom/android/internal/app/IAppOpsStartedCallback;->opStarted(IILjava/lang/String;Ljava/lang/String;IIIII)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_39} :catch_3c
    .catchall {:try_start_1b .. :try_end_39} :catchall_43

    goto :goto_3c

    :catch_3a
    move-object/from16 v8, p0

    :catch_3c
    :goto_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 4427
    :cond_3f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_43
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4428
    throw v0
.end method

.method public final notifyWatchersOfChange(II)V
    .registers 5

    .line 6952
    monitor-enter p0

    .line 6953
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-nez v0, :cond_d

    .line 6955
    monitor-exit p0

    return-void

    .line 6957
    :cond_d
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 6958
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_18

    const/4 v0, 0x0

    .line 6960
    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;)V

    return-void

    :catchall_18
    move-exception p1

    .line 6958
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public offsetHistory(J)V
    .registers 6

    .line 7071
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string/jumbo v2, "offsetHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7074
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/appop/HistoricalRegistry;->offsetHistory(J)V

    .line 7075
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/HistoricalRegistry;->offsetDiscreteHistory(J)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 5747
    new-instance v0, Lcom/android/server/appop/AppOpsService$Shell;

    invoke-direct {v0, p0, p0}, Lcom/android/server/appop/AppOpsService$Shell;-><init>(Lcom/android/internal/app/IAppOpsService;Lcom/android/server/appop/AppOpsService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public packageRemoved(ILjava/lang/String;)V
    .registers 12

    .line 2101
    monitor-enter p0

    .line 2102
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$UidState;

    if-nez v0, :cond_d

    .line 2104
    monitor-exit p0

    return-void

    :cond_d
    const/4 v1, 0x0

    .line 2110
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v2, :cond_18

    .line 2111
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$Ops;

    :cond_18
    if-eqz v1, :cond_2e

    .line 2115
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2116
    invoke-static {p1}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_2e

    .line 2117
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_2e
    if-eqz v1, :cond_80

    .line 2121
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 2123
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_39
    if-ge v3, v0, :cond_80

    .line 2125
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$Op;

    .line 2127
    iget-object v5, v4, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v6, v2

    :goto_48
    if-ge v6, v5, :cond_7d

    .line 2130
    iget-object v7, v4, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/AppOpsService$AttributedOp;

    .line 2132
    :goto_52
    invoke-virtual {v7}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_66

    .line 2133
    invoke-static {v7}, Lcom/android/server/appop/AppOpsService$AttributedOp;->-$$Nest$fgetmInProgressEvents(Lcom/android/server/appop/AppOpsService$AttributedOp;)Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Lcom/android/server/appop/AppOpsService$AttributedOp;->finished(Landroid/os/IBinder;)V

    goto :goto_52

    .line 2135
    :cond_66
    :goto_66
    invoke-virtual {v7}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isPaused()Z

    move-result v8

    if-eqz v8, :cond_7a

    .line 2136
    invoke-static {v7}, Lcom/android/server/appop/AppOpsService$AttributedOp;->-$$Nest$fgetmPausedInProgressEvents(Lcom/android/server/appop/AppOpsService$AttributedOp;)Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Lcom/android/server/appop/AppOpsService$AttributedOp;->finished(Landroid/os/IBinder;)V

    goto :goto_66

    :cond_7a
    add-int/lit8 v6, v6, 0x1

    goto :goto_48

    :cond_7d
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 2141
    :cond_80
    monitor-exit p0
    :try_end_81
    .catchall {:try_start_1 .. :try_end_81} :catchall_96

    .line 2143
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda13;-><init>()V

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 2144
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2143
    invoke-static {v1, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_96
    move-exception p1

    .line 2141
    :try_start_97
    monitor-exit p0
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    throw p1
.end method

.method public permissionToOpCode(Ljava/lang/String;)I
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, -0x1

    return p0

    .line 4487
    :cond_4
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final pruneOpLocked(Lcom/android/server/appop/AppOpsService$Op;ILjava/lang/String;)V
    .registers 12

    .line 2554
    invoke-virtual {p1}, Lcom/android/server/appop/AppOpsService$Op;->removeAttributionsWithNoTime()V

    .line 2556
    iget-object v0, p1, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_42

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    .line 2557
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object p3

    if-eqz p3, :cond_42

    .line 2559
    iget p1, p1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2560
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-gtz p1, :cond_42

    .line 2561
    iget-object p1, p3, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 2562
    iget-object v0, p1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_42

    .line 2564
    iget-object p3, p3, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2565
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_37

    const/4 p3, 0x0

    .line 2566
    iput-object p3, p1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 2568
    :cond_37
    invoke-virtual {p1}, Lcom/android/server/appop/AppOpsService$UidState;->isDefault()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 2569
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_42
    return-void
.end method

.method public publish()V
    .registers 3

    .line 1865
    invoke-virtual {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "appops"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1866
    const-class v0, Landroid/app/AppOpsManagerInternal;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsManagerInternal:Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 1868
    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mAppOpsPublished:Z

    return-void
.end method

.method public final readAttributionOp(Landroid/util/TypedXmlPullParser;Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 5261
    invoke-static {v1, v1, v2}, Lcom/android/server/appop/AppOpsService$Op;->-$$Nest$mgetOrCreateAttribution(Lcom/android/server/appop/AppOpsService$Op;Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$AttributedOp;

    move-result-object v11

    const/4 v1, 0x0

    const-string/jumbo v2, "n"

    .line 5263
    invoke-interface {v0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 5264
    invoke-static {v2, v3}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v12

    .line 5265
    invoke-static {v2, v3}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v13

    const-string/jumbo v2, "t"

    const-wide/16 v14, 0x0

    .line 5267
    invoke-interface {v0, v1, v2, v14, v15}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    const-string/jumbo v4, "tu"

    const/4 v5, 0x0

    .line 5269
    invoke-interface {v0, v1, v4, v5}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v10

    const-string/jumbo v4, "r"

    .line 5270
    invoke-interface {v0, v1, v4, v14, v15}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v16

    const-string/jumbo v4, "ru"

    .line 5272
    invoke-interface {v0, v1, v4, v5}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v18

    const-string v4, "d"

    const-wide/16 v5, -0x1

    .line 5273
    invoke-interface {v0, v1, v4, v5, v6}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    const-string/jumbo v6, "pp"

    .line 5274
    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "pu"

    const/4 v8, -0x1

    .line 5275
    invoke-interface {v0, v1, v7, v8}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v1, "pc"

    .line 5276
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    cmp-long v0, v2, v14

    if-lez v0, :cond_65

    move-object v0, v11

    move-wide v1, v2

    move-wide v3, v4

    move v5, v7

    move-object v7, v8

    move v8, v12

    move v9, v13

    .line 5279
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/AppOpsService$AttributedOp;->accessed(JJILjava/lang/String;Ljava/lang/String;III)V

    :cond_65
    cmp-long v0, v16, v14

    if-lez v0, :cond_73

    move-object v0, v11

    move-wide/from16 v1, v16

    move v3, v12

    move v4, v13

    move/from16 v5, v18

    .line 5283
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService$AttributedOp;->rejected(JIII)V

    :cond_73
    return-void
.end method

.method public final readNoteOpCallerStackTraces()V
    .registers 4

    .line 1813
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktracesFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1814
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktracesFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    return-void

    .line 1818
    :cond_e
    new-instance v0, Ljava/util/Scanner;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktracesFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_3c

    :try_start_15
    const-string v1, "\\},"

    .line 1819
    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 1820
    :goto_1a
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1821
    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v1

    .line 1822
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktraces:Landroid/util/ArraySet;

    invoke-static {v1}, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->fromJson(Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$NoteOpTrace;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catchall {:try_start_15 .. :try_end_2d} :catchall_32

    goto :goto_1a

    .line 1824
    :cond_2e
    :try_start_2e
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_3c

    goto :goto_44

    :catchall_32
    move-exception p0

    .line 1818
    :try_start_33
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_3b

    :catchall_37
    move-exception v0

    :try_start_38
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3b
    throw p0
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3c} :catch_3c

    :catch_3c
    move-exception p0

    const-string v0, "AppOps"

    const-string v1, "Cannot parse traces noteOps"

    .line 1826
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_44
    return-void
.end method

.method public final readOp(Landroid/util/TypedXmlPullParser;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "n"

    .line 5290
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 5291
    new-instance v1, Lcom/android/server/appop/AppOpsService$Op;

    iget v7, p2, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    move-object v2, v1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/appop/AppOpsService$Op;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;II)V

    .line 5293
    iget v2, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v2}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v2

    const-string/jumbo v3, "m"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 5294
    invoke-static {v1, v2}, Lcom/android/server/appop/AppOpsService$Op;->-$$Nest$fputmode(Lcom/android/server/appop/AppOpsService$Op;I)V

    const-string/jumbo v2, "u"

    const/4 v3, 0x0

    .line 5297
    invoke-interface {p1, v0, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_2f

    .line 5299
    iput v0, v1, Lcom/android/server/appop/AppOpsService$Op;->mSettedUid:I

    .line 5303
    :cond_2f
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 5305
    :cond_33
    :goto_33
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7f

    const/4 v3, 0x3

    if-ne v2, v3, :cond_43

    .line 5306
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_7f

    :cond_43
    if-eq v2, v3, :cond_33

    const/4 v3, 0x4

    if-ne v2, v3, :cond_49

    goto :goto_33

    .line 5310
    :cond_49
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "st"

    .line 5311
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    const-string/jumbo v2, "id"

    .line 5312
    invoke-static {p1, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/appop/AppOpsService;->readAttributionOp(Landroid/util/TypedXmlPullParser;Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)V

    goto :goto_33

    .line 5314
    :cond_61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element under <op>: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5315
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppOps"

    .line 5314
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5316
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_33

    .line 5320
    :cond_7f
    iget-object p0, p2, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez p0, :cond_8a

    .line 5321
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    iput-object p0, p2, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 5323
    :cond_8a
    iget-object p0, p2, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appop/AppOpsService$Ops;

    if-nez p0, :cond_9e

    .line 5325
    new-instance p0, Lcom/android/server/appop/AppOpsService$Ops;

    invoke-direct {p0, p3, p2}, Lcom/android/server/appop/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 5326
    iget-object p1, p2, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {p1, p3, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5328
    :cond_9e
    iget p1, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final readPackage(Landroid/util/TypedXmlPullParser;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "n"

    .line 5215
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5216
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 5218
    :cond_c
    :goto_c
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_51

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1c

    .line 5219
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_51

    :cond_1c
    if-eq v2, v3, :cond_c

    const/4 v3, 0x4

    if-ne v2, v3, :cond_22

    goto :goto_c

    .line 5224
    :cond_22
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "uid"

    .line 5225
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 5226
    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->readUid(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)V

    goto :goto_c

    .line 5228
    :cond_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element under <pkg>: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5229
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppOps"

    .line 5228
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5230
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_c

    :cond_51
    return-void
.end method

.method public readState()V
    .registers 10

    .line 5049
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 5050
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_17c

    .line 5053
    :try_start_4
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_a} :catch_156
    .catchall {:try_start_4 .. :try_end_a} :catchall_154

    .line 5059
    :try_start_a
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_154

    const/4 v2, -0x1

    .line 5061
    :try_start_10
    invoke-static {v1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v3

    .line 5063
    :goto_14
    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v4, v6, :cond_1f

    if-eq v4, v5, :cond_1f

    goto :goto_14

    :cond_1f
    if-ne v4, v6, :cond_83

    const/4 v4, 0x0

    const-string/jumbo v6, "v"

    .line 5072
    invoke-interface {v3, v4, v6, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 5074
    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    .line 5075
    :cond_2d
    :goto_2d
    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v6

    if-eq v6, v5, :cond_7e

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3c

    .line 5076
    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v4, :cond_7e

    :cond_3c
    if-eq v6, v7, :cond_2d

    const/4 v7, 0x4

    if-ne v6, v7, :cond_42

    goto :goto_2d

    .line 5081
    :cond_42
    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "pkg"

    .line 5082
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_53

    .line 5083
    invoke-virtual {p0, v3}, Lcom/android/server/appop/AppOpsService;->readPackage(Landroid/util/TypedXmlPullParser;)V

    goto :goto_2d

    :cond_53
    const-string/jumbo v7, "uid"

    .line 5084
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60

    .line 5085
    invoke-virtual {p0, v3}, Lcom/android/server/appop/AppOpsService;->readUidOps(Landroid/util/TypedXmlPullParser;)V

    goto :goto_2d

    :cond_60
    const-string v6, "AppOps"

    .line 5087
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown element under <app-ops>: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5088
    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5087
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5089
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_7d
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_7d} :catch_122
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_7d} :catch_104
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_7d} :catch_e6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_7d} :catch_c9
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_7d} :catch_ac
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_10 .. :try_end_7d} :catch_8f
    .catchall {:try_start_10 .. :try_end_7d} :catchall_8c

    goto :goto_2d

    .line 5110
    :cond_7e
    :goto_7e
    :try_start_7e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_140
    .catchall {:try_start_7e .. :try_end_81} :catchall_154

    goto/16 :goto_140

    .line 5069
    :cond_83
    :try_start_83
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "no start tag found"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_8c
    .catch Ljava/lang/IllegalStateException; {:try_start_83 .. :try_end_8c} :catch_122
    .catch Ljava/lang/NullPointerException; {:try_start_83 .. :try_end_8c} :catch_104
    .catch Ljava/lang/NumberFormatException; {:try_start_83 .. :try_end_8c} :catch_e6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_83 .. :try_end_8c} :catch_c9
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_8c} :catch_ac
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_83 .. :try_end_8c} :catch_8f
    .catchall {:try_start_83 .. :try_end_8c} :catchall_8c

    :catchall_8c
    move-exception v2

    goto/16 :goto_14b

    :catch_8f
    move-exception v3

    :try_start_90
    const-string v4, "AppOps"

    .line 5104
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catchall {:try_start_90 .. :try_end_a6} :catchall_8c

    .line 5107
    :try_start_a6
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_ab
    .catchall {:try_start_a6 .. :try_end_ab} :catchall_154

    goto :goto_7e

    :catch_ac
    move-exception v3

    :try_start_ad
    const-string v4, "AppOps"

    .line 5102
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c3
    .catchall {:try_start_ad .. :try_end_c3} :catchall_8c

    .line 5107
    :try_start_c3
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_c8
    .catchall {:try_start_c3 .. :try_end_c8} :catchall_154

    goto :goto_7e

    :catch_c9
    move-exception v3

    :try_start_ca
    const-string v4, "AppOps"

    .line 5100
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e0
    .catchall {:try_start_ca .. :try_end_e0} :catchall_8c

    .line 5107
    :try_start_e0
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_e5
    .catchall {:try_start_e0 .. :try_end_e5} :catchall_154

    goto :goto_7e

    :catch_e6
    move-exception v3

    :try_start_e7
    const-string v4, "AppOps"

    .line 5098
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fd
    .catchall {:try_start_e7 .. :try_end_fd} :catchall_8c

    .line 5107
    :try_start_fd
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_102
    .catchall {:try_start_fd .. :try_end_102} :catchall_154

    goto/16 :goto_7e

    :catch_104
    move-exception v3

    :try_start_105
    const-string v4, "AppOps"

    .line 5096
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11b
    .catchall {:try_start_105 .. :try_end_11b} :catchall_8c

    .line 5107
    :try_start_11b
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_120
    .catchall {:try_start_11b .. :try_end_120} :catchall_154

    goto/16 :goto_7e

    :catch_122
    move-exception v3

    :try_start_123
    const-string v4, "AppOps"

    .line 5094
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_139
    .catchall {:try_start_123 .. :try_end_139} :catchall_8c

    .line 5107
    :try_start_139
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    goto/16 :goto_7e

    .line 5114
    :catch_140
    :goto_140
    monitor-exit p0
    :try_end_141
    .catchall {:try_start_139 .. :try_end_141} :catchall_154

    .line 5115
    :try_start_141
    monitor-exit v0
    :try_end_142
    .catchall {:try_start_141 .. :try_end_142} :catchall_17c

    .line 5116
    monitor-enter p0

    .line 5117
    :try_start_143
    invoke-virtual {p0, v2}, Lcom/android/server/appop/AppOpsService;->upgradeLocked(I)V

    .line 5118
    monitor-exit p0

    return-void

    :catchall_148
    move-exception v0

    monitor-exit p0
    :try_end_14a
    .catchall {:try_start_143 .. :try_end_14a} :catchall_148

    throw v0

    .line 5107
    :goto_14b
    :try_start_14b
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_150
    .catchall {:try_start_14b .. :try_end_150} :catchall_154

    .line 5110
    :try_start_150
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_153
    .catch Ljava/io/IOException; {:try_start_150 .. :try_end_153} :catch_153
    .catchall {:try_start_150 .. :try_end_153} :catchall_154

    .line 5113
    :catch_153
    :try_start_153
    throw v2

    :catchall_154
    move-exception v1

    goto :goto_17a

    :catch_156
    const-string v1, "AppOps"

    .line 5055
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No existing app ops "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; starting empty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5056
    monitor-exit p0
    :try_end_178
    .catchall {:try_start_153 .. :try_end_178} :catchall_154

    :try_start_178
    monitor-exit v0
    :try_end_179
    .catchall {:try_start_178 .. :try_end_179} :catchall_17c

    return-void

    .line 5114
    :goto_17a
    :try_start_17a
    monitor-exit p0
    :try_end_17b
    .catchall {:try_start_17a .. :try_end_17b} :catchall_154

    :try_start_17b
    throw v1

    :catchall_17c
    move-exception p0

    .line 5115
    monitor-exit v0
    :try_end_17e
    .catchall {:try_start_17b .. :try_end_17e} :catchall_17c

    throw p0
.end method

.method public final readUid(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "n"

    .line 5237
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    .line 5238
    invoke-virtual {p0, v0, v1}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v0

    .line 5239
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v2

    .line 5241
    :cond_11
    :goto_11
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v3

    if-eq v3, v1, :cond_55

    const/4 v4, 0x3

    if-ne v3, v4, :cond_20

    .line 5242
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v2, :cond_55

    :cond_20
    if-eq v3, v4, :cond_11

    const/4 v4, 0x4

    if-ne v3, v4, :cond_26

    goto :goto_11

    .line 5246
    :cond_26
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "op"

    .line 5247
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 5248
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/appop/AppOpsService;->readOp(Landroid/util/TypedXmlPullParser;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;)V

    goto :goto_11

    .line 5250
    :cond_37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <pkg>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5251
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppOps"

    .line 5250
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5252
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_11

    .line 5255
    :cond_55
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    return-void
.end method

.method public final readUidOps(Landroid/util/TypedXmlPullParser;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "n"

    .line 5174
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 5175
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    .line 5177
    :cond_c
    :goto_c
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_81

    const/4 v6, 0x3

    if-ne v4, v6, :cond_1c

    .line 5178
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v3, :cond_81

    :cond_1c
    if-eq v4, v6, :cond_c

    const/4 v6, 0x4

    if-ne v4, v6, :cond_22

    goto :goto_c

    .line 5183
    :cond_22
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "op"

    .line 5184
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 5185
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v6, "m"

    .line 5186
    invoke-interface {p1, v0, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v7, "u"

    .line 5188
    invoke-interface {p1, v0, v7}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5189
    invoke-virtual {p0, v2, v5}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v5

    if-eqz v5, :cond_5f

    .line 5191
    iget-object v8, v5, Lcom/android/server/appop/AppOpsService$UidState;->setOpUids:Landroid/util/SparseIntArray;

    if-nez v8, :cond_52

    .line 5192
    new-instance v8, Landroid/util/SparseIntArray;

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v8, v5, Lcom/android/server/appop/AppOpsService$UidState;->setOpUids:Landroid/util/SparseIntArray;

    :cond_52
    if-eqz v7, :cond_5f

    .line 5196
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_5f

    .line 5199
    iget-object v5, v5, Lcom/android/server/appop/AppOpsService$UidState;->setOpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 5204
    :cond_5f
    invoke-virtual {p0, v4, v2, v6}, Lcom/android/server/appop/AppOpsService;->setUidMode(III)V

    goto :goto_c

    .line 5206
    :cond_63
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <uid-ops>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5207
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AppOps"

    .line 5206
    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5208
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_c

    :cond_81
    return-void
.end method

.method public rebootHistory(J)V
    .registers 6

    .line 7104
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string/jumbo v2, "rebootHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 7107
    :goto_13
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 7110
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v1}, Lcom/android/server/appop/HistoricalRegistry;->shutdown()V

    if-lez v0, :cond_20

    .line 7113
    invoke-static {p1, p2}, Landroid/os/SystemClock;->sleep(J)V

    .line 7116
    :cond_20
    new-instance p1, Lcom/android/server/appop/HistoricalRegistry;

    iget-object p2, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-direct {p1, p2}, Lcom/android/server/appop/HistoricalRegistry;-><init>(Lcom/android/server/appop/HistoricalRegistry;)V

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    .line 7117
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object p2, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/appop/HistoricalRegistry;->systemReady(Landroid/content/ContentResolver;)V

    .line 7118
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry;->persistPendingHistory()V

    return-void
.end method

.method public reloadNonHistoricalState()V
    .registers 6

    .line 2526
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 2527
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_APPOPS"

    const-string/jumbo v4, "reloadNonHistoricalState"

    .line 2526
    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2528
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->writeState()V

    .line 2529
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->readState()V

    return-void
.end method

.method public final removeUidsForUserLocked(I)V
    .registers 4

    .line 7374
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1e

    .line 7375
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 7376
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_1b

    .line 7377
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1e
    return-void
.end method

.method public removeUser(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "removeUser"

    .line 6965
    invoke-virtual {p0, v0}, Lcom/android/server/appop/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 6966
    monitor-enter p0

    .line 6967
    :try_start_7
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_f
    if-ltz v0, :cond_1f

    .line 6969
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;

    .line 6970
    invoke-virtual {v1, p1}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->removeUser(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 6972
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->removeUidsForUserLocked(I)V

    .line 6973
    monitor-exit p0

    return-void

    :catchall_24
    move-exception p1

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    throw p1
.end method

.method public reportRuntimeAppOpAccessMessageAndGetConfig(Ljava/lang/String;Landroid/app/SyncNotedAppOp;Ljava/lang/String;)Lcom/android/internal/app/MessageSamplingConfig;
    .registers 12

    .line 7133
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 7134
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7135
    monitor-enter p0

    .line 7136
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->switchPackageIfBootTimeOrRarelyUsedLocked(Ljava/lang/String;)V

    .line 7137
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v6, 0x1

    if-nez v0, :cond_2c

    .line 7138
    new-instance p1, Lcom/android/internal/app/MessageSamplingConfig;

    const/4 p2, -0x1

    const/4 p3, 0x0

    .line 7139
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v0, v6, v7, v1}, Ljava/time/Instant;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/internal/app/MessageSamplingConfig;-><init>(IIJ)V

    monitor-exit p0

    return-object p1

    .line 7142
    :cond_2c
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7143
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7146
    invoke-virtual {p2}, Landroid/app/SyncNotedAppOp;->getOp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v3

    .line 7147
    invoke-virtual {p2}, Landroid/app/SyncNotedAppOp;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v2, p1

    move-object v5, p3

    .line 7145
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService;->reportRuntimeAppOpAccessMessageInternalLocked(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 7149
    new-instance p1, Lcom/android/internal/app/MessageSamplingConfig;

    iget p2, p0, Lcom/android/server/appop/AppOpsService;->mSampledAppOpCode:I

    iget p3, p0, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    .line 7150
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v0, v6, v7, v1}, Ljava/time/Instant;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/internal/app/MessageSamplingConfig;-><init>(IIJ)V

    monitor-exit p0

    return-object p1

    :catchall_5d
    move-exception p1

    .line 7151
    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_8 .. :try_end_5f} :catchall_5d

    throw p1
.end method

.method public final reportRuntimeAppOpAccessMessageAsyncLocked(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 7166
    invoke-virtual {p0, p2}, Lcom/android/server/appop/AppOpsService;->switchPackageIfBootTimeOrRarelyUsedLocked(Ljava/lang/String;)V

    .line 7167
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 7170
    :cond_c
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->reportRuntimeAppOpAccessMessageInternalLocked(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final reportRuntimeAppOpAccessMessageInternalLocked(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 7181
    iget v0, p0, Lcom/android/server/appop/AppOpsService;->mSampledAppOpCode:I

    const/16 v1, 0x79

    invoke-static {p3, v0, v1}, Landroid/app/AppOpsManager;->leftCircularDistance(III)I

    move-result v0

    .line 7184
    iget v1, p0, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    const/4 v2, 0x4

    if-ge v1, v0, :cond_12

    iget v3, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    if-eq v3, v2, :cond_12

    return-void

    :cond_12
    if-le v1, v0, :cond_1d

    .line 7189
    iget v1, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    if-eq v1, v2, :cond_1d

    .line 7191
    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    const/4 v0, 0x0

    .line 7192
    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    .line 7195
    :cond_1d
    iget v0, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    .line 7196
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    move-result v0

    iget v2, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_42

    .line 7197
    new-instance v0, Landroid/app/RuntimeAppOpAccessMessage;

    iget v7, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    move-object v1, v0

    move v2, p1

    move v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Landroid/app/RuntimeAppOpAccessMessage;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCollectedRuntimePermissionMessage:Landroid/app/RuntimeAppOpAccessMessage;

    :cond_42
    return-void
.end method

.method public requestPermissionAccessInformation()V
    .registers 3

    const-string v0, "AppOps"

    const-string/jumbo v1, "requestPermissionAccessInformation"

    .line 4492
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4495
    :try_start_8
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mPermissionAccessInformationController:Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;

    invoke-virtual {p0}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->flush()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_16

    :catch_e
    move-exception p0

    .line 4497
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    return-void
.end method

.method public final resampleAppOpForPackageLocked(Ljava/lang/String;Z)V
    .registers 4

    const/4 v0, 0x0

    .line 7272
    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mMessagesCollectedCount:F

    if-eqz p2, :cond_10

    .line 7273
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p2

    const/16 v0, 0x79

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result p2

    goto :goto_11

    :cond_10
    const/4 p2, -0x1

    :goto_11
    iput p2, p0, Lcom/android/server/appop/AppOpsService;->mSampledAppOpCode:I

    const/16 p2, 0x78

    .line 7274
    iput p2, p0, Lcom/android/server/appop/AppOpsService;->mAcceptableLeftDistance:I

    .line 7275
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    return-void
.end method

.method public final resamplePackageAndAppOpLocked(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7257
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    .line 7258
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2d

    const/4 v0, 0x1

    .line 7259
    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    .line 7261
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v1

    .line 7260
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->resampleAppOpForPackageLocked(Ljava/lang/String;Z)V

    goto :goto_46

    :cond_2d
    const/4 v0, 0x4

    .line 7263
    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    .line 7265
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v0

    .line 7264
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->resampleAppOpForPackageLocked(Ljava/lang/String;Z)V

    :cond_46
    :goto_46
    return-void
.end method

.method public resetAllModes(ILjava/lang/String;)V
    .registers 28

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    .line 3086
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3087
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v13, "resetAllModes"

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v14, 0x0

    move v8, v1

    move v9, v2

    move/from16 v10, p1

    .line 3088
    invoke-static/range {v8 .. v14}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eqz v0, :cond_28

    .line 3094
    :try_start_1d
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    const-wide/16 v8, 0x2000

    invoke-interface {v5, v0, v8, v9, v3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v5
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_27} :catch_28

    goto :goto_29

    :catch_28
    :cond_28
    move v5, v4

    .line 3101
    :goto_29
    invoke-virtual {v7, v1, v2, v5}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 3104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3105
    monitor-enter p0

    .line 3107
    :try_start_32
    iget-object v2, v7, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v6, 0x1

    sub-int/2addr v2, v6

    const/4 v8, 0x0

    move-object v10, v1

    move-object v11, v8

    const/4 v1, 0x0

    :goto_3e
    if-ltz v2, :cond_1d0

    .line 3108
    iget-object v12, v7, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v12, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/appop/AppOpsService$UidState;

    .line 3110
    iget-object v13, v12, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v13, :cond_d0

    .line 3111
    iget v14, v12, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    if-eq v14, v5, :cond_52

    if-ne v5, v4, :cond_d0

    .line 3112
    :cond_52
    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    move-result v14

    sub-int/2addr v14, v6

    :goto_57
    if-ltz v14, :cond_d0

    .line 3114
    invoke-virtual {v13, v14}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    .line 3115
    invoke-static {v15}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v16

    if-eqz v16, :cond_c6

    .line 3116
    invoke-virtual {v13, v14}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    .line 3117
    invoke-virtual {v13, v14}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 3118
    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    move-result v16

    if-gtz v16, :cond_72

    .line 3119
    iput-object v8, v12, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 3121
    :cond_72
    iget v8, v12, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v8}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    array-length v6, v8

    const/4 v4, 0x0

    :goto_7a
    if-ge v4, v6, :cond_c6

    move/from16 v21, v5

    aget-object v5, v8, v4

    move/from16 v22, v6

    .line 3122
    iget v6, v12, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    move-object/from16 v23, v8

    iget-object v8, v7, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 3123
    invoke-virtual {v8, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v20, v8

    check-cast v20, Landroid/util/ArraySet;

    move v8, v15

    move-object v15, v11

    move/from16 v16, v8

    move/from16 v17, v6

    move-object/from16 v18, v5

    move/from16 v19, v9

    .line 3122
    invoke-static/range {v15 .. v20}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;ILandroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v15

    .line 3124
    iget v6, v12, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    iget-object v11, v7, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 3125
    invoke-virtual {v11, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v20, v11

    check-cast v20, Landroid/util/ArraySet;

    move/from16 v16, v8

    move/from16 v17, v6

    move-object/from16 v18, v5

    move/from16 v19, v9

    .line 3124
    invoke-static/range {v15 .. v20}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;ILandroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v11

    .line 3127
    iget v6, v12, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v10, v8, v6, v5, v9}, Lcom/android/server/appop/AppOpsService;->addChange(Ljava/util/ArrayList;IILjava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v4, v4, 0x1

    move v15, v8

    move/from16 v5, v21

    move/from16 v6, v22

    move-object/from16 v8, v23

    goto :goto_7a

    :cond_c6
    move/from16 v21, v5

    add-int/lit8 v14, v14, -0x1

    move/from16 v5, v21

    const/4 v4, -0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    goto :goto_57

    :cond_d0
    move/from16 v21, v5

    .line 3134
    iget-object v4, v12, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v4, :cond_d8

    const/4 v4, -0x1

    goto :goto_e3

    :cond_d8
    const/4 v4, -0x1

    if-eq v3, v4, :cond_e7

    .line 3138
    iget v5, v12, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 3139
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-eq v3, v5, :cond_e7

    :goto_e3
    const/16 v19, 0x1

    goto/16 :goto_1c6

    .line 3144
    :cond_e7
    iget-object v5, v12, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 3145
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    .line 3147
    :goto_f2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1b0

    .line 3148
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 3149
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v0, :cond_10d

    .line 3150
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10d

    goto :goto_f2

    .line 3154
    :cond_10d
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appop/AppOpsService$Ops;

    .line 3155
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v13

    const/16 v19, 0x1

    add-int/lit8 v13, v13, -0x1

    move/from16 v24, v13

    move-object v13, v11

    move/from16 v11, v24

    :goto_120
    if-ltz v11, :cond_1a3

    .line 3156
    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Lcom/android/server/appop/AppOpsService$Op;

    .line 3157
    iget v14, v15, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-virtual {v7, v14}, Lcom/android/server/appop/AppOpsService;->shouldDeferResetOpToDpm(I)Z

    move-result v14

    if-eqz v14, :cond_137

    .line 3158
    iget v14, v15, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-virtual {v7, v14, v0, v3}, Lcom/android/server/appop/AppOpsService;->deferResetOpToDpm(ILjava/lang/String;I)V

    goto :goto_19e

    .line 3161
    :cond_137
    iget v14, v15, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v14}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v14

    if-eqz v14, :cond_19e

    invoke-static {v15}, Lcom/android/server/appop/AppOpsService$Op;->-$$Nest$fgetmode(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v14

    iget v4, v15, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 3162
    invoke-static {v4}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v4

    if-eq v14, v4, :cond_19e

    .line 3163
    invoke-static {v15}, Lcom/android/server/appop/AppOpsService$Op;->-$$Nest$fgetmode(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v1

    .line 3164
    iget v4, v15, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v4}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v4

    invoke-static {v15, v4}, Lcom/android/server/appop/AppOpsService$Op;->-$$Nest$fputmode(Lcom/android/server/appop/AppOpsService$Op;I)V

    .line 3167
    iget-object v4, v15, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v4, v4, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 3168
    iget v14, v15, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v6, v7, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 3169
    invoke-virtual {v6, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v18, v6

    check-cast v18, Landroid/util/ArraySet;

    move-object v6, v15

    move v15, v4

    move-object/from16 v16, v9

    move/from16 v17, v1

    .line 3168
    invoke-static/range {v13 .. v18}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;ILandroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v13

    .line 3170
    iget v14, v6, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v15, v7, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 3171
    invoke-virtual {v15, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v18, v15

    check-cast v18, Landroid/util/ArraySet;

    move v15, v4

    move-object/from16 v16, v9

    move/from16 v17, v1

    .line 3170
    invoke-static/range {v13 .. v18}, Lcom/android/server/appop/AppOpsService;->addCallbacks(Ljava/util/HashMap;IILjava/lang/String;ILandroid/util/ArraySet;)Ljava/util/HashMap;

    move-result-object v13

    .line 3173
    iget v14, v6, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v10, v14, v4, v9, v1}, Lcom/android/server/appop/AppOpsService;->addChange(Ljava/util/ArrayList;IILjava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v10

    .line 3175
    invoke-virtual {v6}, Lcom/android/server/appop/AppOpsService$Op;->removeAttributionsWithNoTime()V

    .line 3176
    iget-object v1, v6, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19b

    .line 3177
    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_19b
    move/from16 v1, v19

    move v6, v1

    :cond_19e
    :goto_19e
    add-int/lit8 v11, v11, -0x1

    const/4 v4, -0x1

    goto/16 :goto_120

    .line 3181
    :cond_1a3
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_1ac

    .line 3182
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    :cond_1ac
    move-object v11, v13

    const/4 v4, -0x1

    goto/16 :goto_f2

    :cond_1b0
    const/16 v19, 0x1

    .line 3185
    invoke-virtual {v12}, Lcom/android/server/appop/AppOpsService$UidState;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_1bf

    .line 3186
    iget-object v4, v7, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    iget v5, v12, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    :cond_1bf
    if-eqz v6, :cond_1c6

    .line 3189
    iget-object v4, v7, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v12, v4}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    :cond_1c6
    :goto_1c6
    add-int/lit8 v2, v2, -0x1

    move/from16 v6, v19

    move/from16 v5, v21

    const/4 v4, -0x1

    const/4 v8, 0x0

    goto/16 :goto_3e

    :cond_1d0
    if-eqz v1, :cond_1d5

    .line 3194
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 3196
    :cond_1d5
    monitor-exit p0
    :try_end_1d6
    .catchall {:try_start_32 .. :try_end_1d6} :catchall_24c

    if-eqz v11, :cond_22a

    .line 3198
    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1e0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3199
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/server/appop/AppOpsService$ModeCallback;

    .line 3200
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/util/ArrayList;

    const/4 v11, 0x0

    .line 3201
    :goto_1fb
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_1e0

    .line 3202
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$ChangeRec;

    .line 3203
    iget-object v12, v7, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda5;-><init>()V

    iget v3, v1, Lcom/android/server/appop/AppOpsService$ChangeRec;->op:I

    .line 3205
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v3, v1, Lcom/android/server/appop/AppOpsService$ChangeRec;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    move-object v1, v2

    move-object/from16 v2, p0

    move-object v3, v8

    .line 3203
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_1fb

    .line 3210
    :cond_22a
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v9, 0x0

    :goto_22f
    if-ge v9, v0, :cond_24b

    .line 3212
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$ChangeRec;

    .line 3213
    iget v2, v1, Lcom/android/server/appop/AppOpsService$ChangeRec;->op:I

    iget v3, v1, Lcom/android/server/appop/AppOpsService$ChangeRec;->uid:I

    iget-object v4, v1, Lcom/android/server/appop/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    .line 3214
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v5

    iget v6, v1, Lcom/android/server/appop/AppOpsService$ChangeRec;->previous_mode:I

    move-object/from16 v1, p0

    .line 3213
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedSync(IILjava/lang/String;II)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_22f

    :cond_24b
    return-void

    :catchall_24c
    move-exception v0

    .line 3196
    :try_start_24d
    monitor-exit p0
    :try_end_24e
    .catchall {:try_start_24d .. :try_end_24e} :catchall_24c

    throw v0
.end method

.method public resetHistoryParameters()V
    .registers 4

    .line 7088
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string/jumbo v2, "resetHistoryParameters"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7091
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry;->resetHistoryParameters()V

    return-void
.end method

.method public resetPackageOpsNoHistory(Ljava/lang/String;)V
    .registers 6

    .line 7041
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string/jumbo v2, "resetPackageOpsNoHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7043
    monitor-enter p0

    .line 7044
    :try_start_b
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x0

    .line 7045
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 7044
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    .line 7047
    monitor-exit p0

    return-void

    .line 7049
    :cond_1c
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$UidState;

    if-eqz v0, :cond_38

    .line 7050
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_2b

    goto :goto_38

    .line 7053
    :cond_2b
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/appop/AppOpsService$Ops;

    if-eqz p1, :cond_36

    .line 7055
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 7057
    :cond_36
    monitor-exit p0

    return-void

    .line 7051
    :cond_38
    :goto_38
    monitor-exit p0

    return-void

    :catchall_3a
    move-exception p1

    .line 7057
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_b .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method public final scheduleFastWriteLocked()V
    .registers 4

    .line 4945
    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mFastWriteScheduled:Z

    if-nez v0, :cond_19

    const/4 v0, 0x1

    .line 4946
    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    .line 4947
    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mFastWriteScheduled:Z

    .line 4948
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4949
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_19
    return-void
.end method

.method public final scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;ZII)V
    .registers 19

    move-object v1, p0

    .line 4326
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_33

    .line 4328
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    move v5, p1

    .line 4329
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$ActiveCallback;

    if-eqz v4, :cond_2f

    .line 4331
    iget v6, v4, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mWatchingUid:I

    move v7, p2

    if-ltz v6, :cond_24

    if-eq v6, v7, :cond_24

    goto :goto_30

    :cond_24
    if-nez v2, :cond_2b

    .line 4335
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 4337
    :cond_2b
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_2f
    move v7, p2

    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_33
    move v5, p1

    move v7, p2

    if-nez v2, :cond_38

    return-void

    .line 4343
    :cond_38
    iget-object v10, v1, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda0;-><init>()V

    .line 4345
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 4346
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v1, p0

    move-object v5, p3

    move-object v6, p4

    .line 4343
    invoke-static/range {v0 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/NonaConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final scheduleOpNotedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;II)V
    .registers 17

    move-object v1, p0

    .line 4434
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_33

    .line 4436
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    move v5, p1

    .line 4437
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$NotedCallback;

    if-eqz v4, :cond_2f

    .line 4439
    iget v6, v4, Lcom/android/server/appop/AppOpsService$NotedCallback;->mWatchingUid:I

    move v7, p2

    if-ltz v6, :cond_24

    if-eq v6, v7, :cond_24

    goto :goto_30

    :cond_24
    if-nez v2, :cond_2b

    .line 4443
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 4445
    :cond_2b
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_2f
    move v7, p2

    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_33
    move v5, p1

    move v7, p2

    if-nez v2, :cond_38

    return-void

    .line 4451
    :cond_38
    iget-object v9, v1, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda14;-><init>()V

    .line 4453
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 4454
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v1, p0

    move-object v5, p3

    move-object v6, p4

    .line 4451
    invoke-static/range {v0 .. v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/OctConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final scheduleOpStartedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IIIII)V
    .registers 23

    move-object v1, p0

    .line 4380
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_33

    .line 4382
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    move v5, p1

    .line 4384
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$StartedCallback;

    if-eqz v4, :cond_2f

    .line 4386
    iget v6, v4, Lcom/android/server/appop/AppOpsService$StartedCallback;->mWatchingUid:I

    move v7, p2

    if-ltz v6, :cond_24

    if-eq v6, v7, :cond_24

    goto :goto_30

    :cond_24
    if-nez v2, :cond_2b

    .line 4391
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 4393
    :cond_2b
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_2f
    move v7, p2

    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_33
    move v5, p1

    move v7, p2

    if-nez v2, :cond_38

    return-void

    .line 4401
    :cond_38
    iget-object v12, v1, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda10;-><init>()V

    .line 4403
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 4404
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v1, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 4401
    invoke-static/range {v0 .. v11}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/UndecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final scheduleWriteLocked()V
    .registers 4

    .line 4938
    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    .line 4939
    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    .line 4940
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/32 v1, 0x1b7740

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    return-void
.end method

.method public setAppOpsPolicy(Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V
    .registers 4

    .line 2094
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    if-eqz v0, :cond_9

    .line 2096
    invoke-static {v0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->-$$Nest$fgetmCheckOpsDelegate(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 2097
    :goto_a
    new-instance v1, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V

    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    return-void
.end method

.method public setAppOpsServiceDelegate(Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V
    .registers 4

    .line 3338
    monitor-enter p0

    .line 3339
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    if-eqz v0, :cond_a

    .line 3340
    invoke-static {v0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->-$$Nest$fgetmPolicy(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    move-result-object v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 3341
    :goto_b
    new-instance v1, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V

    iput-object v1, p0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 3342
    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setAudioRestriction(IIII[Ljava/lang/String;)V
    .registers 14

    .line 3429
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 3430
    invoke-virtual {p0, p3}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 3431
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 3433
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/appop/AudioRestrictionManager;->setZenModeAudioRestriction(IIII[Ljava/lang/String;)V

    .line 3436
    iget-object p2, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;

    invoke-direct {p3}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;-><init>()V

    .line 3437
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p4, -0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 3436
    invoke-static {p3, p0, p1, p4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setCameraAudioRestriction(I)V
    .registers 5

    .line 3443
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 3445
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAudioRestrictionManager:Lcom/android/server/appop/AudioRestrictionManager;

    invoke-virtual {v0, p1}, Lcom/android/server/appop/AudioRestrictionManager;->setCameraAudioRestriction(I)V

    .line 3447
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;-><init>()V

    const/16 v1, 0x1c

    .line 3449
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3447
    invoke-static {v0, p0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3450
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;-><init>()V

    const/4 v1, 0x3

    .line 3452
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3450
    invoke-static {v0, p0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setHistoryParameters(IJI)V
    .registers 14

    .line 7063
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string/jumbo v2, "setHistoryParameters"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7066
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    int-to-long v7, p4

    move v4, p1

    move-wide v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/appop/HistoricalRegistry;->setHistoryParameters(IJJ)V

    return-void
.end method

.method public setMode(IILjava/lang/String;I)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 2896
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService;->setMode(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    return-void
.end method

.method public final setMode(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    .registers 25

    move-object/from16 v9, p0

    move/from16 v0, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    .line 2901
    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v1, :cond_47

    const-string v1, "AppOps"

    .line 2902
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMode() uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " OP_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " := "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " by uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2903
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2902
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2905
    :cond_47
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v9, v1, v2, v0}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 2906
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 2908
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/appop/AppOpsService;->isModeChangeAllowedForCode(I)Z

    move-result v1

    if-nez v1, :cond_5c

    return-void

    .line 2913
    :cond_5c
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v9, v10, v1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingPackage(Ljava/lang/String;I)V

    .line 2916
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v12

    .line 2918
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v13, 0x1

    if-nez v1, :cond_78

    const-string v1, "AppOps"

    const-string/jumbo v2, "setMode() :: CallingUid is SS_SHELL_UID"

    .line 2921
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v14, v13

    goto :goto_79

    :cond_78
    move v14, v1

    :goto_79
    const/4 v15, 0x0

    .line 2927
    :try_start_7a
    invoke-virtual {v9, v0, v10, v15}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object v1
    :try_end_7e
    .catch Ljava/lang/SecurityException; {:try_start_7a .. :try_end_7e} :catch_13f

    const/16 v16, 0x3

    .line 2934
    monitor-enter p0

    const/4 v8, 0x0

    .line 2935
    :try_start_82
    invoke-virtual {v9, v0, v8}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2936
    iget-object v4, v1, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    const/16 v17, 0x1

    move-object/from16 v1, p0

    move v2, v12

    move/from16 v3, p2

    move-object/from16 v18, v4

    move-object/from16 v4, p3

    move-object v15, v7

    move-object/from16 v7, v18

    move/from16 v18, v8

    move/from16 v8, v17

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->getOpLocked(IILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v1

    if-eqz v1, :cond_10f

    .line 2938
    invoke-static {v1}, Lcom/android/server/appop/AppOpsService$Op;->-$$Nest$fgetmode(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v2

    if-eq v2, v11, :cond_10f

    .line 2939
    invoke-static {v1}, Lcom/android/server/appop/AppOpsService$Op;->-$$Nest$fgetmode(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v2

    .line 2940
    invoke-static {v1, v11}, Lcom/android/server/appop/AppOpsService$Op;->-$$Nest$fputmode(Lcom/android/server/appop/AppOpsService$Op;I)V

    if-eqz v15, :cond_b6

    .line 2942
    iget-object v3, v9, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v15, v3}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    .line 2944
    :cond_b6
    iget-object v3, v9, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    if-eqz v3, :cond_c9

    .line 2947
    new-instance v15, Landroid/util/ArraySet;

    invoke-direct {v15}, Landroid/util/ArraySet;-><init>()V

    .line 2949
    invoke-virtual {v15, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_ca

    :cond_c9
    const/4 v15, 0x0

    .line 2951
    :goto_ca
    iget-object v3, v9, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    if-eqz v3, :cond_df

    if-nez v15, :cond_dc

    .line 2954
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    move-object v15, v4

    .line 2956
    :cond_dc
    invoke-virtual {v15, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    :cond_df
    if-eqz v15, :cond_f0

    if-eqz p5, :cond_f0

    .line 2959
    iget-object v3, v9, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface/range {p5 .. p5}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2961
    :cond_f0
    iget v3, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v3

    if-ne v11, v3, :cond_fb

    .line 2964
    invoke-virtual {v9, v1, v0, v10}, Lcom/android/server/appop/AppOpsService;->pruneOpLocked(Lcom/android/server/appop/AppOpsService$Op;ILjava/lang/String;)V

    .line 2967
    :cond_fb
    iput v14, v1, Lcom/android/server/appop/AppOpsService$Op;->mSettedUid:I

    .line 2968
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    const/4 v1, 0x2

    if-eq v11, v1, :cond_10b

    if-ne v11, v13, :cond_106

    goto :goto_108

    :cond_106
    move/from16 v13, v18

    .line 2970
    :goto_108
    invoke-virtual {v9, v12, v13, v0}, Lcom/android/server/appop/AppOpsService;->updateStartedOpModeForUidLocked(IZI)V

    :cond_10b
    move/from16 v16, v2

    move-object v3, v15

    goto :goto_110

    :cond_10f
    const/4 v3, 0x0

    .line 2974
    :goto_110
    monitor-exit p0
    :try_end_111
    .catchall {:try_start_82 .. :try_end_111} :catchall_13c

    if-eqz v3, :cond_12d

    .line 2976
    iget-object v7, v9, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda15;-><init>()V

    .line 2978
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v2, p0

    move-object/from16 v6, p3

    .line 2976
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_12d
    move-object/from16 v1, p0

    move v2, v12

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, v16

    .line 2981
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedSync(IILjava/lang/String;II)V

    return-void

    :catchall_13c
    move-exception v0

    .line 2974
    :try_start_13d
    monitor-exit p0
    :try_end_13e
    .catchall {:try_start_13d .. :try_end_13e} :catchall_13c

    throw v0

    :catch_13f
    move-exception v0

    move-object v1, v0

    const-string v0, "AppOps"

    const-string v2, "Cannot setMode"

    .line 2929
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public setUidMode(III)V
    .registers 5

    const/4 v0, 0x0

    .line 2597
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/appop/AppOpsService;->setUidMode(IIILcom/android/internal/app/IAppOpsCallback;)V

    return-void
.end method

.method public final setUidMode(IIILcom/android/internal/app/IAppOpsCallback;)V
    .registers 13

    .line 2602
    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v0, :cond_3f

    const-string v0, "AppOps"

    .line 2603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " OP_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " := "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " by uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2604
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2603
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2607
    :cond_3f
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 2608
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 2609
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v3

    .line 2612
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_61

    const-string p1, "AppOps"

    const-string/jumbo v1, "setUidMode() :: CallingUid is SS_SHELL_UID"

    .line 2615
    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    :cond_61
    if-nez p4, :cond_66

    .line 2620
    invoke-virtual {p0, p2, v3, p3}, Lcom/android/server/appop/AppOpsService;->updatePermissionRevokedCompat(III)V

    .line 2624
    :cond_66
    monitor-enter p0

    .line 2625
    :try_start_67
    invoke-static {v3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v1

    const/4 v2, 0x0

    .line 2627
    invoke-virtual {p0, p2, v2}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v4

    const/4 v5, 0x3

    if-nez v4, :cond_9d

    if-ne p3, v1, :cond_77

    .line 2630
    monitor-exit p0

    return-void

    .line 2633
    :cond_77
    new-instance v4, Lcom/android/server/appop/AppOpsService$UidState;

    invoke-direct {v4, p0, p2}, Lcom/android/server/appop/AppOpsService$UidState;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    .line 2634
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, v4, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 2635
    invoke-virtual {v1, v3, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2637
    iget-boolean v1, p0, Lcom/android/server/appop/AppOpsService;->mIsReadingWhileBooting:Z

    if-nez v1, :cond_94

    .line 2638
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, v4, Lcom/android/server/appop/AppOpsService$UidState;->setOpUids:Landroid/util/SparseIntArray;

    .line 2639
    invoke-virtual {v1, v3, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2642
    :cond_94
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2643
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->scheduleWriteLocked()V

    goto :goto_c4

    .line 2644
    :cond_9d
    iget-object v6, v4, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-nez v6, :cond_c6

    if-eq p3, v1, :cond_c4

    .line 2647
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, v4, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 2648
    invoke-virtual {v1, v3, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2650
    iget-boolean v1, p0, Lcom/android/server/appop/AppOpsService;->mIsReadingWhileBooting:Z

    if-nez v1, :cond_c1

    .line 2651
    iget-object v1, v4, Lcom/android/server/appop/AppOpsService$UidState;->setOpUids:Landroid/util/SparseIntArray;

    if-nez v1, :cond_bc

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, v4, Lcom/android/server/appop/AppOpsService$UidState;->setOpUids:Landroid/util/SparseIntArray;

    .line 2652
    :cond_bc
    iget-object v1, v4, Lcom/android/server/appop/AppOpsService$UidState;->setOpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v3, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2655
    :cond_c1
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->scheduleWriteLocked()V

    :cond_c4
    :goto_c4
    move v7, v5

    goto :goto_121

    .line 2658
    :cond_c6
    invoke-virtual {v6, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_d6

    iget-object v5, v4, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    if-ne v5, p3, :cond_d6

    .line 2659
    monitor-exit p0

    return-void

    .line 2661
    :cond_d6
    iget-object v5, v4, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    if-ne p3, v1, :cond_104

    .line 2663
    iget-object p1, v4, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2664
    iget-object p1, v4, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    const/4 v1, 0x0

    if-gtz p1, :cond_ee

    .line 2665
    iput-object v1, v4, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 2668
    :cond_ee
    iget-object p1, v4, Lcom/android/server/appop/AppOpsService$UidState;->setOpUids:Landroid/util/SparseIntArray;

    if-eqz p1, :cond_11d

    iget-boolean v6, p0, Lcom/android/server/appop/AppOpsService;->mIsReadingWhileBooting:Z

    if-nez v6, :cond_11d

    .line 2669
    invoke-virtual {p1, v3}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2670
    iget-object p1, v4, Lcom/android/server/appop/AppOpsService$UidState;->setOpUids:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    if-gtz p1, :cond_11d

    .line 2671
    iput-object v1, v4, Lcom/android/server/appop/AppOpsService$UidState;->setOpUids:Landroid/util/SparseIntArray;

    goto :goto_11d

    .line 2676
    :cond_104
    iget-object v1, v4, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v3, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2678
    iget-boolean v1, p0, Lcom/android/server/appop/AppOpsService;->mIsReadingWhileBooting:Z

    if-nez v1, :cond_11d

    .line 2679
    iget-object v1, v4, Lcom/android/server/appop/AppOpsService$UidState;->setOpUids:Landroid/util/SparseIntArray;

    if-nez v1, :cond_118

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, v4, Lcom/android/server/appop/AppOpsService$UidState;->setOpUids:Landroid/util/SparseIntArray;

    .line 2680
    :cond_118
    iget-object v1, v4, Lcom/android/server/appop/AppOpsService$UidState;->setOpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v3, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2684
    :cond_11d
    :goto_11d
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->scheduleWriteLocked()V

    goto :goto_c4

    .line 2686
    :goto_121
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    const/4 p1, 0x2

    if-eq p3, p1, :cond_132

    if-eq p3, v7, :cond_132

    if-ne p3, v0, :cond_12e

    goto :goto_12f

    :cond_12e
    move v0, v2

    .line 2688
    :goto_12f
    invoke-virtual {p0, v3, v0, p2}, Lcom/android/server/appop/AppOpsService;->updateStartedOpModeForUidLocked(IZI)V

    .line 2690
    :cond_132
    monitor-exit p0
    :try_end_133
    .catchall {:try_start_67 .. :try_end_133} :catchall_13e

    .line 2692
    invoke-virtual {p0, v3, p2, v2, p4}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedForAllPkgsInUid(IIZLcom/android/internal/app/IAppOpsCallback;)V

    const/4 v5, 0x0

    move-object v2, p0

    move v4, p2

    move v6, p3

    .line 2693
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/appop/AppOpsService;->notifyOpChangedSync(IILjava/lang/String;II)V

    return-void

    :catchall_13e
    move-exception p1

    .line 2690
    :try_start_13f
    monitor-exit p0
    :try_end_140
    .catchall {:try_start_13f .. :try_end_140} :catchall_13e

    throw p1
.end method

.method public setUserRestriction(IZLandroid/os/IBinder;ILandroid/os/PackageTagsList;)V
    .registers 11

    .line 6864
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_1a

    .line 6865
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 6866
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    const-string v4, "android.permission.MANAGE_APP_OPS_RESTRICTIONS"

    .line 6865
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 6868
    :cond_1a
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p4, v0, :cond_3d

    .line 6869
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 6871
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_35

    goto :goto_3d

    .line 6873
    :cond_35
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Need INTERACT_ACROSS_USERS_FULL or INTERACT_ACROSS_USERS to interact cross user "

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6877
    :cond_3d
    :goto_3d
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 6878
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6879
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;ILandroid/os/PackageTagsList;)V

    return-void
.end method

.method public final setUserRestrictionNoCheck(IZLandroid/os/IBinder;ILandroid/os/PackageTagsList;)V
    .registers 10

    .line 6884
    monitor-enter p0

    .line 6885
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_5f

    if-nez v0, :cond_18

    .line 6889
    :try_start_b
    new-instance v0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;

    invoke-direct {v0, p0, p3}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_16
    .catchall {:try_start_b .. :try_end_10} :catchall_5f

    .line 6893
    :try_start_10
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 6891
    :catch_16
    monitor-exit p0

    return-void

    .line 6896
    :cond_18
    :goto_18
    invoke-virtual {v0, p1, p2, p5, p4}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->setRestriction(IZLandroid/os/PackageTagsList;I)Z

    move-result p5

    if-eqz p5, :cond_4f

    .line 6898
    iget-object p5, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;-><init>()V

    .line 6899
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 6898
    invoke-static {v1, p0, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6900
    iget-object p5, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda12;-><init>()V

    .line 6901
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 6902
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 6900
    invoke-static {v1, p0, p1, p2, p4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p5, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6905
    :cond_4f
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->isDefault()Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 6906
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6907
    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->destroy()V

    .line 6909
    :cond_5d
    monitor-exit p0

    return-void

    :catchall_5f
    move-exception p1

    monitor-exit p0
    :try_end_61
    .catchall {:try_start_10 .. :try_end_61} :catchall_5f

    throw p1
.end method

.method public setUserRestrictions(Landroid/os/Bundle;Landroid/os/IBinder;I)V
    .registers 12

    const-string/jumbo v0, "setUserRestrictions"

    .line 6849
    invoke-virtual {p0, v0}, Lcom/android/server/appop/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 6850
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6851
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    move v7, v0

    :goto_e
    const/16 v1, 0x79

    if-ge v7, v1, :cond_27

    .line 6853
    invoke-static {v7}, Landroid/app/AppOpsManager;->opToRestriction(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 6855
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v6, 0x0

    move-object v1, p0

    move v2, v7

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->setUserRestrictionNoCheck(IZLandroid/os/IBinder;ILandroid/os/PackageTagsList;)V

    :cond_24
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_27
    return-void
.end method

.method public shouldCollectNotes(I)Z
    .registers 5

    const/4 v0, 0x0

    const/16 v1, 0x78

    const-string/jumbo v2, "opCode"

    .line 4504
    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 4506
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_10

    return v0

    .line 4513
    :cond_10
    :try_start_10
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object p0
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_1a} :catch_2a

    .line 4518
    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_29

    .line 4519
    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_2a

    :cond_29
    move v0, v1

    :catch_2a
    :cond_2a
    return v0
.end method

.method public final shouldDeferResetOpToDpm(I)Z
    .registers 2

    .line 3221
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->dpmi:Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->supportsResetOp(I)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final shouldIgnoreCallback(III)Z
    .registers 4

    .line 4550
    invoke-static {p1}, Landroid/app/AppOpsManager;->opRestrictsRead(I)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.MANAGE_APPOPS"

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public final shouldStartForMode(IZ)Z
    .registers 3

    if-eqz p1, :cond_a

    const/4 p0, 0x3

    if-ne p1, p0, :cond_8

    if-eqz p2, :cond_8

    goto :goto_a

    :cond_8
    const/4 p0, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 p0, 0x1

    :goto_b
    return p0
.end method

.method public shutdown()V
    .registers 3

    const-string v0, "AppOps"

    const-string v1, "Writing app ops before shutdown..."

    .line 2239
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    monitor-enter p0

    .line 2242
    :try_start_8
    iget-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 2243
    iput-boolean v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    .line 2244
    iput-boolean v1, p0, Lcom/android/server/appop/AppOpsService;->mFastWriteScheduled:Z

    .line 2245
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    .line 2248
    :cond_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_25

    if-eqz v1, :cond_1f

    .line 2250
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->writeState()V

    .line 2256
    :cond_1f
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry;->shutdown()V

    return-void

    :catchall_25
    move-exception v0

    .line 2248
    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .registers 24

    move-object v0, p0

    .line 3977
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method public final startOperationImpl(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .registers 29

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 3987
    invoke-virtual {v0, v3}, Lcom/android/server/appop/AppOpsService;->verifyIncomingUid(I)V

    .line 3988
    invoke-virtual {v0, v2}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 3989
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/android/server/appop/AppOpsService;->verifyIncomingPackage(Ljava/lang/String;I)V

    .line 3991
    invoke-static/range {p3 .. p4}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_24

    .line 3993
    new-instance v0, Landroid/app/SyncNotedAppOp;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2, v5, v4}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_24
    const/16 v1, 0x66

    if-eq v2, v1, :cond_2c

    const/16 v1, 0x78

    if-ne v2, v1, :cond_3a

    :cond_2c
    const/16 v1, 0x1b

    .line 4003
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/appop/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3a

    .line 4005
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v1, v2, v5, v4}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3a
    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    .line 4008
    invoke-virtual/range {v0 .. v16}, Lcom/android/server/appop/AppOpsService;->startOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZIIZ)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method public final startOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZIIZ)Landroid/app/SyncNotedAppOp;
    .registers 38

    move-object/from16 v11, p0

    move/from16 v12, p2

    move/from16 v0, p3

    move-object/from16 v13, p4

    move-object/from16 v1, p5

    move/from16 v14, p9

    move/from16 v8, p10

    const/4 v15, 0x2

    move-object/from16 v9, p7

    .line 4117
    :try_start_11
    invoke-virtual {v11, v0, v13, v1, v9}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object v10

    .line 4118
    iget-boolean v2, v10, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z
    :try_end_17
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_17} :catch_2a2

    if-nez v2, :cond_1a

    const/4 v1, 0x0

    :cond_1a
    move-object v7, v1

    const/16 v16, 0x0

    .line 4129
    monitor-enter p0

    .line 4130
    :try_start_1e
    iget-boolean v5, v10, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z

    iget-object v6, v10, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    const/16 v17, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object v4, v7

    move-object/from16 p5, v7

    move/from16 v7, v17

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v7

    if-nez v7, :cond_8c

    if-nez p16, :cond_4c

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p9

    move/from16 v9, p14

    move/from16 v10, p15

    .line 4134
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IIIII)V

    .line 4138
    :cond_4c
    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v1, :cond_83

    const-string v1, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startOperation: no op for code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " package "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " flags: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4140
    invoke-static/range {p9 .. p9}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4138
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4141
    :cond_83
    new-instance v0, Landroid/app/SyncNotedAppOp;

    move-object/from16 v6, p5

    invoke-direct {v0, v15, v12, v6, v13}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v0

    :cond_8c
    move-object/from16 v6, p5

    const/4 v15, 0x1

    .line 4144
    invoke-virtual {v11, v7, v12, v0, v15}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v5

    .line 4145
    invoke-static {v5, v5, v6}, Lcom/android/server/appop/AppOpsService$Op;->-$$Nest$mgetOrCreateAttribution(Lcom/android/server/appop/AppOpsService$Op;Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$AttributedOp;

    move-result-object v4

    .line 4146
    iget-object v3, v7, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 4147
    iget-object v10, v10, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object v15, v3

    move/from16 v3, p2

    move-object/from16 v18, v4

    move-object/from16 v4, p4

    move-object/from16 v19, v5

    move-object v5, v6

    move-object/from16 v20, v6

    move-object v6, v10

    move-object v10, v7

    move/from16 v7, v17

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->isOpRestrictedLocked(IILjava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;Z)Z

    move-result v7

    .line 4149
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    .line 4152
    iget-object v2, v15, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/4 v6, 0x0

    if-eqz v2, :cond_155

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_155

    .line 4153
    iget-object v2, v15, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v15, v12, v2}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v10

    .line 4154
    invoke-virtual {v11, v10, v8}, Lcom/android/server/appop/AppOpsService;->shouldStartForMode(IZ)Z

    move-result v2

    if-nez v2, :cond_14e

    .line 4155
    sget-boolean v2, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v2, :cond_11b

    const-string v2, "AppOps"

    .line 4156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startOperation: uid reject #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " flags: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4158
    invoke-static/range {p9 .. p9}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4156
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11b
    if-nez p16, :cond_144

    .line 4161
    iget v2, v15, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    iget-object v3, v15, Lcom/android/server/appop/AppOpsService$UidState;->setOpUids:Landroid/util/SparseIntArray;

    if-eqz v3, :cond_127

    invoke-virtual {v3, v1, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    :cond_127
    move-object/from16 v3, v18

    invoke-virtual {v3, v2, v14, v6}, Lcom/android/server/appop/AppOpsService$AttributedOp;->rejected(III)V

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, v20

    move/from16 v6, p9

    move v7, v10

    move/from16 v8, v16

    move/from16 v9, p14

    move v0, v10

    move/from16 v10, p15

    .line 4162
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IIIII)V

    goto :goto_145

    :cond_144
    move v0, v10

    .line 4165
    :goto_145
    new-instance v1, Landroid/app/SyncNotedAppOp;

    move-object/from16 v5, v20

    invoke-direct {v1, v0, v12, v5, v13}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v1

    :cond_14e
    move-object/from16 v3, v18

    move-object/from16 v10, v20

    const/4 v4, 0x1

    goto/16 :goto_1e1

    :cond_155
    move-object/from16 v3, v18

    move-object/from16 v5, v20

    if-eq v1, v12, :cond_161

    const/4 v4, 0x1

    .line 4168
    invoke-virtual {v11, v10, v1, v0, v4}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v2

    goto :goto_164

    :cond_161
    const/4 v4, 0x1

    move-object/from16 v2, v19

    .line 4170
    :goto_164
    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$Op;->evalMode()I

    move-result v10

    if-eqz v10, :cond_1e0

    if-eqz v8, :cond_16f

    const/4 v2, 0x3

    if-eq v10, v2, :cond_1e0

    .line 4173
    :cond_16f
    sget-boolean v2, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v2, :cond_1b6

    const-string v2, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startOperation: reject #"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " for code "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") uid "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " package "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " flags: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4175
    invoke-static/range {p9 .. p9}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4173
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b6
    if-nez p16, :cond_1d7

    .line 4177
    iget v1, v15, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    move-object/from16 v2, v19

    iget v2, v2, Lcom/android/server/appop/AppOpsService$Op;->mSettedUid:I

    invoke-virtual {v3, v1, v14, v2}, Lcom/android/server/appop/AppOpsService$AttributedOp;->rejected(III)V

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object v0, v5

    move/from16 v6, p9

    move v7, v10

    move/from16 v9, p14

    move v14, v10

    move/from16 v10, p15

    .line 4178
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IIIII)V

    goto :goto_1d9

    :cond_1d7
    move-object v0, v5

    move v14, v10

    .line 4181
    :goto_1d9
    new-instance v1, Landroid/app/SyncNotedAppOp;

    invoke-direct {v1, v14, v12, v0, v13}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object v1

    :cond_1e0
    move-object v10, v5

    .line 4184
    :goto_1e1
    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v1, :cond_220

    const-string v1, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startOperation: allowing code "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " uid "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " package "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " restricted: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " flags: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4186
    invoke-static/range {p9 .. p9}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4184
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_220
    .catchall {:try_start_1e .. :try_end_220} :catchall_29f

    :cond_220
    if-nez p16, :cond_27f

    if-eqz v7, :cond_241

    .line 4190
    :try_start_224
    iget v8, v15, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    move-object v1, v3

    move-object/from16 v2, p1

    move/from16 v3, p6

    move/from16 v17, v4

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move/from16 v18, v6

    move v6, v8

    move v15, v7

    move/from16 v7, p9

    move/from16 v8, p14

    move/from16 v9, p15

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/appop/AppOpsService$AttributedOp;->createPaused(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIII)V

    move/from16 v8, v16

    goto :goto_25d

    :cond_241
    move/from16 v17, v4

    move/from16 v18, v6

    move v8, v7

    .line 4194
    iget v6, v15, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    move-object v1, v3

    move-object/from16 v2, p1

    move/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move/from16 v7, p9

    move v15, v8

    move/from16 v8, p14

    move/from16 v9, p15

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/appop/AppOpsService$AttributedOp;->started(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIII)V
    :try_end_25b
    .catch Landroid/os/RemoteException; {:try_start_224 .. :try_end_25b} :catch_278
    .catchall {:try_start_224 .. :try_end_25b} :catchall_29f

    move/from16 v8, v17

    :goto_25d
    if-eqz v15, :cond_262

    move/from16 v7, v17

    goto :goto_264

    :cond_262
    move/from16 v7, v18

    :goto_264
    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v10

    move/from16 v6, p9

    move/from16 v9, p14

    move-object v14, v10

    move/from16 v10, p15

    .line 4202
    :try_start_274
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IIIII)V

    goto :goto_281

    :catch_278
    move-exception v0

    .line 4200
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_27f
    move v15, v7

    move-object v14, v10

    .line 4206
    :goto_281
    monitor-exit p0
    :try_end_282
    .catchall {:try_start_274 .. :try_end_282} :catchall_29f

    if-eqz p11, :cond_299

    if-nez p16, :cond_299

    if-nez v15, :cond_299

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p2

    move-object v5, v14

    move-object/from16 v7, p12

    move/from16 v8, p13

    .line 4209
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->collectAsyncNotedOp(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 4213
    :cond_299
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v15, v12, v14, v13}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catchall_29f
    move-exception v0

    .line 4206
    :try_start_2a0
    monitor-exit p0
    :try_end_2a1
    .catchall {:try_start_2a0 .. :try_end_2a1} :catchall_29f

    throw v0

    :catch_2a2
    move-exception v0

    const-string v2, "AppOps"

    const-string/jumbo v3, "startOperation"

    .line 4122
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4123
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v15, v12, v1, v13}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;
    .registers 24

    move-object v0, p0

    .line 4020
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mCheckOpsDelegateDispatcher:Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method public final startProxyOperationImpl(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;
    .registers 38

    move-object/from16 v15, p0

    move/from16 v14, p2

    move-object/from16 v0, p3

    move/from16 v13, p4

    .line 4032
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v12

    .line 4033
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4034
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v17

    .line 4035
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v11

    .line 4036
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v2

    .line 4037
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextAttributionTag()Ljava/lang/String;

    move-result-object v10

    .line 4039
    invoke-virtual {v15, v0}, Lcom/android/server/appop/AppOpsService;->verifyIncomingProxyUid(Landroid/content/AttributionSource;)V

    .line 4040
    invoke-virtual {v15, v14}, Lcom/android/server/appop/AppOpsService;->verifyIncomingOp(I)V

    .line 4041
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v15, v1, v3}, Lcom/android/server/appop/AppOpsService;->verifyIncomingPackage(Ljava/lang/String;I)V

    .line 4042
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v15, v2, v3}, Lcom/android/server/appop/AppOpsService;->verifyIncomingPackage(Ljava/lang/String;I)V

    .line 4044
    invoke-virtual {v15, v0}, Lcom/android/server/appop/AppOpsService;->isCallerAndAttributionTrusted(Landroid/content/AttributionSource;)Z

    move-result v0

    const/4 v3, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_40

    if-eqz p8, :cond_40

    move v4, v9

    goto :goto_41

    :cond_40
    move v4, v3

    .line 4047
    :goto_41
    invoke-static {v12, v1}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_4d

    .line 4050
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v9, v14, v10, v2}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_4d
    const/4 v1, -0x1

    move/from16 v8, p11

    if-eqz v0, :cond_5e

    if-eq v8, v1, :cond_5e

    and-int/lit8 v0, p9, 0x8

    if-nez v0, :cond_5c

    and-int/lit8 v0, p10, 0x8

    if-eqz v0, :cond_5e

    :cond_5c
    move v0, v9

    goto :goto_5f

    :cond_5e
    move v0, v3

    .line 4058
    :goto_5f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    if-ne v5, v11, :cond_67

    move v5, v9

    goto :goto_68

    :cond_67
    move v5, v3

    .line 4059
    :goto_68
    iget-object v6, v15, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v6, v7, v1, v12}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_7a

    if-nez v5, :cond_7a

    if-eqz v0, :cond_77

    goto :goto_7a

    :cond_77
    move/from16 v19, v3

    goto :goto_7c

    :cond_7a
    :goto_7a
    move/from16 v19, v9

    .line 4064
    :goto_7c
    invoke-static {v11, v2}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_88

    .line 4067
    new-instance v0, Landroid/app/SyncNotedAppOp;

    invoke-direct {v0, v9, v14, v10, v2}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_88
    if-eqz v19, :cond_8d

    const/16 v0, 0x8

    goto :goto_8f

    :cond_8d
    const/16 v0, 0x10

    :goto_8f
    move/from16 v21, v0

    if-nez v4, :cond_113

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move v3, v11

    move-object/from16 v4, v20

    move-object v5, v10

    move v6, v12

    move-object/from16 v7, v18

    move-object/from16 v8, v17

    move/from16 v22, v9

    move/from16 v9, v21

    move-object/from16 v23, v10

    move/from16 v10, p4

    move/from16 v24, v11

    move/from16 v11, p5

    move/from16 v25, v12

    move-object/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p10

    move/from16 v15, p11

    .line 4076
    invoke-virtual/range {v0 .. v16}, Lcom/android/server/appop/AppOpsService;->startOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZIIZ)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    .line 4081
    invoke-virtual {v0}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v1

    move-object/from16 v15, p0

    move/from16 v14, p4

    invoke-virtual {v15, v1, v14}, Lcom/android/server/appop/AppOpsService;->shouldStartForMode(IZ)Z

    move-result v1

    if-nez v1, :cond_cd

    return-object v0

    :cond_cd
    if-eqz v19, :cond_d1

    const/4 v0, 0x2

    goto :goto_d2

    :cond_d1
    const/4 v0, 0x4

    :goto_d2
    move v9, v0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    xor-int/lit8 v11, v19, 0x1

    .line 4088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "proxy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p6

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v25

    move-object/from16 v4, v18

    move-object/from16 v5, v17

    move/from16 v10, p4

    move/from16 v13, p7

    move/from16 v14, p9

    move/from16 v15, p11

    invoke-virtual/range {v0 .. v16}, Lcom/android/server/appop/AppOpsService;->startOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZIIZ)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    .line 4093
    invoke-virtual {v0}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v1

    move-object/from16 v2, p0

    invoke-virtual {v2, v1, v10}, Lcom/android/server/appop/AppOpsService;->shouldStartForMode(IZ)Z

    move-result v1

    if-nez v1, :cond_11b

    return-object v0

    :cond_113
    move-object/from16 v23, v10

    move/from16 v24, v11

    move/from16 v25, v12

    move v10, v13

    move-object v2, v15

    :cond_11b
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v24

    move-object/from16 v4, v20

    move-object/from16 v5, v23

    move/from16 v6, v25

    move-object/from16 v7, v18

    move-object/from16 v8, v17

    move/from16 v9, v21

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p10

    move/from16 v15, p11

    .line 4098
    invoke-virtual/range {v0 .. v16}, Lcom/android/server/appop/AppOpsService;->startOperationUnchecked(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZIIZ)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method public startWatchingActive([ILcom/android/internal/app/IAppOpsActiveCallback;)V
    .registers 12

    .line 3679
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 3680
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 3681
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WATCH_APPOPS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_14

    move v3, v4

    goto :goto_16

    :cond_14
    const/4 v0, -0x1

    move v3, v0

    :goto_16
    const/4 v6, 0x0

    if-eqz p1, :cond_33

    const/16 v0, 0x78

    .line 3686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid op code in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3687
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3686
    invoke-static {p1, v6, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    :cond_33
    if-nez p2, :cond_36

    return-void

    .line 3692
    :cond_36
    monitor-enter p0

    .line 3693
    :try_start_37
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_53

    .line 3695
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 3696
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_53
    move-object v7, v0

    .line 3698
    new-instance v8, Lcom/android/server/appop/AppOpsService$ActiveCallback;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService$ActiveCallback;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsActiveCallback;III)V

    .line 3700
    array-length p2, p1

    :goto_5d
    if-ge v6, p2, :cond_67

    aget v0, p1, v6

    .line 3701
    invoke-virtual {v7, v0, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5d

    .line 3703
    :cond_67
    monitor-exit p0

    return-void

    :catchall_69
    move-exception p1

    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_37 .. :try_end_6b} :catchall_69

    throw p1
.end method

.method public startWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V
    .registers 6

    .line 3909
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3910
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3912
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3913
    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getAsyncNotedOpsKey(Ljava/lang/String;I)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x0

    .line 3915
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    .line 3917
    monitor-enter p0

    .line 3918
    :try_start_13
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/RemoteCallbackList;

    if-nez p1, :cond_27

    .line 3920
    new-instance p1, Lcom/android/server/appop/AppOpsService$7;

    invoke-direct {p1, p0, v1}, Lcom/android/server/appop/AppOpsService$7;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/util/Pair;)V

    .line 3930
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3933
    :cond_27
    invoke-virtual {p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 3934
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception p1

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_13 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    .registers 5

    const/4 v0, 0x0

    .line 3242
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/appop/AppOpsService;->startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    return-void
.end method

.method public startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    .registers 16

    .line 3249
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 3250
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 3255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid op code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, -0x1

    const/16 v1, 0x78

    invoke-static {p1, v8, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    if-nez p4, :cond_22

    return-void

    :cond_22
    if-eqz p2, :cond_2c

    .line 3261
    invoke-virtual {p0, p2}, Lcom/android/server/appop/AppOpsService;->filterAppAccessUnlocked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    const/4 v0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    move v9, v0

    .line 3262
    monitor-enter p0

    if-eq p1, v8, :cond_39

    .line 3263
    :try_start_31
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0

    move v10, v0

    goto :goto_3a

    :catchall_37
    move-exception p1

    goto :goto_9c

    :cond_39
    move v10, p1

    :goto_3a
    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_43

    if-ne p1, v8, :cond_41

    const/4 p1, -0x2

    :cond_41
    move v5, p1

    goto :goto_44

    :cond_43
    move v5, v10

    .line 3276
    :goto_44
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p4}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/appop/AppOpsService$ModeCallback;

    if-nez p1, :cond_65

    .line 3278
    new-instance p1, Lcom/android/server/appop/AppOpsService$ModeCallback;

    const/4 v3, -0x1

    move-object v0, p1

    move-object v1, p0

    move-object v2, p4

    move v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/appop/AppOpsService$ModeCallback;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsCallback;IIIII)V

    .line 3280
    iget-object p3, p0, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p4}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-virtual {p3, p4, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_65
    if-eq v10, v8, :cond_7e

    .line 3283
    iget-object p3, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {p3, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/ArraySet;

    if-nez p3, :cond_7b

    .line 3285
    new-instance p3, Landroid/util/ArraySet;

    invoke-direct {p3}, Landroid/util/ArraySet;-><init>()V

    .line 3286
    iget-object p4, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {p4, v10, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3288
    :cond_7b
    invoke-virtual {p3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_7e
    if-eqz v9, :cond_97

    .line 3291
    iget-object p3, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {p3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/ArraySet;

    if-nez p3, :cond_94

    .line 3293
    new-instance p3, Landroid/util/ArraySet;

    invoke-direct {p3}, Landroid/util/ArraySet;-><init>()V

    .line 3294
    iget-object p4, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {p4, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3296
    :cond_94
    invoke-virtual {p3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3298
    :cond_97
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->evalAllForegroundOpsLocked()V

    .line 3299
    monitor-exit p0

    return-void

    :goto_9c
    monitor-exit p0
    :try_end_9d
    .catchall {:try_start_31 .. :try_end_9d} :catchall_37

    throw p1
.end method

.method public startWatchingNoted([ILcom/android/internal/app/IAppOpsNotedCallback;)V
    .registers 12

    .line 3775
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 3776
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 3777
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WATCH_APPOPS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_14

    move v3, v4

    goto :goto_16

    :cond_14
    const/4 v0, -0x1

    move v3, v0

    .line 3781
    :goto_16
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Ops cannot be null or empty"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/16 v0, 0x78

    .line 3782
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid op code in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3783
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    .line 3782
    invoke-static {p1, v6, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    const-string v0, "Callback cannot be null"

    .line 3784
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3785
    monitor-enter p0

    .line 3786
    :try_start_42
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsNotedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_5e

    .line 3788
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 3789
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsNotedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5e
    move-object v7, v0

    .line 3791
    new-instance v8, Lcom/android/server/appop/AppOpsService$NotedCallback;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService$NotedCallback;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsNotedCallback;III)V

    .line 3793
    array-length p2, p1

    :goto_68
    if-ge v6, p2, :cond_72

    aget v0, p1, v6

    .line 3794
    invoke-virtual {v7, v0, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_68

    .line 3796
    :cond_72
    monitor-exit p0

    return-void

    :catchall_74
    move-exception p1

    monitor-exit p0
    :try_end_76
    .catchall {:try_start_42 .. :try_end_76} :catchall_74

    throw p1
.end method

.method public startWatchingStarted([ILcom/android/internal/app/IAppOpsStartedCallback;)V
    .registers 12

    .line 3727
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 3728
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 3729
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WATCH_APPOPS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_14

    move v3, v4

    goto :goto_16

    :cond_14
    const/4 v0, -0x1

    move v3, v0

    .line 3734
    :goto_16
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Ops cannot be null or empty"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/16 v0, 0x78

    .line 3735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid op code in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3736
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    .line 3735
    invoke-static {p1, v6, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    const-string v0, "Callback cannot be null"

    .line 3737
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3739
    monitor-enter p0

    .line 3740
    :try_start_42
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsStartedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_5e

    .line 3742
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 3743
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/internal/app/IAppOpsStartedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5e
    move-object v7, v0

    .line 3746
    new-instance v8, Lcom/android/server/appop/AppOpsService$StartedCallback;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService$StartedCallback;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsStartedCallback;III)V

    .line 3748
    array-length p2, p1

    :goto_68
    if-ge v6, p2, :cond_72

    aget v0, p1, v6

    .line 3749
    invoke-virtual {v7, v0, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_68

    .line 3751
    :cond_72
    monitor-exit p0

    return-void

    :catchall_74
    move-exception p1

    monitor-exit p0
    :try_end_76
    .catchall {:try_start_42 .. :try_end_76} :catchall_74

    throw p1
.end method

.method public stopWatchingActive(Lcom/android/internal/app/IAppOpsActiveCallback;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 3711
    :cond_3
    monitor-enter p0

    .line 3712
    :try_start_4
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 3713
    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    if-nez p1, :cond_14

    .line 3715
    monitor-exit p0

    return-void

    .line 3717
    :cond_14
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v0, :cond_27

    .line 3719
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$ActiveCallback;

    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$ActiveCallback;->destroy()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 3721
    :cond_27
    monitor-exit p0

    return-void

    :catchall_29
    move-exception p1

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public stopWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V
    .registers 6

    .line 3939
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3940
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3942
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3943
    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getAsyncNotedOpsKey(Ljava/lang/String;I)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x0

    .line 3945
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    .line 3947
    monitor-enter p0

    .line 3948
    :try_start_13
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/RemoteCallbackList;

    if-eqz p1, :cond_2b

    .line 3950
    invoke-virtual {p1, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 3951
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-nez p1, :cond_2b

    .line 3952
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mAsyncOpWatchers:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3955
    :cond_2b
    monitor-exit p0

    return-void

    :catchall_2d
    move-exception p1

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_13 .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 3307
    :cond_3
    monitor-enter p0

    .line 3308
    :try_start_4
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/appop/AppOpsService$ModeCallback;

    if-eqz p1, :cond_5b

    .line 3310
    invoke-virtual {p1}, Lcom/android/server/appop/AppOpsService$ModeCallback;->unlinkToDeath()V

    .line 3311
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1d
    if-ltz v0, :cond_38

    .line 3312
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 3313
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3314
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-gtz v1, :cond_35

    .line 3315
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_35
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    .line 3318
    :cond_38
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_40
    if-ltz v0, :cond_5b

    .line 3319
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 3320
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3321
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-gtz v1, :cond_58

    .line 3322
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_58
    add-int/lit8 v0, v0, -0x1

    goto :goto_40

    .line 3326
    :cond_5b
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->evalAllForegroundOpsLocked()V

    .line 3327
    monitor-exit p0

    return-void

    :catchall_60
    move-exception p1

    monitor-exit p0
    :try_end_62
    .catchall {:try_start_4 .. :try_end_62} :catchall_60

    throw p1
.end method

.method public stopWatchingNoted(Lcom/android/internal/app/IAppOpsNotedCallback;)V
    .registers 5

    const-string v0, "Callback cannot be null"

    .line 3801
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3802
    monitor-enter p0

    .line 3803
    :try_start_6
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 3804
    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsNotedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    if-nez p1, :cond_16

    .line 3806
    monitor-exit p0

    return-void

    .line 3808
    :cond_16
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_29

    .line 3810
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$NotedCallback;

    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$NotedCallback;->destroy()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 3812
    :cond_29
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception p1

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public stopWatchingStarted(Lcom/android/internal/app/IAppOpsStartedCallback;)V
    .registers 5

    const-string v0, "Callback cannot be null"

    .line 3756
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3758
    monitor-enter p0

    .line 3759
    :try_start_6
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mStartedWatchers:Landroid/util/ArrayMap;

    .line 3760
    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsStartedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    if-nez p1, :cond_16

    .line 3762
    monitor-exit p0

    return-void

    .line 3765
    :cond_16
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_29

    .line 3767
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$StartedCallback;

    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$StartedCallback;->destroy()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 3769
    :cond_29
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception p1

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public final switchPackageIfBootTimeOrRarelyUsedLocked(Ljava/lang/String;)V
    .registers 5

    .line 7232
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mSampledPackage:Ljava/lang/String;

    const/4 v1, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    if-nez v0, :cond_1a

    .line 7233
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_39

    const/4 v0, 0x3

    .line 7234
    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    .line 7235
    invoke-virtual {p0, p1, v1}, Lcom/android/server/appop/AppOpsService;->resampleAppOpForPackageLocked(Ljava/lang/String;Z)V

    goto :goto_39

    .line 7237
    :cond_1a
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 7238
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 7239
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_39

    const/4 v0, 0x2

    .line 7240
    iput v0, p0, Lcom/android/server/appop/AppOpsService;->mSamplingStrategy:I

    .line 7241
    invoke-virtual {p0, p1, v1}, Lcom/android/server/appop/AppOpsService;->resampleAppOpForPackageLocked(Ljava/lang/String;Z)V

    :cond_39
    :goto_39
    return-void
.end method

.method public systemReady()V
    .registers 11

    .line 1963
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/appop/AppOpsService$Constants;->startMonitoring(Landroid/content/ContentResolver;)V

    .line 1964
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/appop/HistoricalRegistry;->systemReady(Landroid/content/ContentResolver;)V

    .line 1966
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 1967
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 1968
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    .line 1969
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1971
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mOnPackageUpdatedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1974
    monitor-enter p0

    .line 1975
    :try_start_37
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3f
    if-ltz v0, :cond_a8

    .line 1976
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1977
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$UidState;

    .line 1979
    iget v3, v2, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v3}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 1980
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 1981
    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$UidState;->clear()V

    .line 1982
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1983
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    goto :goto_a5

    .line 1987
    :cond_67
    iget-object v2, v2, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v2, :cond_6c

    goto :goto_a5

    .line 1992
    :cond_6c
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_71
    if-ge v5, v4, :cond_a5

    .line 1994
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1997
    invoke-static {v3, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_82

    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    goto :goto_84

    :cond_82
    const-string v7, "android.intent.action.PACKAGE_REPLACED"

    .line 2003
    :goto_84
    new-instance v8, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda9;

    invoke-direct {v8, p0, v7, v6, v1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Update app-ops uidState in case package "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " changed"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    add-int/lit8 v5, v5, 0x1

    goto :goto_71

    :cond_a5
    :goto_a5
    add-int/lit8 v0, v0, -0x1

    goto :goto_3f

    .line 2010
    :cond_a8
    monitor-exit p0
    :try_end_a9
    .catchall {:try_start_37 .. :try_end_a9} :catchall_104

    .line 2012
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGES_UNSUSPENDED"

    .line 2013
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGES_SUSPENDED"

    .line 2014
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2015
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/appop/AppOpsService$3;

    invoke-direct {v2, p0}, Lcom/android/server/appop/AppOpsService$3;-><init>(Lcom/android/server/appop/AppOpsService;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2041
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 2042
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 2043
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2044
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/appop/AppOpsService$4;

    invoke-direct {v2, p0}, Lcom/android/server/appop/AppOpsService$4;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2060
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/appop/AppOpsService$5;

    invoke-direct {v1, p0}, Lcom/android/server/appop/AppOpsService$5;-><init>(Lcom/android/server/appop/AppOpsService;)V

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2068
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    new-instance v1, Lcom/android/server/appop/AppOpsService$6;

    invoke-direct {v1, p0}, Lcom/android/server/appop/AppOpsService$6;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setExternalSourcesPolicy(Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;)V

    .line 2085
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-void

    :catchall_104
    move-exception v0

    .line 2010
    :try_start_105
    monitor-exit p0
    :try_end_106
    .catchall {:try_start_105 .. :try_end_106} :catchall_104

    throw v0
.end method

.method public uidRemoved(I)V
    .registers 3

    .line 2148
    monitor-enter p0

    .line 2149
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_11

    .line 2150
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2151
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    .line 2153
    :cond_11
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public final updateAppWidgetVisibility(Landroid/util/SparseArray;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 4682
    monitor-enter p0

    .line 4683
    :try_start_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_7
    if-ltz v0, :cond_23

    .line 4684
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 4685
    invoke-virtual {p0, v2, v1}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 4686
    iget-boolean v3, v2, Lcom/android/server/appop/AppOpsService$UidState;->pendingAppWidgetVisible:Z

    if-eq v3, p2, :cond_20

    .line 4687
    iput-boolean p2, v2, Lcom/android/server/appop/AppOpsService$UidState;->pendingAppWidgetVisible:Z

    .line 4688
    iget-boolean v3, v2, Lcom/android/server/appop/AppOpsService$UidState;->appWidgetVisible:Z

    if-eq p2, v3, :cond_20

    .line 4689
    invoke-virtual {p0, v2}, Lcom/android/server/appop/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 4693
    :cond_23
    monitor-exit p0

    return-void

    :catchall_25
    move-exception p1

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_25

    throw p1
.end method

.method public final updatePendingState(JI)V
    .registers 6

    .line 2163
    monitor-enter p0

    .line 2164
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/appop/AppOpsService;->mLastRealtime:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Long;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/appop/AppOpsService;->mLastRealtime:J

    .line 2165
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/appop/AppOpsService$UidState;

    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->updatePendingStateIfNeededLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 2166
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public final updatePendingStateIfNeededLocked(Lcom/android/server/appop/AppOpsService$UidState;)V
    .registers 6

    if-eqz p1, :cond_23

    .line 4605
    iget-wide v0, p1, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_23

    .line 4606
    iget-wide v2, p0, Lcom/android/server/appop/AppOpsService;->mLastRealtime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_14

    .line 4607
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    goto :goto_23

    .line 4609
    :cond_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/appop/AppOpsService;->mLastRealtime:J

    .line 4610
    iget-wide v2, p1, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_23

    .line 4611
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    :cond_23
    :goto_23
    return-void
.end method

.method public final updatePermissionRevokedCompat(III)V
    .registers 30

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    .line 2782
    iget-boolean v0, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsPublished:Z

    if-eqz v0, :cond_16b

    .line 2783
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    if-nez v11, :cond_15

    return-void

    .line 2794
    :cond_15
    invoke-virtual {v11, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 2795
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    return-void

    :cond_20
    const/4 v12, 0x0

    .line 2798
    aget-object v13, v0, v12

    .line 2800
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mSwitchedOps:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, [I

    .line 2801
    array-length v15, v14

    move v10, v12

    :goto_2e
    if-ge v10, v15, :cond_16b

    aget v0, v14, v10

    .line 2802
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_42

    :goto_38
    move/from16 v20, v10

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    move/from16 v21, v15

    goto/16 :goto_15e

    .line 2807
    :cond_42
    invoke-virtual {v11, v0, v13}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_49

    goto :goto_38

    .line 2814
    :cond_49
    :try_start_49
    invoke-virtual {v11, v0, v12}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v5
    :try_end_4d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_49 .. :try_end_4d} :catch_151

    .line 2820
    invoke-virtual {v5}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v6

    if-nez v6, :cond_54

    goto :goto_38

    .line 2824
    :cond_54
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v6

    .line 2825
    invoke-virtual {v6, v2}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    move-result v6

    const/16 v7, 0x17

    const/16 v16, 0x1

    if-lt v6, v7, :cond_65

    move/from16 v17, v16

    goto :goto_67

    :cond_65
    move/from16 v17, v12

    .line 2827
    :goto_67
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v18

    .line 2829
    iget-object v6, v5, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    const/16 v19, 0x8

    const-string v9, ", permission="

    const-string v8, ", mode="

    const-string v7, ", switchCode="

    const-string/jumbo v12, "setUidMode() called with a mode inconsistent with runtime permission state, this is discouraged and you should revoke the runtime permission instead: uid="

    const-string v1, "AppOps"

    if-eqz v6, :cond_fd

    .line 2830
    invoke-virtual {v11, v6, v13}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_e9

    if-eqz v4, :cond_87

    move/from16 v6, v16

    goto :goto_88

    :cond_87
    const/4 v6, 0x0

    :goto_88
    if-eqz v6, :cond_b7

    if-eqz v17, :cond_b7

    move/from16 v20, v10

    .line 2835
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v21, v7

    iget-object v7, v5, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bb

    :cond_b7
    move-object/from16 v21, v7

    move/from16 v20, v10

    .line 2842
    :goto_bb
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 2844
    :try_start_bf
    iget-object v7, v5, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    const/16 v10, 0x8

    if-eqz v6, :cond_c8

    move/from16 v24, v19

    goto :goto_ca

    :cond_c8
    const/16 v24, 0x0

    :goto_ca
    move-object v5, v11

    move-object v6, v7

    move-object/from16 v25, v14

    move-object/from16 v14, v21

    move-object v7, v13

    move/from16 v21, v15

    move-object v15, v8

    move v8, v10

    move-object v10, v9

    move/from16 v9, v24

    move-object/from16 v24, v13

    move-object v13, v10

    move-object/from16 v10, v18

    invoke-virtual/range {v5 .. v10}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_e0
    .catchall {:try_start_bf .. :try_end_e0} :catchall_e4

    .line 2849
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_f4

    :catchall_e4
    move-exception v0

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2850
    throw v0

    :cond_e9
    move/from16 v20, v10

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    move/from16 v21, v15

    move-object v14, v7

    move-object v15, v8

    move-object v13, v9

    :goto_f4
    if-eqz v4, :cond_fa

    const/4 v5, 0x4

    if-eq v4, v5, :cond_fa

    goto :goto_10a

    :cond_fa
    const/16 v16, 0x0

    goto :goto_10a

    :cond_fd
    move/from16 v20, v10

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    move/from16 v21, v15

    move-object v14, v7

    move-object v15, v8

    move-object v13, v9

    if-eqz v4, :cond_fa

    :goto_10a
    if-eqz v16, :cond_132

    if-eqz v17, :cond_132

    .line 2860
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2866
    :cond_132
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    const/16 v8, 0x8

    if-eqz v16, :cond_13d

    move/from16 v9, v19

    goto :goto_13e

    :cond_13d
    const/4 v9, 0x0

    :goto_13e
    move-object v5, v11

    move-object v6, v0

    move-object/from16 v7, v24

    move-object/from16 v10, v18

    .line 2868
    :try_start_144
    invoke-virtual/range {v5 .. v10}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_147
    .catchall {:try_start_144 .. :try_end_147} :catchall_14b

    .line 2872
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_15e

    :catchall_14b
    move-exception v0

    move-object v1, v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2873
    throw v1

    :catch_151
    move-exception v0

    move/from16 v20, v10

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    move/from16 v21, v15

    move-object v1, v0

    .line 2816
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_15e
    add-int/lit8 v10, v20, 0x1

    move-object/from16 v1, p0

    move/from16 v15, v21

    move-object/from16 v13, v24

    move-object/from16 v14, v25

    const/4 v12, 0x0

    goto/16 :goto_2e

    :cond_16b
    return-void
.end method

.method public final updateStartedOpModeForUidLocked(IZI)V
    .registers 11

    .line 6926
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appop/AppOpsService$UidState;

    if-eqz p0, :cond_65

    .line 6927
    iget-object p3, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez p3, :cond_f

    goto :goto_65

    .line 6931
    :cond_f
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result p3

    const/4 v0, 0x0

    move v1, v0

    :goto_15
    if-ge v1, p3, :cond_65

    .line 6933
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$Ops;

    if-eqz v2, :cond_28

    .line 6934
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$Op;

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    :goto_29
    if-eqz v2, :cond_62

    .line 6935
    invoke-static {v2}, Lcom/android/server/appop/AppOpsService$Op;->-$$Nest$fgetmode(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v3

    if-eqz v3, :cond_39

    invoke-static {v2}, Lcom/android/server/appop/AppOpsService$Op;->-$$Nest$fgetmode(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_39

    goto :goto_62

    .line 6938
    :cond_39
    iget-object v3, v2, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    move v4, v0

    :goto_40
    if-ge v4, v3, :cond_62

    .line 6940
    iget-object v5, v2, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$AttributedOp;

    if-eqz p2, :cond_56

    .line 6941
    invoke-virtual {v5}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_56

    .line 6942
    invoke-virtual {v5}, Lcom/android/server/appop/AppOpsService$AttributedOp;->pause()V

    goto :goto_5f

    .line 6943
    :cond_56
    invoke-virtual {v5}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isPaused()Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 6944
    invoke-virtual {v5}, Lcom/android/server/appop/AppOpsService$AttributedOp;->resume()V

    :cond_5f
    :goto_5f
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    :cond_62
    :goto_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_65
    :goto_65
    return-void
.end method

.method public final updateStartedOpModeForUser(IZI)V
    .registers 8

    .line 6913
    monitor-enter p0

    .line 6914
    :try_start_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_20

    .line 6916
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq p3, v3, :cond_1a

    .line 6917
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-eq v3, p3, :cond_1a

    goto :goto_1d

    .line 6920
    :cond_1a
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/appop/AppOpsService;->updateStartedOpModeForUidLocked(IZI)V

    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 6922
    :cond_20
    monitor-exit p0

    return-void

    :catchall_22
    move-exception p1

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public updateUidProcState(III)V
    .registers 13

    .line 2171
    monitor-enter p0

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_d

    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_d

    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_34

    :cond_d
    :try_start_d
    const-string v0, "AppOps"

    .line 2175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUidProcState uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " procState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " capability:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    const/4 v0, 0x1

    .line 2178
    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v0

    .line 2179
    sget-object v1, Lcom/android/server/appop/AppOpsService;->PROCESS_STATE_TO_UID_STATE:[I

    aget p2, v1, p2

    if-eqz v0, :cond_e1

    .line 2180
    iget v1, v0, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    if-ne v1, p2, :cond_47

    iget v1, v0, Lcom/android/server/appop/AppOpsService$UidState;->pendingCapability:I

    if-eq v1, p3, :cond_e1

    .line 2183
    :cond_47
    iput p2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    .line 2184
    iput p3, v0, Lcom/android/server/appop/AppOpsService$UidState;->pendingCapability:I

    .line 2185
    iget v1, v0, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    if-lt p2, v1, :cond_a0

    const/16 v2, 0x1f4

    if-gt p2, v2, :cond_56

    if-le v1, v2, :cond_56

    goto :goto_a0

    :cond_56
    if-ne p2, v1, :cond_60

    .line 2192
    iget v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->capability:I

    if-eq p3, v2, :cond_60

    .line 2194
    invoke-virtual {p0, v0}, Lcom/android/server/appop/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    goto :goto_a3

    .line 2195
    :cond_60
    iget-wide v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    const-wide/16 v4, 0x0

    cmp-long p3, v2, v4

    if-nez p3, :cond_a3

    const/16 p3, 0xc8

    if-gt v1, p3, :cond_71

    .line 2200
    iget-object p3, p0, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-wide v1, p3, Lcom/android/server/appop/AppOpsService$Constants;->TOP_STATE_SETTLE_TIME:J

    goto :goto_7e

    :cond_71
    const/16 p3, 0x190

    if-gt v1, p3, :cond_7a

    .line 2202
    iget-object p3, p0, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-wide v1, p3, Lcom/android/server/appop/AppOpsService$Constants;->FG_SERVICE_STATE_SETTLE_TIME:J

    goto :goto_7e

    .line 2204
    :cond_7a
    iget-object p3, p0, Lcom/android/server/appop/AppOpsService;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    iget-wide v1, p3, Lcom/android/server/appop/AppOpsService$Constants;->BG_STATE_SETTLE_TIME:J

    .line 2206
    :goto_7e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, v1

    .line 2207
    iput-wide v3, v0, Lcom/android/server/appop/AppOpsService$UidState;->pendingStateCommitTime:J

    .line 2209
    iget-object p3, p0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda1;-><init>()V

    const-wide/16 v6, 0x1

    add-long/2addr v3, v6

    .line 2211
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2210
    invoke-static {v5, p0, v3, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    add-long/2addr v1, v6

    .line 2209
    invoke-virtual {p3, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_a3

    .line 2191
    :cond_a0
    :goto_a0
    invoke-virtual {p0, v0}, Lcom/android/server/appop/AppOpsService;->commitUidPendingStateLocked(Lcom/android/server/appop/AppOpsService$UidState;)V

    .line 2214
    :cond_a3
    :goto_a3
    iget-object p1, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz p1, :cond_e1

    .line 2215
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 p3, 0x0

    move v1, p3

    :goto_ad
    if-ge v1, p1, :cond_e1

    .line 2217
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$Ops;

    .line 2219
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v4, p3

    :goto_bc
    if-ge v4, v3, :cond_de

    .line 2221
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$Op;

    .line 2223
    iget-object v6, v5, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v7, p3

    :goto_cb
    if-ge v7, v6, :cond_db

    .line 2226
    iget-object v8, v5, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appop/AppOpsService$AttributedOp;

    .line 2229
    invoke-virtual {v8, p2}, Lcom/android/server/appop/AppOpsService$AttributedOp;->onUidStateChanged(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_cb

    :cond_db
    add-int/lit8 v4, v4, 0x1

    goto :goto_bc

    :cond_de
    add-int/lit8 v1, v1, 0x1

    goto :goto_ad

    .line 2235
    :cond_e1
    monitor-exit p0

    return-void

    :catchall_e3
    move-exception p1

    monitor-exit p0
    :try_end_e5
    .catchall {:try_start_d .. :try_end_e5} :catchall_e3

    throw p1
.end method

.method public final upgradeLocked(I)V
    .registers 5

    const/4 v0, 0x1

    if-lt p1, v0, :cond_4

    return-void

    .line 5161
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading app-ops xml from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppOps"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_26

    goto :goto_29

    .line 5164
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->upgradeRunAnyInBackgroundLocked()V

    .line 5169
    :goto_29
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    return-void
.end method

.method public final upgradeRunAnyInBackgroundLocked()V
    .registers 17

    move-object/from16 v6, p0

    const/4 v7, 0x0

    move v8, v7

    .line 5122
    :goto_4
    iget-object v0, v6, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v8, v0, :cond_88

    .line 5123
    iget-object v0, v6, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/appop/AppOpsService$UidState;

    if-nez v9, :cond_19

    goto/16 :goto_84

    .line 5127
    :cond_19
    iget-object v0, v9, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/16 v10, 0x46

    const/16 v11, 0x3f

    if-eqz v0, :cond_30

    .line 5128
    invoke-virtual {v0, v11}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_30

    .line 5130
    iget-object v1, v9, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 5131
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    .line 5130
    invoke-virtual {v1, v10, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 5134
    :cond_30
    iget-object v0, v9, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_35

    goto :goto_84

    :cond_35
    move v0, v7

    move v12, v0

    .line 5138
    :goto_37
    iget-object v1, v9, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v12, v1, :cond_7d

    .line 5139
    iget-object v1, v9, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/server/appop/AppOpsService$Ops;

    if-eqz v13, :cond_7a

    .line 5141
    invoke-virtual {v13, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/server/appop/AppOpsService$Op;

    if-eqz v14, :cond_7a

    .line 5142
    invoke-static {v14}, Lcom/android/server/appop/AppOpsService$Op;->-$$Nest$fgetmode(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v1

    iget v2, v14, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v2}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v2

    if-eq v1, v2, :cond_7a

    .line 5143
    new-instance v15, Lcom/android/server/appop/AppOpsService$Op;

    iget-object v2, v14, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget-object v3, v14, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    const/16 v4, 0x46

    iget v5, v9, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService$Op;-><init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;II)V

    .line 5145
    invoke-static {v14}, Lcom/android/server/appop/AppOpsService$Op;->-$$Nest$fgetmode(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v0

    invoke-static {v15, v0}, Lcom/android/server/appop/AppOpsService$Op;->-$$Nest$fputmode(Lcom/android/server/appop/AppOpsService$Op;I)V

    .line 5146
    invoke-virtual {v13, v10, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x1

    :cond_7a
    add-int/lit8 v12, v12, 0x1

    goto :goto_37

    :cond_7d
    if-eqz v0, :cond_84

    .line 5152
    iget-object v0, v6, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundOps(Landroid/util/SparseArray;)V

    :cond_84
    :goto_84
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    :cond_88
    return-void
.end method

.method public final verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    .registers 5

    const/4 v0, 0x0

    .line 4726
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/appop/AppOpsService;->verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    move-result-object p0

    return-object p0
.end method

.method public final verifyAndGetBypass(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
    .registers 16

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_a

    .line 4746
    new-instance p0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    invoke-direct {p0, v1, v0}, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;-><init>(Landroid/app/AppOpsManager$RestrictionBypass;Z)V

    return-object p0

    .line 4749
    :cond_a
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 4757
    :try_start_10
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 4758
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getSdkSandboxPackageName()Ljava/lang/String;

    move-result-object v3

    .line 4759
    invoke-static {p2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    const-wide/16 v4, 0x0

    .line 4761
    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v4

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 4760
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)I

    move-result p1
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_2e} :catch_2f

    goto :goto_33

    :catch_2f
    move-exception v2

    .line 4765
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 4771
    :cond_33
    :goto_33
    monitor-enter p0

    .line 4772
    :try_start_34
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$UidState;

    if-eqz v2, :cond_65

    .line 4773
    iget-object v2, v2, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v2, :cond_65

    .line 4774
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$Ops;

    if-eqz v2, :cond_65

    if-eqz p3, :cond_54

    .line 4776
    iget-object v3, v2, Lcom/android/server/appop/AppOpsService$Ops;->knownAttributionTags:Landroid/util/ArraySet;

    invoke-virtual {v3, p3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    :cond_54
    iget-object v3, v2, Lcom/android/server/appop/AppOpsService$Ops;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    if-eqz v3, :cond_65

    .line 4778
    new-instance p1, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    iget-object p2, v2, Lcom/android/server/appop/AppOpsService$Ops;->validAttributionTags:Landroid/util/ArraySet;

    .line 4779
    invoke-virtual {p2, p3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-direct {p1, v3, p2}, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;-><init>(Landroid/app/AppOpsManager$RestrictionBypass;Z)V

    monitor-exit p0

    return-object p1

    .line 4782
    :cond_65
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_34 .. :try_end_66} :catchall_217

    .line 4784
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "com.android.shell"

    .line 4788
    invoke-static {p2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    const/16 v3, 0x7d0

    goto :goto_79

    .line 4793
    :cond_75
    invoke-static {p2}, Lcom/android/server/appop/AppOpsService;->resolveUid(Ljava/lang/String;)I

    move-result v3

    :goto_79
    const/4 v4, -0x1

    if-eq v3, v4, :cond_f3

    .line 4796
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    if-eq v3, p0, :cond_eb

    const-string p0, "AppOps"

    .line 4797
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Bad call made by uid "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ". Package \""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\" does not belong to uid "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "."

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4799
    sget-boolean p0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz p0, :cond_c3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " but it is really "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_c5

    :cond_c3
    const-string p0, " but it is not"

    .line 4800
    :goto_c5
    new-instance p3, Ljava/lang/SecurityException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Specified package \""

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" under uid "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4801
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 4803
    :cond_eb
    new-instance p0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    sget-object p1, Landroid/app/AppOpsManager$RestrictionBypass;->UNRESTRICTED:Landroid/app/AppOpsManager$RestrictionBypass;

    invoke-direct {p0, p1, v0}, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;-><init>(Landroid/app/AppOpsManager$RestrictionBypass;Z)V

    return-object p0

    .line 4807
    :cond_f3
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/4 v5, 0x0

    .line 4811
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 4813
    :try_start_fc
    const-class v8, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageManagerInternal;

    .line 4814
    invoke-virtual {v8, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v9

    if-eqz v9, :cond_11f

    .line 4816
    invoke-virtual {p0, v9, p3}, Lcom/android/server/appop/AppOpsService;->isAttributionInPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v5

    .line 4817
    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {v4, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 4818
    invoke-virtual {p0, v9}, Lcom/android/server/appop/AppOpsService;->getBypassforPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/app/AppOpsManager$RestrictionBypass;

    move-result-object v10

    goto :goto_120

    :cond_11f
    move-object v10, v1

    :goto_120
    if-nez v5, :cond_1a2

    if-eqz p4, :cond_128

    .line 4822
    invoke-virtual {v8, p4}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    .line 4824
    :cond_128
    invoke-virtual {p0, v1, p3}, Lcom/android/server/appop/AppOpsService;->isAttributionInPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v1

    if-eqz v9, :cond_14f

    if-eqz v1, :cond_14f

    .line 4827
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "attributionTag "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " declared in manifest of the proxy package "

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", this is not advised"

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_185

    :cond_14f
    if-eqz v9, :cond_16b

    .line 4830
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attributionTag "

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " not declared in manifest of "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_185

    .line 4833
    :cond_16b
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "package "

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not found, can\'t check for attributionTag "

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3
    :try_end_185
    .catchall {:try_start_fc .. :try_end_185} :catchall_212

    .line 4838
    :goto_185
    :try_start_185
    iget-object p4, p0, Lcom/android/server/appop/AppOpsService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    const-wide/32 v8, 0x901b1a2

    invoke-interface {p4, v8, v9, p2, v4}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    move-result p4

    if-eqz p4, :cond_19a

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 4840
    invoke-interface {p0, v8, v9, v2}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabledByUid(JI)Z

    move-result p0
    :try_end_196
    .catch Landroid/os/RemoteException; {:try_start_185 .. :try_end_196} :catch_1a1
    .catchall {:try_start_185 .. :try_end_196} :catchall_212

    if-nez p0, :cond_199

    goto :goto_19a

    :cond_199
    move v0, v1

    :cond_19a
    :goto_19a
    :try_start_19a
    const-string p0, "AppOps"

    .line 4846
    invoke-static {p0, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19f
    .catch Landroid/os/RemoteException; {:try_start_19a .. :try_end_19f} :catch_19f
    .catchall {:try_start_19a .. :try_end_19f} :catchall_212

    :catch_19f
    move v5, v0

    goto :goto_1a2

    :catch_1a1
    move v5, v1

    .line 4851
    :cond_1a2
    :goto_1a2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eq v3, p1, :cond_20c

    const-string p0, "AppOps"

    .line 4855
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Bad call made by uid "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ". Package \""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\" does not belong to uid "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "."

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4857
    sget-boolean p0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz p0, :cond_1e8

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " but it is really "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1ea

    :cond_1e8
    const-string p0, " but it is not"

    .line 4858
    :goto_1ea
    new-instance p3, Ljava/lang/SecurityException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Specified package \""

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" under uid "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 4862
    :cond_20c
    new-instance p0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;

    invoke-direct {p0, v10, v5}, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;-><init>(Landroid/app/AppOpsManager$RestrictionBypass;Z)V

    return-object p0

    :catchall_212
    move-exception p0

    .line 4851
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4852
    throw p0

    :catchall_217
    move-exception p1

    .line 4782
    :try_start_218
    monitor-exit p0
    :try_end_219
    .catchall {:try_start_218 .. :try_end_219} :catchall_217

    throw p1
.end method

.method public final verifyIncomingOp(I)V
    .registers 5

    if-ltz p1, :cond_1f

    const/16 v0, 0x79

    if-ge p1, v0, :cond_1f

    .line 4557
    invoke-static {p1}, Landroid/app/AppOpsManager;->opRestrictsRead(I)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 4558
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 4559
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "android.permission.MANAGE_APPOPS"

    const-string/jumbo v2, "verifyIncomingOp"

    .line 4558
    invoke-virtual {p0, v1, p1, v0, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    :cond_1e
    return-void

    .line 4563
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad operation #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final verifyIncomingPackage(Ljava/lang/String;I)V
    .registers 4

    if-eqz p1, :cond_2f

    .line 4567
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    .line 4568
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4567
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_2f

    .line 4569
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found from "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4570
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2f
    :goto_2f
    return-void
.end method

.method public final verifyIncomingProxyUid(Landroid/content/AttributionSource;)V
    .registers 5

    .line 4523
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-ne v0, v1, :cond_b

    return-void

    .line 4526
    :cond_b
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_16

    return-void

    .line 4529
    :cond_16
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1f

    return-void

    .line 4532
    :cond_1f
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 4533
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "android.permission.UPDATE_APP_OPS_STATS"

    .line 4532
    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public final verifyIncomingUid(I)V
    .registers 5

    .line 4537
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_7

    return-void

    .line 4540
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_12

    return-void

    .line 4543
    :cond_12
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 4544
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "android.permission.UPDATE_APP_OPS_STATS"

    .line 4543
    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public final writeNoteOps()V
    .registers 6

    .line 7727
    monitor-enter p0

    const/4 v0, 0x0

    .line 7728
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService;->mWriteNoteOpsScheduled:Z

    .line 7729
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_4a

    .line 7730
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktracesFile:Ljava/io/File;

    monitor-enter v1

    .line 7731
    :try_start_8
    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktracesFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_f} :catch_3e
    .catchall {:try_start_8 .. :try_end_f} :catchall_3c

    .line 7732
    :try_start_f
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktraces:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    :goto_15
    if-ge v0, v3, :cond_2e

    .line 7735
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService;->mNoteOpCallerStacktraces:Landroid/util/ArraySet;

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$NoteOpTrace;

    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$NoteOpTrace;->asJson()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v4, ","

    .line 7738
    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_32

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 7740
    :cond_2e
    :try_start_2e
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_3e
    .catchall {:try_start_2e .. :try_end_31} :catchall_3c

    goto :goto_46

    :catchall_32
    move-exception p0

    .line 7731
    :try_start_33
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_3b

    :catchall_37
    move-exception v0

    :try_start_38
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3b
    throw p0
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3c} :catch_3e
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception p0

    goto :goto_48

    :catch_3e
    move-exception p0

    :try_start_3f
    const-string v0, "AppOps"

    const-string v2, "Failed to load opsValidation file for FileWriter"

    .line 7741
    invoke-static {v0, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7743
    :goto_46
    monitor-exit v1

    return-void

    :goto_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_3c

    throw p0

    :catchall_4a
    move-exception v0

    .line 7729
    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method public writePermissionAccessInformation(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13

    .line 8106
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService;->mPermissionAccessInformationController:Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_15

    :catch_b
    move-exception p0

    .line 8108
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppOps"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_15
    return-void
.end method

.method public writeState()V
    .registers 39

    move-object/from16 v1, p0

    .line 5332
    iget-object v2, v1, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v2

    .line 5335
    :try_start_5
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_392
    .catchall {:try_start_5 .. :try_end_b} :catchall_390

    .line 5343
    :try_start_b
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mPermissionAccessInformationController:Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;

    invoke-virtual {v0}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationController;->flushAsync()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_11
    .catchall {:try_start_b .. :try_end_10} :catchall_390

    goto :goto_1b

    :catch_11
    move-exception v0

    :try_start_12
    const-string v4, "AppOps"

    .line 5345
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1b
    const/4 v0, 0x0

    .line 5348
    invoke-virtual {v1, v0}, Lcom/android/server/appop/AppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v4
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_390

    .line 5351
    :try_start_20
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v5

    .line 5352
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, v0, v6}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v6, "app-ops"

    .line 5353
    invoke-interface {v5, v0, v6}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "v"

    const/4 v7, 0x1

    .line 5354
    invoke-interface {v5, v0, v6, v7}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5359
    monitor-enter p0
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_36} :catch_37c
    .catchall {:try_start_20 .. :try_end_36} :catchall_390

    .line 5360
    :try_start_36
    new-instance v6, Landroid/util/SparseArray;

    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/util/SparseArray;-><init>(I)V

    .line 5362
    iget-object v7, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    const/4 v9, 0x0

    :goto_48
    if-ge v9, v7, :cond_b7

    .line 5364
    iget-object v10, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/appop/AppOpsService$UidState;

    .line 5365
    iget-object v11, v1, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v11, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 5367
    iget-object v12, v10, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 5369
    iget-object v10, v10, Lcom/android/server/appop/AppOpsService$UidState;->setOpUids:Landroid/util/SparseIntArray;

    if-eqz v12, :cond_af

    .line 5370
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    if-lez v13, :cond_af

    .line 5372
    new-instance v13, Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v14

    invoke-direct {v13, v14}, Landroid/util/SparseArray;-><init>(I)V

    invoke-virtual {v6, v11, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5374
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_75
    if-ge v14, v13, :cond_af

    if-nez v10, :cond_7b

    const/4 v15, 0x0

    goto :goto_83

    .line 5381
    :cond_7b
    invoke-virtual {v12, v14}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    invoke-virtual {v10, v15}, Landroid/util/SparseIntArray;->get(I)I

    move-result v15

    .line 5383
    :goto_83
    invoke-virtual {v6, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Landroid/util/SparseArray;

    .line 5384
    invoke-virtual {v12, v14}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    move/from16 v17, v7

    new-instance v7, Landroid/util/Pair;

    .line 5385
    invoke-virtual {v12, v14}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v18

    move-object/from16 v19, v10

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v7, v10, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5383
    invoke-virtual {v8, v0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    move/from16 v7, v17

    move-object/from16 v10, v19

    const/4 v0, 0x0

    goto :goto_75

    :cond_af
    move/from16 v17, v7

    add-int/lit8 v9, v9, 0x1

    move/from16 v7, v17

    const/4 v0, 0x0

    goto :goto_48

    .line 5390
    :cond_b7
    monitor-exit p0
    :try_end_b8
    .catchall {:try_start_36 .. :try_end_b8} :catchall_379

    .line 5392
    :try_start_b8
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v7, 0x0

    :goto_bd
    if-ge v7, v0, :cond_141

    .line 5395
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    if-eqz v8, :cond_13d

    .line 5396
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-lez v9, :cond_13d

    const-string/jumbo v9, "uid"

    const/4 v10, 0x0

    .line 5398
    invoke-interface {v5, v10, v9}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "n"

    .line 5399
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-interface {v5, v10, v9, v11}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5401
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_e3
    if-ge v10, v9, :cond_136

    .line 5404
    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 5405
    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    const-string/jumbo v13, "op"

    const/4 v14, 0x0

    .line 5407
    invoke-interface {v5, v14, v13}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "n"

    .line 5408
    invoke-interface {v5, v14, v13, v11}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v11, "m"

    .line 5410
    iget-object v13, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v5, v14, v11, v13}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5411
    iget-object v11, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lez v11, :cond_12c

    const-string/jumbo v11, "u"

    .line 5412
    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v5, v13, v11, v12}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_12c
    const-string/jumbo v11, "op"

    const/4 v12, 0x0

    .line 5415
    invoke-interface {v5, v12, v11}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v10, v10, 0x1

    goto :goto_e3

    :cond_136
    const-string/jumbo v8, "uid"

    const/4 v9, 0x0

    .line 5417
    invoke-interface {v5, v9, v8}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_13d
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_bd

    :cond_141
    if-eqz v4, :cond_362

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 5423
    :goto_145
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_356

    .line 5424
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$PackageOps;

    .line 5425
    invoke-virtual {v7}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_177

    if-eqz v0, :cond_164

    const-string/jumbo v0, "pkg"

    const/4 v8, 0x0

    .line 5427
    invoke-interface {v5, v8, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5429
    :cond_164
    invoke-virtual {v7}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_177

    const-string/jumbo v8, "pkg"

    const/4 v9, 0x0

    .line 5431
    invoke-interface {v5, v9, v8}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "n"

    .line 5432
    invoke-interface {v5, v9, v8, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_177
    const-string/jumbo v8, "uid"

    const/4 v9, 0x0

    .line 5435
    invoke-interface {v5, v9, v8}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "n"

    .line 5436
    invoke-virtual {v7}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v10

    invoke-interface {v5, v9, v8, v10}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5437
    invoke-virtual {v7}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    .line 5438
    :goto_18d
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_33d

    .line 5439
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager$OpEntry;

    const-string/jumbo v10, "op"

    const/4 v11, 0x0

    .line 5440
    invoke-interface {v5, v11, v10}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "n"

    .line 5441
    invoke-virtual {v9}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v12

    invoke-interface {v5, v11, v10, v12}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5442
    invoke-virtual {v9}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v10

    invoke-virtual {v9}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v11

    invoke-static {v11}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v11

    if-eq v10, v11, :cond_1c3

    const-string/jumbo v10, "m"

    .line 5443
    invoke-virtual {v9}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v11

    const/4 v12, 0x0

    invoke-interface {v5, v12, v10, v11}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5446
    :cond_1c3
    invoke-virtual {v9}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1cf
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_31c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 5448
    invoke-virtual {v9}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 5450
    invoke-virtual {v12}, Landroid/app/AppOpsManager$AttributedOpEntry;->getSettedUid()I

    move-result v13

    if-lez v13, :cond_1fa

    const-string/jumbo v13, "u"

    .line 5451
    invoke-virtual {v12}, Landroid/app/AppOpsManager$AttributedOpEntry;->getSettedUid()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v5, v15, v13, v14}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5455
    :cond_1fa
    invoke-virtual {v12}, Landroid/app/AppOpsManager$AttributedOpEntry;->collectKeys()Landroid/util/ArraySet;

    move-result-object v13

    .line 5457
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_203
    if-ge v15, v14, :cond_1cf

    .line 5459
    invoke-virtual {v13, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    move-object/from16 v17, v0

    .line 5461
    invoke-static {v9, v10}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v0

    move-object/from16 v20, v4

    .line 5462
    invoke-static {v9, v10}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v4

    move-object/from16 v21, v13

    move/from16 v22, v14

    .line 5464
    invoke-virtual {v12, v0, v0, v4}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(III)J

    move-result-wide v13

    move/from16 v23, v6

    move-object/from16 v24, v7

    .line 5466
    invoke-virtual {v12, v0, v0, v4}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(III)J

    move-result-wide v6

    move/from16 v25, v8

    move-wide/from16 v26, v9

    .line 5468
    invoke-virtual {v12, v0, v0, v4}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(III)J

    move-result-wide v8

    .line 5471
    invoke-virtual {v12, v0, v0, v4}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v10

    .line 5475
    invoke-virtual {v12, v0, v4}, Landroid/app/AppOpsManager$AttributedOpEntry;->getSettedUidAccess(II)I

    move-result v28

    .line 5476
    invoke-virtual {v12, v0, v4}, Landroid/app/AppOpsManager$AttributedOpEntry;->getSettedUidReject(II)I

    move-result v0

    const-wide/16 v29, 0x0

    cmp-long v4, v13, v29

    if-gtz v4, :cond_25d

    cmp-long v31, v6, v29

    if-gtz v31, :cond_25d

    cmp-long v31, v8, v29

    if-gtz v31, :cond_25d

    if-nez v10, :cond_25d

    move-object/from16 v32, v3

    move-object/from16 v26, v11

    move-object/from16 v31, v12

    move/from16 v33, v15

    goto/16 :goto_300

    :cond_25d
    const/16 v31, -0x1

    if-eqz v10, :cond_27b

    .line 5488
    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v31

    .line 5489
    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getAttributionTag()Ljava/lang/String;

    move-result-object v32

    .line 5490
    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result v10
    :try_end_26d
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_26d} :catch_37c
    .catchall {:try_start_b8 .. :try_end_26d} :catchall_390

    move/from16 v33, v15

    move-object/from16 v36, v32

    move-object/from16 v32, v3

    move v3, v10

    move-object/from16 v10, v31

    move-object/from16 v31, v12

    move-object/from16 v12, v36

    goto :goto_285

    :cond_27b
    move-object/from16 v32, v3

    move/from16 v33, v15

    move/from16 v3, v31

    const/4 v10, 0x0

    move-object/from16 v31, v12

    const/4 v12, 0x0

    :goto_285
    :try_start_285
    const-string/jumbo v15, "st"

    move/from16 v34, v3

    const/4 v3, 0x0

    .line 5493
    invoke-interface {v5, v3, v15}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz v11, :cond_296

    const-string/jumbo v15, "id"

    .line 5495
    invoke-interface {v5, v3, v15, v11}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_296
    const-string/jumbo v3, "n"

    move-object/from16 v35, v12

    const/4 v15, 0x0

    move-wide/from16 v36, v26

    move-object/from16 v26, v11

    move-wide/from16 v11, v36

    .line 5497
    invoke-interface {v5, v15, v3, v11, v12}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    if-lez v4, :cond_2b9

    const-string/jumbo v3, "t"

    .line 5499
    invoke-interface {v5, v15, v3, v13, v14}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    if-lez v28, :cond_2b9

    const-string/jumbo v3, "tu"

    .line 5502
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v15, v3, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2b9
    cmp-long v3, v6, v29

    if-lez v3, :cond_2d0

    const-string/jumbo v3, "r"

    const/4 v4, 0x0

    .line 5507
    invoke-interface {v5, v4, v3, v6, v7}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    if-lez v0, :cond_2d0

    const-string/jumbo v3, "ru"

    .line 5510
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v4, v3, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2d0
    cmp-long v0, v8, v29

    if-lez v0, :cond_2da

    const-string v0, "d"

    const/4 v3, 0x0

    .line 5515
    invoke-interface {v5, v3, v0, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2da
    if-eqz v10, :cond_2e3

    const-string/jumbo v0, "pp"

    const/4 v3, 0x0

    .line 5518
    invoke-interface {v5, v3, v0, v10}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2e3
    if-eqz v35, :cond_2ee

    const-string/jumbo v0, "pc"

    move-object/from16 v3, v35

    const/4 v4, 0x0

    .line 5521
    invoke-interface {v5, v4, v0, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2ee
    if-ltz v34, :cond_2f9

    const-string/jumbo v0, "pu"

    move/from16 v10, v34

    const/4 v3, 0x0

    .line 5524
    invoke-interface {v5, v3, v0, v10}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2f9
    const-string/jumbo v0, "st"

    const/4 v3, 0x0

    .line 5526
    invoke-interface {v5, v3, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_300
    add-int/lit8 v15, v33, 0x1

    move-object/from16 v0, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    move-object/from16 v4, v20

    move-object/from16 v13, v21

    move/from16 v14, v22

    move/from16 v6, v23

    move-object/from16 v7, v24

    move/from16 v8, v25

    move-object/from16 v11, v26

    move-object/from16 v12, v31

    move-object/from16 v3, v32

    goto/16 :goto_203

    :cond_31c
    move-object/from16 v17, v0

    move-object/from16 v32, v3

    move-object/from16 v20, v4

    move/from16 v23, v6

    move-object/from16 v24, v7

    move/from16 v25, v8

    const-string/jumbo v0, "op"

    const/4 v3, 0x0

    .line 5530
    invoke-interface {v5, v3, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v8, v25, 0x1

    move-object/from16 v0, v17

    move-object/from16 v4, v20

    move/from16 v6, v23

    move-object/from16 v7, v24

    move-object/from16 v3, v32

    goto/16 :goto_18d

    :cond_33d
    move-object/from16 v17, v0

    move-object/from16 v32, v3

    move-object/from16 v20, v4

    move/from16 v23, v6

    const-string/jumbo v0, "uid"

    const/4 v3, 0x0

    .line 5532
    invoke-interface {v5, v3, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v6, v23, 0x1

    move-object/from16 v0, v17

    move-object/from16 v4, v20

    move-object/from16 v3, v32

    goto/16 :goto_145

    :cond_356
    move-object/from16 v32, v3

    if-eqz v0, :cond_364

    const-string/jumbo v0, "pkg"

    const/4 v3, 0x0

    .line 5535
    invoke-interface {v5, v3, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_364

    :cond_362
    move-object/from16 v32, v3

    :cond_364
    :goto_364
    const-string v0, "app-ops"

    const/4 v3, 0x0

    .line 5539
    invoke-interface {v5, v3, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5540
    invoke-interface {v5}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 5541
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;
    :try_end_36f
    .catch Ljava/io/IOException; {:try_start_285 .. :try_end_36f} :catch_375
    .catchall {:try_start_285 .. :try_end_36f} :catchall_390

    move-object/from16 v3, v32

    :try_start_371
    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_374
    .catch Ljava/io/IOException; {:try_start_371 .. :try_end_374} :catch_37c
    .catchall {:try_start_371 .. :try_end_374} :catchall_390

    goto :goto_389

    :catch_375
    move-exception v0

    move-object/from16 v3, v32

    goto :goto_37d

    :catchall_379
    move-exception v0

    .line 5390
    :try_start_37a
    monitor-exit p0
    :try_end_37b
    .catchall {:try_start_37a .. :try_end_37b} :catchall_379

    :try_start_37b
    throw v0
    :try_end_37c
    .catch Ljava/io/IOException; {:try_start_37b .. :try_end_37c} :catch_37c
    .catchall {:try_start_37b .. :try_end_37c} :catchall_390

    :catch_37c
    move-exception v0

    :goto_37d
    :try_start_37d
    const-string v4, "AppOps"

    const-string v5, "Failed to write state, restoring backup."

    .line 5543
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5544
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 5546
    :goto_389
    monitor-exit v2
    :try_end_38a
    .catchall {:try_start_37d .. :try_end_38a} :catchall_390

    .line 5547
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v0}, Lcom/android/server/appop/HistoricalRegistry;->writeAndClearDiscreteHistory()V

    return-void

    :catchall_390
    move-exception v0

    goto :goto_3ab

    :catch_392
    move-exception v0

    :try_start_393
    const-string v1, "AppOps"

    .line 5337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5338
    monitor-exit v2

    return-void

    .line 5546
    :goto_3ab
    monitor-exit v2
    :try_end_3ac
    .catchall {:try_start_393 .. :try_end_3ac} :catchall_390

    throw v0
.end method
