.class public Lcom/android/server/am/UserController;
.super Ljava/lang/Object;
.source "UserController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UserController$Injector;,
        Lcom/android/server/am/UserController$UserProgressListener;,
        Lcom/android/server/am/UserController$UserJourneySession;,
        Lcom/android/server/am/UserController$UserLifecycleEventState;,
        Lcom/android/server/am/UserController$UserLifecycleEvent;,
        Lcom/android/server/am/UserController$UserJourney;
    }
.end annotation


# static fields
.field public static final CLEAR_USER_JOURNEY_SESSION_MSG:I = 0xc8

.field public static final COMPLETE_USER_SWITCH_MSG:I = 0x82

.field public static final CONTINUE_USER_SWITCH_MSG:I = 0x14

.field public static final FOREGROUND_PROFILE_CHANGED_MSG:I = 0x46

.field public static final INVALID_SESSION_ID:J = 0x0L

.field public static final LONG_USER_SWITCH_OBSERVER_WARNING_TIME_MS:I = 0x1f4

.field public static final REPORT_LOCKED_BOOT_COMPLETE_MSG:I = 0x6e

.field public static final REPORT_USER_SWITCH_COMPLETE_MSG:I = 0x50

.field public static final REPORT_USER_SWITCH_MSG:I = 0xa

.field public static final START_PROFILES_MSG:I = 0x28

.field public static final START_USER_SWITCH_FG_MSG:I = 0x78

.field public static final START_USER_SWITCH_UI_MSG:I = 0x3e8

.field public static final TAG:Ljava/lang/String; = "ActivityManager"

.field public static final USER_COMPLETED_EVENT_DELAY_MS:I = 0x1388

.field public static final USER_COMPLETED_EVENT_MSG:I = 0x8c

.field public static final USER_CURRENT_MSG:I = 0x3c

.field public static final USER_JOURNEY_TIMEOUT_MS:I = 0x15f90

.field public static final USER_JOURNEY_UNKNOWN:I = 0x0

.field public static final USER_JOURNEY_USER_CREATE:I = 0x4

.field public static final USER_JOURNEY_USER_START:I = 0x3

.field public static final USER_JOURNEY_USER_STOP:I = 0x5

.field public static final USER_JOURNEY_USER_SWITCH_FG:I = 0x2

.field public static final USER_JOURNEY_USER_SWITCH_UI:I = 0x1

.field public static final USER_LIFECYCLE_EVENT_CREATE_USER:I = 0x3

.field public static final USER_LIFECYCLE_EVENT_START_USER:I = 0x2

.field public static final USER_LIFECYCLE_EVENT_STATE_BEGIN:I = 0x1

.field public static final USER_LIFECYCLE_EVENT_STATE_FINISH:I = 0x2

.field public static final USER_LIFECYCLE_EVENT_STATE_NONE:I = 0x0

.field public static final USER_LIFECYCLE_EVENT_STOP_USER:I = 0x7

.field public static final USER_LIFECYCLE_EVENT_SWITCH_USER:I = 0x1

.field public static final USER_LIFECYCLE_EVENT_UNKNOWN:I = 0x0

.field public static final USER_LIFECYCLE_EVENT_UNLOCKED_USER:I = 0x6

.field public static final USER_LIFECYCLE_EVENT_UNLOCKING_USER:I = 0x5

.field public static final USER_LIFECYCLE_EVENT_USER_RUNNING_LOCKED:I = 0x4

.field public static final USER_START_MSG:I = 0x32

.field public static final USER_SWITCH_CALLBACKS_TIMEOUT_MS:I = 0x1388

.field public static final USER_SWITCH_CALLBACKS_TIMEOUT_MSG:I = 0x5a

.field public static final USER_SWITCH_TIMEOUT_MS:I = 0xbb8

.field public static final USER_SWITCH_TIMEOUT_MSG:I = 0x1e

.field public static final USER_UNLOCKED_MSG:I = 0x69

.field public static final USER_UNLOCK_MSG:I = 0x64

.field public static mUserSwitchingDialogArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public formatter:Ljava/text/SimpleDateFormat;

.field public volatile mBootCompleted:Z

.field public final mCompletedEventTypes:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCompletedEventTypes"
        }
    .end annotation
.end field

.field public volatile mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
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

.field public mCurrentProfileIds:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public volatile mCurrentUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mDelayUserDataLocking:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public mInitialized:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mInjector:Lcom/android/server/am/UserController$Injector;

.field public final mLastActiveUsers:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mLastUserUnlockingUptime:J

.field public final mLock:Ljava/lang/Object;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mMaxRunningUsers:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

.field public mStartedUserArray:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mStartedUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/UserState;",
            ">;"
        }
    .end annotation
.end field

.field public mStopUserOnSwitch:I
    .annotation build Landroid/app/ActivityManager$StopUserOnSwitch;
    .end annotation

    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mSwitchingFromSystemUserMessage:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mSwitchingToSystemUserMessage:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public volatile mTargetUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
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

.field public final mUiHandler:Landroid/os/Handler;

.field public final mUserIdToUserJourneyMap:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUserIdToUserJourneyMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/UserController$UserJourneySession;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserLru:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserProfileGroupIds:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mUserSwitchObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IUserSwitchObserver;",
            ">;"
        }
    .end annotation
.end field

.field public mUserSwitchUiEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-eDaTlG1PrbMLgHdJ57QRgZlp2c(Lcom/android/server/am/UserController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->lambda$handleMessage$16(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$6rUJOxfyVOIc-xAmW82jCB83P5Y(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->lambda$stopSingleUserLU$9(ILcom/android/server/am/UserState;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$7313q9GEhCwl9fQvILFEUxCVPpc(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/UserController;->lambda$finishUserUnlocking$1(ILcom/android/server/am/UserState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7NhzGTFKcj0SYwZNbe7MTzuuAe8(Lcom/android/server/am/UserController;Landroid/content/pm/UserInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->lambda$finishUserUnlockedCompleted$4(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9s2aO--W75CcjqnZ5TDZKlH1kh0(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/UserController;->lambda$finishUserStopping$11(Lcom/android/server/am/UserState;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$BJdl3rs0rijyLRCdtpV6Z6qIGyk(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->lambda$stopSingleUserLU$8(ILcom/android/server/am/UserState;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$RjWyT2zMOcyhCC-bNwnsM1AeZWE(Lcom/android/server/am/UserController;ZLcom/android/server/am/UserState;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/UserController;->lambda$finishUserUnlocked$2(ZLcom/android/server/am/UserState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TBjBVNL-M_g5s4SeNPd-JLXFLiI(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->lambda$finishUserUnlockedCompleted$6(Lcom/android/server/am/UserState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VMPEn8mgw0ZDr8DMRLijyBZsrFA(Lcom/android/server/am/UserController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/UserController;->lambda$scheduleStartProfiles$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$gPXGVI4_237IWq4A3Cvm-ZC24JI(Lcom/android/server/am/UserController;IZLandroid/os/IProgressListener;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->lambda$startUserInternal$15(IZLandroid/os/IProgressListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jJ2Vc6SyqrZowBZ8imPA3oTeX0Q(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->lambda$finishUserSwitch$0(Lcom/android/server/am/UserState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kc1MUQJY_ROphmoApPme929Pu-g(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/UserController;->lambda$finishUserStopping$12(Lcom/android/server/am/UserState;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$lnoV5Jmb3majBtqK8QezolljgY0(Landroid/app/IStopUserCallback;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/UserController;->lambda$stopSingleUserLU$7(Landroid/app/IStopUserCallback;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$mQauPx_-v6wMvdf5v9EnPpvYsV4(Lcom/android/server/am/UserController;ILjava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/UserController;->lambda$stopSingleUserLU$10(ILjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mUQid3jStuQRYAnCSH6_9tOQlyY(Lcom/android/server/am/UserController;Landroid/content/Intent;III)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/UserController;->lambda$finishUserUnlockedCompleted$5(Landroid/content/Intent;III)V

    return-void
.end method

.method public static synthetic $r8$lambda$ruYvcbXCBcj2KNR2EOw0NXxJGpw()V
    .registers 0

    invoke-static {}, Lcom/android/server/am/UserController;->lambda$finishUserUnlocked$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$t5Twob_A6uygNpMJvYjLyPXUf1w(Lcom/android/server/am/UserController;ILjava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/UserController;->lambda$dispatchUserLocking$13(ILjava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCurWaitingUserSwitchCallbacks(Lcom/android/server/am/UserController;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/am/UserController;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/am/UserController;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msendContinueUserSwitchLU(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;II)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLU(Lcom/android/server/am/UserState;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetmUserSwitchingDialogArray()Landroid/util/SparseArray;
    .registers 1

    sget-object v0, Lcom/android/server/am/UserController;->mUserSwitchingDialogArray:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfputmUserSwitchingDialogArray(Landroid/util/SparseArray;)V
    .registers 1

    sput-object p0, Lcom/android/server/am/UserController;->mUserSwitchingDialogArray:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3

    .line 462
    new-instance v0, Lcom/android/server/am/UserController$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/am/UserController$Injector;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;-><init>(Lcom/android/server/am/UserController$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/UserController$Injector;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 332
    iput v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    const/16 v1, -0x2710

    .line 336
    iput v1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 342
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 348
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    const/4 v3, 0x1

    new-array v4, v3, [I

    aput v0, v4, v0

    .line 354
    iput-object v4, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    new-array v4, v0, [I

    .line 359
    iput-object v4, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 365
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 371
    new-instance v4, Landroid/os/RemoteCallbackList;

    invoke-direct {v4}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 374
    iput-boolean v3, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    .line 419
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    .line 426
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    .line 433
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/UserController;->mCompletedEventTypes:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    .line 451
    iput v3, p0, Lcom/android/server/am/UserController;->mStopUserOnSwitch:I

    const-wide/16 v3, 0x0

    .line 455
    iput-wide v3, p0, Lcom/android/server/am/UserController;->mLastUserUnlockingUptime:J

    .line 3914
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/am/UserController;->formatter:Ljava/text/SimpleDateFormat;

    .line 467
    iput-object p1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 469
    invoke-virtual {p1, p0}, Lcom/android/server/am/UserController$Injector;->getHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 470
    invoke-virtual {p1, p0}, Lcom/android/server/am/UserController$Injector;->getUiHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    .line 472
    new-instance v3, Lcom/android/server/am/UserState;

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-direct {v3, v4}, Lcom/android/server/am/UserState;-><init>(Landroid/os/UserHandle;)V

    .line 473
    iget-object v4, v3, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    new-instance v5, Lcom/android/server/am/UserController$UserProgressListener;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/server/am/UserController$UserProgressListener;-><init>(Lcom/android/server/am/UserController$UserProgressListener-IA;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 474
    invoke-virtual {v1, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 475
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    invoke-virtual {p1}, Lcom/android/server/am/UserController$Injector;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 477
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    return-void
.end method

.method private synthetic lambda$dispatchUserLocking$13(ILjava/util/List;)V
    .registers 5

    .line 1526
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1527
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_14

    const-string p0, "ActivityManager"

    const-string p1, "User was restarted, skipping key eviction"

    .line 1528
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    monitor-exit v0

    return-void

    .line 1531
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_3b

    .line 1533
    :try_start_15
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->lockUserKey(I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1e} :catch_35

    if-nez p2, :cond_21

    return-void

    :cond_21
    const/4 p0, 0x0

    .line 1540
    :goto_22
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_34

    .line 1541
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UserState$KeyEvictedCallback;

    invoke-interface {v0, p1}, Lcom/android/server/am/UserState$KeyEvictedCallback;->keyEvicted(I)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_22

    :cond_34
    return-void

    :catch_35
    move-exception p0

    .line 1535
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catchall_3b
    move-exception p0

    .line 1531
    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method private synthetic lambda$finishUserStopping$11(Lcom/android/server/am/UserState;Z)V
    .registers 3

    .line 1413
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UserController;->finishUserStopped(Lcom/android/server/am/UserState;Z)V

    return-void
.end method

.method private synthetic lambda$finishUserStopping$12(Lcom/android/server/am/UserState;Z)V
    .registers 5

    .line 1413
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$finishUserSwitch$0(Lcom/android/server/am/UserState;)V
    .registers 3

    .line 533
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;)V

    .line 534
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->startProfiles()V

    .line 535
    iget-object p1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 536
    :try_start_9
    iget v0, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->stopRunningUsersLU(I)V

    .line 537
    monitor-exit p1

    return-void

    :catchall_10
    move-exception p0

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_10

    throw p0
.end method

.method private synthetic lambda$finishUserUnlocked$2(ZLcom/android/server/am/UserState;)V
    .registers 3

    if-eqz p1, :cond_d

    .line 1014
    iget-object p1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-static {p1}, Lcom/android/server/am/UserController$Injector;->-$$Nest$fgetmService(Lcom/android/server/am/UserController$Injector;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerServiceExt;->updatePreBootCscFile()V

    .line 1017
    :cond_d
    invoke-virtual {p0, p2}, Lcom/android/server/am/UserController;->finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V

    return-void
.end method

.method public static synthetic lambda$finishUserUnlocked$3()V
    .registers 2

    .line 1039
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsPolicyManager;->postInit(Z)V

    return-void
.end method

.method private synthetic lambda$finishUserUnlockedCompleted$4(Landroid/content/pm/UserInfo;)V
    .registers 2

    .line 1086
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->makeInitialized(I)V

    return-void
.end method

.method private synthetic lambda$finishUserUnlockedCompleted$5(Landroid/content/Intent;III)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v17, p2

    move/from16 v15, p3

    move/from16 v16, p4

    .line 1143
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    new-instance v3, Lcom/android/server/am/UserController$2;

    move-object v4, v3

    move/from16 v5, p2

    invoke-direct {v3, v0, v5}, Lcom/android/server/am/UserController$2;-><init>(Lcom/android/server/am/UserController;I)V

    const-string v3, "android.permission.RECEIVE_BOOT_COMPLETED"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v3, 0xc8

    .line 1156
    invoke-virtual {v0, v3}, Lcom/android/server/am/UserController;->getTemporaryAppAllowlistBroadcastOptions(I)Landroid/app/BroadcastOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v10

    sget v13, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/16 v14, 0x3e8

    .line 1143
    invoke-virtual/range {v1 .. v17}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    return-void
.end method

.method private synthetic lambda$finishUserUnlockedCompleted$6(Lcom/android/server/am/UserState;)V
    .registers 3

    const-string v0, "ams_boot_progress_log_unlocked"

    .line 1163
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/UserController;->printBootProgressLogToDropBox(Ljava/lang/String;Lcom/android/server/am/UserState;)V

    return-void
.end method

.method private synthetic lambda$finishUserUnlocking$1(ILcom/android/server/am/UserState;)V
    .registers 11

    .line 844
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "ActivityManager"

    const-string p1, "User key got locked unexpectedly, leaving user locked."

    .line 845
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 850
    :cond_e
    iget v2, p2, Lcom/android/server/am/UserState;->state:I

    const/4 v3, 0x1

    const-string v4, "finishUserUnlocking"

    const-string v5, "Start getUserManager().onBeforeUnlockUser"

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UserController;->showEventLogAndAddToDropBox(IIILjava/lang/String;Ljava/lang/String;)V

    .line 854
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 855
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UM.onBeforeUnlockUser-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 856
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/UserManagerService;->onBeforeUnlockUser(I)V

    .line 857
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 860
    iget v4, p2, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x1

    const-string v6, "finishUserUnlocking"

    const-string v7, "End getUserManager().onBeforeUnlockUser"

    move-object v2, p0

    move v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/UserController;->showEventLogAndAddToDropBox(IIILjava/lang/String;Ljava/lang/String;)V

    .line 863
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 865
    :try_start_50
    invoke-virtual {p2, v1, v2}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v1

    if-nez v1, :cond_58

    .line 866
    monitor-exit v0

    return-void

    .line 868
    :cond_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_50 .. :try_end_59} :catchall_8b

    .line 869
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    iget v1, p2, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 871
    iget-object v0, p2, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/internal/util/ProgressReporter;->setProgress(I)V

    .line 873
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/UserController;->mLastUserUnlockingUptime:J

    .line 877
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 880
    iget v3, p2, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x1

    const-string v5, "finishUserUnlocking"

    const-string/jumbo v6, "sendToTarget USER_UNLOCK_MSG"

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/UserController;->showEventLogAndAddToDropBox(IIILjava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_8b
    move-exception p0

    .line 868
    :try_start_8c
    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    throw p0
.end method

.method private synthetic lambda$handleMessage$16(I)V
    .registers 2

    .line 3311
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController$Injector;->loadUserRecents(I)V

    return-void
.end method

.method private synthetic lambda$scheduleStartProfiles$14()V
    .registers 4

    .line 1666
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1667
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_15
    return-void
.end method

.method private synthetic lambda$startUserInternal$15(IZLandroid/os/IProgressListener;)V
    .registers 4

    .line 1877
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->startUser(IZLandroid/os/IProgressListener;)Z

    return-void
.end method

.method private synthetic lambda$stopSingleUserLU$10(ILjava/lang/Runnable;)V
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1367
    new-instance v2, Landroid/content/Intent;

    move-object v3, v2

    const-string v4, "android.intent.action.USER_STOPPING"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x40000000    # 2.0f

    .line 1368
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "android.intent.extra.user_handle"

    .line 1369
    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "android.intent.extra.SHUTDOWN_USERSPACE_ONLY"

    const/4 v5, 0x1

    .line 1370
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1372
    new-instance v2, Lcom/android/server/am/UserController$4;

    move-object v5, v2

    move-object/from16 v4, p2

    invoke-direct {v2, v0, v4}, Lcom/android/server/am/UserController$4;-><init>(Lcom/android/server/am/UserController;Ljava/lang/Runnable;)V

    .line 1381
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2, v1}, Lcom/android/server/am/UserController$Injector;->clearBroadcastQueueForUser(I)V

    .line 1383
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v9

    sget v14, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 1386
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    .line 1387
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v15, 0x3e8

    const/16 v18, -0x1

    .line 1383
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    return-void
.end method

.method public static synthetic lambda$stopSingleUserLU$7(Landroid/app/IStopUserCallback;I)V
    .registers 2

    .line 1320
    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/IStopUserCallback;->userStopped(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method private synthetic lambda$stopSingleUserLU$8(ILcom/android/server/am/UserState;Z)V
    .registers 4

    .line 1355
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->finishUserStopping(ILcom/android/server/am/UserState;Z)V

    return-void
.end method

.method private synthetic lambda$stopSingleUserLU$9(ILcom/android/server/am/UserState;Z)V
    .registers 6

    .line 1355
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static notifyFinished(ILandroid/os/IProgressListener;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 2105
    :try_start_4
    invoke-interface {p1, p0, v0}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method


# virtual methods
.method public final broadcastProfileAccessibleStateChanged(IILjava/lang/String;)V
    .registers 21

    move/from16 v16, p2

    .line 2569
    new-instance v0, Landroid/content/Intent;

    move-object v1, v0

    move-object/from16 v2, p3

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2570
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const-string v3, "android.intent.extra.USER"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v2, 0x50000000

    .line 2571
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    .line 2573
    iget-object v0, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    sget v12, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 2577
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v13, 0x3e8

    .line 2573
    invoke-virtual/range {v0 .. v16}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    return-void
.end method

.method public final canInteractWithAcrossProfilesPermission(IZIILjava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_5

    return v0

    :cond_5
    if-nez p2, :cond_8

    return v0

    .line 2695
    :cond_8
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string p1, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/server/am/UserController$Injector;->checkPermissionForPreflight(Ljava/lang/String;IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public canStartMoreUsers()Z
    .registers 3

    .line 591
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 592
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getRunningUsersLU()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget p0, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    if-ge v1, p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    monitor-exit v0

    return p0

    :catchall_14
    move-exception p0

    .line 593
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public final checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 2997
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_9

    return-void

    .line 2999
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permission denial: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "() from pid="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3000
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", uid="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3001
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " requires "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    .line 3003
    invoke-static {p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3004
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final checkGetCurrentUserPermissions()V
    .registers 3

    .line 2892
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_49

    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 2894
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_15

    goto :goto_49

    .line 2896
    :cond_15
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permission Denial: getCurrentUser() from pid="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2897
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", uid="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2898
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " requires "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityManager"

    .line 2900
    invoke-static {v0, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2901
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    :goto_49
    return-void
.end method

.method public final checkHasManageUsersPermission(Ljava/lang/String;)V
    .registers 4

    .line 3152
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v0, "android.permission.MANAGE_USERS"

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_c

    return-void

    .line 3154
    :cond_c
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "You need MANAGE_USERS permission to call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final clearSessionId(I)V
    .registers 5

    .line 3554
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3555
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3556
    iget-object p0, p0, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 3557
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final clearSessionId(II)V
    .registers 5
    .param p2    # I
        .annotation build Lcom/android/server/am/UserController$UserJourney;
        .end annotation
    .end param

    .line 3542
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3543
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserController$UserJourneySession;

    if-eqz v1, :cond_14

    .line 3544
    iget v1, v1, Lcom/android/server/am/UserController$UserJourneySession;->mJourney:I

    if-ne v1, p2, :cond_14

    .line 3545
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->clearSessionId(I)V

    .line 3547
    :cond_14
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public completeUserSwitch(I)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2457
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->isUserSwitchUiEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2459
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result p1

    if-nez p1, :cond_1f

    .line 2461
    iget-object p1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    new-instance v0, Lcom/android/server/am/UserController$8;

    invoke-direct {v0, p0}, Lcom/android/server/am/UserController$8;-><init>(Lcom/android/server/am/UserController;)V

    const-string p0, "User Switch"

    invoke-virtual {p1, v0, p0}, Lcom/android/server/am/UserController$Injector;->dismissKeyguard(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void

    .line 2470
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->unfreezeScreen()V

    :cond_22
    return-void
.end method

.method public continueUserSwitch(Lcom/android/server/am/UserState;II)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2437
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 2438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "continueUserSwitch-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-to-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 2440
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/16 v2, 0x7580

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2443
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2444
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2446
    iput-boolean v3, p1, Lcom/android/server/am/UserState;->switching:Z

    .line 2447
    iget-object p1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x50

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2448
    iget-object p1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1, p3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2449
    invoke-virtual {p0, p2}, Lcom/android/server/am/UserController;->stopGuestOrEphemeralUserIfBackground(I)V

    .line 2450
    invoke-virtual {p0, p2}, Lcom/android/server/am/UserController;->stopUserOnSwitchIfEnforced(I)V

    .line 2452
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public dismissUserSwitchingDialog(I)V
    .registers 3

    .line 2262
    sget-object p0, Lcom/android/server/am/UserController;->mUserSwitchingDialogArray:Landroid/util/SparseArray;

    if-eqz p0, :cond_1a

    .line 2264
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Dialog;

    if-eqz p0, :cond_15

    .line 2265
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2266
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2268
    :cond_15
    sget-object p0, Lcom/android/server/am/UserController;->mUserSwitchingDialogArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_1a
    return-void
.end method

.method public final dispatchForegroundProfileChanged(I)V
    .registers 5

    .line 2274
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 2277
    :try_start_9
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IUserSwitchObserver;

    invoke-interface {v2, p1}, Landroid/app/IUserSwitchObserver;->onForegroundProfileSwitch(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2282
    :cond_17
    iget-object p0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final dispatchLockedBootComplete(I)V
    .registers 5

    .line 2300
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 2303
    :try_start_9
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IUserSwitchObserver;

    invoke-interface {v2, p1}, Landroid/app/IUserSwitchObserver;->onLockedBootComplete(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2308
    :cond_17
    iget-object p0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final dispatchUserLocking(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/server/am/UserState$KeyEvictedCallback;",
            ">;)V"
        }
    .end annotation

    .line 1525
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/am/UserController;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dispatchUserSwitch(Lcom/android/server/am/UserState;II)V
    .registers 26
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v13, p0

    move/from16 v14, p3

    .line 2361
    new-instance v15, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v15}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 2362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchUserSwitch-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-to-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 2364
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/16 v1, 0x757f

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2366
    iget-object v0, v13, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v11

    if-lez v11, :cond_de

    .line 2368
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 2369
    iget-object v1, v13, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    move-object/from16 v9, p1

    .line 2370
    :try_start_4f
    iput-boolean v3, v9, Lcom/android/server/am/UserState;->switching:Z

    .line 2371
    iput-object v10, v13, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 2372
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_db

    .line 2373
    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v8, v11}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 2374
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    move v6, v2

    :goto_5e
    if-ge v6, v11, :cond_d8

    .line 2376
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 2379
    :try_start_64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v13, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v6}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2380
    iget-object v1, v13, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_86} :catch_c0

    .line 2381
    :try_start_86
    invoke-virtual {v10, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2382
    monitor-exit v1
    :try_end_8a
    .catchall {:try_start_86 .. :try_end_8a} :catchall_b2

    .line 2383
    :try_start_8a
    new-instance v0, Lcom/android/server/am/UserController$7;
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_8c} :catch_c0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v18, v15

    move v15, v6

    move-wide/from16 v6, v16

    move-object/from16 v19, v8

    move-object v8, v10

    move-object/from16 v9, v19

    move-object/from16 v20, v10

    move-object/from16 v10, p1

    move/from16 v21, v11

    move/from16 v11, p2

    move/from16 v12, p3

    :try_start_a3
    invoke-direct/range {v1 .. v12}, Lcom/android/server/am/UserController$7;-><init>(Lcom/android/server/am/UserController;JLjava/lang/String;JLandroid/util/ArraySet;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/am/UserState;II)V

    .line 2414
    iget-object v1, v13, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v15}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/app/IUserSwitchObserver;

    invoke-interface {v1, v14, v0}, Landroid/app/IUserSwitchObserver;->onUserSwitching(ILandroid/os/IRemoteCallback;)V
    :try_end_b1
    .catch Landroid/os/RemoteException; {:try_start_a3 .. :try_end_b1} :catch_c9

    goto :goto_c9

    :catchall_b2
    move-exception v0

    move-object/from16 v19, v8

    move-object/from16 v20, v10

    move/from16 v21, v11

    move-object/from16 v18, v15

    move v15, v6

    .line 2382
    :goto_bc
    :try_start_bc
    monitor-exit v1
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_be

    :try_start_bd
    throw v0
    :try_end_be
    .catch Landroid/os/RemoteException; {:try_start_bd .. :try_end_be} :catch_c9

    :catchall_be
    move-exception v0

    goto :goto_bc

    :catch_c0
    move-object/from16 v19, v8

    move-object/from16 v20, v10

    move/from16 v21, v11

    move-object/from16 v18, v15

    move v15, v6

    :catch_c9
    :goto_c9
    add-int/lit8 v6, v15, 0x1

    move-object/from16 v9, p1

    move/from16 v12, p2

    move-object/from16 v15, v18

    move-object/from16 v8, v19

    move-object/from16 v10, v20

    move/from16 v11, v21

    goto :goto_5e

    :cond_d8
    move-object/from16 v18, v15

    goto :goto_e7

    :catchall_db
    move-exception v0

    .line 2372
    :try_start_dc
    monitor-exit v1
    :try_end_dd
    .catchall {:try_start_dc .. :try_end_dd} :catchall_db

    throw v0

    :cond_de
    move-object/from16 v18, v15

    .line 2419
    iget-object v1, v13, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2420
    :try_start_e3
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLU(Lcom/android/server/am/UserState;II)V

    .line 2421
    monitor-exit v1
    :try_end_e7
    .catchall {:try_start_e3 .. :try_end_e7} :catchall_f0

    .line 2423
    :goto_e7
    iget-object v0, v13, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2424
    invoke-virtual/range {v18 .. v18}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :catchall_f0
    move-exception v0

    .line 2421
    :try_start_f1
    monitor-exit v1
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_f0

    throw v0
.end method

.method public dispatchUserSwitchComplete(I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2288
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    .line 2289
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_10
    if-ge v1, v0, :cond_20

    .line 2292
    :try_start_12
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IUserSwitchObserver;

    invoke-interface {v2, p1}, Landroid/app/IUserSwitchObserver;->onUserSwitchComplete(I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 2296
    :cond_20
    iget-object p0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 7

    .line 3190
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "  mStartedUsers:"

    .line 3191
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    .line 3192
    :goto_a
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_40

    .line 3193
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    const-string v4, "    User #"

    .line 3194
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3195
    iget-object v4, v3, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    .line 3196
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ""

    .line 3197
    invoke-virtual {v3, v4, p1}, Lcom/android/server/am/UserState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3200
    invoke-virtual {v3}, Lcom/android/server/am/UserState;->isBootLogPrinted()Z

    move-result v4

    if-nez v4, :cond_3d

    const-string v4, "ams_boot_progress_log_unlocked_failed"

    .line 3201
    invoke-virtual {p0, v4, v3}, Lcom/android/server/am/UserController;->printBootProgressLogToDropBox(Ljava/lang/String;Lcom/android/server/am/UserState;)V

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_40
    const-string v2, "  mStartedUserArray: ["

    .line 3206
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v2, v1

    .line 3207
    :goto_46
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    array-length v3, v3

    if-ge v2, v3, :cond_5c

    if-lez v2, :cond_52

    const-string v3, ", "

    .line 3209
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3210
    :cond_52
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    aget v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    :cond_5c
    const-string v2, "]"

    .line 3212
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  mUserLru: ["

    .line 3213
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v2, v1

    .line 3214
    :goto_67
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_82

    if-lez v2, :cond_76

    const-string v3, ", "

    .line 3216
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3217
    :cond_76
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    :cond_82
    const-string v2, "]"

    .line 3219
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3220
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-lez v2, :cond_bb

    const-string v2, "  mUserProfileGroupIds:"

    .line 3221
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3222
    :goto_94
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_bb

    const-string v2, "    User #"

    .line 3223
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3224
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " -> profile #"

    .line 3225
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3226
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_94

    .line 3229
    :cond_bb
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurrentUserId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTargetUserId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastActiveUsers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDelayUserDataLocking:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  shouldStopUserOnSwitch():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/UserController;->shouldStopUserOnSwitch()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStopUserOnSwitch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/UserController;->mStopUserOnSwitch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMaxRunningUsers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUserSwitchUiEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/UserController;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3238
    iget-object v1, p0, Lcom/android/server/am/UserController;->mSwitchingFromSystemUserMessage:Ljava/lang/String;

    if-eqz v1, :cond_19d

    .line 3239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSwitchingFromSystemUserMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/UserController;->mSwitchingFromSystemUserMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3241
    :cond_19d
    iget-object v1, p0, Lcom/android/server/am/UserController;->mSwitchingToSystemUserMessage:Ljava/lang/String;

    if-eqz v1, :cond_1b7

    .line 3242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSwitchingToSystemUserMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/UserController;->mSwitchingToSystemUserMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3244
    :cond_1b7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastUserUnlockingUptime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/UserController;->mLastUserUnlockingUptime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3245
    monitor-exit v0

    return-void

    :catchall_1cf
    move-exception p0

    monitor-exit v0
    :try_end_1d1
    .catchall {:try_start_3 .. :try_end_1d1} :catchall_1cf

    throw p0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 13

    .line 3160
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3161
    :try_start_3
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const/4 v1, 0x0

    move v2, v1

    .line 3162
    :goto_9
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const-wide v4, 0x10500000001L

    if-ge v2, v3, :cond_3e

    .line 3163
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    const-wide v6, 0x20b00000001L

    .line 3164
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 3165
    iget-object v8, v3, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {p1, v4, v5, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10b00000002L

    .line 3166
    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/am/UserState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3167
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_3e
    move v2, v1

    .line 3169
    :goto_3f
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    array-length v6, v3

    if-ge v2, v6, :cond_51

    const-wide v6, 0x20500000002L

    .line 3170
    aget v3, v3, v2

    invoke-virtual {p1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    :cond_51
    move v2, v1

    .line 3172
    :goto_52
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_71

    const-wide v6, 0x20500000003L

    .line 3173
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 3175
    :cond_71
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-lez v2, :cond_a7

    .line 3176
    :goto_79
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_a7

    const-wide v2, 0x20b00000004L

    .line 3177
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 3178
    iget-object v6, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 3179
    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 3178
    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10500000002L

    .line 3180
    iget-object v8, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 3181
    invoke-virtual {v8, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    .line 3180
    invoke-virtual {p1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3182
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_79

    .line 3185
    :cond_a7
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3186
    monitor-exit v0

    return-void

    :catchall_ac
    move-exception p0

    monitor-exit v0
    :try_end_ae
    .catchall {:try_start_3 .. :try_end_ae} :catchall_ac

    throw p0
.end method

.method public final enforceShellRestriction(Ljava/lang/String;I)V
    .registers 5

    .line 3009
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_28

    if-ltz p2, :cond_11

    .line 3010
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_28

    .line 3011
    :cond_11
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Shell does not have permission to access user "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_28
    :goto_28
    return-void
.end method

.method public ensureNotSpecialUser(I)V
    .registers 4

    if-ltz p1, :cond_3

    return-void

    .line 2708
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call does not support special user #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public exists(I)Z
    .registers 2

    .line 2993
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result p0

    return p0
.end method

.method public expandUserId(I)[I
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 v0, 0x0

    aput p1, p0, v0

    return-object p0

    .line 2988
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object p0

    return-object p0
.end method

.method public final fetchOuterLayerKey(I)[B
    .registers 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ActivityManager"

    const-string v3, "fetchOuterLayerKey()"

    .line 749
    invoke-static {v2, v3, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 752
    :try_start_a
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDARController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->fetchOuterLayerKey(I)[B

    move-result-object p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_19

    goto :goto_35

    :catch_19
    move-exception p0

    .line 754
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception in fetchOuterLayerKey() : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p0, 0x0

    :goto_35
    return-object p0
.end method

.method public final finishUserBoot(Lcom/android/server/am/UserState;)V
    .registers 3

    const/4 v0, 0x0

    .line 597
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V

    return-void
.end method

.method public final finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V
    .registers 11

    .line 601
    iget-object v0, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/16 v1, 0x757e

    .line 602
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 605
    iget v3, p1, Lcom/android/server/am/UserState;->state:I

    const-string v5, "finishUserBoot"

    const-string v6, "NULL"

    const/4 v4, 0x0

    move-object v1, p0

    move v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/UserController;->showEventLogAndAddToDropBox(IIILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "ActivityManager"

    .line 606
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finishing user boot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 612
    :try_start_30
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_3a

    .line 613
    monitor-exit v1

    return-void

    .line 615
    :cond_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_149

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 621
    invoke-virtual {p1, v2, v1}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v1

    const/4 v7, 0x4

    if-eqz v1, :cond_c1

    .line 622
    invoke-virtual {p0, v0, v7, v2}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    .line 624
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v1

    iget v3, p1, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    if-nez v0, :cond_8c

    .line 626
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 627
    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->isRuntimeRestarted()Z

    move-result v1

    if-nez v1, :cond_8c

    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->isFirstBootOrUpgrade()Z

    move-result v1

    if-nez v1, :cond_8c

    .line 628
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/16 v1, 0xf0

    const/16 v5, 0xc

    .line 629
    invoke-static {v1, v5, v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    const-wide/32 v5, 0x1d4c0

    cmp-long v1, v3, v5

    if-lez v1, :cond_8c

    const-string v1, "SystemServerTiming"

    .line 634
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finishUserBoot took too long. elapsedTimeMs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_8c
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserManagerService;->isPreCreated(I)Z

    move-result v1

    if-nez v1, :cond_b4

    .line 640
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6e

    invoke-virtual {v1, v3, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 644
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v1

    if-eqz v1, :cond_b1

    iget-object v1, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->isSystem()Z

    move-result v1

    if-nez v1, :cond_b4

    .line 646
    :cond_b1
    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/UserController;->sendLockedBootCompletedBroadcast(Landroid/content/IIntentReceiver;I)V

    .line 651
    :cond_b4
    iget v3, p1, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x1

    const-string v5, "finishUserBoot"

    const-string/jumbo v6, "send LOCKED BOOT COMPLETED"

    move-object v1, p0

    move v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/UserController;->showEventLogAndAddToDropBox(IIILjava/lang/String;Ljava/lang/String;)V

    .line 658
    :cond_c1
    iget-object p2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/android/server/pm/UserManagerService;->isProfile(I)Z

    move-result p2

    if-eqz p2, :cond_139

    .line 659
    iget-object p2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p2

    if-eqz p2, :cond_10a

    .line 660
    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    .line 661
    invoke-virtual {p0, v1, v7}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v1

    if-eqz v1, :cond_10a

    const-string v1, "ActivityManager"

    .line 662
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (parent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "): attempting unlock because parent is unlocked"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z

    goto :goto_13c

    :cond_10a
    if-nez p2, :cond_10f

    const-string p2, "<null>"

    goto :goto_115

    .line 673
    :cond_10f
    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    :goto_115
    const-string v1, "ActivityManager"

    .line 674
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (parent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "): delaying unlock because parent is locked"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13c

    .line 678
    :cond_139
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z

    .line 682
    :goto_13c
    iget v3, p1, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x2

    const-string v5, "finishUserBoot"

    const-string v6, "NULL"

    move-object v1, p0

    move v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/UserController;->showEventLogAndAddToDropBox(IIILjava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_149
    move-exception p0

    .line 615
    :try_start_14a
    monitor-exit v1
    :try_end_14b
    .catchall {:try_start_14a .. :try_end_14b} :catchall_149

    throw p0
.end method

.method public finishUserStopped(Lcom/android/server/am/UserState;Z)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1438
    iget-object v0, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1439
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_22

    const-string v1, "ActivityManager"

    const-string v5, "finishUserStopped(%d): allowDelayedLocking=%b"

    new-array v6, v2, [Ljava/lang/Object;

    .line 1440
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    .line 1441
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v3

    .line 1440
    invoke-static {v1, v5, v6}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_22
    const/16 v1, 0x757a

    .line 1444
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1451
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1452
    iget-object v5, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1453
    :try_start_2e
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p1, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1454
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, p1, Lcom/android/server/am/UserState;->mKeyEvictedCallbacks:Ljava/util/ArrayList;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1455
    iget-object v8, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, p1, :cond_8e

    iget p1, p1, Lcom/android/server/am/UserState;->state:I

    const/4 v8, 0x5

    if-eq p1, v8, :cond_4a

    goto :goto_8e

    .line 1460
    :cond_4a
    iget-object p1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1461
    iget-object p1, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1462
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    if-eqz p2, :cond_82

    .line 1463
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_82

    const-string p1, "ActivityManager"

    .line 1464
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Delayed locking enabled while KeyEvictedCallbacks not empty, userId:"

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " callbacks:"

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v4

    .line 1469
    :cond_82
    invoke-virtual {p0, v0, p2}, Lcom/android/server/am/UserController;->updateUserToLockLU(IZ)I

    move-result p1

    const/16 p2, -0x2710

    if-ne p1, p2, :cond_8c

    move p2, v4

    goto :goto_91

    :cond_8c
    move p2, v3

    goto :goto_91

    :cond_8e
    :goto_8e
    move p1, v0

    move p2, v3

    move v3, v4

    .line 1474
    :goto_91
    monitor-exit v5
    :try_end_92
    .catchall {:try_start_2e .. :try_end_92} :catchall_f5

    if-eqz v3, :cond_a7

    .line 1476
    iget-object v5, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v5}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/server/pm/UserManagerInternal;->removeUserState(I)V

    .line 1477
    iget-object v5, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v5, v0}, Lcom/android/server/am/UserController$Injector;->activityManagerOnUserStopped(I)V

    const-string v5, "finish user"

    .line 1480
    invoke-virtual {p0, v0, v5}, Lcom/android/server/am/UserController;->forceStopUser(ILjava/lang/String;)V

    .line 1483
    :cond_a7
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :catch_ab
    :goto_ab
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/IStopUserCallback;

    if-eqz v3, :cond_bd

    .line 1485
    :try_start_b9
    invoke-interface {v6, v0}, Landroid/app/IStopUserCallback;->userStopped(I)V

    goto :goto_ab

    .line 1486
    :cond_bd
    invoke-interface {v6, v0}, Landroid/app/IStopUserCallback;->userStopAborted(I)V
    :try_end_c0
    .catch Landroid/os/RemoteException; {:try_start_b9 .. :try_end_c0} :catch_ab

    goto :goto_ab

    :cond_c1
    const/4 v5, 0x7

    if-eqz v3, :cond_ee

    .line 1492
    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3, v0}, Lcom/android/server/am/UserController$Injector;->systemServiceManagerOnUserStopped(I)V

    .line 1493
    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3, v0}, Lcom/android/server/am/UserController$Injector;->taskSupervisorRemoveUser(I)V

    .line 1496
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v3

    if-eqz v3, :cond_e1

    iget-boolean v1, v1, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v1, :cond_e1

    .line 1497
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserManagerService;->removeUserEvenWhenDisallowed(I)Z

    .line 1500
    :cond_e1
    invoke-virtual {p0, v0, v5, v2}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    .line 1502
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->clearSessionId(I)V

    if-nez p2, :cond_ea

    return-void

    .line 1507
    :cond_ea
    invoke-virtual {p0, p1, v7}, Lcom/android/server/am/UserController;->dispatchUserLocking(ILjava/util/List;)V

    goto :goto_f4

    .line 1509
    :cond_ee
    invoke-virtual {p0, v0, v5, v4}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    .line 1511
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->clearSessionId(I)V

    :goto_f4
    return-void

    :catchall_f5
    move-exception p0

    .line 1474
    :try_start_f6
    monitor-exit v5
    :try_end_f7
    .catchall {:try_start_f6 .. :try_end_f7} :catchall_f5

    throw p0
.end method

.method public final finishUserStopping(ILcom/android/server/am/UserState;Z)V
    .registers 22

    move-object/from16 v0, p0

    move/from16 v15, p1

    move-object/from16 v1, p2

    const/16 v2, 0x7579

    .line 1394
    invoke-static {v2, v15}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1395
    iget-object v2, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1396
    :try_start_e
    iget v3, v1, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1d

    const/4 v1, 0x7

    const/4 v3, 0x0

    .line 1398
    invoke-virtual {v0, v15, v1, v3}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    .line 1400
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/UserController;->clearSessionId(I)V

    .line 1401
    monitor-exit v2

    return-void

    :cond_1d
    const/4 v3, 0x5

    .line 1403
    invoke-virtual {v1, v3}, Lcom/android/server/am/UserState;->setState(I)V

    .line 1404
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_84

    .line 1405
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v2

    iget v3, v1, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v2, v15, v3}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 1407
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/16 v3, 0x4007

    .line 1409
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1407
    invoke-virtual {v2, v3, v4, v15}, Lcom/android/server/am/UserController$Injector;->batteryStatsServiceNoteEvent(ILjava/lang/String;I)V

    .line 1410
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/android/server/SystemServiceManager;->onUserStopping(I)V

    .line 1412
    new-instance v3, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;

    move/from16 v2, p3

    invoke-direct {v3, v0, v1, v2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;Z)V

    .line 1414
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/android/server/pm/UserManagerService;->isPreCreated(I)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 1415
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1420
    :cond_58
    new-instance v1, Landroid/content/Intent;

    move-object v2, v1

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1422
    new-instance v1, Lcom/android/server/am/UserController$5;

    move-object v4, v1

    invoke-direct {v1, v0, v3}, Lcom/android/server/am/UserController$5;-><init>(Lcom/android/server/am/UserController;Ljava/lang/Runnable;)V

    .line 1429
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    sget v13, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v14, 0x3e8

    .line 1432
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move v15, v0

    .line 1433
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v16

    move/from16 v17, p1

    .line 1429
    invoke-virtual/range {v1 .. v17}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    return-void

    :catchall_84
    move-exception v0

    .line 1404
    :try_start_85
    monitor-exit v2
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    throw v0
.end method

.method public finishUserSwitch(Lcom/android/server/am/UserState;)V
    .registers 4

    .line 532
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final finishUserUnlocked(Lcom/android/server/am/UserState;)V
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 904
    iget-object v1, v7, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v15

    const/16 v1, 0x7577

    .line 905
    invoke-static {v1, v15}, Landroid/util/EventLog;->writeEvent(II)I

    .line 908
    iget v3, v7, Lcom/android/server/am/UserState;->state:I

    const-string v5, "finishUserUnlocked"

    const-string v6, "NULL"

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move v2, v15

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/UserController;->showEventLogAndAddToDropBox(IIILjava/lang/String;Ljava/lang/String;)V

    .line 909
    iget v3, v7, Lcom/android/server/am/UserState;->state:I

    const-string v5, "finishUserUnlocked"

    const-string v6, "Try StorageManager.isUserKeyUnlocked"

    const/4 v4, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/UserController;->showEventLogAndAddToDropBox(IIILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "ActivityManager"

    .line 910
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserController event: finishUserUnlocked("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    invoke-static {v15}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v1

    if-nez v1, :cond_4f

    const-string v0, "ActivityManager"

    const-string v1, "!@Boot: StorageManager Unlocked FAIL, finishUserUnlocked"

    .line 917
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 924
    :cond_4f
    iget v3, v7, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x1

    const-string v5, "finishUserUnlocked"

    const-string v6, "OK StorageManager.isUserKeyUnlocked"

    move-object/from16 v1, p0

    move v2, v15

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/UserController;->showEventLogAndAddToDropBox(IIILjava/lang/String;Ljava/lang/String;)V

    .line 927
    iget-object v1, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 929
    :try_start_5f
    iget-object v2, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    iget-object v3, v7, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v7, :cond_6f

    monitor-exit v1

    return-void

    :cond_6f
    const/4 v2, 0x2

    const/4 v3, 0x3

    .line 932
    invoke-virtual {v7, v2, v3}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v2

    if-nez v2, :cond_79

    .line 933
    monitor-exit v1

    return-void

    .line 935
    :cond_79
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_5f .. :try_end_7a} :catchall_1cb

    .line 936
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v1

    iget v2, v7, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v1, v15, v2}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 937
    iget-object v1, v7, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v1}, Lcom/android/internal/util/ProgressReporter;->finish()V

    if-nez v15, :cond_93

    .line 942
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/high16 v2, 0x40000

    invoke-virtual {v1, v2}, Lcom/android/server/am/UserController$Injector;->startPersistentApps(I)V

    .line 944
    :cond_93
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1, v15}, Lcom/android/server/am/UserController$Injector;->installEncryptionUnawareProviders(I)V

    .line 946
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/android/server/pm/UserManagerService;->isPreCreated(I)Z

    move-result v1

    const/high16 v6, 0x50000000

    if-nez v1, :cond_ec

    .line 948
    new-instance v1, Landroid/content/Intent;

    move-object v9, v1

    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.user_handle"

    .line 949
    invoke-virtual {v1, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 950
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 952
    iget-object v8, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v1, 0x0

    move v5, v15

    move-object v15, v1

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    sget v20, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v21, 0x3e8

    .line 954
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v22

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v23

    move/from16 v24, v5

    .line 952
    invoke-virtual/range {v8 .. v24}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 957
    iget v3, v7, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x1

    const-string v8, "finishUserUnlocked"

    const-string/jumbo v9, "send USER UNLOCKED"

    move-object/from16 v1, p0

    move v2, v5

    move v10, v5

    move-object v5, v8

    move v8, v6

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/UserController;->showEventLogAndAddToDropBox(IIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_ee

    :cond_ec
    move v8, v6

    move v10, v15

    .line 962
    :goto_ee
    invoke-virtual {v0, v10}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 963
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v2

    if-eqz v2, :cond_151

    .line 964
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_151

    .line 967
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    const-string v4, "android.intent.action.PROFILE_ACCESSIBLE"

    invoke-virtual {v0, v10, v3, v4}, Lcom/android/server/am/UserController;->broadcastProfileAccessibleStateChanged(IILjava/lang/String;)V

    .line 974
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-nez v3, :cond_117

    .line 975
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v1

    if-eqz v1, :cond_151

    .line 976
    :cond_117
    new-instance v1, Landroid/content/Intent;

    move-object v12, v1

    const-string v3, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.extra.USER"

    .line 978
    invoke-static {v10}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 979
    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 982
    iget-object v11, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    sget v23, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v24, 0x3e8

    .line 984
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v25

    .line 985
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v26

    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    move/from16 v27, v1

    .line 982
    invoke-virtual/range {v11 .. v27}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 993
    :cond_151
    invoke-virtual {v0, v10}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 995
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-static {v2}, Lcom/android/server/am/UserController$Injector;->-$$Nest$fgetmService(Lcom/android/server/am/UserController$Injector;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 996
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerServiceExt;->isCscVerChanged()Z

    move-result v2

    .line 998
    iget-object v3, v1, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    sget-object v4, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_17c

    const-string/jumbo v3, "persist.pm.mock-upgrade"

    .line 999
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_17c

    if-eqz v2, :cond_178

    goto :goto_17c

    .line 1025
    :cond_178
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/UserController;->finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V

    goto :goto_1a0

    .line 1006
    :cond_17c
    :goto_17c
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-nez v3, :cond_188

    .line 1008
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v1

    if-eqz v1, :cond_189

    :cond_188
    const/4 v4, 0x1

    .line 1010
    :cond_189
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    new-instance v3, Lcom/android/server/am/UserController$$ExternalSyntheticLambda8;

    invoke-direct {v3, v0, v2, v7}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/UserController;ZLcom/android/server/am/UserState;)V

    invoke-virtual {v1, v10, v4, v3}, Lcom/android/server/am/UserController$Injector;->sendPreBootBroadcast(IZLjava/lang/Runnable;)V

    .line 1021
    iget v3, v7, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x1

    const-string v5, "finishUserUnlocked"

    const-string v6, "OK sendPreBootBroadcast"

    move-object/from16 v1, p0

    move v2, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/UserController;->showEventLogAndAddToDropBox(IIILjava/lang/String;Ljava/lang/String;)V

    .line 1029
    :goto_1a0
    iget v3, v7, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x2

    const-string v5, "finishUserUnlocked"

    const-string v6, "NULL"

    move-object/from16 v1, p0

    move v2, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/UserController;->showEventLogAndAddToDropBox(IIILjava/lang/String;Ljava/lang/String;)V

    .line 1035
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/UserController$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1045
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SM_SUPPORT_PAYMENT_SAFETY:Z

    if-eqz v1, :cond_1ca

    .line 1046
    iget-object v0, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/PaymentSafetyPolicy;->getInstance(Landroid/content/Context;)Lcom/android/internal/app/PaymentSafetyPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/PaymentSafetyPolicy;->init()V

    :cond_1ca
    return-void

    :catchall_1cb
    move-exception v0

    .line 935
    :try_start_1cc
    monitor-exit v1
    :try_end_1cd
    .catchall {:try_start_1cc .. :try_end_1cd} :catchall_1cb

    throw v0
.end method

.method public final finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1052
    iget-object v1, v7, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v15

    const/16 v1, 0x7578

    .line 1053
    invoke-static {v1, v15}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1056
    iget v3, v7, Lcom/android/server/am/UserState;->state:I

    const-string v5, "finishUserUnlockedCompleted"

    const-string v6, "NULL"

    const/4 v4, 0x2

    move-object/from16 v1, p0

    move v2, v15

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/UserController;->showEventLogAndAddToDropBox(IIILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "ActivityManager"

    .line 1057
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserController event: finishUserUnlockedCompleted("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    iget-object v1, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1062
    :try_start_3a
    iget-object v2, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    iget-object v3, v7, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v7, :cond_4a

    monitor-exit v1

    return-void

    .line 1063
    :cond_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_3a .. :try_end_4b} :catchall_190

    .line 1064
    invoke-virtual {v0, v15}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v14

    if-nez v14, :cond_52

    return-void

    .line 1069
    :cond_52
    invoke-static {v15}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v1

    if-nez v1, :cond_60

    const-string v0, "ActivityManager"

    const-string v1, "!@Boot: StorageManager Unlocked FAIL, finishUserUnlockedCompleted"

    .line 1072
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1080
    :cond_60
    iget v3, v7, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x1

    const-string v5, "finishUserUnlockedCompleted"

    const-string v6, "OK StorageManager.isUserKeyUnlocked"

    move-object/from16 v1, p0

    move v2, v15

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/UserController;->showEventLogAndAddToDropBox(IIILjava/lang/String;Ljava/lang/String;)V

    .line 1084
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/android/server/pm/UserManagerService;->onUserLoggedIn(I)V

    .line 1086
    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, v14}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/UserController;Landroid/content/pm/UserInfo;)V

    .line 1087
    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_d8

    const-string v2, "ActivityManager"

    .line 1088
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Initializing user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    iget-boolean v2, v14, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v2, :cond_9f

    .line 1090
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_d8

    :cond_9f
    if-eqz v15, :cond_d8

    .line 1092
    new-instance v2, Landroid/content/Intent;

    move-object v9, v2

    const-string v3, "android.intent.action.USER_INITIALIZE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x11000000

    .line 1093
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1095
    iget-object v8, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v10, 0x0

    new-instance v2, Lcom/android/server/am/UserController$1;

    move-object v11, v2

    invoke-direct {v2, v0, v1}, Lcom/android/server/am/UserController$1;-><init>(Lcom/android/server/am/UserController;Ljava/lang/Runnable;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v1, 0x0

    move-object v2, v14

    move-object v14, v1

    move v6, v15

    move-object v15, v1

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    sget v20, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v21, 0x3e8

    .line 1105
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v22

    .line 1106
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v23

    move/from16 v24, v6

    .line 1095
    invoke-virtual/range {v8 .. v24}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    goto :goto_da

    :cond_d8
    :goto_d8
    move-object v2, v14

    move v6, v15

    .line 1110
    :goto_da
    iget-boolean v1, v2, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v1, :cond_104

    const-string v1, "ActivityManager"

    .line 1111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping pre-created user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->toFullString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/UserController;->stopUser(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    return-void

    .line 1120
    :cond_104
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1, v6}, Lcom/android/server/am/UserController$Injector;->startUserWidgets(I)V

    .line 1122
    iget-object v1, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x69

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v6, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    const-string v1, "ActivityManager"

    .line 1124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Posting BOOT_COMPLETED user #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v6, :cond_148

    .line 1126
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 1127
    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->isRuntimeRestarted()Z

    move-result v1

    if-nez v1, :cond_148

    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->isFirstBootOrUpgrade()Z

    move-result v1

    if-nez v1, :cond_148

    .line 1128
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/16 v3, 0xf0

    const/16 v4, 0xd

    .line 1129
    invoke-static {v3, v4, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 1133
    :cond_148
    new-instance v3, Landroid/content/Intent;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    const/4 v2, 0x0

    invoke-direct {v3, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.extra.user_handle"

    .line 1134
    invoke-virtual {v3, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, -0x77000000

    .line 1135
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1140
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1141
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 1142
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;

    move-object v1, v10

    move-object/from16 v2, p0

    move v4, v6

    move v11, v6

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/UserController;Landroid/content/Intent;III)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1161
    iget v3, v7, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x2

    const-string v5, "finishUserUnlockedCompleted"

    const-string/jumbo v6, "send BOOT COMPLETED and complete NULL"

    move-object/from16 v1, p0

    move v2, v11

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/UserController;->showEventLogAndAddToDropBox(IIILjava/lang/String;Ljava/lang/String;)V

    .line 1163
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, v7}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1164
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_190
    move-exception v0

    .line 1063
    :try_start_191
    monitor-exit v1
    :try_end_192
    .catchall {:try_start_191 .. :try_end_192} :catchall_190

    throw v0
.end method

.method public final finishUserUnlocking(Lcom/android/server/am/UserState;)Z
    .registers 12

    .line 794
    iget-object v0, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/16 v1, 0x7576

    .line 795
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    const/4 v7, 0x5

    const/4 v8, 0x1

    .line 796
    invoke-virtual {p0, v0, v7, v8}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    .line 800
    iget v3, p1, Lcom/android/server/am/UserState;->state:I

    const-string v5, "finishUserUnlocking"

    const-string v6, "NULL"

    const/4 v4, 0x0

    move-object v1, p0

    move v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/UserController;->showEventLogAndAddToDropBox(IIILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "ActivityManager"

    .line 801
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserController event: finishUserUnlocking("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getMaintenanceModeUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v1

    const/4 v9, 0x0

    if-eqz v1, :cond_59

    .line 806
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    if-eq v1, v0, :cond_59

    const-string p0, "ActivityManager"

    .line 807
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MaintenanceMode user exists. Do not unlock user "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    .line 812
    :cond_59
    invoke-static {v0}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v1

    if-nez v1, :cond_67

    const-string p0, "ActivityManager"

    const-string p1, "!@Boot: StorageManager Unlocked FAIL, finishUserUnlocking"

    .line 815
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    .line 822
    :cond_67
    iget v3, p1, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x1

    const-string v5, "finishUserUnlocking"

    const-string v6, "OK StorageManager.isUserKeyUnlocked"

    move-object v1, p0

    move v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/UserController;->showEventLogAndAddToDropBox(IIILjava/lang/String;Ljava/lang/String;)V

    .line 825
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 827
    :try_start_76
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_bf

    iget v3, p1, Lcom/android/server/am/UserState;->state:I

    if-eq v3, v8, :cond_83

    goto :goto_bf

    .line 830
    :cond_83
    monitor-exit v1
    :try_end_84
    .catchall {:try_start_76 .. :try_end_84} :catchall_c1

    const/4 v4, 0x1

    const-string v5, "finishUserUnlocking"

    const-string/jumbo v6, "mUnlockProgress.start()"

    move-object v1, p0

    move v2, v0

    .line 833
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/UserController;->showEventLogAndAddToDropBox(IIILjava/lang/String;Ljava/lang/String;)V

    .line 836
    iget-object v1, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v1}, Lcom/android/internal/util/ProgressReporter;->start()V

    .line 839
    iget-object v1, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 840
    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10401aa

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 839
    invoke-virtual {v1, v7, v2}, Lcom/android/internal/util/ProgressReporter;->setProgress(ILjava/lang/CharSequence;)V

    .line 843
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 886
    iget v3, p1, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x2

    const-string v5, "finishUserUnlocking"

    const-string v6, "NULL"

    move-object v1, p0

    move v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/UserController;->showEventLogAndAddToDropBox(IIILjava/lang/String;Ljava/lang/String;)V

    return v8

    .line 828
    :cond_bf
    :goto_bf
    :try_start_bf
    monitor-exit v1

    return v9

    :catchall_c1
    move-exception p0

    .line 830
    monitor-exit v1
    :try_end_c3
    .catchall {:try_start_bf .. :try_end_c3} :catchall_c1

    throw p0
.end method

.method public final forceStopUser(ILjava/lang/String;)V
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 1606
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v3, :cond_1e

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const-string v4, "ActivityManager"

    const-string v5, "forceStopUser(%d): %s"

    invoke-static {v4, v5, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1607
    :cond_1e
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/am/UserController$Injector;->activityManagerForceStopPackage(ILjava/lang/String;)V

    .line 1608
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/pm/UserManagerService;->isPreCreated(I)Z

    move-result v2

    if-eqz v2, :cond_30

    return-void

    .line 1612
    :cond_30
    new-instance v2, Landroid/content/Intent;

    move-object v4, v2

    const-string v3, "android.intent.action.USER_STOPPED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x50000000

    .line 1613
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "android.intent.extra.user_handle"

    .line 1615
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1616
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget v15, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v16, 0x3e8

    .line 1618
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    .line 1619
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v18

    const/16 v19, -0x1

    .line 1616
    invoke-virtual/range {v3 .. v19}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 1622
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1623
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 1624
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_7c

    .line 1626
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    const-string v3, "android.intent.action.PROFILE_INACCESSIBLE"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/UserController;->broadcastProfileAccessibleStateChanged(IILjava/lang/String;)V

    :cond_7c
    return-void
.end method

.method public getCurrentOrTargetUserId()I
    .registers 2

    .line 2939
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2940
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLU()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 2941
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public final getCurrentOrTargetUserIdLU()I
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2946
    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_9

    iget p0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    goto :goto_b

    :cond_9
    iget p0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    :goto_b
    return p0
.end method

.method public getCurrentProfileIds()[I
    .registers 2

    .line 3055
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3056
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 3057
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getCurrentUser()Landroid/content/pm/UserInfo;
    .registers 3

    .line 2906
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->checkGetCurrentUserPermissions()V

    .line 2910
    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_10

    .line 2911
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0

    .line 2913
    :cond_10
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2914
    :try_start_13
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserLU()Landroid/content/pm/UserInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_19
    move-exception p0

    .line 2915
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public getCurrentUserId()I
    .registers 2

    .line 2955
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2956
    :try_start_3
    iget p0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 2957
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getCurrentUserIdChecked()I
    .registers 3

    .line 2922
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->checkGetCurrentUserPermissions()V

    .line 2926
    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_c

    .line 2927
    iget p0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    return p0

    .line 2929
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserId()I

    move-result p0

    return p0
.end method

.method public final getCurrentUserIdLU()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2951
    iget p0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    return p0
.end method

.method public final getCurrentUserLU()Landroid/content/pm/UserInfo;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2934
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLU()I

    move-result v0

    .line 2935
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getDexMode()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getLastUserUnlockingUptime()J
    .registers 3

    .line 3594
    iget-wide v0, p0, Lcom/android/server/am/UserController;->mLastUserUnlockingUptime:J

    return-wide v0
.end method

.method public getMaintenanceModeUserInfo()Landroid/content/pm/UserInfo;
    .registers 1

    .line 894
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    .line 895
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->findCurrentMaintenanceModeUser()Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public getMaxRunningUsers()I
    .registers 2

    .line 497
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 498
    :try_start_3
    iget p0, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 499
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getPersonaManagerInternal()Lcom/samsung/android/knox/PersonaManagerInternal;
    .registers 1

    .line 3105
    iget-object p0, p0, Lcom/android/server/am/UserController;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    return-object p0
.end method

.method public getRunningUsersLU()Ljava/util/List;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 544
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 545
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 546
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    if-nez v3, :cond_26

    goto :goto_b

    .line 551
    :cond_26
    iget v3, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_b

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2f

    goto :goto_b

    .line 556
    :cond_2f
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_40

    .line 558
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/content/pm/UserInfo;->isSystemOnly(I)Z

    move-result v3

    if-eqz v3, :cond_40

    goto :goto_b

    .line 562
    :cond_40
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_44
    return-object v0
.end method

.method public getStartedUserArray()[I
    .registers 2

    .line 2822
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2823
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 2824
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getStartedUserState(I)Lcom/android/server/am/UserState;
    .registers 3

    .line 2727
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2728
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/UserState;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 2729
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public getSwitchingFromSystemUserMessage()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "getSwitchingFromSystemUserMessage()"

    .line 3127
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->checkHasManageUsersPermission(Ljava/lang/String;)V

    .line 3129
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getSwitchingFromSystemUserMessageUnchecked()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSwitchingFromSystemUserMessageUnchecked()Ljava/lang/String;
    .registers 2

    .line 3140
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3141
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/UserController;->mSwitchingFromSystemUserMessage:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 3142
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getSwitchingToSystemUserMessage()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "getSwitchingToSystemUserMessage()"

    .line 3134
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->checkHasManageUsersPermission(Ljava/lang/String;)V

    .line 3136
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getSwitchingToSystemUserMessageUnchecked()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSwitchingToSystemUserMessageUnchecked()Ljava/lang/String;
    .registers 2

    .line 3146
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3147
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/UserController;->mSwitchingToSystemUserMessage:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 3148
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getTemporaryAppAllowlistBroadcastOptions(I)Landroid/app/BroadcastOptions;
    .registers 10

    .line 3578
    const-class p0, Landroid/app/ActivityManagerInternal;

    .line 3579
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManagerInternal;

    if-eqz p0, :cond_f

    .line 3581
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    move-result-wide v0

    goto :goto_11

    :cond_f
    const-wide/16 v0, 0x2710

    :goto_11
    move-wide v3, v0

    .line 3583
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p0

    const/4 v5, 0x0

    const-string v7, ""

    move-object v2, p0

    move v6, p1

    .line 3584
    invoke-virtual/range {v2 .. v7}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    return-object p0
.end method

.method public getUserIds()[I
    .registers 1

    .line 2975
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object p0

    return-object p0
.end method

.method public final getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 2

    .line 2971
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public getUsers()[I
    .registers 2

    .line 2966
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 2967
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object p0

    goto :goto_13

    :cond_d
    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 v0, 0x0

    aput v0, p0, v0

    :goto_13
    return-object p0
.end method

.method public final getUsersToStopLU(I)[I
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1583
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1584
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    .line 1585
    invoke-virtual {v1, p1}, Landroid/util/IntArray;->add(I)V

    .line 1586
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v3, -0x2710

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    const/4 v4, 0x0

    move v5, v4

    :goto_18
    if-ge v5, v0, :cond_45

    .line 1588
    iget-object v6, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/UserState;

    .line 1589
    iget-object v6, v6, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 1591
    iget-object v7, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    const/4 v8, 0x1

    if-eq v2, v3, :cond_35

    if-ne v2, v7, :cond_35

    move v7, v8

    goto :goto_36

    :cond_35
    move v7, v4

    :goto_36
    if-ne v6, p1, :cond_39

    goto :goto_3a

    :cond_39
    move v8, v4

    :goto_3a
    if-eqz v7, :cond_42

    if-eqz v8, :cond_3f

    goto :goto_42

    .line 1600
    :cond_3f
    invoke-virtual {v1, v6}, Landroid/util/IntArray;->add(I)V

    :cond_42
    :goto_42
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 1602
    :cond_45
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method public handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I
    .registers 27

    move-object/from16 v6, p0

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p5

    move-object/from16 v10, p7

    .line 2582
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    if-ne v11, v8, :cond_11

    return v8

    .line 2587
    :cond_11
    invoke-static {v11}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_19

    if-eqz v8, :cond_21

    .line 2588
    :cond_19
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_22

    if-nez v11, :cond_22

    :cond_21
    return v8

    .line 2600
    :cond_22
    invoke-virtual {v6, v8}, Lcom/android/server/am/UserController;->unsafeConvertIncomingUser(I)I

    move-result v12

    const/4 v13, 0x3

    if-eqz v7, :cond_116

    const/16 v0, 0x3e8

    if-eq v7, v0, :cond_116

    const/16 v0, 0x1482

    if-eq v7, v0, :cond_116

    .line 2607
    invoke-virtual {v6, v11, v12}, Lcom/android/server/am/UserController;->isSameProfileGroup(II)Z

    move-result v14

    .line 2608
    iget-object v0, v6, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0, v7}, Lcom/android/server/am/UserController$Injector;->isCallerRecents(I)Z

    move-result v0

    const/4 v5, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_46

    if-eqz v14, :cond_46

    move/from16 v18, v4

    move v15, v5

    goto/16 :goto_ab

    .line 2612
    :cond_46
    iget-object v0, v6, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/16 v16, -0x1

    const/16 v17, 0x1

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    move/from16 v2, p1

    move/from16 v3, p2

    move v15, v4

    move/from16 v4, v16

    move v15, v5

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UserController$Injector;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    if-nez v0, :cond_61

    :cond_5e
    :goto_5e
    const/16 v18, 0x1

    goto :goto_ab

    :cond_61
    if-ne v9, v15, :cond_66

    :goto_63
    const/16 v18, 0x0

    goto :goto_ab

    :cond_66
    move-object/from16 v0, p0

    move/from16 v1, p5

    move v2, v14

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p7

    .line 2619
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UserController;->canInteractWithAcrossProfilesPermission(IZIILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_78

    goto :goto_5e

    .line 2622
    :cond_78
    iget-object v0, v6, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v4, -0x1

    const/4 v5, 0x1

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UserController$Injector;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    if-eqz v0, :cond_89

    goto :goto_63

    :cond_89
    if-eqz v9, :cond_5e

    if-ne v9, v13, :cond_8e

    goto :goto_5e

    :cond_8e
    const/4 v0, 0x1

    if-ne v9, v0, :cond_94

    move/from16 v18, v14

    goto :goto_ab

    .line 2634
    :cond_94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_ab
    if-nez v18, :cond_116

    const/4 v0, -0x3

    if-ne v8, v0, :cond_b1

    goto :goto_117

    .line 2642
    :cond_b1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Permission Denial: "

    .line 2643
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p6

    .line 2644
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_cc

    const-string v1, " from "

    .line 2646
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2647
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_cc
    const-string v1, " asks to run as user "

    .line 2649
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2650
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " but is calling from uid "

    .line 2651
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2652
    invoke-static {v0, v7}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    const-string v1, "; this requires "

    .line 2653
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 2654
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v9, v15, :cond_107

    const-string v1, " or "

    if-eqz v9, :cond_f3

    if-eq v9, v13, :cond_f3

    const/4 v2, 0x1

    if-ne v9, v2, :cond_fb

    if-eqz v14, :cond_fb

    .line 2659
    :cond_f3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    .line 2660
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_fb
    if-eqz v14, :cond_107

    if-ne v9, v13, :cond_107

    .line 2663
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.INTERACT_ACROSS_PROFILES"

    .line 2664
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2667
    :cond_107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    .line 2668
    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_116
    move v11, v12

    :goto_117
    if-nez p4, :cond_11c

    .line 2674
    invoke-virtual {v6, v11}, Lcom/android/server/am/UserController;->ensureNotSpecialUser(I)V

    :cond_11c
    const/16 v0, 0x7d0

    if-ne v7, v0, :cond_14f

    if-ltz v11, :cond_14f

    const-string/jumbo v0, "no_debugging_features"

    .line 2678
    invoke-virtual {v6, v0, v11}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_12c

    goto :goto_14f

    .line 2679
    :cond_12c
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shell does not have permission to access user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2680
    invoke-static {v13}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14f
    :goto_14f
    return v11
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 13

    .line 3250
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    const/16 v2, 0x1388

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_1ba

    goto/16 :goto_1b8

    .line 3370
    :sswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 3371
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/UserInfo;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/UserInfo;

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/server/am/UserController;->logUserJourneyInfo(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;I)V

    .line 3373
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, v4, v4}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    .line 3375
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->showUserSwitchDialog(Landroid/util/Pair;)V

    goto/16 :goto_1b8

    .line 3378
    :sswitch_29
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->logAndClearSessionId(I)V

    goto/16 :goto_1b8

    .line 3355
    :sswitch_30
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->reportOnUserCompletedEvent(Ljava/lang/Integer;)V

    goto/16 :goto_1b8

    .line 3381
    :sswitch_39
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->completeUserSwitch(I)V

    goto/16 :goto_1b8

    .line 3252
    :sswitch_40
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/server/am/UserController;->logUserJourneyInfo(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;I)V

    .line 3254
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, v4, v4}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    .line 3256
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->startUserInForeground(I)V

    goto/16 :goto_1b8

    .line 3367
    :sswitch_5d
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->dispatchLockedBootComplete(I)V

    goto/16 :goto_1b8

    .line 3329
    :sswitch_64
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v0

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->onUserUnlocked(I)V

    .line 3330
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 3336
    iget v4, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v5, :cond_78

    goto :goto_7a

    :cond_78
    const/16 v2, 0x3e8

    .line 3330
    :goto_7a
    invoke-virtual {p0, v0, v3, v2}, Lcom/android/server/am/UserController;->scheduleOnUserCompletedEvent(III)V

    .line 3337
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    .line 3339
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->clearSessionId(I)V

    goto/16 :goto_1b8

    .line 3297
    :sswitch_89
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v7, -0x1

    const/4 v8, 0x0

    const-string v9, "SYSTEM_USER_UNLOCK_MSG"

    const-string v10, "NULL"

    move-object v5, p0

    move v6, v2

    .line 3300
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/UserController;->showEventLogAndAddToDropBox(IIILjava/lang/String;Ljava/lang/String;)V

    .line 3303
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->onUserUnlocking(I)V

    const/4 v8, 0x1

    const-string v9, "SYSTEM_USER_UNLOCK_MSG"

    const-string v10, "Done mSystemServiceManager.onUserUnlocking"

    .line 3306
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/UserController;->showEventLogAndAddToDropBox(IIILjava/lang/String;Ljava/lang/String;)V

    .line 3310
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v5, Lcom/android/server/am/UserController$$ExternalSyntheticLambda13;

    invoke-direct {v5, p0, v2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/am/UserController;I)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3313
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v5, 0x5

    invoke-virtual {p0, v0, v5, v3}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    .line 3315
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    .line 3318
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 3319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishUserUnlocked-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3320
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/UserState;

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->finishUserUnlocked(Lcom/android/server/am/UserState;)V

    .line 3321
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const/4 p1, -0x1

    const/4 v3, 0x2

    const-string v4, "SYSTEM_USER_UNLOCK_MSG"

    const-string v5, "NULL"

    move-object v0, p0

    move v1, v2

    move v2, p1

    .line 3324
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UserController;->showEventLogAndAddToDropBox(IIILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1b8

    .line 3268
    :sswitch_ef
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/UserController;->timeoutUserSwitchCallbacks(II)V

    goto/16 :goto_1b8

    .line 3361
    :sswitch_f8
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->dispatchUserSwitchComplete(I)V

    .line 3363
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1, v4, v3}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    goto/16 :goto_1b8

    .line 3358
    :sswitch_104
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->dispatchForegroundProfileChanged(I)V

    goto/16 :goto_1b8

    .line 3342
    :sswitch_10b
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/16 v1, 0x4008

    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 3344
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 3342
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/am/UserController$Injector;->batteryStatsServiceNoteEvent(ILjava/lang/String;I)V

    .line 3345
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const v1, 0x8008

    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 3347
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 3345
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/am/UserController$Injector;->batteryStatsServiceNoteEvent(ILjava/lang/String;I)V

    .line 3349
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v3}, Lcom/android/server/SystemServiceManager;->onUserSwitching(II)V

    .line 3350
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/am/UserController;->scheduleOnUserCompletedEvent(III)V

    goto/16 :goto_1b8

    .line 3274
    :sswitch_13f
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const v1, 0x8007

    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 3276
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 3274
    invoke-virtual {v0, v1, v5, v6}, Lcom/android/server/am/UserController$Injector;->batteryStatsServiceNoteEvent(ILjava/lang/String;I)V

    const/4 v0, 0x0

    .line 3277
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    const/4 v5, 0x3

    invoke-virtual {p0, v0, v1, v5}, Lcom/android/server/am/UserController;->logUserJourneyInfo(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;I)V

    .line 3278
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    .line 3281
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v0

    .line 3282
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v1

    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 3281
    invoke-virtual {v0, v1, v6}, Lcom/android/server/SystemServiceManager;->onUserStarting(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 3283
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, v4, v2}, Lcom/android/server/am/UserController;->scheduleOnUserCompletedEvent(III)V

    .line 3287
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, v3, v3}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    .line 3289
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, v5}, Lcom/android/server/am/UserController;->clearSessionId(II)V

    .line 3291
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getSdpManager()Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    move-result-object v0

    if-eqz v0, :cond_1b8

    .line 3292
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getSdpManager()Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->onStartUser(I)V

    goto :goto_1b8

    .line 3271
    :sswitch_191
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->startProfiles()V

    goto :goto_1b8

    .line 3265
    :sswitch_195
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/UserState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/am/UserController;->timeoutUserSwitch(Lcom/android/server/am/UserState;II)V

    goto :goto_1b8

    .line 3262
    :sswitch_1a1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/UserState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/am/UserController;->continueUserSwitch(Lcom/android/server/am/UserState;II)V

    goto :goto_1b8

    .line 3259
    :sswitch_1ad
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/UserState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/am/UserController;->dispatchUserSwitch(Lcom/android/server/am/UserState;II)V

    :cond_1b8
    :goto_1b8
    const/4 p0, 0x0

    return p0

    :sswitch_data_1ba
    .sparse-switch
        0xa -> :sswitch_1ad
        0x14 -> :sswitch_1a1
        0x1e -> :sswitch_195
        0x28 -> :sswitch_191
        0x32 -> :sswitch_13f
        0x3c -> :sswitch_10b
        0x46 -> :sswitch_104
        0x50 -> :sswitch_f8
        0x5a -> :sswitch_ef
        0x64 -> :sswitch_89
        0x69 -> :sswitch_64
        0x6e -> :sswitch_5d
        0x78 -> :sswitch_40
        0x82 -> :sswitch_39
        0x8c -> :sswitch_30
        0xc8 -> :sswitch_29
        0x3e8 -> :sswitch_c
    .end sparse-switch
.end method

.method public hasStartedUserState(I)Z
    .registers 3

    .line 2733
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2734
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 2735
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public hasUserRestriction(Ljava/lang/String;I)Z
    .registers 3

    .line 3018
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final isCallingOnHandlerThread()Z
    .registers 2

    .line 2053
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    if-ne v0, p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isCurrentProfile(I)Z
    .registers 3

    .line 3049
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3050
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 3051
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final isCurrentUserLU(I)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2962
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLU()I

    move-result p0

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isLockScreenDisabled(I)Z
    .registers 2

    .line 3110
    iget-object p0, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p0

    return p0
.end method

.method public isSameProfileGroup(II)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p2, :cond_4

    return v0

    .line 3025
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3026
    :try_start_7
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v3, -0x2710

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    .line 3028
    iget-object p0, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-eq p1, v3, :cond_1a

    if-ne p1, p0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 3030
    :goto_1b
    monitor-exit v1

    return v0

    :catchall_1d
    move-exception p0

    .line 3032
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public isSystemUserStarted()Z
    .registers 5

    .line 2880
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2881
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/UserState;

    if-nez p0, :cond_10

    .line 2883
    monitor-exit v0

    return v1

    .line 2885
    :cond_10
    iget p0, p0, Lcom/android/server/am/UserState;->state:I

    const/4 v2, 0x1

    if-eq p0, v2, :cond_1b

    const/4 v3, 0x2

    if-eq p0, v3, :cond_1b

    const/4 v3, 0x3

    if-ne p0, v3, :cond_1c

    :cond_1b
    move v1, v2

    :cond_1c
    monitor-exit v0

    return v1

    :catchall_1e
    move-exception p0

    .line 2888
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public isUserOrItsParentRunning(I)Z
    .registers 6

    .line 3036
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3037
    :try_start_4
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 p0, 0x1

    .line 3038
    monitor-exit v0

    return p0

    .line 3040
    :cond_d
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v3, -0x2710

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-ne p1, v3, :cond_19

    .line 3042
    monitor-exit v0

    return v1

    .line 3044
    :cond_19
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1f
    move-exception p0

    .line 3045
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public isUserRunning(II)Z
    .registers 9

    .line 2828
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    :cond_8
    and-int/lit8 v1, p2, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    return v2

    :cond_e
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_1a

    .line 2836
    iget p0, p0, Lcom/android/server/am/UserState;->state:I

    if-eqz p0, :cond_19

    if-eq p0, v2, :cond_19

    return v0

    :cond_19
    return v2

    :cond_1a
    and-int/lit8 v1, p2, 0x8

    const/4 v3, 0x3

    const/4 v4, 0x5

    const/4 v5, 0x4

    if-eqz v1, :cond_33

    .line 2845
    iget p0, p0, Lcom/android/server/am/UserState;->state:I

    const/4 p2, 0x2

    if-eq p0, p2, :cond_32

    if-eq p0, v3, :cond_32

    if-eq p0, v5, :cond_2d

    if-eq p0, v4, :cond_2d

    return v0

    .line 2852
    :cond_2d
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result p0

    return p0

    :cond_32
    return v2

    :cond_33
    and-int/2addr p2, v5

    if-eqz p2, :cond_45

    .line 2858
    iget p0, p0, Lcom/android/server/am/UserState;->state:I

    if-eq p0, v3, :cond_44

    if-eq p0, v5, :cond_3f

    if-eq p0, v4, :cond_3f

    return v0

    .line 2864
    :cond_3f
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result p0

    return p0

    :cond_44
    return v2

    .line 2870
    :cond_45
    iget p0, p0, Lcom/android/server/am/UserState;->state:I

    if-eq p0, v5, :cond_4c

    if-eq p0, v4, :cond_4c

    move v0, v2

    :cond_4c
    return v0
.end method

.method public final isUserSwitchUiEnabled()Z
    .registers 2

    .line 491
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 492
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 493
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final logAndClearSessionId(I)V
    .registers 10

    .line 3564
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3565
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserController$UserJourneySession;

    if-eqz v1, :cond_17

    const/16 v2, 0x109

    .line 3567
    iget-wide v3, v1, Lcom/android/server/am/UserController$UserJourneySession;->mSessionId:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, p1

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIII)V

    .line 3571
    :cond_17
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->clearSessionId(I)V

    .line 3572
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public final logUserJourneyInfo(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;I)V
    .registers 19
    .param p3    # I
        .annotation build Lcom/android/server/am/UserController$UserJourney;
        .end annotation
    .end param

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 3457
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v4

    const-wide/16 v5, 0x1

    const-wide v7, 0x7fffffffffffffffL

    invoke-virtual {v4, v5, v6, v7, v8}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong(JJ)J

    move-result-wide v4

    .line 3458
    iget-object v6, v0, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    monitor-enter v6

    .line 3459
    :try_start_19
    iget-object v7, v0, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    iget v8, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/UserController$UserJourneySession;

    if-eqz v7, :cond_61

    .line 3462
    iget v8, v7, Lcom/android/server/am/UserController$UserJourneySession;->mJourney:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_2d

    const/4 v9, 0x2

    if-ne v8, v9, :cond_34

    :cond_2d
    const/4 v8, 0x3

    if-eq v3, v8, :cond_40

    const/4 v8, 0x5

    if-ne v3, v8, :cond_34

    goto :goto_40

    :cond_34
    const/16 v9, 0x109

    .line 3489
    iget-wide v10, v7, Lcom/android/server/am/UserController$UserJourneySession;->mSessionId:J

    iget v12, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIII)V

    goto :goto_61

    .line 3471
    :cond_40
    :goto_40
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v0, :cond_5f

    const-string v0, "ActivityManager"

    .line 3472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not logged as it is expected to be part of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/android/server/am/UserController$UserJourneySession;->mJourney:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3475
    :cond_5f
    monitor-exit v6

    return-void

    .line 3494
    :cond_61
    :goto_61
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v7, :cond_83

    const-string v7, "ActivityManager"

    .line 3495
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Starting a new journey: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " with session id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3499
    :cond_83
    new-instance v7, Lcom/android/server/am/UserController$UserJourneySession;

    invoke-direct {v7, v4, v5, v3}, Lcom/android/server/am/UserController$UserJourneySession;-><init>(JI)V

    .line 3500
    iget-object v8, v0, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    iget v9, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3507
    iget-object v7, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xc8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 3508
    iget-object v0, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v7, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    const-wide/32 v8, 0x15f90

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3510
    monitor-exit v6
    :try_end_a6
    .catchall {:try_start_19 .. :try_end_a6} :catchall_c4

    const/16 v0, 0x108

    if-eqz v1, :cond_ad

    .line 3513
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    goto :goto_ae

    :cond_ad
    const/4 v1, -0x1

    :goto_ae
    move v6, v1

    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    iget-object v1, v2, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 3514
    invoke-static {v1}, Landroid/os/UserManager;->getUserTypeForStatsd(Ljava/lang/String;)I

    move-result v8

    iget v9, v2, Landroid/content/pm/UserInfo;->flags:I

    move-wide v1, v4

    move/from16 v3, p3

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    .line 3512
    invoke-static/range {v0 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIIIII)V

    return-void

    :catchall_c4
    move-exception v0

    .line 3510
    :try_start_c5
    monitor-exit v6
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_c4

    throw v0
.end method

.method public final logUserLifecycleEvent(III)V
    .registers 11
    .param p2    # I
        .annotation build Lcom/android/server/am/UserController$UserLifecycleEvent;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Lcom/android/server/am/UserController$UserLifecycleEventState;
        .end annotation
    .end param

    .line 3524
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3525
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/UserController$UserJourneySession;

    if-eqz p0, :cond_20

    .line 3526
    iget-wide v2, p0, Lcom/android/server/am/UserController$UserJourneySession;->mSessionId:J

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-nez p0, :cond_16

    goto :goto_20

    .line 3532
    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_3d

    const/16 v1, 0x109

    move v4, p1

    move v5, p2

    move v6, p3

    .line 3534
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIII)V

    return-void

    :cond_20
    :goto_20
    :try_start_20
    const-string p0, "ActivityManager"

    .line 3527
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "UserLifecycleEvent "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " received without an active userJourneySession."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3529
    monitor-exit v0

    return-void

    :catchall_3d
    move-exception p0

    .line 3532
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_20 .. :try_end_3f} :catchall_3d

    throw p0
.end method

.method public final maybeUnlockDualDARUser(II)Z
    .registers 9

    .line 704
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    .line 705
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->fetchOuterLayerKey(I)[B

    move-result-object v1

    const-string v2, "ActivityManager"

    const/4 v3, 0x0

    if-eqz v1, :cond_95

    .line 710
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to unlock DualDAR user after userStart "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, p2, v4}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 711
    sget-object p2, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 713
    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/fsm/StateMachine;->getCurrentState(I)Lcom/samsung/android/knox/dar/ddar/fsm/State;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/knox/dar/ddar/fsm/State;->DEVICE_UNLOCK_DATA_UNLOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    if-ne v4, v5, :cond_48

    .line 716
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Password2Auth has already been completed for: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v2, p2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 717
    sget-object p2, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_68

    .line 718
    :cond_48
    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v0

    if-nez v0, :cond_68

    .line 721
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Do Password2Auth with null credential for: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v2, p2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 722
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->onPassword2Auth(I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p2

    .line 725
    :cond_68
    :goto_68
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    if-ne p2, v0, :cond_8d

    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    move-result p2

    if-nez p2, :cond_8d

    .line 726
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fetch outer layer key and unlock DualDAR user "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v2, p2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 727
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/UserController;->maybeUnlockUser(I[B)Z

    move-result p0

    return p0

    :cond_8d
    new-array p0, v3, [Ljava/lang/Object;

    const-string p1, "Default Authentication Failure by DualDAR client"

    .line 729
    invoke-static {v2, p1, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v3

    .line 735
    :cond_95
    invoke-virtual {v0, p2}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result p0

    if-nez p0, :cond_b6

    .line 736
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "This should theoretically never happen. Failed to unlock DualDAR user: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " something went wrong while fetching OLK event though user0 is unlocked."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_b6
    return v3
.end method

.method public final maybeUnlockUser(I)Z
    .registers 8

    const/4 v2, -0x1

    const/4 v3, 0x0

    const-string/jumbo v4, "maybeUnlockUser"

    const-string v5, "NULL and no exit"

    move-object v0, p0

    move v1, p1

    .line 2096
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UserController;->showEventLogAndAddToDropBox(IIILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2099
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/android/server/am/UserController;->unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z

    move-result p0

    return p0
.end method

.method public final maybeUnlockUser(I[B)Z
    .registers 4

    const/4 v0, 0x0

    .line 745
    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/android/server/am/UserController;->unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z

    move-result p0

    return p0
.end method

.method public final moveUserToForeground(Lcom/android/server/am/UserState;II)V
    .registers 5

    .line 2489
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0, p3, p1}, Lcom/android/server/am/UserController$Injector;->taskSupervisorSwitchUser(ILcom/android/server/am/UserState;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 2491
    iget-object p1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo v0, "moveUserToForeground"

    invoke-virtual {p1, p3, v0}, Lcom/android/server/am/UserController$Injector;->startHomeActivity(ILjava/lang/String;)V

    goto :goto_16

    .line 2493
    :cond_11
    iget-object p1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p1}, Lcom/android/server/am/UserController$Injector;->taskSupervisorResumeFocusedStackTopActivity()V

    .line 2495
    :goto_16
    invoke-static {p3}, Lcom/android/server/am/EventLogTags;->writeAmSwitchUser(I)V

    .line 2496
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/UserController;->sendUserSwitchBroadcasts(II)V

    return-void
.end method

.method public final onPassword2Auth(I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ActivityManager"

    const-string/jumbo v3, "onPassword2Auth()"

    .line 767
    invoke-static {v2, v3, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 769
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 770
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User is not DualDAR eligible. so no need to verify DualDAR Passwords"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 771
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p0

    .line 776
    :cond_2a
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDARController;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->onPassword2Auth(I[B)Z

    move-result p0

    if-nez p0, :cond_45

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "Authentication Failure by dual dar client"

    .line 778
    invoke-static {v2, p1, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 779
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p0

    :cond_45
    new-array p0, v0, [Ljava/lang/Object;

    const-string/jumbo v0, "onPassword2Auth completed successfully"

    .line 782
    invoke-static {v2, v0, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 783
    sget-object p0, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->DDAR_WORKSPACE_AUTH_SUCCESS:Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    invoke-static {p1, p0}, Lcom/samsung/android/knox/dar/ddar/fsm/StateMachine;->processEvent(ILcom/samsung/android/knox/dar/ddar/fsm/Event;)Z

    .line 785
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p0
.end method

.method public onSystemReady()V
    .registers 1

    .line 2791
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIds()V

    .line 2792
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->reportCurWakefulnessUsageEvent()V

    return-void
.end method

.method public onUserRemoved(I)V
    .registers 5

    .line 3061
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3062
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_25

    .line 3064
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    if-eq v2, p1, :cond_1d

    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 3065
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-ne v2, p1, :cond_22

    .line 3066
    :cond_1d
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    :cond_22
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 3070
    :cond_25
    iget-object v1, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 3071
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public final printBootProgressLogToDropBox(Ljava/lang/String;Lcom/android/server/am/UserState;)V
    .registers 4

    .line 3935
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-static {p0}, Lcom/android/server/am/UserController$Injector;->-$$Nest$fgetmService(Lcom/android/server/am/UserController$Injector;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/DropBoxManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/DropBoxManager;

    if-nez p0, :cond_13

    return-void

    .line 3938
    :cond_13
    invoke-virtual {p2}, Lcom/android/server/am/UserState;->isBootLogPrinted()Z

    move-result v0

    if-nez v0, :cond_20

    .line 3939
    invoke-virtual {p2}, Lcom/android/server/am/UserState;->getBootProgressLog()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method public registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    .registers 5

    const-string v0, "Observer name cannot be null"

    .line 2712
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v1, "registerUserSwitchObserver"

    .line 2713
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/UserController;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2714
    iget-object p0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    return-void
.end method

.method public reportOnUserCompletedEvent(Ljava/lang/Integer;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3423
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 3426
    iget-object v0, p0, Lcom/android/server/am/UserController;->mCompletedEventTypes:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 3427
    :try_start_a
    iget-object v1, p0, Lcom/android/server/am/UserController;->mCompletedEventTypes:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 3428
    iget-object v2, p0, Lcom/android/server/am/UserController;->mCompletedEventTypes:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->delete(I)V

    .line 3429
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_75

    .line 3433
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3434
    :try_start_22
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UserState;

    const/4 v4, 0x1

    if-eqz v0, :cond_38

    .line 3435
    iget v5, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_38

    move v5, v4

    goto :goto_39

    :cond_38
    move v5, v3

    :goto_39
    const/4 v6, 0x3

    if-eqz v0, :cond_42

    .line 3438
    iget v0, v0, Lcom/android/server/am/UserState;->state:I

    if-ne v0, v6, :cond_42

    or-int/lit8 v5, v5, 0x2

    .line 3441
    :cond_42
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v7, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-ne v0, v7, :cond_4c

    or-int/lit8 v5, v5, 0x4

    .line 3444
    :cond_4c
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_22 .. :try_end_4d} :catchall_72

    const-string v0, "ActivityManager"

    const-string/jumbo v2, "reportOnUserCompletedEvent(%d): stored=%s, eligible=%s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v3

    .line 3446
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v4

    invoke-static {v5}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v6, v4

    .line 3445
    invoke-static {v0, v2, v6}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    and-int v0, v1, v5

    .line 3449
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/UserController$Injector;->systemServiceManagerOnUserCompletedEvent(II)V

    return-void

    :catchall_72
    move-exception p0

    .line 3444
    :try_start_73
    monitor-exit v2
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw p0

    :catchall_75
    move-exception p0

    .line 3429
    :try_start_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw p0
.end method

.method public restartUser(IZ)I
    .registers 9

    .line 1170
    new-instance v5, Lcom/android/server/am/UserController$3;

    invoke-direct {v5, p0, p2}, Lcom/android/server/am/UserController$3;-><init>(Lcom/android/server/am/UserController;Z)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UserController;->stopUser(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    move-result p0

    return p0
.end method

.method public scheduleOnUserCompletedEvent(III)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-eqz p2, :cond_15

    .line 3402
    iget-object v0, p0, Lcom/android/server/am/UserController;->mCompletedEventTypes:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 3403
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/UserController;->mCompletedEventTypes:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    or-int/2addr p2, v2

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3404
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw p0

    .line 3407
    :cond_15
    :goto_15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 3408
    iget-object p2, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x8c

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 3409
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 3410
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long p2, p3

    .line 3409
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public scheduleStartProfiles()V
    .registers 3

    .line 1665
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/am/UserController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sendBootCompleted(Landroid/content/IIntentReceiver;)V
    .registers 10

    const-string/jumbo v4, "sendBootCompletedLocked"

    const-string v5, "NULL"

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    .line 2763
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UserController;->showEventLogAndAddToDropBox(IIILjava/lang/String;Ljava/lang/String;)V

    .line 2768
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2769
    :try_start_f
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    .line 2770
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_4f

    const/4 v0, 0x0

    .line 2771
    :goto_17
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_42

    .line 2772
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UserState;

    .line 2773
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 2774
    invoke-virtual {p0, v2, p1}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V

    goto :goto_3f

    .line 2775
    :cond_2d
    iget-object v3, v2, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 2779
    iget-object v0, v2, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/UserController;->sendLockedBootCompletedBroadcast(Landroid/content/IIntentReceiver;I)V

    return-void

    :cond_3f
    :goto_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_42
    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x2

    const-string/jumbo v6, "sendBootCompletedLocked"

    const-string v7, "NULL"

    move-object v2, p0

    .line 2785
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/UserController;->showEventLogAndAddToDropBox(IIILjava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_4f
    move-exception p0

    .line 2770
    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw p0
.end method

.method public final sendContinueUserSwitchLU(Lcom/android/server/am/UserState;II)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2429
    iput-object v0, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 2430
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2431
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x14

    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendForegroundProfileChanged(I)V
    .registers 4

    .line 2718
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2719
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final sendLockedBootCompletedBroadcast(Landroid/content/IIntentReceiver;I)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move/from16 v17, p2

    .line 688
    new-instance v1, Landroid/content/Intent;

    move-object v2, v1

    const-string v3, "android.intent.action.LOCKED_BOOT_COMPLETED"

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "android.intent.extra.user_handle"

    move/from16 v5, p2

    .line 689
    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v3, -0x77000000

    .line 690
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 693
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v3, "android.permission.RECEIVE_BOOT_COMPLETED"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v3, 0xca

    .line 696
    invoke-virtual {v0, v3}, Lcom/android/server/am/UserController;->getTemporaryAppAllowlistBroadcastOptions(I)Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 697
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v10

    sget v13, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 699
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v16

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/16 v14, 0x3e8

    .line 693
    invoke-virtual/range {v1 .. v17}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    return-void
.end method

.method public sendUserSwitchBroadcasts(II)V
    .registers 38

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 2500
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v20

    .line 2501
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v21

    .line 2502
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    const-string v15, "android.intent.extra.USER"

    const-string v14, "android.intent.extra.user_handle"

    const/high16 v13, 0x50000000

    const/4 v12, 0x0

    if-ltz v1, :cond_8e

    .line 2507
    :try_start_1b
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3, v1, v12}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v1

    .line 2508
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    move v10, v12

    :goto_2a
    if-ge v10, v11, :cond_8e

    .line 2510
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v9, v3, Landroid/content/pm/UserInfo;->id:I

    .line 2511
    new-instance v4, Landroid/content/Intent;

    const-string v3, "android.intent.action.USER_BACKGROUND"

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2512
    invoke-virtual {v4, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2514
    invoke-virtual {v4, v14, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2517
    invoke-static {v9}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v4, v15, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2518
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    sget v27, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v16, 0x3e8

    move/from16 v28, v9

    move-object/from16 v9, v17

    move/from16 v29, v10

    move-object/from16 v10, v18

    move/from16 v30, v11

    move/from16 v11, v19

    move-object/from16 v12, v24

    move/from16 v13, v25

    move-object/from16 v31, v14

    move/from16 v14, v26

    move-object/from16 v32, v15

    move/from16 v15, v27

    move/from16 v17, v20

    move/from16 v18, v21

    move/from16 v19, v28

    invoke-virtual/range {v3 .. v19}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    add-int/lit8 v10, v29, 0x1

    move/from16 v11, v30

    move-object/from16 v14, v31

    move-object/from16 v15, v32

    const/4 v12, 0x0

    const/high16 v13, 0x50000000

    goto :goto_2a

    :catchall_8b
    move-exception v0

    goto/16 :goto_140

    :cond_8e
    move-object/from16 v31, v14

    move-object/from16 v32, v15

    if-ltz v2, :cond_144

    .line 2526
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v1

    .line 2527
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v15

    move v14, v3

    :goto_a4
    if-ge v14, v15, :cond_103

    .line 2529
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v13, v3, Landroid/content/pm/UserInfo;->id:I

    .line 2530
    new-instance v4, Landroid/content/Intent;

    const-string v3, "android.intent.action.USER_FOREGROUND"

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v12, 0x50000000

    .line 2531
    invoke-virtual {v4, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v11, v31

    .line 2533
    invoke-virtual {v4, v11, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2536
    invoke-static {v13}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    move-object/from16 v10, v32

    invoke-virtual {v4, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2537
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    sget v26, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v16, 0x3e8

    move-object/from16 v33, v10

    move-object/from16 v10, v17

    move-object/from16 v34, v11

    move/from16 v11, v18

    move-object/from16 v12, v19

    move/from16 v19, v13

    move/from16 v13, v24

    move/from16 v24, v14

    move/from16 v14, v25

    move/from16 v25, v15

    move/from16 v15, v26

    move/from16 v17, v20

    move/from16 v18, v21

    invoke-virtual/range {v3 .. v19}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    add-int/lit8 v14, v24, 0x1

    move/from16 v15, v25

    move-object/from16 v32, v33

    move-object/from16 v31, v34

    goto :goto_a4

    :cond_103
    move-object/from16 v34, v31

    move-object/from16 v33, v32

    .line 2542
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x50000000

    .line 2543
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v3, v34

    .line 2545
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2548
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    move-object/from16 v3, v33

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2549
    iget-object v0, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "android.permission.MANAGE_USERS"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget v12, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v13, 0x3e8

    const/16 v16, -0x1

    move/from16 v14, v20

    move/from16 v15, v21

    invoke-virtual/range {v0 .. v16}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I
    :try_end_13f
    .catchall {:try_start_1b .. :try_end_13f} :catchall_8b

    goto :goto_144

    .line 2556
    :goto_140
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2557
    throw v0

    .line 2556
    :cond_144
    :goto_144
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public setInitialConfig(ZIZ)V
    .registers 5

    .line 482
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 483
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    .line 484
    iput p2, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    .line 485
    iput-boolean p3, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    const/4 p1, 0x1

    .line 486
    iput-boolean p1, p0, Lcom/android/server/am/UserController;->mInitialized:Z

    .line 487
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public setStopUserOnSwitch(I)V
    .registers 8
    .param p1    # I
        .annotation build Landroid/app/ActivityManager$StopUserOnSwitch;
        .end annotation
    .end param

    .line 503
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v1, "android.permission.MANAGE_USERS"

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    .line 504
    invoke-virtual {v0, v2}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_16

    goto :goto_1e

    .line 507
    :cond_16
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "You either need MANAGE_USERS or INTERACT_ACROSS_USERS permission to call setStopUserOnSwitch()"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 512
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_21
    const-string v1, "ActivityManager"

    const-string/jumbo v2, "setStopUserOnSwitch(): %d -> %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 513
    iget v5, p0, Lcom/android/server/am/UserController;->mStopUserOnSwitch:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    iput p1, p0, Lcom/android/server/am/UserController;->mStopUserOnSwitch:I

    .line 515
    monitor-exit v0

    return-void

    :catchall_40
    move-exception p0

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_21 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public setSwitchingFromSystemUserMessage(Ljava/lang/String;)V
    .registers 3

    .line 3114
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3115
    :try_start_3
    iput-object p1, p0, Lcom/android/server/am/UserController;->mSwitchingFromSystemUserMessage:Ljava/lang/String;

    .line 3116
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public setSwitchingToSystemUserMessage(Ljava/lang/String;)V
    .registers 3

    .line 3120
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3121
    :try_start_3
    iput-object p1, p0, Lcom/android/server/am/UserController;->mSwitchingToSystemUserMessage:Ljava/lang/String;

    .line 3122
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public shouldConfirmCredentials(I)Z
    .registers 4

    .line 3080
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 3083
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->isCredentialSharableWithParent(I)Z

    move-result v0

    if-nez v0, :cond_15

    return v1

    .line 3091
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 3092
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object p0

    .line 3093
    invoke-virtual {p0, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p0, p1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result p0

    if-eqz p0, :cond_30

    const/4 v1, 0x1

    :cond_30
    return v1

    :cond_31
    const/4 v0, 0x2

    .line 3096
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result p0

    return p0
.end method

.method public final shouldStopUserOnSwitch()Z
    .registers 7

    .line 519
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 520
    :try_start_3
    iget v1, p0, Lcom/android/server/am/UserController;->mStopUserOnSwitch:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v1, v3, :cond_21

    if-ne v1, v4, :cond_e

    move p0, v4

    goto :goto_f

    :cond_e
    move p0, v2

    :goto_f
    const-string v1, "ActivityManager"

    const-string/jumbo v3, "shouldStopUserOnSwitch(): returning overridden value (%b)"

    new-array v4, v4, [Ljava/lang/Object;

    .line 522
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v3, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 523
    monitor-exit v0

    return p0

    .line 525
    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_31

    const-string v0, "fw.stop_bg_users_on_switch"

    .line 526
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2d

    .line 527
    iget-boolean v2, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    goto :goto_30

    :cond_2d
    if-ne v0, v4, :cond_30

    move v2, v4

    :cond_30
    :goto_30
    return v2

    :catchall_31
    move-exception p0

    .line 525
    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public final showEventLogAndAddToDropBox(IIILjava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 3917
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UserState;

    const-string v1, "ActivityManager"

    if-eqz v0, :cond_4a

    .line 3919
    invoke-virtual {v0}, Lcom/android/server/am/UserState;->getBootProgressBuilder()Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/UserController;->formatter:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    .line 3920
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 3919
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " boot_progress_ams_state ["

    .line 3921
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3922
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3923
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "]\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_50

    :cond_4a
    const-string/jumbo p0, "userState == null. can\'t save boot_progress_log"

    .line 3925
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3927
    :goto_50
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/am/EventLogTags;->writeBootProgressAmsState(IIILjava/lang/String;Ljava/lang/String;)V

    .line 3930
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "!@AM_BOOT_PROGRESS , uid : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", state:  "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", progress : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", step : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", description : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final showUserSwitchDialog(Landroid/util/Pair;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/content/pm/UserInfo;",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .line 2254
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/UserInfo;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/content/pm/UserInfo;

    .line 2255
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getSwitchingFromSystemUserMessageUnchecked()Ljava/lang/String;

    move-result-object v2

    .line 2256
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getSwitchingToSystemUserMessageUnchecked()Ljava/lang/String;

    move-result-object p0

    .line 2254
    invoke-virtual {v0, v1, p1, v2, p0}, Lcom/android/server/am/UserController$Injector;->showUserSwitchingDialog(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startProfile(I)Z
    .registers 5

    .line 1704
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v1, "android.permission.MANAGE_USERS"

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 1705
    invoke-virtual {v0, v2}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_16

    goto :goto_1e

    .line 1708
    :cond_16
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "You either need MANAGE_USERS or INTERACT_ACROSS_USERS_FULL permission to start a profile"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1713
    :cond_1e
    :goto_1e
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 1714
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 1718
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_48

    .line 1719
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot start disabled profile #"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_48
    const/4 v0, 0x0

    .line 1723
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/am/UserController;->startUserNoChecks(IZLandroid/os/IProgressListener;)Z

    move-result p0

    return p0

    .line 1715
    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a profile"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final startProfiles()V
    .registers 9

    .line 1674
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    .line 1675
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    const-string v2, "ActivityManager"

    if-eqz v1, :cond_10

    const-string/jumbo v1, "startProfilesLocked"

    invoke-static {v2, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    :cond_10
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v1

    .line 1678
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1679
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 1680
    iget v6, v5, Landroid/content/pm/UserInfo;->flags:I

    const/16 v7, 0x10

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_28

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    if-eq v6, v0, :cond_28

    .line 1681
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v6

    if-nez v6, :cond_28

    .line 1682
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 1685
    :cond_49
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    move v1, v3

    :goto_4e
    if-ge v1, v0, :cond_66

    .line 1687
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getMaxRunningUsers()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_66

    .line 1688
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v5, v3}, Lcom/android/server/am/UserController;->startUser(IZ)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    :cond_66
    if-ge v1, v0, :cond_6d

    const-string p0, "More profiles than MAX_RUNNING_USERS"

    .line 1691
    invoke-static {v2, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6d
    return-void
.end method

.method public startUser(IZ)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 1728
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/UserController;->startUser(IZLandroid/os/IProgressListener;)Z

    move-result p0

    return p0
.end method

.method public startUser(IZLandroid/os/IProgressListener;)Z
    .registers 6

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v1, "startUser"

    .line 1767
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/UserController;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->startUserNoChecks(IZLandroid/os/IProgressListener;)Z

    move-result p0

    return p0
.end method

.method public startUserInForeground(I)V
    .registers 3

    const/4 v0, 0x1

    .line 2060
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/UserController;->startUser(IZ)Z

    move-result p1

    if-nez p1, :cond_11

    .line 2062
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    :cond_11
    return-void
.end method

.method public final startUserInternal(IZLandroid/os/IProgressListener;Lcom/android/server/utils/TimingsTraceAndSlog;)Z
    .registers 39

    move-object/from16 v0, p0

    move/from16 v15, p1

    move/from16 v13, p2

    move-object/from16 v1, p3

    move-object/from16 v12, p4

    .line 1794
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    const/4 v11, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_29

    const-string v2, "ActivityManager"

    const-string v4, "Starting user %d%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 1795
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    if-eqz v13, :cond_22

    const-string v6, " in foreground"

    goto :goto_24

    :cond_22
    const-string v6, ""

    :goto_24
    aput-object v6, v5, v11

    invoke-static {v2, v4, v5}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_29
    const/16 v2, 0x757c

    .line 1797
    invoke-static {v2, v15}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1799
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v26

    .line 1800
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v27

    .line 1801
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v29

    :try_start_3a
    const-string/jumbo v2, "getStartedUserState"

    .line 1803
    invoke-virtual {v12, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1804
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v10

    if-ne v10, v15, :cond_6a

    .line 1806
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    move-result-object v2

    if-nez v2, :cond_54

    const-string v2, "ActivityManager"

    const-string v4, "Current user has no UserState"

    .line 1808
    invoke-static {v2, v4}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    :cond_54
    if-nez v15, :cond_5b

    .line 1811
    iget v4, v2, Lcom/android/server/am/UserState;->state:I

    if-nez v4, :cond_5b

    goto :goto_6a

    .line 1815
    :cond_5b
    iget v0, v2, Lcom/android/server/am/UserState;->state:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_63

    .line 1818
    invoke-static {v15, v1}, Lcom/android/server/am/UserController;->notifyFinished(ILandroid/os/IProgressListener;)V

    .line 1820
    :cond_63
    invoke-virtual/range {p4 .. p4}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_66
    .catchall {:try_start_3a .. :try_end_66} :catchall_3b9

    .line 2046
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v11

    .line 1825
    :cond_6a
    :goto_6a
    :try_start_6a
    invoke-virtual/range {p4 .. p4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v13, :cond_7f

    const-string v2, "clearAllLockedTasks"

    .line 1828
    invoke-virtual {v12, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1829
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo v4, "startUser"

    invoke-virtual {v2, v4}, Lcom/android/server/am/UserController$Injector;->clearAllLockedTasks(Ljava/lang/String;)V

    .line 1830
    invoke-virtual/range {p4 .. p4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_7f
    const-string/jumbo v2, "getUserInfo"

    .line 1833
    invoke-virtual {v12, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1834
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1835
    invoke-virtual/range {p4 .. p4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v2, :cond_a8

    const-string v0, "ActivityManager"

    .line 1838
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No user info for user #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catchall {:try_start_6a .. :try_end_a4} :catchall_3b9

    .line 2046
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_a8
    if-eqz v13, :cond_cf

    .line 1841
    :try_start_aa
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v4

    if-eqz v4, :cond_cf

    const-string v0, "ActivityManager"

    .line 1842
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot switch to User #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": not a full user"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catchall {:try_start_aa .. :try_end_cb} :catchall_3b9

    .line 2046
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_cf
    if-eqz v13, :cond_f4

    .line 1846
    :try_start_d1
    iget-boolean v4, v2, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v4, :cond_f4

    const-string v0, "ActivityManager"

    .line 1847
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot start pre-created user #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " as foreground"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f0
    .catchall {:try_start_d1 .. :try_end_f0} :catchall_3b9

    .line 2046
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_f4
    if-eqz v13, :cond_114

    .line 1851
    :try_start_f6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->isUserSwitchUiEnabled()Z

    move-result v4

    if-eqz v4, :cond_114

    const-string/jumbo v4, "startFreezingScreen"

    .line 1852
    invoke-virtual {v12, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1853
    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    const v5, 0x10a00f6

    const v6, 0x10a00f5

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->startFreezingScreen(II)V

    .line 1855
    invoke-virtual/range {p4 .. p4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_114
    const-string/jumbo v4, "updateStartedUserArrayStarting"

    .line 1864
    invoke-virtual {v12, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1865
    iget-object v4, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_11d
    .catchall {:try_start_f6 .. :try_end_11d} :catchall_3b9

    .line 1866
    :try_start_11d
    iget-object v5, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/UserState;

    const/4 v6, 0x0

    const/4 v7, 0x5

    if-nez v5, :cond_148

    .line 1868
    new-instance v5, Lcom/android/server/am/UserState;

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/android/server/am/UserState;-><init>(Landroid/os/UserHandle;)V

    .line 1869
    iget-object v8, v5, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    new-instance v9, Lcom/android/server/am/UserController$UserProgressListener;

    invoke-direct {v9, v6}, Lcom/android/server/am/UserController$UserProgressListener;-><init>(Lcom/android/server/am/UserController$UserProgressListener-IA;)V

    invoke-virtual {v8, v9}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 1870
    iget-object v8, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v8, v15, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1871
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    move-object v9, v5

    move v5, v11

    move v8, v5

    goto :goto_182

    .line 1874
    :cond_148
    iget v8, v5, Lcom/android/server/am/UserState;->state:I

    if-ne v8, v7, :cond_17f

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->isCallingOnHandlerThread()Z

    move-result v8

    if-nez v8, :cond_17f

    const-string v2, "ActivityManager"

    .line 1875
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User #"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is shutting down - will start after full stop"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    iget-object v2, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;

    invoke-direct {v3, v0, v15, v13, v1}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/am/UserController;IZLandroid/os/IProgressListener;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1878
    invoke-virtual/range {p4 .. p4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1879
    monitor-exit v4
    :try_end_17b
    .catchall {:try_start_11d .. :try_end_17b} :catchall_3b6

    .line 2046
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v11

    :cond_17f
    move v8, v3

    move-object v9, v5

    move v5, v8

    .line 1881
    :goto_182
    :try_start_182
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 1882
    iget-object v3, v0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1883
    iget-object v3, v0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1884
    monitor-exit v4
    :try_end_191
    .catchall {:try_start_182 .. :try_end_191} :catchall_3b6

    if-eqz v1, :cond_198

    .line 1886
    :try_start_193
    iget-object v3, v9, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v3, v1}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 1888
    :cond_198
    invoke-virtual/range {p4 .. p4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz v5, :cond_1b1

    const-string/jumbo v1, "setUserState"

    .line 1891
    invoke-virtual {v12, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1892
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v1

    iget v3, v9, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v1, v15, v3}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 1893
    invoke-virtual/range {p4 .. p4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_1b1
    const-string/jumbo v1, "updateConfigurationAndProfileIds"

    .line 1895
    invoke-virtual {v12, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz v13, :cond_20a

    .line 1898
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Lcom/android/server/am/UserController$Injector;->reportGlobalUsageEvent(I)V

    .line 1900
    iget-object v1, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1c3
    .catchall {:try_start_193 .. :try_end_1c3} :catchall_3b9

    .line 1901
    :try_start_1c3
    iput v15, v0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    const/16 v3, -0x2710

    .line 1902
    iput v3, v0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 1903
    iget-boolean v3, v0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    .line 1904
    monitor-exit v1
    :try_end_1cc
    .catchall {:try_start_1c3 .. :try_end_1cc} :catchall_207

    .line 1905
    :try_start_1cc
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->updateUserConfiguration()V

    .line 1906
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIds()V

    .line 1907
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v4

    invoke-virtual {v1, v15, v4}, Lcom/android/server/wm/WindowManagerService;->setCurrentUser(I[I)V

    .line 1908
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->reportCurWakefulnessUsageEvent()V

    if-eqz v3, :cond_22e

    .line 1912
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    .line 1914
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v1

    if-eqz v1, :cond_22e

    .line 1915
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V
    :try_end_206
    .catchall {:try_start_1cc .. :try_end_206} :catchall_3b9

    goto :goto_22e

    :catchall_207
    move-exception v0

    .line 1904
    :try_start_208
    monitor-exit v1
    :try_end_209
    .catchall {:try_start_208 .. :try_end_209} :catchall_207

    :try_start_209
    throw v0

    .line 1919
    :cond_20a
    iget v1, v0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1920
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIds()V

    .line 1921
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->setCurrentProfileIds([I)V

    .line 1922
    iget-object v3, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_223
    .catchall {:try_start_209 .. :try_end_223} :catchall_3b9

    .line 1923
    :try_start_223
    iget-object v4, v0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1924
    iget-object v4, v0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1925
    monitor-exit v3
    :try_end_22e
    .catchall {:try_start_223 .. :try_end_22e} :catchall_3b3

    .line 1927
    :cond_22e
    :goto_22e
    :try_start_22e
    invoke-virtual/range {p4 .. p4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1931
    iget v1, v9, Lcom/android/server/am/UserState;->state:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_25a

    const-string/jumbo v1, "updateStateStopping"

    .line 1932
    invoke-virtual {v12, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1936
    iget v1, v9, Lcom/android/server/am/UserState;->lastState:I

    invoke-virtual {v9, v1}, Lcom/android/server/am/UserState;->setState(I)V

    .line 1937
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v1

    iget v3, v9, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v1, v15, v3}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 1938
    iget-object v1, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_24f
    .catchall {:try_start_22e .. :try_end_24f} :catchall_3b9

    .line 1939
    :try_start_24f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 1940
    monitor-exit v1
    :try_end_253
    .catchall {:try_start_24f .. :try_end_253} :catchall_257

    .line 1942
    :try_start_253
    invoke-virtual/range {p4 .. p4}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_256
    .catchall {:try_start_253 .. :try_end_256} :catchall_3b9

    goto :goto_27b

    :catchall_257
    move-exception v0

    .line 1940
    :try_start_258
    monitor-exit v1
    :try_end_259
    .catchall {:try_start_258 .. :try_end_259} :catchall_257

    :try_start_259
    throw v0

    :cond_25a
    if-ne v1, v7, :cond_280

    const-string/jumbo v1, "updateStateShutdown"

    .line 1944
    invoke-virtual {v12, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1947
    invoke-virtual {v9, v1}, Lcom/android/server/am/UserState;->setState(I)V

    .line 1948
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v1

    iget v3, v9, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v1, v15, v3}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 1949
    iget-object v1, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_274
    .catchall {:try_start_259 .. :try_end_274} :catchall_3b9

    .line 1950
    :try_start_274
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 1951
    monitor-exit v1
    :try_end_278
    .catchall {:try_start_274 .. :try_end_278} :catchall_27d

    .line 1953
    :try_start_278
    invoke-virtual/range {p4 .. p4}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_27b
    .catchall {:try_start_278 .. :try_end_27b} :catchall_3b9

    :goto_27b
    move v8, v11

    goto :goto_280

    :catchall_27d
    move-exception v0

    .line 1951
    :try_start_27e
    monitor-exit v1
    :try_end_27f
    .catchall {:try_start_27e .. :try_end_27f} :catchall_27d

    :try_start_27f
    throw v0

    .line 1956
    :cond_280
    :goto_280
    iget v1, v9, Lcom/android/server/am/UserState;->state:I

    if-nez v1, :cond_2a3

    const-string/jumbo v1, "updateStateBooting"

    .line 1957
    invoke-virtual {v12, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1960
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/android/server/pm/UserManagerService;->onBeforeStartUser(I)V

    .line 1965
    iget-object v1, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v15, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1966
    invoke-virtual/range {p4 .. p4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_2a4

    :cond_2a3
    const/4 v4, 0x0

    .line 1971
    :goto_2a4
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-static {v1}, Lcom/android/server/am/UserController$Injector;->-$$Nest$fgetmService(Lcom/android/server/am/UserController$Injector;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {v1, v15, v13, v8}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->startUser(IZZ)V

    .line 1976
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-static {v1}, Lcom/android/server/am/UserController$Injector;->-$$Nest$fgetmService(Lcom/android/server/am/UserController$Injector;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {v1, v15, v13, v8}, Lcom/android/server/wm/MultiTaskingController;->startUser(IZZ)V

    const-string/jumbo v1, "sendMessages"

    .line 1989
    invoke-virtual {v12, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz v13, :cond_2f3

    .line 1991
    iget-object v1, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3c

    invoke-virtual {v1, v3, v15, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1992
    iget-object v1, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1993
    iget-object v1, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x1e

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1994
    iget-object v1, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v10, v15, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1996
    iget-object v1, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, v10, v15, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v5, 0xbb8

    invoke-virtual {v1, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2000
    :cond_2f3
    iget-boolean v1, v2, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v1, :cond_2fa

    move/from16 v18, v4

    goto :goto_2fc

    :cond_2fa
    move/from16 v18, v8

    :goto_2fc
    if-eqz v18, :cond_33d

    .line 2006
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_STARTED"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x50000000

    .line 2007
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.user_handle"

    .line 2009
    invoke-virtual {v2, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2010
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    sget v21, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v14, 0x3e8

    move-object/from16 v31, v9

    move/from16 v9, v16

    move/from16 v32, v10

    move-object/from16 v10, v17

    move/from16 v33, v11

    move/from16 v11, v19

    move/from16 v12, v20

    move/from16 v13, v21

    move/from16 v15, v26

    move/from16 v16, v27

    move/from16 v17, p1

    invoke-virtual/range {v1 .. v17}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    goto :goto_343

    :cond_33d
    move-object/from16 v31, v9

    move/from16 v32, v10

    move/from16 v33, v11

    .line 2014
    :goto_343
    invoke-virtual/range {p4 .. p4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-eqz p2, :cond_35d

    const-string/jumbo v1, "moveUserToForeground"

    move-object/from16 v2, p4

    .line 2017
    invoke-virtual {v2, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    move/from16 v1, p1

    move-object/from16 v5, v31

    move/from16 v3, v32

    .line 2018
    invoke-virtual {v0, v5, v3, v1}, Lcom/android/server/am/UserController;->moveUserToForeground(Lcom/android/server/am/UserState;II)V

    .line 2019
    invoke-virtual/range {p4 .. p4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto :goto_36e

    :cond_35d
    move/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v5, v31

    const-string v3, "finishUserBoot"

    .line 2021
    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2022
    invoke-virtual {v0, v5}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;)V

    .line 2023
    invoke-virtual/range {p4 .. p4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :goto_36e
    if-eqz v18, :cond_3af

    const-string/jumbo v3, "sendRestartBroadcast"

    .line 2027
    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2028
    new-instance v13, Landroid/content/Intent;

    const-string v3, "android.intent.action.USER_STARTING"

    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x40000000    # 2.0f

    .line 2029
    invoke-virtual {v13, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "android.intent.extra.user_handle"

    .line 2030
    invoke-virtual {v13, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2031
    iget-object v12, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v14, 0x0

    new-instance v15, Lcom/android/server/am/UserController$6;

    invoke-direct {v15, v0}, Lcom/android/server/am/UserController$6;-><init>(Lcom/android/server/am/UserController;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v19

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    sget v24, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v25, 0x3e8

    const/16 v28, -0x1

    invoke-virtual/range {v12 .. v28}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 2043
    invoke-virtual/range {p4 .. p4}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_3af
    .catchall {:try_start_27f .. :try_end_3af} :catchall_3b9

    .line 2046
    :cond_3af
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v33

    :catchall_3b3
    move-exception v0

    .line 1925
    :try_start_3b4
    monitor-exit v3
    :try_end_3b5
    .catchall {:try_start_3b4 .. :try_end_3b5} :catchall_3b3

    :try_start_3b5
    throw v0
    :try_end_3b6
    .catchall {:try_start_3b5 .. :try_end_3b6} :catchall_3b9

    :catchall_3b6
    move-exception v0

    .line 1884
    :try_start_3b7
    monitor-exit v4
    :try_end_3b8
    .catchall {:try_start_3b7 .. :try_end_3b8} :catchall_3b6

    :try_start_3b8
    throw v0
    :try_end_3b9
    .catchall {:try_start_3b8 .. :try_end_3b9} :catchall_3b9

    :catchall_3b9
    move-exception v0

    .line 2046
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2047
    throw v0
.end method

.method public final startUserNoChecks(IZLandroid/os/IProgressListener;)Z
    .registers 7

    .line 1774
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 1784
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserController.startUser-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1c

    const-string v2, "fg"

    goto :goto_1e

    :cond_1c
    const-string v2, "bg"

    :goto_1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1786
    :try_start_28
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/UserController;->startUserInternal(IZLandroid/os/IProgressListener;Lcom/android/server/utils/TimingsTraceAndSlog;)Z

    move-result p0
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_30

    .line 1788
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return p0

    :catchall_30
    move-exception p0

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1789
    throw p0
.end method

.method public final stopGuestOrEphemeralUserIfBackground(I)V
    .registers 10

    .line 1637
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v0, :cond_1a

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop guest or ephemeral user if background: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    :cond_1a
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1639
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    if-eqz p1, :cond_69

    .line 1640
    iget v2, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-eq p1, v2, :cond_69

    if-eqz v1, :cond_69

    iget v1, v1, Lcom/android/server/am/UserState;->state:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_69

    const/4 v2, 0x5

    if-ne v1, v2, :cond_36

    goto :goto_69

    .line 1645
    :cond_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_1d .. :try_end_37} :catchall_6b

    .line 1647
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1648
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1649
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/UserManagerInternal;->onEphemeralUserStop(I)V

    .line 1651
    :cond_4c
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-nez v1, :cond_58

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 1653
    :cond_58
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    .line 1654
    :try_start_61
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    .line 1656
    monitor-exit v1

    :cond_65
    return-void

    :catchall_66
    move-exception p0

    monitor-exit v1
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_66

    throw p0

    .line 1643
    :cond_69
    :goto_69
    :try_start_69
    monitor-exit v0

    return-void

    :catchall_6b
    move-exception p0

    .line 1645
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_6b

    throw p0
.end method

.method public stopProfile(I)Z
    .registers 9

    .line 1190
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v1, "android.permission.MANAGE_USERS"

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 1191
    invoke-virtual {v0, v2}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_16

    goto :goto_1e

    .line 1194
    :cond_16
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "You either need MANAGE_USERS or INTERACT_ACROSS_USERS_FULL permission to stop a profile"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1199
    :cond_1e
    :goto_1e
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 1200
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v0

    if-eqz v0, :cond_47

    const-string/jumbo v0, "no_debugging_features"

    .line 1204
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/UserController;->enforceShellRestriction(Ljava/lang/String;I)V

    .line 1205
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    .line 1206
    :try_start_39
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    move-result p0

    if-nez p0, :cond_41

    const/4 p0, 0x1

    goto :goto_42

    :cond_41
    const/4 p0, 0x0

    :goto_42
    monitor-exit v0

    return p0

    :catchall_44
    move-exception p0

    .line 1209
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_39 .. :try_end_46} :catchall_44

    throw p0

    .line 1201
    :cond_47
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a profile"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final stopRunningUsersLU(I)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 569
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getRunningUsersLU()Ljava/util/List;

    move-result-object v0

    .line 570
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 571
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p1, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 572
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 573
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-ne v3, v4, :cond_29

    goto :goto_8

    .line 579
    :cond_29
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    move-result v2

    if-nez v2, :cond_8

    .line 582
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    :cond_3c
    return-void
.end method

.method public final stopSingleUserLU(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopSingleUserLU userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UserState;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_6e

    .line 1296
    iget-boolean v0, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    if-eqz v0, :cond_61

    if-eqz p2, :cond_46

    if-eqz p4, :cond_46

    .line 1298
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "allowDelayedLocking set with KeyEvictedCallback, ignore it and lock user:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v1, p2, v0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move p2, v2

    :cond_46
    if-nez p2, :cond_61

    .line 1303
    iget-object p2, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_61

    if-eqz p4, :cond_5e

    .line 1307
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1308
    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1312
    :cond_5e
    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/UserController;->dispatchUserLocking(ILjava/util/List;)V

    :cond_61
    if-eqz p3, :cond_6d

    .line 1318
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/am/UserController$$ExternalSyntheticLambda10;

    invoke-direct {p2, p3, p1}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda10;-><init>(Landroid/app/IStopUserCallback;I)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6d
    return-void

    .line 1328
    :cond_6e
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    const/4 v5, 0x5

    invoke-virtual {p0, v3, v1, v5}, Lcom/android/server/am/UserController;->logUserJourneyInfo(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;I)V

    const/4 v1, 0x7

    .line 1329
    invoke-virtual {p0, p1, v1, v4}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    if-eqz p3, :cond_81

    .line 1333
    iget-object v1, v0, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_81
    if-eqz p4, :cond_88

    .line 1336
    iget-object p3, v0, Lcom/android/server/am/UserState;->mKeyEvictedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1341
    :cond_88
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p3

    if-eqz p3, :cond_94

    .line 1342
    invoke-virtual {p3}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result p3

    if-nez p3, :cond_95

    :cond_94
    move v2, v4

    .line 1343
    :cond_95
    iget-object p3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-static {p3}, Lcom/android/server/am/UserController$Injector;->-$$Nest$fgetmService(Lcom/android/server/am/UserController$Injector;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p3

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {p3, p1, v2}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->stopUser(IZ)V

    .line 1347
    iget p3, v0, Lcom/android/server/am/UserState;->state:I

    const/4 p4, 0x4

    if-eq p3, p4, :cond_d9

    if-eq p3, v5, :cond_d9

    .line 1349
    invoke-virtual {v0, p4}, Lcom/android/server/am/UserState;->setState(I)V

    .line 1350
    iget-object p3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p3}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p3

    iget p4, v0, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {p3, p1, p4}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 1351
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 1354
    new-instance p3, Lcom/android/server/am/UserController$$ExternalSyntheticLambda11;

    invoke-direct {p3, p0, p1, v0, p2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;Z)V

    .line 1357
    iget-object p2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/UserManagerService;->isPreCreated(I)Z

    move-result p2

    if-eqz p2, :cond_cf

    .line 1358
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1363
    :cond_cf
    iget-object p2, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance p4, Lcom/android/server/am/UserController$$ExternalSyntheticLambda12;

    invoke-direct {p4, p0, p1, p3}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/am/UserController;ILjava/lang/Runnable;)V

    invoke-virtual {p2, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_d9
    return-void
.end method

.method public stopUser(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I
    .registers 8

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v1, "stopUser"

    .line 1214
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/UserController;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_1e

    if-eqz p1, :cond_1e

    const-string/jumbo v0, "no_debugging_features"

    .line 1218
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/UserController;->enforceShellRestriction(Ljava/lang/String;I)V

    .line 1219
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1220
    :try_start_15
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1b
    move-exception p0

    .line 1222
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1b

    throw p0

    .line 1216
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can\'t stop system user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final stopUserOnSwitchIfEnforced(I)V
    .registers 10

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string/jumbo v0, "no_run_in_background"

    .line 2317
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    .line 2318
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1c

    .line 2320
    :try_start_11
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->shouldStopUserOnSwitch()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_1c

    :cond_18
    move v0, v2

    goto :goto_1d

    :catchall_1a
    move-exception p0

    goto :goto_54

    :cond_1c
    :goto_1c
    move v0, v3

    :goto_1d
    if-nez v0, :cond_35

    .line 2322
    sget-boolean p0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz p0, :cond_33

    const-string p0, "ActivityManager"

    const-string/jumbo v0, "stopUserOnSwitchIfEnforced() NOT stopping %d and related users"

    new-array v3, v3, [Ljava/lang/Object;

    .line 2324
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    .line 2323
    invoke-static {p0, v0, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2326
    :cond_33
    monitor-exit v1

    return-void

    .line 2328
    :cond_35
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v0, :cond_49

    const-string v0, "ActivityManager"

    const-string/jumbo v4, "stopUserOnSwitchIfEnforced() stopping %d and related users"

    new-array v3, v3, [Ljava/lang/Object;

    .line 2330
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    .line 2329
    invoke-static {v0, v4, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_49
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    .line 2332
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    .line 2334
    monitor-exit v1

    return-void

    :goto_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_11 .. :try_end_55} :catchall_1a

    throw p0
.end method

.method public final stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, -0x3

    return p0

    .line 1235
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->isCurrentUserLU(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, -0x2

    return p0

    .line 1238
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getUsersToStopLU(I)[I

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 1240
    :goto_12
    array-length v3, v0

    const-string v4, "ActivityManager"

    if-ge v2, v3, :cond_5f

    .line 1241
    aget v3, v0, v2

    if-eqz v3, :cond_25

    .line 1242
    invoke-virtual {p0, v3}, Lcom/android/server/am/UserController;->isCurrentUserLU(I)Z

    move-result v5

    if-eqz v5, :cond_22

    goto :goto_25

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1243
    :cond_25
    :goto_25
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v0, :cond_3e

    .line 1244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopUsersLocked cannot stop related user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    if-eqz p2, :cond_5d

    .line 1248
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Force stop user "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". Related users will not be stopped"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/server/am/UserController;->stopSingleUserLU(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)V

    return v1

    :cond_5d
    const/4 p0, -0x4

    return p0

    .line 1257
    :cond_5f
    sget-boolean p2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz p2, :cond_7c

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopUsersLocked usersToStop="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    :cond_7c
    array-length p2, v0

    move v2, v1

    :goto_7e
    if-ge v2, p2, :cond_91

    aget v3, v0, v2

    const/4 v4, 0x0

    if-ne v3, p1, :cond_87

    move-object v5, p4

    goto :goto_88

    :cond_87
    move-object v5, v4

    :goto_88
    if-ne v3, p1, :cond_8b

    move-object v4, p5

    .line 1259
    :cond_8b
    invoke-virtual {p0, v3, p3, v5, v4}, Lcom/android/server/am/UserController;->stopSingleUserLU(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7e

    :cond_91
    return v1
.end method

.method public switchUser(I)Z
    .registers 8

    const-string/jumbo v0, "no_debugging_features"

    .line 2189
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/UserController;->enforceShellRestriction(Ljava/lang/String;I)V

    const/16 v0, 0x757b

    .line 2190
    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2191
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    .line 2192
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    const/4 v2, 0x1

    if-ne p1, v0, :cond_33

    const-string p0, "ActivityManager"

    .line 2194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "user #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is already the current user"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_33
    const/4 v3, 0x0

    if-nez v1, :cond_4d

    const-string p0, "ActivityManager"

    .line 2198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No user info for user #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 2201
    :cond_4d
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v4

    if-nez v4, :cond_6f

    const-string p0, "ActivityManager"

    .line 2202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot switch to User #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": not supported"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 2205
    :cond_6f
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v4

    if-eqz v4, :cond_91

    const-string p0, "ActivityManager"

    .line 2206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot switch to User #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": not a full user"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 2209
    :cond_91
    invoke-static {}, Lcom/android/server/FactoryResetter;->isFactoryResetting()Z

    move-result v4

    if-eqz v4, :cond_b3

    const-string p0, "ActivityManager"

    .line 2210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot switch to User #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": factory reset in progress"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 2221
    :cond_b3
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getMaintenanceModeUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v4

    if-eqz v4, :cond_d9

    .line 2222
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    if-eq v4, p1, :cond_d9

    const-string p0, "ActivityManager"

    .line 2223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot switch to User #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": in Maintenance mode"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 2229
    :cond_d9
    iget-object v4, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2230
    :try_start_dc
    iget-boolean v5, p0, Lcom/android/server/am/UserController;->mInitialized:Z

    if-nez v5, :cond_fd

    const-string p0, "ActivityManager"

    .line 2231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot switch to User #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": UserController not ready yet"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    monitor-exit v4

    return v3

    .line 2235
    :cond_fd
    iput p1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 2236
    iget-boolean v5, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    .line 2237
    monitor-exit v4
    :try_end_102
    .catchall {:try_start_dc .. :try_end_102} :catchall_12f

    if-eqz v5, :cond_11e

    .line 2239
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 2240
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2241
    iget-object p1, p0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2242
    iget-object p0, p0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_12e

    .line 2245
    :cond_11e
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2246
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_12e
    return v2

    :catchall_12f
    move-exception p0

    .line 2237
    :try_start_130
    monitor-exit v4
    :try_end_131
    .catchall {:try_start_130 .. :try_end_131} :catchall_12f

    throw p0
.end method

.method public final timeoutUserSwitch(Lcom/android/server/am/UserState;II)V
    .registers 8

    .line 2338
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "ActivityManager"

    .line 2339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User switch timeout: from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    iget-object v1, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    iput-object v1, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 2341
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2342
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLU(Lcom/android/server/am/UserState;II)V

    .line 2344
    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 p2, 0x1388

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2346
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p0

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public final timeoutUserSwitchCallbacks(II)V
    .registers 7

    .line 2350
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2351
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    if-eqz v1, :cond_38

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_38

    const-string v1, "ActivityManager"

    .line 2352
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User switch timeout: from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Observers that didn\'t respond: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 2354
    iput-object p1, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 2356
    :cond_38
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public unfreezeScreen()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2482
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    const-string/jumbo v1, "stopFreezingScreen"

    .line 2483
    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2484
    iget-object p0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingScreen()V

    .line 2485
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public unlockUser(I[B[BLandroid/os/IProgressListener;)Z
    .registers 13

    const/4 v2, -0x1

    const/4 v3, 0x0

    const-string/jumbo v4, "unlockUser"

    const-string v5, "NULL"

    move-object v0, p0

    move v1, p1

    .line 2069
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UserController;->showEventLogAndAddToDropBox(IIILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v1, "unlockUser"

    .line 2072
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/UserController;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x757d

    .line 2073
    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2074
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v4, -0x1

    const/4 v5, 0x1

    :try_start_1f
    const-string/jumbo v6, "unlockUser"

    const-string v7, "call unlockUserCleared"

    move-object v2, p0

    move v3, p1

    .line 2078
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/UserController;->showEventLogAndAddToDropBox(IIILjava/lang/String;Ljava/lang/String;)V

    .line 2081
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/UserController;->unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z

    move-result p0
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_31

    .line 2083
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_31
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2084
    throw p0
.end method

.method public final unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z
    .registers 13

    const-string/jumbo v4, "unlockUserCleared"

    const-string v5, "NULL"

    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    .line 2114
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UserController;->showEventLogAndAddToDropBox(IIILjava/lang/String;Ljava/lang/String;)V

    .line 2118
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 2119
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2120
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v1

    const/4 v4, -0x1

    const/4 v5, 0x1

    :try_start_1e
    const-string/jumbo v6, "unlockUserCleared"

    const-string/jumbo v7, "storageManager.isUserKeyUnlocked  return false"

    move-object v2, p0

    move v3, p1

    .line 2124
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/UserController;->showEventLogAndAddToDropBox(IIILjava/lang/String;Ljava/lang/String;)V

    .line 2128
    iget v0, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v1, p1, v0, p2, p3}, Landroid/os/storage/IStorageManager;->unlockUserKey(II[B[B)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_2e} :catch_2f
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_2e} :catch_2f

    goto :goto_4a

    :catch_2f
    move-exception p2

    const-string p3, "ActivityManager"

    .line 2130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to unlock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    :cond_4a
    :goto_4a
    iget-object p2, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 2135
    :try_start_4d
    iget-object p3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/am/UserState;

    if-eqz p3, :cond_5c

    .line 2137
    iget-object v0, p3, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v0, p4}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 2139
    :cond_5c
    monitor-exit p2
    :try_end_5d
    .catchall {:try_start_4d .. :try_end_5d} :catchall_103

    const/4 p2, 0x0

    if-nez p3, :cond_70

    .line 2142
    invoke-static {p1, p4}, Lcom/android/server/am/UserController;->notifyFinished(ILandroid/os/IProgressListener;)V

    const/4 v2, -0x1

    const/4 v3, 0x2

    const-string/jumbo v4, "unlockUserCleared"

    const-string v5, "NULL and return"

    move-object v0, p0

    move v1, p1

    .line 2145
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UserController;->showEventLogAndAddToDropBox(IIILjava/lang/String;Ljava/lang/String;)V

    return p2

    .line 2151
    :cond_70
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 2152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishUserUnlocking-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2153
    invoke-virtual {p0, p3}, Lcom/android/server/am/UserController;->finishUserUnlocking(Lcom/android/server/am/UserState;)Z

    move-result v1

    .line 2154
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    if-nez v1, :cond_96

    .line 2156
    invoke-static {p1, p4}, Lcom/android/server/am/UserController;->notifyFinished(ILandroid/os/IProgressListener;)V

    return p2

    .line 2165
    :cond_96
    iget-object p4, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter p4

    .line 2166
    :try_start_99
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v1, v0, [I

    move v2, p2

    :goto_a2
    if-ge v2, v0, :cond_af

    .line 2168
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a2

    .line 2170
    :cond_af
    monitor-exit p4
    :try_end_b0
    .catchall {:try_start_99 .. :try_end_b0} :catchall_100

    :goto_b0
    if-ge p2, v0, :cond_f1

    .line 2171
    aget p4, v1, p2

    .line 2172
    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_ee

    .line 2173
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    if-ne v3, p1, :cond_ee

    if-eq p4, p1, :cond_ee

    const-string v3, "ActivityManager"

    .line 2174
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " (parent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): attempting unlock because parent was just unlocked"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    invoke-virtual {p0, p4}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z

    :cond_ee
    add-int/lit8 p2, p2, 0x1

    goto :goto_b0

    .line 2182
    :cond_f1
    iget v4, p3, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x2

    const-string/jumbo v6, "unlockUserCleared"

    const-string v7, "NULL"

    move-object v2, p0

    move v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/UserController;->showEventLogAndAddToDropBox(IIILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :catchall_100
    move-exception p0

    .line 2170
    :try_start_101
    monitor-exit p4
    :try_end_102
    .catchall {:try_start_101 .. :try_end_102} :catchall_100

    throw p0

    :catchall_103
    move-exception p0

    .line 2139
    :try_start_104
    monitor-exit p2
    :try_end_105
    .catchall {:try_start_104 .. :try_end_105} :catchall_103

    throw p0
.end method

.method public unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    .registers 2

    .line 2723
    iget-object p0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public unsafeConvertIncomingUser(I)I
    .registers 3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_6

    const/4 v0, -0x3

    if-ne p1, v0, :cond_a

    .line 2701
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result p1

    :cond_a
    return p1
.end method

.method public final updateCurrentProfileIds()V
    .registers 7

    .line 2801
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0

    .line 2803
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v3, v1, [I

    move v4, v2

    :goto_16
    if-ge v4, v1, :cond_25

    .line 2805
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 2807
    :cond_25
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 2808
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2809
    :try_start_32
    iput-object v3, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 2811
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    .line 2812
    :goto_39
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_55

    .line 2813
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 2814
    iget v4, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v5, -0x2710

    if-eq v4, v5, :cond_52

    .line 2815
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 2818
    :cond_55
    monitor-exit v1

    return-void

    :catchall_57
    move-exception p0

    monitor-exit v1
    :try_end_59
    .catchall {:try_start_32 .. :try_end_59} :catchall_57

    throw p0
.end method

.method public final updateStartedUserArrayLU()V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 2741
    :goto_3
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x4

    if-ge v1, v3, :cond_20

    .line 2742
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    .line 2744
    iget v3, v3, Lcom/android/server/am/UserState;->state:I

    if-eq v3, v5, :cond_1d

    if-eq v3, v4, :cond_1d

    add-int/lit8 v2, v2, 0x1

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2749
    :cond_20
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    move v1, v0

    .line 2751
    :goto_25
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_4b

    .line 2752
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UserState;

    .line 2753
    iget v2, v2, Lcom/android/server/am/UserState;->state:I

    if-eq v2, v5, :cond_48

    if-eq v2, v4, :cond_48

    .line 2755
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    add-int/lit8 v3, v1, 0x1

    iget-object v6, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    aput v6, v2, v1

    move v1, v3

    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_4b
    return-void
.end method

.method public final updateUserToLockLU(IZ)I
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1558
    iget-boolean v0, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    if-eqz v0, :cond_95

    if-eqz p2, :cond_95

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result p2

    if-nez p2, :cond_95

    const-string/jumbo p2, "no_run_in_background"

    .line 1559
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_95

    .line 1560
    iget-object p2, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1561
    iget-object p2, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1562
    iget-object p2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr p2, v0

    .line 1563
    iget v0, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    const-string v1, "ActivityManager"

    if-le p2, v0, :cond_7a

    .line 1564
    iget-object p2, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1565
    iget-object p0, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1566
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "finishUserStopped, stopping user:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " lock user:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, p2

    goto :goto_95

    .line 1569
    :cond_7a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "finishUserStopped, user:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", skip locking"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x2710

    :cond_95
    :goto_95
    return p1
.end method
