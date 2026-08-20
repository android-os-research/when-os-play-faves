.class public Lcom/android/server/wm/ActivityStarter;
.super Ljava/lang/Object;
.source "ActivityStarter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityStarter$Request;,
        Lcom/android/server/wm/ActivityStarter$DefaultFactory;,
        Lcom/android/server/wm/ActivityStarter$Factory;
    }
.end annotation


# static fields
.field public static final APPLOCK_PACKAGE:Ljava/lang/String; = "com.samsung.android.applock"

.field public static final ENABLE_PENDING_INTENT_BAL_OPTION:J = 0xb76e480L

.field public static final INVALID_LAUNCH_MODE:I = -0x1

.field public static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field public static final SPEG_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.speg"

.field public static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field public static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityTaskManager"

.field public static final TAG_FOCUS:Ljava/lang/String; = "ActivityTaskManager"

.field public static final TAG_RESULTS:Ljava/lang/String; = "ActivityTaskManager"

.field public static final TAG_USER_LEAVING:Ljava/lang/String; = "ActivityTaskManager"

.field public static final sTargetStageTypes:[I


# instance fields
.field public isAppLockExceptionActivity:Z

.field public mAddingToTask:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mAddingToTaskFragment:Lcom/android/server/wm/TaskFragment;

.field public mApplicationPolicy:Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

.field public mAps:Lcom/android/server/appprelauncher/AppPrelaunchManagerService;

.field public mAvoidMoveToFront:Z

.field public mCallingUid:I

.field public final mController:Lcom/android/server/wm/ActivityStartController;

.field public mDoResume:Z

.field public mFrozeTaskList:Z

.field public mInTask:Lcom/android/server/wm/Task;

.field public mInTaskFragment:Lcom/android/server/wm/TaskFragment;

.field public mIntent:Landroid/content/Intent;

.field public mIntentDelivered:Z

.field public final mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

.field public mIsFreeformLaunching:Z

.field public mIsSecureFolderLockExceptionActivity:Z

.field public mIsTaskCleared:Z

.field public mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public mLastStartActivityResult:I

.field public mLastStartActivityTimeMs:J

.field public mLastStartReason:Ljava/lang/String;

.field public mLaunchFlags:I

.field public mLaunchMode:I

.field public mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

.field public mLaunchTaskBehind:Z

.field public mMovedToFront:Z

.field public mNewTaskInfo:Landroid/content/pm/ActivityInfo;

.field public mNewTaskIntent:Landroid/content/Intent;

.field public mNoAnimation:Z

.field public mNotTop:Lcom/android/server/wm/ActivityRecord;

.field public mOptions:Landroid/app/ActivityOptions;

.field public mOriginalTopActivity:Lcom/android/server/wm/ActivityRecord;

.field public mPasswordPolicy:Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;

.field public mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field public mPreferredWindowingMode:I

.field public mPriorAboveTask:Lcom/android/server/wm/Task;

.field public mRequest:Lcom/android/server/wm/ActivityStarter$Request;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mRestrictedBgActivity:Z

.field public final mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field public mSavedFullFrontTaskId:I

.field public final mSavedSplitFrontTaskIds:Landroid/util/SparseIntArray;

.field public mSecurityPolicy:Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mSourceRecord:Lcom/android/server/wm/ActivityRecord;

.field public mSourceRootTask:Lcom/android/server/wm/Task;

.field public mSplitAdjacentRequested:Z

.field public mStartActivity:Lcom/android/server/wm/ActivityRecord;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mStartFlags:I

.field public final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public mTargetRootTask:Lcom/android/server/wm/Task;

.field public mTargetTask:Lcom/android/server/wm/Task;

.field public mTransientLaunch:Z

.field public mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field public mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method public static synthetic $r8$lambda$RCMe01-XAh2ip9DiAgKK9E18jI0(Lcom/android/server/wm/Task;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/ActivityStarter;->lambda$setInitialState$0(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 354
    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/server/wm/ActivityStarter;->sTargetStageTypes:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x1
        0x2
        0x4
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityStartController;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityStartInterceptor;)V
    .registers 6

    .line 710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    new-instance v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-direct {v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 353
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSavedSplitFrontTaskIds:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    .line 356
    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mSavedFullFrontTaskId:I

    const/4 v0, 0x0

    .line 360
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mIsFreeformLaunching:Z

    .line 364
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mSplitAdjacentRequested:Z

    .line 372
    new-instance v0, Lcom/android/server/wm/ActivityStarter$Request;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityStarter$Request;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 711
    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    .line 712
    iput-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 713
    iget-object p1, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 714
    iput-object p3, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 715
    iput-object p4, p0, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    .line 717
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz p1, :cond_3e

    .line 718
    sget-boolean p1, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->DISABLE_PREL:Z

    if-nez p1, :cond_3e

    .line 719
    const-class p1, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;

    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mAps:Lcom/android/server/appprelauncher/AppPrelaunchManagerService;

    :cond_3e
    const/4 p1, 0x1

    .line 723
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->reset(Z)V

    return-void
.end method

.method public static canEmbedActivity(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation build Lcom/android/server/wm/TaskFragment$EmbeddingCheckResult;
    .end annotation

    .line 3218
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_e

    if-eq p2, v0, :cond_9

    goto :goto_e

    .line 3224
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivity(Lcom/android/server/wm/ActivityRecord;)I

    move-result p0

    return p0

    :cond_e
    :goto_e
    const/4 p0, 0x3

    return p0
.end method

.method public static computeResolveFilterUid(III)I
    .registers 4

    const/16 v0, -0x2710

    if-eq p2, v0, :cond_6

    move p0, p2

    goto :goto_a

    :cond_6
    if-ltz p0, :cond_9

    goto :goto_a

    :cond_9
    move p0, p1

    :goto_a
    return p0
.end method

.method public static getExternalResult(I)I
    .registers 2

    const/16 v0, 0x66

    if-eq p0, v0, :cond_5

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method public static isDocumentLaunchesIntoExisting(I)Z
    .registers 2

    const/high16 v0, 0x80000

    and-int/2addr v0, p0

    if-eqz v0, :cond_c

    const/high16 v0, 0x8000000

    and-int/2addr p0, v0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static synthetic lambda$setInitialState$0(Lcom/android/server/wm/Task;)Z
    .registers 2

    .line 3716
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method


# virtual methods
.method public final addOrReparentStartingActivity(Lcom/android/server/wm/Task;Ljava/lang/String;)V
    .registers 5

    .line 4347
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-eqz v0, :cond_15

    .line 4348
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/ActivityStarter;->canEmbedActivity(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v0

    if-nez v0, :cond_f

    .line 4350
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    goto :goto_39

    .line 4353
    :cond_f
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/ActivityStarter;->sendCanNotEmbedActivityError(Lcom/android/server/wm/TaskFragment;I)V

    goto :goto_39

    .line 4356
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-eqz v0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    if-nez v0, :cond_28

    const/4 v1, 0x0

    .line 4358
    invoke-virtual {p1, v1, v1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 4361
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    :cond_28
    if-eqz v0, :cond_39

    .line 4364
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 4365
    invoke-static {v0, v1, p1}, Lcom/android/server/wm/ActivityStarter;->canEmbedActivity(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v1

    if-nez v1, :cond_39

    move-object p1, v0

    .line 4371
    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 4372
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-ne v0, p1, :cond_4a

    goto :goto_54

    .line 4382
    :cond_4a
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskFragment;ILjava/lang/String;)V

    goto :goto_7e

    .line 4374
    :cond_54
    :goto_54
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz p2, :cond_76

    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-nez p2, :cond_76

    .line 4375
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result p2

    if-eqz p2, :cond_76

    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p2, :cond_70

    .line 4376
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eq p2, v0, :cond_76

    .line 4377
    :cond_70
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/server/wm/ActivityRecord;->setActivityReparentToEmbeddedTask(Z)V

    .line 4380
    :cond_76
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const p2, 0x7fffffff

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/TaskFragment;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    :goto_7e
    return-void
.end method

.method public final adjustLaunchFlagsToDocumentMode(Lcom/android/server/wm/ActivityRecord;ZZI)I
    .registers 8

    const/high16 v0, 0x80000

    and-int v1, p4, v0

    const v2, -0x8080001

    if-eqz v1, :cond_16

    if-nez p2, :cond_d

    if-eqz p3, :cond_16

    :cond_d
    const-string p0, "ActivityTaskManager"

    const-string p1, "Ignoring FLAG_ACTIVITY_NEW_DOCUMENT, launchMode is \"singleInstance\" or \"singleTask\""

    .line 4437
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_14
    and-int/2addr p4, v2

    goto :goto_2d

    .line 4442
    :cond_16
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p1, p1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2c

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2c

    const/4 p2, 0x3

    if-eq p1, p2, :cond_24

    goto :goto_2d

    .line 4452
    :cond_24
    iget p0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/4 p1, 0x4

    if-ne p0, p1, :cond_14

    if-eqz v1, :cond_2d

    goto :goto_14

    :cond_2c
    or-int/2addr p4, v0

    :cond_2d
    :goto_2d
    return p4
.end method

.method public final canMoveTaskToBottomTask(Lcom/android/server/wm/Task;I)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 4278
    :cond_4
    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v1, p2, :cond_9

    return v0

    .line 4282
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p2

    if-eqz p2, :cond_10

    return v0

    .line 4286
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    if-eqz p2, :cond_1f

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->isSavedFrontTask(I)Z

    move-result p0

    if-eqz p0, :cond_1f

    return v0

    :cond_1f
    const/4 p0, 0x1

    return p0
.end method

.method public final checkStartActivityAllowedByEDM(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;ILcom/android/server/wm/SafeActivityOptions;Landroid/content/ComponentName;Ljava/lang/String;)I
    .registers 32

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    .line 1847
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    .line 1848
    new-instance v6, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v6, v5}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1849
    invoke-virtual {v6}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v6

    .line 1850
    invoke-virtual {v6}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v6

    .line 1848
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    if-eqz v2, :cond_29

    .line 1851
    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    goto :goto_2a

    :cond_29
    const/4 v7, 0x0

    :goto_2a
    const-string v15, " succeeded"

    const-string v14, "ActivityTaskManager"

    const/16 v16, -0x65

    const-string v13, "Start activity "

    if-eqz p5, :cond_2fe

    .line 1853
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2fe

    .line 1854
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const-string v8, "com.android.settings"

    .line 1855
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, ":android:show_fragment"

    const-string v11, "OutOfMemoryError is happened"

    const-string/jumbo v10, "restriction_policy"

    const-string v6, "ActivityManager"

    if-eqz v8, :cond_17c

    .line 1858
    :try_start_4f
    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v8

    if-eqz v8, :cond_159

    const/4 v10, 0x0

    .line 1859
    invoke-interface {v8, v10, v7}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z

    move-result v17

    if-nez v17, :cond_159

    .line 1861
    invoke-virtual {v0, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_6a

    .line 1863
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 1865
    :cond_6a
    sget-object v10, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->settingsExceptions:[Ljava/lang/String;

    array-length v2, v10
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_6d} :catch_159
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_6d} :catch_16d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4f .. :try_end_6d} :catch_161

    move-object/from16 v18, v11

    const/4 v11, 0x0

    :goto_70
    if-ge v11, v2, :cond_8e

    move/from16 v19, v2

    :try_start_74
    aget-object v2, v10, v11

    .line 1866
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_7a} :catch_159
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_7a} :catch_16d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_74 .. :try_end_7a} :catch_83

    if-eqz v2, :cond_7e

    const/4 v2, 0x1

    goto :goto_8f

    :cond_7e
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v19

    goto :goto_70

    :catch_83
    move-object/from16 v21, v12

    move-object v2, v13

    move-object/from16 v23, v15

    :goto_88
    move-object/from16 v15, v18

    move-object/from16 v18, v14

    goto/16 :goto_169

    :cond_8e
    const/4 v2, 0x0

    :goto_8f
    if-eqz v2, :cond_eb

    const/high16 v2, 0x800000

    .line 1872
    :try_start_93
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v8, 0x5

    const/4 v9, 0x5

    const/4 v10, 0x0

    .line 1873
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v0, "ActivityStarter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v19, ""
    :try_end_b3
    .catch Landroid/os/RemoteException; {:try_start_93 .. :try_end_b3} :catch_e2
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_b3} :catch_d8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_93 .. :try_end_b3} :catch_d2

    move-object/from16 v20, v18

    move-object/from16 v21, v12

    move-object v12, v0

    move-object/from16 v22, v13

    move-object v13, v2

    move-object v2, v14

    move-object/from16 v14, v19

    move-object/from16 v23, v15

    move v15, v7

    :try_start_c1
    invoke-static/range {v8 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_c4
    .catch Landroid/os/RemoteException; {:try_start_c1 .. :try_end_c4} :catch_c4
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c4} :catch_153
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c1 .. :try_end_c4} :catch_ca

    :catch_c4
    move-object/from16 v18, v2

    move-object/from16 v2, v22

    goto/16 :goto_178

    :catch_ca
    move-object/from16 v18, v2

    move-object/from16 v15, v20

    move-object/from16 v2, v22

    goto/16 :goto_169

    :catch_d2
    move-object/from16 v21, v12

    move-object/from16 v23, v15

    move-object v2, v13

    goto :goto_88

    :catch_d8
    move-exception v0

    move-object/from16 v21, v12

    move-object/from16 v23, v15

    move-object v2, v13

    move-object/from16 v18, v14

    goto/16 :goto_175

    :catch_e2
    move-object/from16 v21, v12

    move-object/from16 v23, v15

    move-object v2, v13

    move-object/from16 v18, v14

    goto/16 :goto_178

    :cond_eb
    move-object/from16 v21, v12

    move-object/from16 v22, v13

    move-object v2, v14

    move-object/from16 v23, v15

    move-object/from16 v20, v18

    .line 1876
    :try_start_f4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Settings restriction policy blocks "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " from starting!"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    .line 1877
    invoke-interface {v8, v9, v7}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z

    .line 1878
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v8, 0x5

    const/4 v9, 0x5

    const/4 v10, 0x0

    .line 1879
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "ActivityStarter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_122
    .catch Landroid/os/RemoteException; {:try_start_f4 .. :try_end_122} :catch_c4
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_122} :catch_153
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f4 .. :try_end_122} :catch_14c

    move-object/from16 v15, v22

    :try_start_124
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " failed. Blocked due to settings changes not allowed."

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""
    :try_end_135
    .catch Landroid/os/RemoteException; {:try_start_124 .. :try_end_135} :catch_148
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_135} :catch_143
    .catch Ljava/lang/OutOfMemoryError; {:try_start_124 .. :try_end_135} :catch_13f

    move-object/from16 v18, v2

    move-object v2, v15

    move v15, v7

    :try_start_139
    invoke-static/range {v8 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_13c
    .catch Landroid/os/RemoteException; {:try_start_139 .. :try_end_13c} :catch_178
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_13c} :catch_13d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_139 .. :try_end_13c} :catch_150

    return v16

    :catch_13d
    move-exception v0

    goto :goto_175

    :catch_13f
    move-object/from16 v18, v2

    move-object v2, v15

    goto :goto_150

    :catch_143
    move-exception v0

    move-object/from16 v18, v2

    move-object v2, v15

    goto :goto_175

    :catch_148
    move-object/from16 v18, v2

    move-object v2, v15

    goto :goto_178

    :catch_14c
    move-object/from16 v18, v2

    move-object/from16 v2, v22

    :catch_150
    :goto_150
    move-object/from16 v15, v20

    goto :goto_169

    :catch_153
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v2, v22

    goto :goto_175

    :catch_159
    :cond_159
    move-object/from16 v21, v12

    move-object v2, v13

    move-object/from16 v18, v14

    move-object/from16 v23, v15

    goto :goto_178

    :catch_161
    move-object/from16 v21, v12

    move-object v2, v13

    move-object/from16 v18, v14

    move-object/from16 v23, v15

    move-object v15, v11

    .line 1889
    :goto_169
    invoke-static {v6, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_178

    :catch_16d
    move-exception v0

    move-object/from16 v21, v12

    move-object v2, v13

    move-object/from16 v18, v14

    move-object/from16 v23, v15

    .line 1887
    :goto_175
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :catch_178
    :goto_178
    move-object/from16 v24, v21

    goto/16 :goto_24a

    :cond_17c
    move-object/from16 v21, v12

    move-object v2, v13

    move-object/from16 v18, v14

    move-object/from16 v23, v15

    move-object v15, v11

    .line 1891
    sget-object v8, Lcom/samsung/android/knox/kiosk/KioskMode;->TASK_MANAGER_PKGNAME:Ljava/lang/String;

    move-object/from16 v14, v21

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_209

    sget-object v8, Lcom/samsung/android/knox/kiosk/KioskMode;->CONTROL_PANEL_PKGNAME:Ljava/lang/String;

    .line 1892
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_198

    goto/16 :goto_209

    :cond_198
    const-string v8, "com.vlingo.midas"

    .line 1907
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1ad

    const-string v8, "com.samsung.voiceserviceplatform"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a9

    goto :goto_1ad

    :catch_1a9
    :cond_1a9
    move-object/from16 v24, v14

    goto/16 :goto_24a

    .line 1910
    :cond_1ad
    :goto_1ad
    :try_start_1ad
    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v8

    if-eqz v8, :cond_1a9

    const/4 v10, 0x1

    .line 1911
    invoke-interface {v8, v10, v7}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSVoiceAllowedAsUser(ZI)Z

    move-result v11

    if-eqz v11, :cond_1c4

    invoke-interface {v8, v10, v7}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isMicrophoneEnabledAsUser(ZI)Z

    move-result v8

    if-nez v8, :cond_1a9

    .line 1912
    :cond_1c4
    invoke-virtual {v0, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1ce

    .line 1914
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1916
    :cond_1ce
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v8, 0x5

    const/4 v9, 0x5

    const/4 v10, 0x0

    .line 1917
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "ActivityStarter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " failed. Blocked due to S Voice not allowed."

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v0, ""
    :try_end_1f0
    .catch Landroid/os/RemoteException; {:try_start_1ad .. :try_end_1f0} :catch_1a9
    .catch Ljava/lang/Exception; {:try_start_1ad .. :try_end_1f0} :catch_202
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1ad .. :try_end_1f0} :catch_1fb

    move-object/from16 v24, v14

    move-object v14, v0

    move-object v0, v15

    move v15, v7

    :try_start_1f5
    invoke-static/range {v8 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1f8
    .catch Landroid/os/RemoteException; {:try_start_1f5 .. :try_end_1f8} :catch_24a
    .catch Ljava/lang/Exception; {:try_start_1f5 .. :try_end_1f8} :catch_1f9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1f5 .. :try_end_1f8} :catch_1fe

    return v16

    :catch_1f9
    move-exception v0

    goto :goto_205

    :catch_1fb
    move-object/from16 v24, v14

    move-object v0, v15

    .line 1927
    :catch_1fe
    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24a

    :catch_202
    move-exception v0

    move-object/from16 v24, v14

    .line 1925
    :goto_205
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24a

    :cond_209
    :goto_209
    move-object/from16 v24, v14

    :try_start_20b
    const-string v0, "kioskmode"

    .line 1895
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1894
    invoke-static {v0}, Lcom/samsung/android/knox/kiosk/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_24a

    const/4 v8, 0x1

    .line 1896
    invoke-interface {v0, v8, v7}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isTaskManagerAllowedAsUser(ZI)Z

    move-result v0

    if-nez v0, :cond_24a

    .line 1897
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v8, 0x5

    const/4 v9, 0x5

    const/4 v10, 0x0

    .line 1898
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "ActivityStarter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " failed. Task manager is not allowed."

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    move v15, v7

    invoke-static/range {v8 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_244
    .catch Landroid/os/RemoteException; {:try_start_20b .. :try_end_244} :catch_24a
    .catch Ljava/lang/Exception; {:try_start_20b .. :try_end_244} :catch_245

    return v16

    :catch_245
    const-string v0, "Is edm running?"

    .line 1905
    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    :catch_24a
    :cond_24a
    :goto_24a
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_303

    .line 1932
    :try_start_250
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->getPasswordPolicy()Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;

    .line 1933
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->getSecurityPolicy()Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

    move-result-object v0

    if-eqz v0, :cond_2d0

    .line 1936
    invoke-virtual {v0, v7}, Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;->isDodBannerVisibleAsUser(I)Z

    move-result v0

    if-eqz v0, :cond_2d0

    .line 1937
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2d0

    .line 1938
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2d0

    const/4 v6, 0x0

    .line 1939
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1942
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 1944
    sget-object v8, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->enforcePwdExceptions:[Ljava/lang/String;

    array-length v9, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_286
    if-ge v10, v9, :cond_2a0

    aget-object v12, v8, v10

    if-eqz v0, :cond_293

    .line 1945
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_293

    const/4 v11, 0x1

    :cond_293
    if-eqz v6, :cond_29d

    .line 1948
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_29d

    const/4 v10, 0x1

    goto :goto_2a1

    :cond_29d
    add-int/lit8 v10, v10, 0x1

    goto :goto_286

    :cond_2a0
    const/4 v10, 0x0

    :goto_2a1
    if-eqz v11, :cond_2d0

    if-nez v10, :cond_2d0

    .line 1954
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v8, 0x5

    const/4 v9, 0x5

    const/4 v10, 0x0

    .line 1955
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "ActivityStarter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " failed. Blocked due to password change enforcement."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    move v15, v7

    invoke-static/range {v8 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2cb
    .catch Landroid/os/RemoteException; {:try_start_250 .. :try_end_2cb} :catch_2d0
    .catch Ljava/lang/Exception; {:try_start_250 .. :try_end_2cb} :catch_2cc

    return v16

    :catch_2cc
    move-exception v0

    .line 1964
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1968
    :catch_2d0
    :cond_2d0
    :try_start_2d0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->getApplicationPolicy()Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    move-result-object v0

    if-eqz v0, :cond_303

    move-object/from16 v4, v24

    const/4 v6, 0x1

    .line 1969
    invoke-virtual {v0, v4, v6, v7}, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    move-result v0

    if-nez v0, :cond_303

    const-string v0, "ActivityStarter"

    .line 1970
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to open "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_2f8
    .catch Ljava/lang/Exception; {:try_start_2d0 .. :try_end_2f8} :catch_2f9

    return v16

    :catch_2f9
    move-exception v0

    .line 1975
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_303

    :cond_2fe
    move-object v2, v13

    move-object/from16 v18, v14

    move-object/from16 v23, v15

    :cond_303
    :goto_303
    if-eqz v3, :cond_321

    .line 1983
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    move/from16 v4, p3

    if-ne v4, v0, :cond_321

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1984
    invoke-virtual {v3, v0}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v0

    if-eqz v0, :cond_3a9

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1985
    invoke-virtual {v3, v0}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getStartedByMDMAdmin()Z

    move-result v0

    if-nez v0, :cond_3a9

    :cond_321
    move-object/from16 v3, p2

    if-eqz v3, :cond_3a9

    .line 1988
    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1989
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v7, v0}, Lcom/android/server/wm/RootWindowContainer;->findActivityLockedByPackage(ILjava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_3a9

    .line 1994
    :try_start_32f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->getApplicationPolicy()Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    move-result-object v1

    if-eqz v1, :cond_381

    .line 1995
    invoke-virtual {v1, v0, v7}, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;->isApplicationStartDisabledAsUser(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_381

    .line 1996
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to start "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " which is at prevent start black list"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v18

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v8, 0x5

    const/4 v9, 0x5

    const/4 v10, 0x0

    .line 1999
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "ActivityStarter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " failed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    move v15, v7

    invoke-static/range {v8 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return v16

    :cond_381
    const/4 v8, 0x5

    const/4 v9, 0x5

    const/4 v10, 0x1

    .line 2004
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "ActivityStarter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    move v15, v7

    invoke-static/range {v8 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_3a4
    .catch Ljava/lang/Exception; {:try_start_32f .. :try_end_3a4} :catch_3a5

    goto :goto_3a9

    :catch_3a5
    move-exception v0

    .line 2008
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2014
    :cond_3a9
    :goto_3a9
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v1, 0x0

    return v1
.end method

.method public final complyActivityFlags(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V
    .registers 12

    .line 3396
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_11

    .line 3397
    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    if-eqz v3, :cond_11

    move v3, v2

    goto :goto_12

    :cond_11
    move v3, v1

    :goto_12
    if-eqz v3, :cond_1c

    .line 3400
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v0, v5}, Lcom/android/server/wm/Task;->resetTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3403
    :cond_1c
    iget v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v5, 0x10008000

    and-int v6, v4, v5

    if-ne v6, v5, :cond_33

    .line 3411
    invoke-virtual {p1, v2}, Lcom/android/server/wm/Task;->performClearTaskForReuse(Z)V

    .line 3412
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 3413
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 3414
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mIsTaskCleared:Z

    goto/16 :goto_185

    :cond_33
    const/high16 v5, 0x4000000

    and-int v6, v4, v5

    if-nez v6, :cond_126

    .line 3416
    invoke-static {v4}, Lcom/android/server/wm/ActivityStarter;->isDocumentLaunchesIntoExisting(I)Z

    move-result v4

    if-nez v4, :cond_126

    const/4 v4, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x3

    .line 3417
    invoke-virtual {p0, v7, v4, v6}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(III)Z

    move-result v4

    if-eqz v4, :cond_4a

    goto/16 :goto_126

    .line 3452
    :cond_4a
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int v4, v1, v5

    if-nez v4, :cond_c2

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-nez v4, :cond_c2

    const/high16 v4, 0x20000

    and-int/2addr v1, v4

    if-eqz v1, :cond_c2

    .line 3457
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 3458
    invoke-virtual {p1, p2}, Lcom/android/server/wm/Task;->findActivityInHistory(Landroid/content/ComponentName;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    if-eqz p2, :cond_be

    .line 3461
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v0, :cond_71

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 3463
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto/16 :goto_185

    .line 3466
    :cond_71
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3469
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_aa

    .line 3470
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-ne v1, v2, :cond_aa

    .line 3471
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_aa

    .line 3472
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result p1

    if-nez p1, :cond_aa

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eq p1, p2, :cond_aa

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object p1

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-eq p1, v1, :cond_aa

    .line 3473
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 3476
    :cond_aa
    invoke-virtual {v0, p2}, Lcom/android/server/wm/Task;->moveActivityToFrontLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 3477
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 3478
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    .line 3479
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->clearLastPausedActivity()V

    goto/16 :goto_185

    .line 3482
    :cond_be
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto/16 :goto_185

    .line 3484
    :cond_c2
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_117

    .line 3485
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-ne p1, v1, :cond_d4

    goto/16 :goto_185

    .line 3488
    :cond_d4
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v3, 0x20000000

    and-int/2addr v1, v3

    if-nez v1, :cond_df

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v2, v1, :cond_105

    :cond_df
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 3490
    invoke-virtual {v1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_105

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v1, :cond_105

    .line 3496
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result p1

    if-eqz p1, :cond_100

    .line 3497
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 3499
    :cond_100
    invoke-virtual {p0, v0, p3}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    goto/16 :goto_185

    .line 3500
    :cond_105
    iget-object p3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, p3}, Lcom/android/server/wm/Task;->isSameIntentFilter(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-nez p1, :cond_111

    .line 3503
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto/16 :goto_185

    :cond_111
    if-nez p2, :cond_185

    .line 3505
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto/16 :goto_185

    :cond_117
    if-nez v3, :cond_11c

    .line 3512
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto :goto_185

    .line 3513
    :cond_11c
    iget-boolean p2, p1, Lcom/android/server/wm/Task;->rootWasReset:Z

    if-nez p2, :cond_185

    .line 3519
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_185

    .line 3422
    :cond_126
    :goto_126
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {p1, p2, v0}, Lcom/android/server/wm/Task;->performClearTop(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    if-eqz p2, :cond_147

    .line 3425
    iget-boolean v0, p2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_147

    .line 3426
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result p1

    if-eqz p1, :cond_143

    .line 3429
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 3431
    :cond_143
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    goto :goto_185

    .line 3436
    :cond_147
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-eqz p2, :cond_161

    .line 3439
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p3

    if-eqz p3, :cond_161

    .line 3440
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result p3

    if-eqz p3, :cond_161

    .line 3441
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 3443
    :cond_161
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p2

    if-nez p2, :cond_185

    .line 3446
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget p3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0, p2, p3, v0, v3}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 3448
    iget-boolean p3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    xor-int/2addr p3, v2

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_182

    move v1, v2

    :cond_182
    invoke-virtual {p2, p1, p3, v1}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;ZZ)V

    :cond_185
    :goto_185
    return-void
.end method

.method public final computeLaunchParams(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V
    .registers 15

    .line 3093
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_5

    goto :goto_b

    .line 3094
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    :goto_b
    if-eqz v0, :cond_34

    .line 3095
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_1d

    .line 3097
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    if-nez v0, :cond_34

    :cond_1d
    if-eqz p3, :cond_24

    .line 3099
    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    .line 3104
    :goto_25
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-nez v1, :cond_2f

    .line 3105
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 3107
    :cond_2f
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1, v0}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 3110
    :cond_34
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v1

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v10, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    move-object v2, p3

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/TaskDisplayArea;)V

    .line 3117
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget p1, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    const/4 p2, 0x5

    if-ne p1, p2, :cond_63

    .line 3119
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-nez p1, :cond_5e

    .line 3120
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 3122
    :cond_5e
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p1, p2}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 3126
    :cond_63
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {p1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasPreferredTaskDisplayArea()Z

    move-result p1

    if-eqz p1, :cond_70

    .line 3127
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object p1, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    goto :goto_76

    .line 3128
    :cond_70
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    :goto_76
    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 3129
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget p1, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iput p1, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    return-void
.end method

.method public final computeLaunchingTaskFlags()V
    .registers 10

    .line 3840
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/high16 v5, 0x10000000

    if-nez v0, :cond_db

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_db

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_db

    .line 3841
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3842
    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-eqz v0, :cond_bd

    .line 3851
    invoke-virtual {p0, v3, v1}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v7

    if-eqz v7, :cond_90

    .line 3852
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_68

    if-nez v6, :cond_3d

    goto :goto_90

    .line 3858
    :cond_3d
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 3859
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller with mInTask "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " has root "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " but target is singleInstance/Task"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3853
    :cond_68
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 3854
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to launch singleInstance/Task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " into different task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_90
    :goto_90
    if-nez v6, :cond_b2

    .line 3869
    iget v6, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v7, -0x18082001

    and-int/2addr v6, v7

    .line 3870
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v7, 0x18082000

    and-int/2addr v0, v7

    or-int/2addr v0, v6

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 3871
    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3872
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v6}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 3873
    iput-boolean v4, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto :goto_f4

    .line 3878
    :cond_b2
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_ba

    .line 3879
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto :goto_f4

    .line 3882
    :cond_ba
    iput-boolean v4, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto :goto_f4

    .line 3844
    :cond_bd
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 3845
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching into task without base intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_db
    const/4 v0, 0x0

    .line 3885
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 3891
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isResolverOrDelegateActivity()Z

    move-result v0

    if-nez v0, :cond_e7

    goto :goto_f4

    :cond_e7
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_f4

    .line 3895
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_f2

    goto :goto_f4

    .line 3902
    :cond_f2
    iput-boolean v4, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 3906
    :cond_f4
    :goto_f4
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_137

    .line 3907
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v4, :cond_122

    .line 3910
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v5

    if-nez v1, :cond_137

    if-nez v0, :cond_137

    .line 3911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3913
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v5

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    goto :goto_137

    .line 3915
    :cond_122
    iget v0, v4, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    if-ne v0, v3, :cond_12c

    .line 3919
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v5

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    goto :goto_137

    .line 3920
    :cond_12c
    invoke-virtual {p0, v3, v1}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-eqz v0, :cond_137

    .line 3923
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v5

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 3927
    :cond_137
    :goto_137
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v0, v0, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_19c

    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_14f

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_19c

    .line 3930
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->isStartedFromWindowTypeLauncher()Z

    move-result v0

    if-eqz v0, :cond_19c

    .line 3933
    :cond_14f
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_176

    .line 3934
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    if-nez v0, :cond_15f

    .line 3936
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v0

    .line 3938
    :cond_15f
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_177

    .line 3939
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_177

    .line 3940
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v2

    goto :goto_177

    :cond_176
    move v0, v2

    :cond_177
    :goto_177
    if-nez v2, :cond_189

    .line 3943
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_189

    .line 3944
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_189

    .line 3945
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v2

    .line 3947
    :cond_189
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v4, v0, v2, v5}, Lcom/android/server/wm/MultiTaskingController;->allowMultipleTask(Lcom/android/server/wm/ActivityRecord;IILcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_19c

    .line 3949
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    :cond_19c
    return-void
.end method

.method public final computeSourceRootTask()V
    .registers 5

    .line 3956
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 3957
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    return-void

    .line 3960
    :cond_8
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v2, :cond_13

    .line 3961
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    return-void

    .line 3969
    :cond_13
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x10000000

    and-int/2addr v0, v2

    if-nez v0, :cond_5e

    .line 3970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivity called from finishing "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3972
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 3978
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 3979
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_5e

    .line 3980
    :cond_50
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_5b

    .line 3981
    iget-object v0, v0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    goto :goto_5c

    :cond_5b
    move-object v0, v1

    :goto_5c
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 3984
    :cond_5e
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 3985
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    return-void
.end method

.method public final computeTargetTask()Lcom/android/server/wm/Task;
    .registers 5

    .line 3062
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-nez v1, :cond_17

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-nez v1, :cond_17

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v3, 0x10000000

    and-int/2addr v1, v3

    if-eqz v1, :cond_17

    return-object v2

    .line 3066
    :cond_17
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_20

    .line 3067
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0

    .line 3068
    :cond_20
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_38

    .line 3070
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v0

    if-nez v0, :cond_35

    .line 3073
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    .line 3075
    :cond_35
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    return-object p0

    .line 3077
    :cond_38
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object p0

    .line 3079
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 3081
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0

    :cond_4b
    const-string v0, "computeTargetTask"

    .line 3084
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    return-object v2
.end method

.method public final createLaunchIntent(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 23

    move-object/from16 v9, p1

    if-eqz v9, :cond_29

    .line 2344
    iget-boolean v0, v9, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    if-eqz v0, :cond_29

    move-object v0, p0

    .line 2346
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    move-object/from16 v10, p3

    move/from16 v11, p7

    .line 2347
    invoke-virtual {v0, v10, v11}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    move/from16 v8, p7

    .line 2348
    invoke-virtual/range {v0 .. v8}, Landroid/content/pm/PackageManagerInternal;->requestInstantAppResolutionPhaseTwo(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;I)V

    goto :goto_2d

    :cond_29
    move-object/from16 v10, p3

    move/from16 v11, p7

    .line 2354
    :goto_2d
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/InstantAppResolver;->sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    const/4 v0, 0x0

    if-nez v9, :cond_36

    move-object v3, v0

    goto :goto_39

    .line 2355
    :cond_36
    iget-object v1, v9, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    move-object v3, v1

    :goto_39
    if-nez v9, :cond_3d

    move-object v12, v0

    goto :goto_40

    .line 2361
    :cond_3d
    iget-object v1, v9, Landroid/content/pm/AuxiliaryResolveInfo;->installFailureActivity:Landroid/content/ComponentName;

    move-object v12, v1

    :goto_40
    if-nez v9, :cond_44

    move-object v13, v0

    goto :goto_47

    .line 2362
    :cond_44
    iget-object v1, v9, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    move-object v13, v1

    :goto_47
    if-eqz v9, :cond_4f

    iget-boolean v1, v9, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    if-eqz v1, :cond_4f

    const/4 v1, 0x1

    goto :goto_50

    :cond_4f
    const/4 v1, 0x0

    :goto_50
    move v14, v1

    if-nez v9, :cond_54

    goto :goto_56

    .line 2364
    :cond_54
    iget-object v0, v9, Landroid/content/pm/AuxiliaryResolveInfo;->filters:Ljava/util/List;

    :goto_56
    move-object/from16 v1, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object v9, v12

    move-object v10, v13

    move v11, v14

    move-object v12, v0

    .line 2352
    invoke-static/range {v1 .. v12}, Lcom/android/server/pm/InstantAppResolver;->buildEphemeralInstallerIntent(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V
    .registers 6

    .line 4331
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/16 v0, 0x7533

    .line 4335
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 4337
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->getStartInfo()Ljava/lang/String;

    move-result-object v2

    .line 4335
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/wm/ActivityRecord;->logStartActivity(ILcom/android/server/wm/Task;Ljava/lang/String;)V

    .line 4339
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, p2, v1}, Lcom/android/server/wm/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 4341
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    return-void
.end method

.method public final deliverToCurrentTopIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;)I
    .registers 12

    .line 3336
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3f

    .line 3337
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 3338
    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    iget v3, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v4, v4, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v3, v4, :cond_3f

    .line 3340
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v3

    if-eqz v3, :cond_3f

    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x20000000

    and-int/2addr v3, v4

    if-nez v3, :cond_2f

    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v2, v3, :cond_3f

    .line 3346
    :cond_2f
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-ne v3, v4, :cond_3f

    :cond_3d
    move v3, v2

    goto :goto_40

    :cond_3f
    move v3, v1

    :goto_40
    if-nez v3, :cond_43

    return v1

    .line 3351
    :cond_43
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_76

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->mIsAliasActivity:Z

    if-eqz v4, :cond_76

    .line 3352
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    if-ne v3, v4, :cond_75

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 3354
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    .line 3353
    invoke-static {v3}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_76

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 3355
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v3

    .line 3356
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v4

    if-eq v3, v4, :cond_76

    :cond_75
    return v1

    .line 3362
    :cond_76
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->clearLastPausedActivity()V

    .line 3363
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v1, :cond_86

    .line 3364
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 3366
    :cond_86
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 3367
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_91

    return v2

    .line 3373
    :cond_91
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_a7

    const/4 v3, -0x1

    .line 3374
    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V

    .line 3377
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 3380
    :cond_a7
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    .line 3384
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget v1, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {p2, v0, v1, p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;)V

    const/4 p0, 0x3

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 4884
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCurrentUser="

    .line 4885
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4886
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v0, v0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4887
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastStartReason="

    .line 4888
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4889
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4890
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastStartActivityTimeMs="

    .line 4891
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4892
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4893
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastStartActivityResult="

    .line 4894
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4895
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4896
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-string v1, "  "

    const/4 v2, 0x1

    if-eqz v0, :cond_66

    .line 4897
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastStartActivityRecord:"

    .line 4898
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4899
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3, v2}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 4901
    :cond_66
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_86

    .line 4902
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStartActivity:"

    .line 4903
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4904
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 4906
    :cond_86
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_97

    .line 4907
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIntent="

    .line 4908
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4909
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4911
    :cond_97
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_a8

    .line 4912
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mOptions="

    .line 4913
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4914
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4916
    :cond_a8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLaunchSingleTop="

    .line 4917
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4918
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/4 v1, 0x0

    if-ne v2, v0, :cond_b7

    move v0, v2

    goto :goto_b8

    :cond_b7
    move v0, v1

    :goto_b8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mLaunchSingleInstance="

    .line 4919
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 4920
    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v0, v3, :cond_c7

    move v0, v2

    goto :goto_c8

    :cond_c7
    move v0, v1

    :goto_c8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mLaunchSingleTask="

    .line 4921
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 4922
    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v0, v3, :cond_d6

    goto :goto_d7

    :cond_d6
    move v2, v1

    :goto_d7
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 4923
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mLaunchFlags=0x"

    .line 4924
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4925
    iget p2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, " mDoResume="

    .line 4926
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4927
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mAddingToTask="

    .line 4928
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4929
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mInTaskFragment="

    .line 4930
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4931
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public execute()I
    .registers 25

    move-object/from16 v1, p0

    .line 796
    :try_start_2
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_17

    .line 797
    :cond_f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "File descriptors passed in Intent"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 801
    :cond_17
    :goto_17
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_1c} :catch_500
    .catchall {:try_start_2 .. :try_end_1c} :catchall_4e2

    :try_start_1c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 802
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    invoke-static {v3}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 803
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_32

    .line 804
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 805
    :cond_32
    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v7, v7, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v7, v3, v4}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    move-result-object v3

    .line 807
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_1c .. :try_end_41} :catchall_4db

    :try_start_41
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 813
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_48
    .catch Ljava/lang/RuntimeException; {:try_start_41 .. :try_end_48} :catch_500
    .catchall {:try_start_41 .. :try_end_48} :catchall_4e2

    const/4 v6, 0x0

    if-nez v4, :cond_8e

    .line 817
    :try_start_4b
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityStarter$Request;->resolveActivity(Lcom/android/server/wm/ActivityTaskSupervisor;)V
    :try_end_50
    .catch Ljava/lang/SecurityException; {:try_start_4b .. :try_end_50} :catch_51
    .catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_50} :catch_500
    .catchall {:try_start_4b .. :try_end_50} :catchall_4e2

    goto :goto_8e

    :catch_51
    move-exception v0

    move-object v2, v0

    .line 819
    :try_start_53
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_58
    .catch Ljava/lang/RuntimeException; {:try_start_53 .. :try_end_58} :catch_500
    .catchall {:try_start_53 .. :try_end_58} :catchall_4e2

    :try_start_58
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 820
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    if-eqz v4, :cond_82

    .line 821
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_82

    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    .line 822
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_82

    .line 823
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    if-eqz v4, :cond_82

    .line 825
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    invoke-virtual {v5, v4, v6}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    .line 828
    :cond_82
    monitor-exit v3
    :try_end_83
    .catchall {:try_start_58 .. :try_end_83} :catchall_87

    :try_start_83
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 829
    throw v2
    :try_end_87
    .catch Ljava/lang/RuntimeException; {:try_start_83 .. :try_end_87} :catch_500
    .catchall {:try_start_83 .. :try_end_87} :catchall_4e2

    :catchall_87
    move-exception v0

    move-object v2, v0

    .line 828
    :try_start_89
    monitor-exit v3
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_87

    :try_start_8a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 839
    :cond_8e
    :goto_8e
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_9d

    .line 840
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_a5

    :cond_9d
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    .line 842
    :goto_a5
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v7, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v14, 0x1

    if-eqz v7, :cond_e6

    .line 843
    iget v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 844
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_bb

    .line 845
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    move/from16 v21, v7

    goto :goto_bd

    :cond_bb
    move/from16 v21, v6

    .line 846
    :goto_bd
    invoke-static {}, Lcom/android/server/am/BaseRestrictionMgr;->getInstance()Lcom/android/server/am/BaseRestrictionMgr;

    move-result-object v15

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v8, v8, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v2, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v9, v8, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    const-string v19, "activity"

    const/16 v20, 0x0

    iget-object v8, v8, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v7

    move-object/from16 v17, v9

    move/from16 v18, v4

    move-object/from16 v22, v8

    invoke-virtual/range {v15 .. v22}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;)Z

    move-result v4

    if-eqz v4, :cond_e6

    move v4, v6

    goto :goto_e7

    :cond_e6
    move v4, v14

    :goto_e7
    if-eqz v4, :cond_f4

    .line 852
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v7, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v7, v7, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    invoke-virtual {v4, v2, v7, v6}, Landroid/app/ActivityManagerInternal;->cancelDisablePolicy(Ljava/lang/String;II)Z

    .line 856
    :cond_f4
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    const/16 v4, -0x60

    const/4 v7, 0x0

    if-eqz v2, :cond_1ae

    .line 859
    sget-boolean v2, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->DISABLE_PREL:Z

    if-nez v2, :cond_1ae

    const-string v2, "com.samsung.speg"

    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v8, v8, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1ae

    .line 860
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mAps:Lcom/android/server/appprelauncher/AppPrelaunchManagerService;

    if-eqz v2, :cond_1ae

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_1ae

    .line 861
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1ae

    .line 862
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 864
    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v8, v8, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    if-ne v8, v5, :cond_131

    .line 865
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 866
    :cond_131
    iget-object v9, v1, Lcom/android/server/wm/ActivityStarter;->mAps:Lcom/android/server/appprelauncher/AppPrelaunchManagerService;

    invoke-virtual {v9, v8}, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->isAppPrelaunched(I)Z

    move-result v8

    .line 867
    iget-object v9, v1, Lcom/android/server/wm/ActivityStarter;->mAps:Lcom/android/server/appprelauncher/AppPrelaunchManagerService;

    iget-object v10, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v10, v10, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    invoke-virtual {v9, v2, v10}, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->isAppPrelaunched(Ljava/lang/String;I)Z

    move-result v9

    if-nez v8, :cond_145

    if-eqz v9, :cond_1ae

    .line 872
    :cond_145
    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v8, v8, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    if-eqz v8, :cond_152

    .line 873
    iget-object v10, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v8, v10}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v8

    goto :goto_153

    :cond_152
    move-object v8, v7

    :goto_153
    if-eqz v8, :cond_163

    .line 875
    invoke-virtual {v8}, Landroid/app/ActivityOptions;->isActiveApplaunch()Z

    move-result v10

    if-nez v10, :cond_161

    .line 876
    invoke-virtual {v8}, Landroid/app/ActivityOptions;->isMlLaunch()I

    move-result v8

    if-le v8, v5, :cond_163

    :cond_161
    move v8, v14

    goto :goto_164

    :cond_163
    move v8, v6

    :goto_164
    if-eqz v8, :cond_186

    .line 878
    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v8, v8, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_186

    const-string v3, "PRELstarter"

    .line 879
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " start canceled due to AL"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_182
    .catch Ljava/lang/RuntimeException; {:try_start_8a .. :try_end_182} :catch_500
    .catchall {:try_start_8a .. :try_end_182} :catchall_4e2

    .line 1090
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    return v4

    :cond_186
    if-eqz v9, :cond_194

    .line 887
    :try_start_188
    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mAps:Lcom/android/server/appprelauncher/AppPrelaunchManagerService;

    iget-object v9, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v9, v9, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 888
    invoke-virtual {v8, v2, v9}, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->handleActivityExecution(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_1ae

    :cond_194
    const-string v3, "PREL"

    .line 889
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity start canceled for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1aa
    .catch Ljava/lang/RuntimeException; {:try_start_188 .. :try_end_1aa} :catch_500
    .catchall {:try_start_188 .. :try_end_1aa} :catchall_4e2

    .line 1090
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    return v6

    .line 902
    :cond_1ae
    :try_start_1ae
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    if-eqz v2, :cond_1bb

    .line 903
    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2, v8}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v2

    goto :goto_1bc

    :cond_1bb
    move-object v2, v7

    :goto_1bc
    if-eqz v2, :cond_281

    .line 904
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->isActiveApplaunch()Z

    move-result v8

    if-eqz v8, :cond_281

    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v8, v8, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_281

    .line 906
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7
    :try_end_1ce
    .catch Ljava/lang/RuntimeException; {:try_start_1ae .. :try_end_1ce} :catch_500
    .catchall {:try_start_1ae .. :try_end_1ce} :catchall_4e2

    .line 908
    :try_start_1ce
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_1d3
    .catch Ljava/lang/Exception; {:try_start_1ce .. :try_end_1d3} :catch_255
    .catchall {:try_start_1ce .. :try_end_1d3} :catchall_277

    :try_start_1d3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const-string v5, "ActivityTaskManager"

    const-string/jumbo v9, "request preloading for newly launching app"

    .line 912
    invoke-static {v5, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    iget-object v10, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v11, v10, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v10, v10, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 915
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 913
    invoke-virtual {v9, v11, v10, v5}, Lcom/android/server/wm/TaskOrganizerController;->preloadSplashScreenAppIcon(Landroid/content/pm/ActivityInfo;ILandroid/content/res/Configuration;)V

    .line 917
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    if-eqz v5, :cond_209

    .line 918
    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportSSecure()Z

    move-result v5

    if-nez v5, :cond_209

    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v9, v9, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 919
    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityTaskManagerService;->isAppLockedPackage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_209

    move v5, v14

    goto :goto_20a

    :cond_209
    move v5, v6

    :goto_20a
    const-string v9, "ActivityTaskManager"

    const-string v10, "TouchDown intent received, starting ActiveLaunch"

    .line 921
    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    iget-object v15, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v9, v9, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v9, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "activelaunch"

    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v12, v12, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v13, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_233

    move/from16 v22, v14

    goto :goto_235

    :cond_233
    move/from16 v22, v6

    :goto_235
    const/16 v23, -0x1

    move-object/from16 v16, v10

    move-object/from16 v17, v9

    move-object/from16 v21, v11

    invoke-virtual/range {v15 .. v23}, Lcom/android/server/wm/ActivityTaskManagerService;->startProcessAsyncForActiveLaunch(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZZLjava/lang/String;Landroid/content/ComponentName;ZI)V

    .line 927
    monitor-exit v3
    :try_end_241
    .catchall {:try_start_1d3 .. :try_end_241} :catchall_24e

    :try_start_241
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_244
    .catch Ljava/lang/Exception; {:try_start_241 .. :try_end_244} :catch_255
    .catchall {:try_start_241 .. :try_end_244} :catchall_277

    .line 932
    :try_start_244
    invoke-virtual {v2, v6}, Landroid/app/ActivityOptions;->setActiveApplaunch(Z)V

    .line 933
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_24a
    .catch Ljava/lang/RuntimeException; {:try_start_244 .. :try_end_24a} :catch_500
    .catchall {:try_start_244 .. :try_end_24a} :catchall_4e2

    .line 1090
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    return v6

    :catchall_24e
    move-exception v0

    move-object v5, v0

    .line 927
    :try_start_250
    monitor-exit v3
    :try_end_251
    .catchall {:try_start_250 .. :try_end_251} :catchall_24e

    :try_start_251
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v5
    :try_end_255
    .catch Ljava/lang/Exception; {:try_start_251 .. :try_end_255} :catch_255
    .catchall {:try_start_251 .. :try_end_255} :catchall_277

    :catch_255
    move-exception v0

    move-object v3, v0

    :try_start_257
    const-string v5, "ActivityTaskManager"

    .line 929
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ActiveLaunching Fail, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26d
    .catchall {:try_start_257 .. :try_end_26d} :catchall_277

    .line 932
    :try_start_26d
    invoke-virtual {v2, v6}, Landroid/app/ActivityOptions;->setActiveApplaunch(Z)V

    .line 933
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_273
    .catch Ljava/lang/RuntimeException; {:try_start_26d .. :try_end_273} :catch_500
    .catchall {:try_start_26d .. :try_end_273} :catchall_4e2

    .line 1090
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    return v4

    .line 932
    :catchall_277
    :try_start_277
    invoke-virtual {v2, v6}, Landroid/app/ActivityOptions;->setActiveApplaunch(Z)V

    .line 933
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_27d
    .catch Ljava/lang/RuntimeException; {:try_start_277 .. :try_end_27d} :catch_500
    .catchall {:try_start_277 .. :try_end_27d} :catchall_4e2

    .line 1090
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    return v6

    :cond_281
    if-eqz v2, :cond_320

    .line 936
    :try_start_283
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->isMlLaunch()I

    move-result v8

    if-le v8, v5, :cond_320

    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v8, v8, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_320

    .line 938
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7
    :try_end_293
    .catch Ljava/lang/RuntimeException; {:try_start_283 .. :try_end_293} :catch_500
    .catchall {:try_start_283 .. :try_end_293} :catchall_4e2

    .line 940
    :try_start_293
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_298
    .catch Ljava/lang/Exception; {:try_start_293 .. :try_end_298} :catch_2f2
    .catchall {:try_start_293 .. :try_end_298} :catchall_316

    :try_start_298
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const-string v9, "ActivityTaskManager"

    .line 941
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[SecIpm] intent received, starting preload launch:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v11, v11, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    iget-object v11, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v9, v9, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v9, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v13, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v16, "IpmLaunch"

    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v10, v10, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v4, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x0

    .line 945
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->isMlLaunch()I

    move-result v19

    move-object/from16 v17, v9

    .line 942
    invoke-virtual/range {v11 .. v19}, Lcom/android/server/wm/ActivityTaskManagerService;->startProcessAsyncForActiveLaunch(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZZLjava/lang/String;Landroid/content/ComponentName;ZI)V

    .line 947
    monitor-exit v3
    :try_end_2de
    .catchall {:try_start_298 .. :try_end_2de} :catchall_2eb

    :try_start_2de
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2e1
    .catch Ljava/lang/Exception; {:try_start_2de .. :try_end_2e1} :catch_2f2
    .catchall {:try_start_2de .. :try_end_2e1} :catchall_316

    .line 952
    :try_start_2e1
    invoke-virtual {v2, v5}, Landroid/app/ActivityOptions;->setMlLaunch(I)V

    .line 953
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2e7
    .catch Ljava/lang/RuntimeException; {:try_start_2e1 .. :try_end_2e7} :catch_500
    .catchall {:try_start_2e1 .. :try_end_2e7} :catchall_4e2

    .line 1090
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    return v6

    :catchall_2eb
    move-exception v0

    move-object v4, v0

    .line 947
    :try_start_2ed
    monitor-exit v3
    :try_end_2ee
    .catchall {:try_start_2ed .. :try_end_2ee} :catchall_2eb

    :try_start_2ee
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v4
    :try_end_2f2
    .catch Ljava/lang/Exception; {:try_start_2ee .. :try_end_2f2} :catch_2f2
    .catchall {:try_start_2ee .. :try_end_2f2} :catchall_316

    :catch_2f2
    move-exception v0

    move-object v3, v0

    :try_start_2f4
    const-string v4, "ActivityTaskManager"

    .line 949
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[SecIpm] Launching Fail, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30a
    .catchall {:try_start_2f4 .. :try_end_30a} :catchall_316

    .line 952
    :try_start_30a
    invoke-virtual {v2, v5}, Landroid/app/ActivityOptions;->setMlLaunch(I)V

    .line 953
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_310
    .catch Ljava/lang/RuntimeException; {:try_start_30a .. :try_end_310} :catch_500
    .catchall {:try_start_30a .. :try_end_310} :catchall_4e2

    .line 1090
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    const/16 v1, -0x60

    return v1

    .line 952
    :catchall_316
    :try_start_316
    invoke-virtual {v2, v5}, Landroid/app/ActivityOptions;->setMlLaunch(I)V

    .line 953
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_31c
    .catch Ljava/lang/RuntimeException; {:try_start_316 .. :try_end_31c} :catch_500
    .catchall {:try_start_316 .. :try_end_31c} :catchall_4e2

    .line 1090
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    return v6

    .line 962
    :cond_320
    :try_start_320
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_34d

    .line 963
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 964
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    if-eqz v2, :cond_34d

    if-eqz v4, :cond_34d

    const-string v8, "com.android.internal.intent.action.REQUEST_SHUTDOWN"

    .line 966
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_34a

    const-string v8, "android.intent.action.ACTION_SHUTDOWN"

    .line 967
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_34a

    const-string v8, "android.intent.action.REBOOT"

    .line 968
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_34d

    .line 969
    :cond_34a
    invoke-static {v2, v4, v7}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    :cond_34d
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_3a6

    .line 975
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 977
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    if-ne v4, v5, :cond_36a

    .line 979
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    goto :goto_36e

    .line 981
    :cond_36a
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    :goto_36e
    if-eq v4, v2, :cond_387

    if-nez v4, :cond_378

    .line 983
    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v5

    if-nez v5, :cond_380

    :cond_378
    if-nez v2, :cond_387

    .line 984
    invoke-static {v4}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-eqz v2, :cond_387

    .line 985
    :cond_380
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-static {v2, v4}, Lcom/android/server/DualAppManagerService;->changeUriForDualApp(Landroid/content/Intent;I)V

    .line 988
    :cond_387
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-eqz v2, :cond_3a6

    .line 989
    invoke-static {v4}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-nez v2, :cond_3a6

    .line 990
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v8, v5, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget v9, v5, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    invoke-static {v2, v8, v4, v9, v5}, Lcom/android/server/DualAppManagerService;->recordDaUsageCount(Landroid/content/Context;Landroid/content/Intent;IILjava/lang/String;)V

    .line 995
    :cond_3a6
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_3dc

    const-string v4, "android.intent.action.DELETE"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c8

    const-string v2, "android.intent.action.UNINSTALL_PACKAGE"

    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 996
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3dc

    .line 997
    :cond_3c8
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v5, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget v9, v2, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    iget-object v10, v2, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    invoke-static {v4, v5, v8, v9, v10}, Lcom/android/server/DualAppManagerService;->changeInfoIfDeletingDualApp(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;ILjava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1003
    :cond_3dc
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_3e1
    .catch Ljava/lang/RuntimeException; {:try_start_320 .. :try_end_3e1} :catch_500
    .catchall {:try_start_320 .. :try_end_3e1} :catchall_4e2

    :try_start_3e1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1004
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    if-eqz v4, :cond_3fc

    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1005
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v4

    if-eqz v4, :cond_3fc

    move v4, v14

    goto :goto_3fd

    :cond_3fc
    move v4, v6

    .line 1006
    :goto_3fd
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_407

    .line 1008
    iput-boolean v4, v5, Lcom/android/server/wm/Task;->mConfigWillChange:Z

    .line 1010
    :cond_407
    sget-boolean v8, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    const/4 v15, 0x3

    if-eqz v8, :cond_41c

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x58fb9093

    new-array v10, v14, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-static {v8, v9, v15, v7, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1013
    :cond_41c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1015
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->resolveToHeavyWeightSwitcherIfNeeded()I

    move-result v10

    if-eqz v10, :cond_42e

    .line 1017
    monitor-exit v2
    :try_end_427
    .catchall {:try_start_3e1 .. :try_end_427} :catchall_4d4

    .line 1090
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    return v10

    .line 1022
    :cond_42e
    :try_start_42e
    iget-object v10, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v10, v10, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-static {v10}, Lcom/android/server/am/Pageboost;->onAppLaunch(Landroid/content/Intent;)V

    .line 1026
    iget-object v10, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v1, v10}, Lcom/android/server/wm/ActivityStarter;->executeRequest(Lcom/android/server/wm/ActivityStarter$Request;)I

    move-result v13

    .line 1030
    invoke-static {}, Lcom/android/server/am/Pageboost;->stopActiveLaunch()V

    .line 1034
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v4, :cond_468

    .line 1041
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v8, "android.permission.CHANGE_CONFIGURATION"

    const-string/jumbo v9, "updateConfiguration()"

    invoke-virtual {v4, v8, v9}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_453

    .line 1045
    iput-boolean v6, v5, Lcom/android/server/wm/Task;->mConfigWillChange:Z

    .line 1047
    :cond_453
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    if-eqz v4, :cond_45f

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x6f5827a0

    invoke-static {v4, v5, v6, v7, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1050
    :cond_45f
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v4, v5, v7, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z

    .line 1055
    :cond_468
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    if-eqz v4, :cond_473

    .line 1056
    invoke-virtual {v4}, Lcom/android/server/wm/SafeActivityOptions;->getOriginalOptions()Landroid/app/ActivityOptions;

    move-result-object v4

    goto :goto_474

    :cond_473
    move-object v4, v7

    .line 1058
    :goto_474
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v7, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne v5, v7, :cond_47c

    move v11, v14

    goto :goto_47d

    :cond_47c
    move v11, v6

    .line 1062
    :goto_47d
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v8

    iget-object v12, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    move-object v9, v3

    move v10, v13

    move v5, v13

    move-object v13, v4

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;IZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    .line 1064
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    if-eqz v4, :cond_49b

    .line 1065
    iput v5, v4, Landroid/app/WaitResult;->result:I

    .line 1066
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v4, v5, v3}, Lcom/android/server/wm/ActivityStarter;->waitResultIfNeeded(Landroid/app/WaitResult;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)I

    move-result v13

    goto :goto_49c

    :cond_49b
    move v13, v5

    :goto_49c
    if-eqz v13, :cond_4c8

    if-eq v13, v14, :cond_4c8

    const/4 v3, 0x2

    if-eq v13, v3, :cond_4c8

    if-eq v13, v15, :cond_4c8

    const-string v3, "ActivityTaskManager"

    .line 1073
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startActivity: reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    :cond_4c8
    invoke-static {v13}, Lcom/android/server/wm/ActivityStarter;->getExternalResult(I)I

    move-result v3

    monitor-exit v2
    :try_end_4cd
    .catchall {:try_start_42e .. :try_end_4cd} :catchall_4d4

    .line 1090
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    return v3

    :catchall_4d4
    move-exception v0

    move-object v3, v0

    .line 1077
    :try_start_4d6
    monitor-exit v2
    :try_end_4d7
    .catchall {:try_start_4d6 .. :try_end_4d7} :catchall_4d4

    :try_start_4d7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_4db
    .catch Ljava/lang/RuntimeException; {:try_start_4d7 .. :try_end_4db} :catch_500
    .catchall {:try_start_4d7 .. :try_end_4db} :catchall_4e2

    :catchall_4db
    move-exception v0

    move-object v3, v0

    .line 807
    :try_start_4dd
    monitor-exit v2
    :try_end_4de
    .catchall {:try_start_4dd .. :try_end_4de} :catchall_4db

    :try_start_4de
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_4e2
    .catch Ljava/lang/RuntimeException; {:try_start_4de .. :try_end_4e2} :catch_500
    .catchall {:try_start_4de .. :try_end_4e2} :catchall_4e2

    :catchall_4e2
    move-exception v0

    move-object v2, v0

    :try_start_4e4
    const-string v3, "ActivityTaskManager"

    .line 1085
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startActivity: reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1087
    throw v2

    :catch_500
    move-exception v0

    move-object v2, v0

    .line 1082
    throw v2
    :try_end_503
    .catchall {:try_start_4e4 .. :try_end_503} :catchall_503

    :catchall_503
    move-exception v0

    move-object v2, v0

    .line 1090
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 1091
    throw v2
.end method

.method public final executeRequest(Lcom/android/server/wm/ActivityStarter$Request;)I
    .registers 63

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    const-string/jumbo v0, "unknown"

    .line 1197
    iget-object v1, v14, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ac4

    .line 1200
    iget-object v1, v14, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    iput-object v1, v13, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    .line 1201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v13, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    const/4 v12, 0x0

    .line 1202
    iput-object v12, v13, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1204
    iget-object v1, v14, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 1205
    iget-object v11, v14, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 1206
    iget-object v10, v14, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 1207
    iget-object v9, v14, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 1208
    iget-object v8, v14, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1209
    iget-object v15, v14, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 1210
    iget-object v7, v14, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 1211
    iget-object v6, v14, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 1212
    iget-object v5, v14, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 1213
    iget v4, v14, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 1214
    iget v2, v14, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 1215
    iget v3, v14, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 1216
    iget-object v12, v14, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1217
    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    move-object/from16 v17, v12

    .line 1218
    iget v12, v14, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    move-object/from16 v29, v10

    .line 1219
    iget v10, v14, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    move/from16 v30, v10

    .line 1220
    iget v10, v14, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    move/from16 v31, v10

    .line 1221
    iget-object v10, v14, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    move-object/from16 v18, v15

    .line 1222
    iget-object v15, v14, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    move-object/from16 v19, v15

    .line 1223
    iget-object v15, v14, Lcom/android/server/wm/ActivityStarter$Request;->inTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-eqz v10, :cond_5d

    .line 1228
    invoke-virtual {v10}, Lcom/android/server/wm/SafeActivityOptions;->popAppVerificationBundle()Landroid/os/Bundle;

    move-result-object v20

    move-object/from16 v32, v20

    move-object/from16 v20, v15

    goto :goto_61

    :cond_5d
    move-object/from16 v20, v15

    const/16 v32, 0x0

    :goto_61
    const-string v15, "ActivityTaskManager"

    if-eqz v1, :cond_af

    .line 1232
    iget-object v14, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v14, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v14

    if-eqz v14, :cond_79

    .line 1234
    invoke-virtual {v14}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v2

    .line 1235
    iget-object v1, v14, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v22, v0

    const/4 v0, 0x0

    goto :goto_a9

    :cond_79
    move-object/from16 v22, v0

    .line 1237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v3

    const-string v3, "Unable to find app for caller "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") when starting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1238
    invoke-virtual {v11}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1237
    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5e

    move/from16 v3, v23

    :goto_a9
    move-object/from16 v60, v14

    move v14, v2

    move-object/from16 v2, v60

    goto :goto_b6

    :cond_af
    move-object/from16 v22, v0

    move/from16 v23, v3

    move v14, v2

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_b6
    const-string v1, ""

    if-nez v0, :cond_f5

    .line 1248
    :try_start_ba
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1249
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_c3} :catch_cd
    .catch Ljava/lang/OutOfMemoryError; {:try_start_ba .. :try_end_c3} :catch_cd

    if-eqz v0, :cond_c9

    .line 1251
    :try_start_c5
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_c9} :catch_ce
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c5 .. :try_end_c9} :catch_ce

    :cond_c9
    move-object/from16 v16, v0

    move-object v0, v1

    goto :goto_d4

    :catch_cd
    const/4 v0, 0x0

    :catch_ce
    move-object/from16 v60, v16

    move-object/from16 v16, v0

    move-object/from16 v0, v60

    :goto_d4
    move-object/from16 v1, p0

    move-object/from16 v33, v2

    move-object v2, v11

    move/from16 v34, v14

    move v14, v3

    move-object v3, v8

    move/from16 v23, v4

    move v4, v12

    move-object/from16 v24, v5

    move-object v5, v10

    move/from16 v35, v12

    move-object v12, v6

    move-object/from16 v6, v16

    move-object/from16 v36, v7

    move-object v7, v0

    .line 1258
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ActivityStarter;->checkStartActivityAllowedByEDM(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;ILcom/android/server/wm/SafeActivityOptions;Landroid/content/ComponentName;Ljava/lang/String;)I

    move-result v1

    move/from16 v60, v1

    move-object v1, v0

    move/from16 v0, v60

    goto :goto_103

    :cond_f5
    move-object/from16 v33, v2

    move/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v36, v7

    move/from16 v35, v12

    move/from16 v34, v14

    move v14, v3

    move-object v12, v6

    :goto_103
    if-eqz v8, :cond_111

    .line 1262
    iget-object v2, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_111

    .line 1263
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    move v7, v2

    goto :goto_112

    :cond_111
    const/4 v7, 0x0

    :goto_112
    const-string/jumbo v6, "} from uid "

    const-string v5, " {"

    const-string v4, "START u"

    const/4 v3, 0x1

    if-nez v0, :cond_144

    .line 1265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v37, v4

    move-object/from16 v38, v5

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v3, v3, v4}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_149

    :cond_144
    move-object/from16 v37, v4

    move-object/from16 v38, v5

    const/4 v4, 0x0

    :goto_149
    if-eqz v12, :cond_17c

    .line 1272
    invoke-static {v12}, Lcom/android/server/wm/ActivityRecord;->isInAnyTask(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1273
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    if-eqz v5, :cond_16f

    .line 1274
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Will send result to "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16f
    if-eqz v2, :cond_179

    if-ltz v23, :cond_179

    .line 1277
    iget-boolean v4, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v4, :cond_179

    move-object v12, v2

    goto :goto_17e

    :cond_179
    move-object v12, v2

    const/4 v2, 0x0

    goto :goto_17e

    :cond_17c
    const/4 v2, 0x0

    const/4 v12, 0x0

    .line 1283
    :goto_17e
    invoke-virtual {v11}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x2000000

    and-int/2addr v5, v4

    if-eqz v5, :cond_1c8

    if-eqz v12, :cond_1c8

    if-ltz v23, :cond_191

    .line 1288
    invoke-static {v10}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    const/16 v0, -0x5d

    return v0

    .line 1291
    :cond_191
    iget-object v2, v12, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_19c

    .line 1292
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked()Z

    move-result v5

    if-nez v5, :cond_19c

    const/4 v2, 0x0

    .line 1295
    :cond_19c
    iget-object v5, v12, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 1296
    iget v3, v12, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    move-object/from16 v40, v6

    const/4 v6, 0x0

    .line 1297
    iput-object v6, v12, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_1aa

    .line 1299
    invoke-virtual {v2, v12, v5, v3}, Lcom/android/server/wm/ActivityRecord;->removeResultsLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V

    .line 1301
    :cond_1aa
    iget v6, v12, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    if-ne v6, v14, :cond_1bc

    .line 1312
    iget-object v6, v12, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v16, v2

    .line 1313
    iget-object v2, v12, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    move/from16 v50, v3

    move-object v3, v6

    move-object v6, v2

    move-object v2, v5

    move-object/from16 v5, v16

    goto :goto_1d3

    :cond_1bc
    move-object/from16 v16, v2

    move/from16 v50, v3

    move-object v2, v5

    move-object/from16 v5, v16

    move-object/from16 v3, v17

    move-object/from16 v6, v22

    goto :goto_1d3

    :cond_1c8
    move-object/from16 v40, v6

    move-object v5, v2

    move-object/from16 v3, v17

    move-object/from16 v6, v22

    move/from16 v50, v23

    move-object/from16 v2, v24

    :goto_1d3
    if-nez v0, :cond_1dd

    .line 1317
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    if-nez v16, :cond_1dd

    const/16 v0, -0x5b

    :cond_1dd
    if-nez v0, :cond_1e3

    if-nez v8, :cond_1e3

    const/16 v0, -0x5c

    :cond_1e3
    move-object/from16 v41, v6

    const-string v6, "Failure checking voice capabilities"

    const/16 v16, -0x61

    if-nez v0, :cond_239

    if-eqz v12, :cond_239

    move/from16 v17, v0

    .line 1330
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_23b

    const/high16 v0, 0x10000000

    and-int/2addr v0, v4

    if-nez v0, :cond_23b

    .line 1335
    iget-object v0, v12, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v4, :cond_23b

    :try_start_208
    const-string v0, "android.intent.category.VOICE"

    .line 1338
    invoke-virtual {v11, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1339
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1340
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 1339
    invoke-interface {v0, v4, v11, v9}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23b

    .line 1341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity being started in current voice task does not support voice: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_231
    .catch Landroid/os/RemoteException; {:try_start_208 .. :try_end_231} :catch_232

    goto :goto_236

    :catch_232
    move-exception v0

    .line 1346
    invoke-static {v15, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_236
    move/from16 v0, v16

    goto :goto_23d

    :cond_239
    move/from16 v17, v0

    :cond_23b
    move/from16 v0, v17

    :goto_23d
    if-nez v0, :cond_26d

    if-eqz v36, :cond_26d

    .line 1356
    :try_start_241
    iget-object v4, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    move/from16 v17, v0

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-interface {v4, v0, v11, v9}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26f

    .line 1358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity being started in new voice task does not support: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_267
    .catch Landroid/os/RemoteException; {:try_start_241 .. :try_end_267} :catch_268

    goto :goto_271

    :catch_268
    move-exception v0

    .line 1363
    invoke-static {v15, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_271

    :cond_26d
    move/from16 v17, v0

    :cond_26f
    move/from16 v16, v17

    :goto_271
    if-nez v5, :cond_276

    const/16 v28, 0x0

    goto :goto_27c

    .line 1369
    :cond_276
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    move-object/from16 v28, v0

    :goto_27c
    const-string v0, "Start activity "

    if-eqz v16, :cond_2be

    if-eqz v5, :cond_293

    const/16 v23, -0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v22, v5

    move-object/from16 v24, v2

    move/from16 v25, v50

    .line 1373
    invoke-virtual/range {v22 .. v28}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V

    .line 1376
    :cond_293
    invoke-static {v10}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    const/16 v37, 0x5

    const/16 v38, 0x5

    const/16 v39, 0x0

    .line 1380
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v40

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " failed"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    const-string v41, "ActivityStarter"

    const-string v43, ""

    move/from16 v44, v7

    .line 1379
    invoke-static/range {v37 .. v44}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return v16

    .line 1388
    :cond_2be
    iget-object v4, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    move-object/from16 v51, v12

    move-object/from16 v12, p1

    iget-boolean v6, v12, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    move-object/from16 v53, v15

    move-object/from16 v43, v18

    move-object/from16 v44, v19

    move-object/from16 v52, v20

    if-eqz v19, :cond_2d3

    const/16 v25, 0x1

    goto :goto_2d5

    :cond_2d3
    const/16 v25, 0x0

    :goto_2d5
    move-object v15, v4

    move-object/from16 v16, v11

    move-object/from16 v17, v8

    move-object/from16 v18, v2

    move/from16 v19, v50

    move/from16 v20, v34

    move/from16 v21, v14

    move-object/from16 v22, v3

    move-object/from16 v23, v41

    move/from16 v24, v6

    move-object/from16 v26, v33

    move-object/from16 v27, v5

    invoke-virtual/range {v15 .. v28}, Lcom/android/server/wm/ActivityTaskSupervisor;->checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZZLcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    move-result v4

    const/4 v6, 0x1

    xor-int/lit8 v15, v4, 0x1

    .line 1392
    iget-object v4, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    move-object/from16 v16, v1

    iget-object v1, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v2

    move-object v2, v4

    move-object v4, v3

    move-object v3, v11

    move-object v12, v4

    move-object/from16 v54, v37

    move v4, v14

    move-object/from16 v55, v5

    move-object/from16 v56, v38

    move/from16 v5, v34

    move-object/from16 v17, v8

    move-object/from16 v57, v40

    move-object/from16 v26, v41

    move v8, v6

    move-object v6, v9

    move/from16 v58, v7

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    xor-int/2addr v1, v8

    or-int/2addr v1, v15

    .line 1394
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getPermissionPolicyInternal()Lcom/android/server/policy/PermissionPolicyInternal;

    move-result-object v2

    invoke-virtual {v2, v11, v14, v12}, Lcom/android/server/policy/PermissionPolicyInternal;->checkStartActivity(Landroid/content/Intent;ILjava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, v8

    or-int v15, v1, v2

    if-eqz v10, :cond_336

    .line 1399
    iget-object v1, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    move-object/from16 v7, v17

    move-object/from16 v6, v33

    invoke-virtual {v10, v11, v7, v6, v1}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v1

    move-object v10, v1

    goto :goto_33b

    :cond_336
    move-object/from16 v7, v17

    move-object/from16 v6, v33

    const/4 v10, 0x0

    :goto_33b
    if-nez v15, :cond_38f

    const-wide/16 v4, 0x20

    :try_start_33f
    const-string/jumbo v1, "shouldAbortBackgroundActivityStart"

    .line 1404
    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object v3, v12

    move-object/from16 v12, p1

    .line 1406
    iget-object v2, v12, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    iget-boolean v1, v12, Lcom/android/server/wm/ActivityStarter$Request;->allowBackgroundActivityStart:Z
    :try_end_34c
    .catchall {:try_start_33f .. :try_end_34c} :catchall_388

    move-object/from16 v59, v16

    move/from16 v16, v1

    move-object/from16 v1, p0

    move-object/from16 v17, v2

    move v2, v14

    move-object/from16 v27, v3

    move/from16 v3, v34

    move-wide/from16 v18, v4

    move-object/from16 v4, v27

    move/from16 v5, v30

    move-object/from16 v28, v6

    move/from16 v6, v35

    move-object/from16 v20, v7

    move-object/from16 v7, v28

    move/from16 v33, v14

    move-object/from16 v14, v20

    move/from16 v20, v15

    move v15, v8

    move-object/from16 v8, v17

    move-object/from16 v37, v9

    move/from16 v9, v16

    move-object/from16 v17, v10

    move-object/from16 v16, v29

    move-object v10, v11

    move-object/from16 v29, v11

    move-object/from16 v11, v17

    :try_start_37d
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/wm/ActivityStarter;->shouldAbortBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLandroid/content/Intent;Landroid/app/ActivityOptions;)Z

    move-result v1
    :try_end_381
    .catchall {:try_start_37d .. :try_end_381} :catchall_386

    .line 1411
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    move v11, v1

    goto :goto_3a6

    :catchall_386
    move-exception v0

    goto :goto_38b

    :catchall_388
    move-exception v0

    move-wide/from16 v18, v4

    :goto_38b
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 1412
    throw v0

    :cond_38f
    move-object/from16 v28, v6

    move-object/from16 v37, v9

    move-object/from16 v17, v10

    move-object/from16 v27, v12

    move/from16 v33, v14

    move/from16 v20, v15

    move-object/from16 v59, v16

    move-object/from16 v16, v29

    move-object/from16 v12, p1

    move-object v14, v7

    move v15, v8

    move-object/from16 v29, v11

    const/4 v11, 0x0

    .line 1415
    :goto_3a6
    iget-boolean v1, v12, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    if-eqz v1, :cond_3bd

    .line 1416
    iget-object v1, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    .line 1417
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStartController;->getPendingRemoteAnimationRegistry()Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    move-result-object v1

    move-object/from16 v2, v17

    move-object/from16 v10, v27

    .line 1418
    invoke-virtual {v1, v10, v2}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->overrideOptionsIfNeeded(Ljava/lang/String;Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    move-result-object v1

    goto :goto_3c2

    :cond_3bd
    move-object/from16 v2, v17

    move-object/from16 v10, v27

    move-object v1, v2

    .line 1420
    :goto_3c2
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v2, :cond_3e3

    .line 1424
    :try_start_3c8
    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v2

    .line 1425
    iget-object v3, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    iget-object v4, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v2
    :try_end_3d8
    .catch Landroid/os/RemoteException; {:try_start_3c8 .. :try_end_3d8} :catch_3de

    xor-int/2addr v2, v15

    or-int v2, v20, v2

    move/from16 v27, v2

    goto :goto_3e5

    .line 1428
    :catch_3de
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    :cond_3e3
    move/from16 v27, v20

    .line 1434
    :goto_3e5
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    move-object/from16 v17, v2

    move/from16 v18, v58

    move/from16 v19, v35

    move/from16 v20, v30

    move/from16 v21, v31

    move-object/from16 v22, v10

    move-object/from16 v23, v26

    move-object/from16 v24, v51

    invoke-virtual/range {v17 .. v24}, Lcom/android/server/wm/ActivityStartInterceptor;->setStates(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;)V

    .line 1441
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    move-object/from16 v3, v29

    move-object/from16 v4, v43

    move-object v5, v14

    move-object/from16 v6, v37

    move-object/from16 v7, v44

    move/from16 v8, v34

    move/from16 v9, v33

    move-object/from16 v17, v10

    move-object v10, v1

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/wm/ActivityStartInterceptor;->intercept(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/wm/Task;IILandroid/app/ActivityOptions;)Z

    move-result v2

    if-eqz v2, :cond_42f

    .line 1445
    iget-object v1, v13, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v2, v1, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 1446
    iget-object v3, v1, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 1447
    iget-object v8, v1, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 1448
    iget-object v9, v1, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 1449
    iget-object v4, v1, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/Task;

    .line 1450
    iget v14, v1, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 1451
    iget v5, v1, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 1452
    iget-object v1, v1, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    move-object/from16 v29, v2

    move-object v10, v4

    move/from16 v41, v5

    move-object/from16 v37, v9

    const/16 v16, 0x0

    move-object v9, v1

    goto :goto_439

    :cond_42f
    move-object v9, v1

    move-object v8, v14

    move/from16 v41, v33

    move/from16 v14, v34

    move-object/from16 v3, v43

    move-object/from16 v10, v44

    :goto_439
    if-eqz v27, :cond_47f

    move-object/from16 v7, v55

    if-eqz v7, :cond_450

    const/16 v23, -0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v22, v7

    move-object/from16 v24, v25

    move/from16 v25, v50

    .line 1461
    invoke-virtual/range {v22 .. v28}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V

    .line 1466
    :cond_450
    invoke-static {v9}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    const/16 v37, 0x5

    const/16 v38, 0x5

    const/16 v39, 0x1

    .line 1470
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v40

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v59

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " succeeded"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    const-string v41, "ActivityStarter"

    const-string v43, ""

    move/from16 v44, v58

    .line 1469
    invoke-static/range {v37 .. v44}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x66

    return v0

    :cond_47f
    move-object/from16 v7, v55

    const-string v0, "android.intent.extra.RESULT_NEEDED"

    const-string v2, "android.intent.extra.INTENT"

    const-string v4, "android.intent.extra.PACKAGE_NAME"

    if-eqz v8, :cond_583

    .line 1482
    iget-object v6, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v6

    iget-object v1, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move/from16 v5, v58

    invoke-virtual {v6, v1, v5}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_578

    .line 1484
    iget-object v1, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/16 v38, 0x2

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    new-array v3, v15, [Landroid/content/Intent;

    const/4 v6, 0x0

    aput-object v29, v3, v6

    new-array v14, v15, [Ljava/lang/String;

    aput-object v37, v14, v6

    const/high16 v48, 0x50000000

    const/16 v49, 0x0

    move-object/from16 v37, v1

    move-object/from16 v39, v17

    move-object/from16 v40, v26

    move/from16 v42, v5

    move-object/from16 v46, v3

    move-object/from16 v47, v14

    invoke-virtual/range {v37 .. v49}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 1490
    new-instance v3, Landroid/content/Intent;

    const-string v14, "android.intent.action.REVIEW_PERMISSIONS"

    invoke-direct {v3, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1492
    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->getFlags()I

    move-result v14

    const/high16 v16, 0x800000

    or-int v14, v14, v16

    const/high16 v16, 0x10080000

    and-int v16, v14, v16

    if-eqz v16, :cond_4d9

    const/high16 v16, 0x8000000

    or-int v14, v14, v16

    .line 1507
    :cond_4d9
    invoke-virtual {v3, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1509
    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1510
    new-instance v8, Landroid/content/IntentSender;

    invoke-direct {v8, v1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    invoke-virtual {v3, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz v7, :cond_4ee

    .line 1512
    invoke-virtual {v3, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_4ee
    const/4 v1, 0x0

    .line 1524
    iget-object v8, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/16 v41, 0x0

    iget v14, v12, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    move/from16 v6, v30

    .line 1525
    invoke-static {v6, v6, v14}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v42

    move-object/from16 v37, v8

    move-object/from16 v38, v3

    move-object/from16 v39, v1

    move/from16 v40, v5

    .line 1524
    invoke-virtual/range {v37 .. v42}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 1527
    iget-object v14, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    move/from16 v15, v31

    const/4 v1, 0x0

    invoke-virtual {v14, v3, v8, v15, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v14

    .line 1530
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    if-eqz v1, :cond_55f

    .line 1531
    iget-object v1, v13, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1532
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    move-object/from16 v22, v8

    .line 1533
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v14

    move-object/from16 v14, v54

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v14, v56

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v24, v10

    move/from16 v27, v11

    const/4 v10, 0x1

    const/4 v14, 0x0

    invoke-virtual {v3, v10, v10, v10, v14}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, v57

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " on display "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_54e

    const/4 v14, 0x0

    goto :goto_552

    .line 1536
    :cond_54e
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v14

    :goto_552
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v10, v53

    .line 1533
    invoke-static {v10, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_569

    :cond_55f
    move-object/from16 v22, v8

    move-object/from16 v24, v10

    move/from16 v27, v11

    move-object/from16 v23, v14

    move-object/from16 v10, v53

    :goto_569
    move-object/from16 v29, v3

    move/from16 v41, v6

    move-object/from16 v3, v22

    move-object/from16 v8, v23

    move/from16 v14, v35

    const/16 v16, 0x0

    const/16 v37, 0x0

    goto :goto_58f

    :cond_578
    move-object/from16 v24, v10

    move/from16 v27, v11

    move/from16 v6, v30

    move/from16 v15, v31

    move-object/from16 v10, v53

    goto :goto_58f

    :cond_583
    move-object/from16 v24, v10

    move/from16 v27, v11

    move/from16 v6, v30

    move/from16 v15, v31

    move-object/from16 v10, v53

    move/from16 v5, v58

    .line 1542
    :goto_58f
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SM_SUPPORT_RISK_CONTROL:Z

    const-string v11, " className:"

    const/high16 v22, 0x100000

    if-eqz v1, :cond_719

    .line 1543
    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int v1, v1, v22

    move-object/from16 v23, v3

    if-eqz v1, :cond_5a3

    const/4 v1, 0x1

    goto :goto_5a4

    :cond_5a3
    const/4 v1, 0x0

    .line 1544
    :goto_5a4
    iget-object v3, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-eqz v8, :cond_71b

    move/from16 v30, v14

    .line 1545
    iget-object v14, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v14, :cond_714

    move-object/from16 v12, v17

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_70d

    iget-object v14, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v14, v14, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    move-object/from16 v17, v0

    iget-object v0, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1546
    invoke-virtual {v14, v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->isSmRccPkg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70f

    if-nez v1, :cond_70f

    .line 1548
    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_70f

    if-eqz v3, :cond_5d8

    .line 1549
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-nez v0, :cond_70f

    .line 1550
    :cond_5d8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmRcc pkgName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " callingPackage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v1, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->isSmRccOpen(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_615

    .line 1552
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v1, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->resetSmRccOpen(Ljava/lang/String;)V

    goto/16 :goto_70f

    .line 1554
    :cond_615
    new-instance v0, Landroid/content/Intent;

    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1555
    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1557
    iget-object v1, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/16 v38, 0x2

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/4 v3, 0x1

    new-array v14, v3, [Landroid/content/Intent;

    const/16 v21, 0x0

    aput-object v29, v14, v21

    move-object/from16 v31, v11

    new-array v11, v3, [Ljava/lang/String;

    aput-object v37, v11, v21

    const/high16 v48, 0x50000000

    const/16 v49, 0x0

    move-object/from16 v37, v1

    move-object/from16 v39, v12

    move-object/from16 v40, v26

    move/from16 v42, v5

    move-object/from16 v46, v14

    move-object/from16 v47, v11

    invoke-virtual/range {v37 .. v49}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 1563
    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->getFlags()I

    move-result v3

    .line 1564
    iget-object v11, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v11, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {v11}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getSmRccAction()Ljava/lang/String;

    move-result-object v11

    .line 1565
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v19, 0x800000

    or-int v3, v3, v19

    const/high16 v18, 0x8000000

    or-int v3, v3, v18

    .line 1566
    invoke-virtual {v14, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1569
    iget-object v3, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1570
    new-instance v3, Landroid/content/IntentSender;

    invoke-direct {v3, v1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz v7, :cond_681

    const-string v1, "SM_RCC_EXTRA_RESULT_NEEDED"

    const/4 v3, 0x1

    .line 1572
    invoke-virtual {v14, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_681
    const-string v1, "SM_RCC_PACKAGE_INTENT"

    .line 1574
    invoke-virtual {v14, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "SM_RCC_PACKAGE_USERID"

    .line 1575
    invoke-virtual {v14, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-nez v9, :cond_68f

    const/4 v0, 0x0

    goto :goto_693

    .line 1576
    :cond_68f
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    :goto_693
    const-string v1, "SM_RCC_PACKAGE_OPTIONS"

    invoke-virtual {v14, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 1583
    invoke-static {v5}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_6b8

    .line 1584
    iget-object v1, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/16 v40, 0x0

    const/16 v41, 0x0

    iget-object v3, v13, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 1585
    invoke-static {v6, v6, v3}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v42

    move-object/from16 v37, v1

    move-object/from16 v38, v14

    move-object/from16 v39, v0

    .line 1584
    invoke-virtual/range {v37 .. v42}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    goto :goto_6d0

    .line 1588
    :cond_6b8
    iget-object v1, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/16 v41, 0x0

    iget-object v3, v13, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 1589
    invoke-static {v6, v6, v3}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v42

    const/16 v39, 0x0

    move-object/from16 v37, v1

    move-object/from16 v38, v14

    move/from16 v40, v5

    .line 1588
    invoke-virtual/range {v37 .. v42}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1592
    :goto_6d0
    iget-object v3, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    move-object/from16 v33, v8

    const/4 v8, 0x0

    invoke-virtual {v3, v14, v1, v15, v8}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    if-eqz v3, :cond_6ec

    .line 1594
    iget-object v8, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v8, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v37, v0

    move-object v8, v3

    move/from16 v41, v6

    move-object v0, v14

    move/from16 v14, v35

    move-object v3, v1

    goto :goto_72d

    .line 1599
    :cond_6ec
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmRcc can not resolve Activity , should never happen. Check Action "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v37, v0

    move/from16 v41, v6

    move-object/from16 v3, v23

    move-object/from16 v0, v29

    move-object/from16 v8, v33

    move/from16 v14, v35

    goto :goto_72d

    :cond_70d
    move-object/from16 v17, v0

    :cond_70f
    :goto_70f
    move-object/from16 v33, v8

    move-object/from16 v31, v11

    goto :goto_725

    :cond_714
    move-object/from16 v33, v8

    move-object/from16 v31, v11

    goto :goto_721

    :cond_719
    move-object/from16 v23, v3

    :cond_71b
    move-object/from16 v33, v8

    move-object/from16 v31, v11

    move/from16 v30, v14

    :goto_721
    move-object/from16 v12, v17

    move-object/from16 v17, v0

    :goto_725
    move-object/from16 v3, v23

    move-object/from16 v0, v29

    move/from16 v14, v30

    move-object/from16 v8, v33

    .line 1607
    :goto_72d
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    const-string v11, "LAUNCH_FROM_NOTIFICATION"

    if-eqz v1, :cond_927

    .line 1608
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int v1, v1, v22

    move-object/from16 v22, v3

    move/from16 v30, v14

    if-eqz v1, :cond_741

    const/4 v1, 0x1

    goto :goto_742

    :cond_741
    const/4 v1, 0x0

    :goto_742
    const/4 v3, -0x1

    .line 1609
    invoke-virtual {v0, v11, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    const/4 v3, 0x1

    if-eq v14, v3, :cond_756

    .line 1610
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v14, 0x4000000

    and-int/2addr v3, v14

    if-eqz v3, :cond_754

    goto :goto_756

    :cond_754
    const/4 v14, 0x0

    goto :goto_757

    :cond_756
    :goto_756
    const/4 v14, 0x1

    .line 1612
    :goto_757
    iget-object v3, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-eqz v3, :cond_777

    if-eqz v8, :cond_777

    move-object/from16 v33, v11

    iget-object v11, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v11, :cond_779

    iget-object v11, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1613
    invoke-virtual {v3, v11}, Lcom/android/internal/app/AppLockPolicy;->isActivityInExceptionList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_779

    iget-object v3, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1614
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_779

    const/4 v3, 0x0

    goto :goto_77a

    :cond_777
    move-object/from16 v33, v11

    :cond_779
    const/4 v3, 0x1

    .line 1617
    :goto_77a
    iget-object v11, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v11, v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v11

    if-eqz v8, :cond_92d

    move/from16 v34, v15

    .line 1618
    iget-object v15, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v15, :cond_923

    if-nez v14, :cond_923

    iget-object v14, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1619
    invoke-virtual {v14, v15}, Lcom/android/server/wm/ActivityTaskManagerService;->isAppLockedPackage(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_923

    iget-object v14, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v15, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/android/server/wm/ActivityTaskManagerService;->isAppLockedVerifying(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_923

    if-nez v1, :cond_923

    .line 1621
    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_7ac

    if-eqz v11, :cond_7b8

    .line 1622
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_7b8

    .line 1623
    :cond_7ac
    invoke-static {v5}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_923

    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportSSecure()Z

    move-result v1

    if-nez v1, :cond_923

    :cond_7b8
    if-eqz v3, :cond_923

    if-eqz v52, :cond_7c2

    .line 1624
    invoke-virtual/range {v52 .. v52}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v1

    if-nez v1, :cond_923

    .line 1625
    :cond_7c2
    iget-object v1, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v3, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v3, v0, v9, v12}, Lcom/android/internal/app/AppLockPolicy;->skipLockWhenStart(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/app/ActivityOptions;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7eb

    if-eqz v9, :cond_7eb

    .line 1639
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_7e2

    .line 1640
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_7e2

    const/4 v14, 0x1

    goto :goto_7e3

    :cond_7e2
    const/4 v14, 0x0

    :goto_7e3
    const-string v1, "intent is starting in pairWindowingMode, skip"

    .line 1641
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v14, :cond_7eb

    const/4 v3, 0x1

    .line 1646
    :cond_7eb
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AppLocked pkgName:"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v31

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " skipLockWhenStart:"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_923

    .line 1648
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1649
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1651
    iget-object v3, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/16 v38, 0x2

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/4 v11, 0x1

    new-array v14, v11, [Landroid/content/Intent;

    const/4 v15, 0x0

    aput-object v0, v14, v15

    move-object/from16 v53, v10

    new-array v10, v11, [Ljava/lang/String;

    aput-object v37, v10, v15

    const/high16 v48, 0x50000000

    const/16 v49, 0x0

    move-object/from16 v37, v3

    move-object/from16 v39, v12

    move-object/from16 v40, v26

    move/from16 v42, v5

    move-object/from16 v46, v14

    move-object/from16 v47, v10

    invoke-virtual/range {v37 .. v49}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v3

    .line 1657
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v10

    .line 1658
    iget-object v11, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v11}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppLockedCheckAction()Ljava/lang/String;

    move-result-object v11

    .line 1659
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v19, 0x800000

    or-int v10, v10, v19

    const/high16 v18, 0x8000000

    or-int v10, v10, v18

    .line 1660
    invoke-virtual {v14, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1663
    iget-object v10, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1664
    new-instance v4, Landroid/content/IntentSender;

    invoke-direct {v4, v3}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz v7, :cond_87e

    move-object/from16 v2, v17

    const/4 v3, 0x1

    .line 1666
    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_87e
    const-string v2, "LOCKED_PACKAGE_INTENT"

    .line 1668
    invoke-virtual {v14, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1669
    iget-object v1, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v2, "LOCKED_PACKAGE_NAME"

    invoke-virtual {v14, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "LOCKED_PACKAGE_USERID"

    .line 1670
    invoke-virtual {v14, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-nez v51, :cond_893

    move v1, v15

    goto :goto_897

    .line 1672
    :cond_893
    invoke-virtual/range {v51 .. v51}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v1

    :goto_897
    const-string v2, "LOCKED_APP_CAN_SHOW_WHEN_LOCKED"

    .line 1671
    invoke-virtual {v14, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-nez v9, :cond_8a0

    const/4 v1, 0x0

    goto :goto_8a4

    .line 1675
    :cond_8a0
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    :goto_8a4
    const-string v2, "LOCKED_PACKAGE_ACTIVITY_OPTIONS"

    invoke-virtual {v14, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.applock"

    .line 1676
    invoke-virtual {v14, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 1683
    invoke-static {v5}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-eqz v2, :cond_8ce

    .line 1684
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/16 v40, 0x0

    const/16 v41, 0x0

    iget-object v3, v13, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 1685
    invoke-static {v6, v6, v3}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v42

    move-object/from16 v37, v2

    move-object/from16 v38, v14

    move-object/from16 v39, v1

    .line 1684
    invoke-virtual/range {v37 .. v42}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    goto :goto_8e6

    .line 1688
    :cond_8ce
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/16 v41, 0x0

    iget-object v3, v13, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 1689
    invoke-static {v6, v6, v3}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v42

    const/16 v39, 0x0

    move-object/from16 v37, v2

    move-object/from16 v38, v14

    move/from16 v40, v5

    .line 1688
    invoke-virtual/range {v37 .. v42}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1692
    :goto_8e6
    iget-object v3, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    move/from16 v10, v34

    const/4 v4, 0x0

    invoke-virtual {v3, v14, v2, v10, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    if-eqz v3, :cond_904

    .line 1694
    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v0, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v37, v1

    move-object v8, v3

    move/from16 v41, v6

    move-object v0, v14

    move/from16 v30, v35

    move-object/from16 v11, v53

    move-object v14, v2

    goto :goto_932

    .line 1699
    :cond_904
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppLock can not resolve Activity , should never happen. Check Action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v11, v53

    invoke-static {v11, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v37, v1

    move/from16 v41, v6

    move-object/from16 v14, v22

    move/from16 v30, v35

    goto :goto_932

    :cond_923
    move-object v11, v10

    move/from16 v10, v34

    goto :goto_92f

    :cond_927
    move-object/from16 v22, v3

    move-object/from16 v33, v11

    move/from16 v30, v14

    :cond_92d
    move-object v11, v10

    move v10, v15

    :goto_92f
    const/4 v15, 0x0

    move-object/from16 v14, v22

    :goto_932
    if-eqz v14, :cond_968

    .line 1710
    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    if-eqz v2, :cond_968

    move-object v3, v12

    move-object/from16 v12, p1

    .line 1711
    iget-object v0, v12, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    move-object/from16 v1, p0

    move-object v8, v3

    move-object v3, v0

    move-object v4, v8

    move/from16 v21, v5

    move-object/from16 v5, v26

    move/from16 v17, v15

    move v15, v6

    move-object/from16 v6, v32

    move/from16 v30, v15

    move-object v15, v7

    move-object/from16 v7, v37

    move-object/from16 v53, v11

    move-object v11, v8

    move/from16 v8, v21

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/ActivityStarter;->createLaunchIntent(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 1721
    iget-object v1, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v14, v10, v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    move-object v1, v6

    move-object/from16 v16, v1

    move/from16 v2, v30

    move/from16 v3, v35

    goto :goto_979

    :cond_968
    move/from16 v21, v5

    move-object/from16 v53, v11

    move-object v11, v12

    move/from16 v17, v15

    const/4 v6, 0x0

    move-object/from16 v12, p1

    move-object v15, v7

    move/from16 v3, v30

    move-object/from16 v1, v37

    move/from16 v2, v41

    :goto_979
    if-nez v28, :cond_98a

    if-lez v35, :cond_98a

    .line 1726
    iget-object v4, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    move/from16 v5, v35

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v4

    if-eqz v4, :cond_98a

    goto :goto_98c

    :cond_98a
    move-object/from16 v4, v28

    .line 1731
    :goto_98c
    new-instance v5, Lcom/android/server/wm/ActivityRecord$Builder;

    iget-object v7, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v5, v7}, Lcom/android/server/wm/ActivityRecord$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 1732
    invoke-virtual {v5, v4}, Lcom/android/server/wm/ActivityRecord$Builder;->setCaller(Lcom/android/server/wm/WindowProcessController;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v5

    .line 1733
    invoke-virtual {v5, v3}, Lcom/android/server/wm/ActivityRecord$Builder;->setLaunchedFromPid(I)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v3

    .line 1734
    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityRecord$Builder;->setLaunchedFromUid(I)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v2

    .line 1735
    invoke-virtual {v2, v11}, Lcom/android/server/wm/ActivityRecord$Builder;->setLaunchedFromPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v2

    move-object/from16 v3, v26

    .line 1736
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord$Builder;->setLaunchedFromFeature(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v2

    .line 1737
    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityRecord$Builder;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v0

    .line 1738
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord$Builder;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v0

    .line 1739
    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivityRecord$Builder;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v0

    iget-object v1, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1740
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord$Builder;->setConfiguration(Landroid/content/res/Configuration;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v0

    .line 1741
    invoke-virtual {v0, v15}, Lcom/android/server/wm/ActivityRecord$Builder;->setResultTo(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v0

    move-object/from16 v5, v25

    .line 1742
    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityRecord$Builder;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v0

    move/from16 v3, v50

    .line 1743
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord$Builder;->setRequestCode(I)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v0

    iget-boolean v1, v12, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 1744
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord$Builder;->setComponentSpecified(Z)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v0

    if-eqz v36, :cond_9d9

    const/4 v14, 0x1

    goto :goto_9db

    :cond_9d9
    move/from16 v14, v17

    .line 1745
    :goto_9db
    invoke-virtual {v0, v14}, Lcom/android/server/wm/ActivityRecord$Builder;->setRootVoiceInteraction(Z)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v0

    .line 1746
    invoke-virtual {v0, v9}, Lcom/android/server/wm/ActivityRecord$Builder;->setActivityOptions(Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v0

    move-object/from16 v3, v51

    .line 1747
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord$Builder;->setSourceRecord(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v0

    .line 1748
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord$Builder;->build()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1750
    iput-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1753
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v1, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStartInterceptor;->hasAliasActivity(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_9fc

    const/4 v1, 0x1

    .line 1754
    iput-boolean v1, v2, Lcom/android/server/wm/ActivityRecord;->mIsAliasActivity:Z

    .line 1758
    :cond_9fc
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-nez v0, :cond_a06

    if-eqz v3, :cond_a06

    .line 1761
    iget-object v0, v3, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    iput-object v0, v2, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 1765
    :cond_a06
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    if-eqz v0, :cond_a4a

    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_a4a

    .line 1767
    :try_start_a0e
    new-instance v0, Landroid/content/Intent;

    iget-object v1, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v5, v33

    const/4 v1, -0x1

    .line 1768
    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a2b

    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1769
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0
    :try_end_a25
    .catch Ljava/lang/Exception; {:try_start_a0e .. :try_end_a25} :catch_a31

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a4a

    const/4 v1, 0x1

    .line 1773
    :cond_a2b
    :try_start_a2b
    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityRecord;->setLaunchingRequestFromNotification(Z)V
    :try_end_a2e
    .catch Ljava/lang/Exception; {:try_start_a2b .. :try_end_a2e} :catch_a2f

    goto :goto_a4b

    :catch_a2f
    move-exception v0

    goto :goto_a33

    :catch_a31
    move-exception v0

    const/4 v1, 0x1

    .line 1776
    :goto_a33
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while parsing intent but ignorable, was : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, v53

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4b

    :cond_a4a
    const/4 v1, 0x1

    .line 1783
    :goto_a4b
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-eqz v4, :cond_a62

    .line 1784
    iget-object v5, v4, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_a62

    .line 1785
    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1786
    iget v4, v4, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    move-object/from16 v39, v0

    move/from16 v40, v4

    goto :goto_a66

    :cond_a62
    move/from16 v40, v0

    move-object/from16 v39, v6

    .line 1789
    :goto_a66
    invoke-static {}, Lcom/android/server/am/BaseRestrictionMgr;->getInstance()Lcom/android/server/am/BaseRestrictionMgr;

    move-result-object v37

    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v42, 0x0

    const-string v41, "activity"

    move-object/from16 v38, v0

    move/from16 v43, v21

    move-object/from16 v44, v8

    invoke-virtual/range {v37 .. v44}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;)Z

    move-result v0

    if-eqz v0, :cond_a88

    const/16 v0, -0xc8

    return v0

    .line 1801
    :cond_a88
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_a98

    .line 1802
    iget-object v4, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    if-ne v4, v0, :cond_a98

    move v14, v1

    goto :goto_a9a

    :cond_a98
    move/from16 v14, v17

    :goto_a9a
    if-nez v27, :cond_aa3

    if-nez v14, :cond_aa3

    .line 1805
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->resumeAppSwitches()V

    .line 1808
    :cond_aa3
    iget-object v5, v12, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, v36

    move v6, v10

    move-object v8, v9

    move-object/from16 v9, v24

    move-object/from16 v10, v52

    move/from16 v11, v27

    move-object v14, v12

    move-object/from16 v12, v16

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/wm/ActivityStarter;->startActivityUnchecked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;ZLcom/android/server/uri/NeededUriGrants;)I

    move-result v0

    iput v0, v13, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    .line 1812
    iget-object v1, v14, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_ac3

    .line 1813
    iget-object v2, v13, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    aput-object v2, v1, v17

    :cond_ac3
    return v0

    .line 1198
    :cond_ac4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need to specify a reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getApplicationPolicy()Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;
    .registers 2

    .line 2019
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mApplicationPolicy:Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    if-nez v0, :cond_e

    .line 2020
    const-class v0, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mApplicationPolicy:Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    .line 2022
    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mApplicationPolicy:Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 1

    .line 4582
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method public final getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v10, p3

    .line 4477
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v1, :cond_cd

    .line 4478
    invoke-virtual {v1}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_cd

    .line 4479
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v1

    if-eqz v1, :cond_cd

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 4480
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    move-result v1

    .line 4481
    invoke-virtual {v0, v10, v1}, Lcom/android/server/wm/ActivityStarter;->canMoveTaskToBottomTask(Lcom/android/server/wm/Task;I)Z

    move-result v3

    if-eqz v10, :cond_34

    if-nez v3, :cond_34

    .line 4483
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getForceLaunchOverTargetTask()Z

    move-result v3

    if-eqz v3, :cond_cd

    :cond_34
    if-eq v1, v2, :cond_41

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_41

    .line 4487
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v1, v12, v13, v12}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_42

    :cond_41
    move-object v1, v13

    .line 4490
    :goto_42
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v2, :cond_4b

    .line 4491
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_4c

    :cond_4b
    move-object v2, v13

    :goto_4c
    const/4 v3, 0x5

    if-eqz v1, :cond_64

    .line 4492
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_64

    .line 4493
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v4

    if-nez v4, :cond_82

    iget v4, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityStarter;->isSavedFrontTask(I)Z

    move-result v4

    if-eqz v4, :cond_64

    goto :goto_82

    :cond_64
    if-eqz v2, :cond_81

    .line 4497
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    if-eq v1, v11, :cond_7c

    .line 4498
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    if-eq v1, v3, :cond_7c

    .line 4499
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-static {v1}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 4500
    :cond_7c
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_82

    :cond_81
    move-object v1, v13

    :cond_82
    :goto_82
    if-eqz v1, :cond_cd

    .line 4510
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v2

    if-eqz v2, :cond_97

    .line 4512
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0

    .line 4514
    :cond_97
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    if-eq v2, v11, :cond_9f

    if-ne v2, v3, :cond_cd

    :cond_9f
    if-nez p4, :cond_a9

    .line 4518
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 4519
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    move-object v14, v3

    goto :goto_ab

    :cond_a9
    move-object/from16 v14, p4

    .line 4521
    :goto_ab
    invoke-virtual {v14, v2}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 4522
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    move-object/from16 v15, p1

    invoke-virtual {v2, v15, v14, v10}, Lcom/android/server/wm/RootWindowContainer;->resolveActivityType(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;)I

    move-result v8

    .line 4524
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-eqz v1, :cond_d1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    move-object/from16 v2, p1

    move-object v3, v14

    move-object/from16 v4, p3

    move/from16 v7, p2

    .line 4526
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/LaunchParamsController$LaunchParams;IIZ)Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_d1

    return-object v1

    :cond_cd
    move-object/from16 v15, p1

    move-object/from16 v14, p4

    :cond_d1
    if-eqz v14, :cond_d9

    .line 4538
    invoke-virtual {v14}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v1

    if-nez v1, :cond_df

    :cond_d9
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-nez v1, :cond_df

    move v6, v11

    goto :goto_e0

    :cond_df
    move v6, v12

    .line 4539
    :goto_e0
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_ea

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    move-object v5, v1

    goto :goto_eb

    :cond_ea
    move-object v5, v13

    .line 4542
    :goto_eb
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-eqz v1, :cond_fe

    if-nez v14, :cond_f5

    .line 4544
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v14

    .line 4546
    :cond_f5
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/app/ActivityOptions;->setLaunchTaskFragmentToken(Landroid/os/IBinder;)Landroid/app/ActivityOptions;

    :cond_fe
    move-object v3, v14

    .line 4550
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/RootWindowContainer;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;ZLcom/android/server/wm/LaunchParamsController$LaunchParams;I)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 4552
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_12e

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v2

    if-nez v2, :cond_12e

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-ne v1, v2, :cond_12e

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v2, v2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 4553
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12e

    .line 4554
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v0, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    :cond_12e
    return-object v1
.end method

.method public final getPasswordPolicy()Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;
    .registers 2

    .line 2026
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPasswordPolicy:Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;

    if-nez v0, :cond_e

    .line 2027
    const-class v0, Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPasswordPolicy:Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;

    .line 2029
    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mPasswordPolicy:Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;

    return-object p0
.end method

.method public final getReusableTask()Lcom/android/server/wm/Task;
    .registers 9

    .line 3994
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v0

    if-eq v0, v1, :cond_32

    .line 3995
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 3998
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 3999
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 4000
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0, v1}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    return-object v2

    :cond_30
    return-object v0

    :cond_31
    return-object v2

    .line 4014
    :cond_32
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v3, 0x10000000

    and-int/2addr v3, v0

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_42

    const/high16 v3, 0x8000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_55

    .line 4016
    :cond_42
    invoke-virtual {p0, v5, v4}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 4019
    invoke-virtual {v0}, Landroid/content/Intent;->getLaunchTaskIdForAliasManagedTarget()I

    move-result v0

    if-eq v0, v1, :cond_53

    goto :goto_55

    :cond_53
    move v0, v6

    goto :goto_56

    :cond_55
    :goto_55
    move v0, v7

    .line 4024
    :goto_56
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-nez v1, :cond_62

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v1, :cond_62

    move v1, v7

    goto :goto_63

    :cond_62
    move v1, v6

    :goto_63
    and-int/2addr v0, v1

    if-eqz v0, :cond_9c

    .line 4027
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v5, v0, :cond_7b

    .line 4030
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 4031
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v3

    .line 4030
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/server/wm/RootWindowContainer;->findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_9d

    .line 4032
    :cond_7b
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_91

    .line 4035
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eq v4, v0, :cond_8c

    move v6, v7

    :cond_8c
    invoke-virtual {v1, v3, v5, v6}, Lcom/android/server/wm/RootWindowContainer;->findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_9d

    .line 4039
    :cond_91
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 4040
    invoke-virtual {v0, v1, v3}, Lcom/android/server/wm/RootWindowContainer;->findTask(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_9d

    :cond_9c
    move-object v0, v2

    :goto_9d
    if-eqz v0, :cond_b9

    .line 4044
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_b9

    .line 4045
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b9

    move-object v0, v2

    :cond_b9
    if-eqz v0, :cond_d2

    .line 4052
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 4053
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v1

    if-nez v1, :cond_c9

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 4054
    :cond_c9
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eq v1, p0, :cond_d2

    move-object v0, v2

    :cond_d2
    if-eqz v0, :cond_d8

    .line 4059
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    :cond_d8
    return-object v2
.end method

.method public final getSecurityPolicy()Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;
    .registers 2

    .line 2033
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSecurityPolicy:Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

    if-nez v0, :cond_e

    .line 2034
    const-class v0, Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSecurityPolicy:Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

    .line 2036
    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mSecurityPolicy:Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

    return-object p0
.end method

.method public final getStartInfo()Ljava/lang/String;
    .registers 4

    .line 2048
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget p0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final handleBackgroundActivityAbort(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 10

    .line 1826
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBackgroundActivityStartsEnabled()Z

    move-result p0

    const/4 v0, 0x1

    xor-int/2addr p0, v0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 1830
    :cond_c
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 1831
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 1832
    iget v4, p1, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    if-eqz v1, :cond_1b

    const/4 v2, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1834
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V

    .line 1839
    :cond_1b
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getOptions()Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-static {p0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    return v0
.end method

.method public final handleStartResult(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/Transition;Landroid/window/RemoteTransition;)Lcom/android/server/wm/Task;
    .registers 13

    .line 2509
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 2510
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_c

    goto :goto_e

    .line 2512
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 2514
    :goto_e
    invoke-static {p3}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_92

    if-nez v0, :cond_1a

    goto/16 :goto_92

    :cond_1a
    if-eqz p2, :cond_25

    .line 2545
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getTaskAlwaysOnTop()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2546
    invoke-virtual {v0, v4}, Lcom/android/server/wm/Task;->setAlwaysOnTop(Z)V

    .line 2552
    :cond_25
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 2553
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->shouldUpdateConfigForDisplayChanged()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 2554
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 2555
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v6

    .line 2554
    invoke-virtual {v5, v2, v6, v4, v1}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    .line 2559
    :cond_3a
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    if-nez v2, :cond_57

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v2, :cond_57

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v5, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 2560
    invoke-virtual {v2, v5}, Lcom/android/server/wm/RootWindowContainer;->hasVisibleWindowAboveButDoesNotOwnNotificationShade(I)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 2565
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v2

    if-eqz v2, :cond_57

    .line 2568
    invoke-interface {v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->collapsePanels()V

    .line 2573
    :cond_57
    iget-object v2, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    if-eqz p3, :cond_60

    const/4 v5, 0x2

    if-ne p3, v5, :cond_5f

    goto :goto_60

    :cond_5f
    move v4, v1

    :cond_60
    :goto_60
    if-eqz v4, :cond_66

    .line 2578
    invoke-virtual {v2, p1}, Lcom/android/server/wm/TransitionController;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_6f

    :cond_66
    const/4 v5, 0x3

    if-ne p3, v5, :cond_6f

    if-eqz p4, :cond_6f

    .line 2581
    invoke-virtual {p4}, Lcom/android/server/wm/Transition;->abort()V

    move-object p4, v3

    :cond_6f
    :goto_6f
    if-eqz p2, :cond_7e

    .line 2584
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getTransientLaunch()Z

    move-result p2

    if-eqz p2, :cond_7e

    .line 2587
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p3, p0, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/wm/TransitionController;->setTransientLaunch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V

    :cond_7e
    if-eqz p4, :cond_8c

    .line 2591
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    if-nez p0, :cond_88

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    .line 2590
    :cond_88
    invoke-virtual {v2, p4, p0, p5, v3}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    goto :goto_91

    :cond_8c
    if-eqz v4, :cond_91

    .line 2595
    invoke-virtual {v2, p1, v1}, Lcom/android/server/wm/TransitionController;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    :cond_91
    :goto_91
    return-object v0

    .line 2518
    :cond_92
    :goto_92
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_a3

    .line 2519
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const-string/jumbo p1, "startActivity"

    invoke-virtual {p0, p1, v4}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    goto :goto_b6

    .line 2520
    :cond_a3
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    if-eqz p1, :cond_b6

    .line 2521
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    :cond_b6
    :goto_b6
    if-eqz v0, :cond_df

    .line 2525
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result p0

    if-eqz p0, :cond_df

    .line 2526
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->hasActivity()Z

    move-result p0

    if-nez p0, :cond_df

    .line 2527
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result p0

    if-nez p0, :cond_df

    iget-boolean p0, v0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz p0, :cond_d4

    .line 2531
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result p0

    if-nez p0, :cond_df

    .line 2532
    :cond_d4
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFullscreenRootForStageTask()Z

    move-result p0

    if-nez p0, :cond_df

    const-string p0, "handleStartResult"

    .line 2535
    invoke-virtual {v0, p0}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    :cond_df
    if-eqz p4, :cond_e4

    .line 2538
    invoke-virtual {p4}, Lcom/android/server/wm/Transition;->abort()V

    :cond_e4
    return-object v3
.end method

.method public isAllowedToStart(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/Task;)I
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3134
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 3135
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {p0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    const/16 p0, -0x5c

    return p0

    .line 3142
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "ActivityTaskManager"

    if-eqz v0, :cond_3a

    .line 3143
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/server/wm/RootWindowContainer;->canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 3145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot launch home on display area "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x60

    return p0

    :cond_3a
    const/4 v0, 0x0

    if-nez p2, :cond_53

    .line 3153
    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 3154
    invoke-virtual {p3, v3}, Lcom/android/server/wm/Task;->isUidPresent(I)Z

    move-result v3

    if-eqz v3, :cond_53

    const/4 v3, 0x3

    iget v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v3, v4, :cond_51

    .line 3155
    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_51

    goto :goto_53

    :cond_51
    move v3, v0

    goto :goto_54

    :cond_53
    :goto_53
    move v3, v1

    .line 3157
    :goto_54
    iget-boolean v4, p0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    const/16 v5, 0x66

    if-eqz v4, :cond_79

    if-eqz v3, :cond_79

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->handleBackgroundActivityAbort(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 3158
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Abort background activity starts from "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 3165
    :cond_79
    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v4, 0x10008000

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_82

    goto :goto_83

    :cond_82
    move v1, v0

    :goto_83
    const/16 v3, 0x65

    const-string v4, "Attempted Lock Task Mode violation r="

    if-nez p2, :cond_a8

    .line 3169
    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v6

    invoke-virtual {v6, p3, v1}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;Z)Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 3171
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 3175
    :cond_a8
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/LockTaskController;->isNewTaskLockTaskModeViolation(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 3176
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 3185
    :cond_c7
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v1, :cond_123

    .line 3186
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 3187
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v1

    .line 3186
    invoke-virtual {v3, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_123

    .line 3188
    iget-object v3, v1, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->hasController()Z

    move-result v3

    if-eqz v3, :cond_123

    if-eqz p3, :cond_e6

    .line 3190
    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p3

    goto :goto_ea

    :cond_e6
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p3

    .line 3192
    :goto_ea
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_f3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v3

    goto :goto_f4

    :cond_f3
    move v3, v0

    .line 3193
    :goto_f4
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 3194
    invoke-virtual {v1, v4, p3, v3, p2}, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->canActivityBeLaunched(Landroid/content/pm/ActivityInfo;IIZ)Z

    move-result p2

    if-nez p2, :cond_123

    .line 3196
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Abort to launch "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " on display area "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_123
    return v0
.end method

.method public final isBlockedFreeformLaunchSALogging(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 4860
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result p1

    if-nez p1, :cond_57

    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    const-string/jumbo v0, "startActivityFromRecents"

    .line 4861
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_57

    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    const-string v0, "android.server.wm.app"

    .line 4862
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_57

    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 4863
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_57

    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4864
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    invoke-virtual {p1, v0}, Lcom/android/server/wm/RecentTasks;->isRecentsUid(I)Z

    move-result p1

    if-nez p1, :cond_57

    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4865
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    invoke-virtual {p1, v0}, Lcom/android/server/wm/RecentTasks;->isEdgeUid(I)Z

    move-result p1

    if-nez p1, :cond_57

    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 4866
    invoke-virtual {p1}, Lcom/android/server/wm/MultiTaskingController;->getSystemUiUid()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget p0, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    if-eq p1, p0, :cond_57

    const/4 p0, 0x1

    return p0

    :cond_57
    const/4 p0, 0x0

    return p0
.end method

.method public final isHomeApp(ILjava/lang/String;)Z
    .registers 6

    .line 2063
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    .line 2065
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    if-ne p1, p0, :cond_11

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    return v1

    :cond_13
    if-nez p2, :cond_16

    return v2

    .line 2070
    :cond_16
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2071
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    .line 2072
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 2071
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_31

    .line 2073
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    goto :goto_32

    :cond_31
    move v1, v2

    :goto_32
    return v1
.end method

.method public final isLaunchModeOneOf(II)Z
    .registers 3

    .line 4564
    iget p0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-eq p1, p0, :cond_9

    if-ne p2, p0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p0, 0x1

    :goto_a
    return p0
.end method

.method public final isLaunchModeOneOf(III)Z
    .registers 4

    .line 4568
    iget p0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-eq p1, p0, :cond_b

    if-eq p2, p0, :cond_b

    if-ne p3, p0, :cond_9

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

.method public final isSavedFrontTask(I)Z
    .registers 4

    .line 4967
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSavedSplitFrontTaskIds:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-nez p1, :cond_e

    iget p0, p0, Lcom/android/server/wm/ActivityStarter;->mSavedFullFrontTaskId:I

    const/4 p1, -0x1

    if-eq p0, p1, :cond_f

    :cond_e
    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public needAffordanceAnimation(Lcom/android/server/wm/Task;)Z
    .registers 3

    if-eqz p1, :cond_2f

    .line 4976
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget p0, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    invoke-virtual {v0, p0}, Lcom/android/server/wm/RecentTasks;->isEdgeUid(I)Z

    move-result p0

    if-nez p0, :cond_2f

    .line 4977
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_28

    .line 4978
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_2f

    .line 4980
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_2f

    .line 4981
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2f

    return v0

    .line 4985
    :cond_28
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_2f

    return v0

    :cond_2f
    const/4 p0, 0x0

    return p0
.end method

.method public final onExecutionComplete()V
    .registers 2

    .line 2059
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityStartController;->onExecutionComplete(Lcom/android/server/wm/ActivityStarter;)V

    return-void
.end method

.method public postStartActivityProcessing(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;)V
    .registers 9

    .line 2369
    invoke-static {p2}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2370
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    if-eqz v0, :cond_11

    .line 2374
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->resetFreezeTaskListReorderingOnTimeout()V

    .line 2377
    :cond_11
    invoke-static {p2}, Landroid/app/ActivityManager;->isStartResultFatalError(I)Z

    move-result v0

    if-eqz v0, :cond_18

    return-void

    .line 2386
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->reportWaitingActivityLaunchedIfNeeded(Lcom/android/server/wm/ActivityRecord;I)V

    .line 2388
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 2389
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_2a

    .line 2390
    :cond_28
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    :goto_2a
    if-eqz p3, :cond_84

    if-eqz v0, :cond_84

    .line 2391
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result p3

    if-nez p3, :cond_35

    goto :goto_84

    :cond_35
    const/4 p3, 0x2

    if-eq p2, p3, :cond_3b

    const/4 p3, 0x3

    if-ne p2, p3, :cond_6e

    .line 2399
    :cond_3b
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_50

    const/4 v3, 0x0

    .line 2401
    invoke-virtual {p3, v3}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p3

    if-eqz p3, :cond_50

    move p3, v1

    goto :goto_51

    :cond_50
    move p3, v2

    .line 2402
    :goto_51
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_5e

    .line 2403
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_5e

    goto :goto_5f

    :cond_5e
    move v1, v2

    .line 2404
    :goto_5f
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v2

    .line 2405
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityStarter;->mIsTaskCleared:Z

    .line 2404
    invoke-virtual {v2, v3, p3, v4, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V

    .line 2408
    :cond_6e
    invoke-static {p2}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result p2

    if-eqz p2, :cond_7d

    .line 2409
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/android/server/wm/ActivityStartInterceptor;->onActivityLaunched(Landroid/app/TaskInfo;Lcom/android/server/wm/ActivityRecord;)V

    .line 2418
    :cond_7d
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz p2, :cond_84

    .line 2419
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->sendMultiWindowSALogging(Lcom/android/server/wm/ActivityRecord;)V

    :cond_84
    :goto_84
    return-void
.end method

.method public recycleTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;)I
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3238
    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v2, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_13

    .line 3239
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 3240
    iput-boolean v4, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    return v3

    :cond_13
    if-eqz p3, :cond_38

    .line 3245
    iget-object v0, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-nez v0, :cond_1d

    .line 3249
    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_38

    .line 3251
    :cond_1d
    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3252
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/16 v1, 0x4000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2a

    move v0, v4

    goto :goto_2b

    :cond_2a
    move v0, v3

    :goto_2b
    if-eqz v0, :cond_33

    .line 3254
    iget-object v0, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_38

    .line 3256
    :cond_33
    iget-object v0, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeFlags(I)V

    .line 3261
    :cond_38
    :goto_38
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v3, p2}, Lcom/android/server/wm/RootWindowContainer;->startPowerModeLaunchIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 3264
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityStarter;->setTargetRootTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 3268
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_4e

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v1, :cond_4c

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-eqz v0, :cond_4e

    .line 3270
    :cond_4c
    iput-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 3273
    :cond_4e
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/2addr v0, v4

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v5, "intentActivityFound"

    if-eqz v0, :cond_84

    .line 3277
    iget-boolean p1, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    if-nez p1, :cond_80

    iget-boolean p1, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz p1, :cond_80

    .line 3278
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz p1, :cond_7b

    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const p4, -0x5e7ded20

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v3

    aput-object p2, v0, v4

    invoke-static {p3, p4, v3, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3280
    :cond_7b
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {p1, v5}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 3282
    :cond_80
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->resumeTargetRootTaskIfNeeded()V

    return v4

    :cond_84
    if-eqz p3, :cond_8a

    .line 3287
    invoke-virtual {p3}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 3286
    :cond_8a
    invoke-virtual {p0, p1, v2, p4}, Lcom/android/server/wm/ActivityStarter;->complyActivityFlags(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    .line 3289
    iget-boolean p3, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-eqz p3, :cond_92

    return v3

    .line 3296
    :cond_92
    iget-boolean p3, p2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz p3, :cond_9a

    .line 3297
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    .line 3302
    :cond_9a
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result p3

    if-eqz p3, :cond_c6

    iget-object p3, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityTaskManagerService;->isDreaming()Z

    move-result p3

    if-eqz p3, :cond_c6

    .line 3303
    iget-object p3, p2, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "recycleTask#turnScreenOnFlag"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "::"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/android/server/wm/ActivityTaskSupervisor;->wakeUp(Ljava/lang/String;)V

    .line 3308
    :cond_c6
    iget-boolean p3, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    if-eqz p3, :cond_ce

    .line 3310
    invoke-virtual {p2, v4}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Z)V

    goto :goto_eb

    .line 3311
    :cond_ce
    iget-boolean p3, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz p3, :cond_eb

    .line 3313
    iget-object p3, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 3314
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result p3

    if-eqz p3, :cond_e6

    .line 3315
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result p3

    if-eqz p3, :cond_e6

    .line 3316
    iget-object p3, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {p3, v5, p1}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    goto :goto_eb

    .line 3320
    :cond_e6
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {p1, v5}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 3325
    :cond_eb
    :goto_eb
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->resumeTargetRootTaskIfNeeded()V

    .line 3327
    iput-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 3328
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    if-eqz p0, :cond_f5

    goto :goto_f6

    :cond_f5
    const/4 v1, 0x3

    :goto_f6
    return v1
.end method

.method public relatedToPackage(Ljava/lang/String;)Z
    .registers 3

    .line 779
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 780
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    :cond_c
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_1a

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 781
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    :cond_18
    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public final reparentActivitiesToActivityGroupIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskFragment;)V
    .registers 10

    if-eqz p2, :cond_3

    move-object p1, p2

    :cond_3
    if-eqz p1, :cond_a1

    .line 4810
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_b

    goto/16 :goto_a1

    .line 4814
    :cond_b
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 4815
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 4816
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 4817
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/wm/MultiTaskingController;->getSplitActivityInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;

    move-result-object v1

    .line 4820
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_ACTIVITY_PACKAGE_ENABLED:Z

    if-eqz v3, :cond_3e

    .line 4821
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_3e

    .line 4822
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->supportSplitActivityMode()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 4823
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget v4, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v3, v0, v4, p4}, Lcom/android/server/wm/MultiTaskingController;->isSplitActivityPackageBlocked(Ljava/lang/String;ILcom/android/server/wm/TaskFragment;)Z

    move-result p4

    if-eqz p4, :cond_3e

    return-void

    :cond_3e
    if-nez v1, :cond_71

    if-nez p2, :cond_71

    .line 4830
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityGroup()Lcom/android/server/wm/ActivityRecordGroup;

    move-result-object p2

    if-eqz p2, :cond_71

    .line 4831
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityGroup()Lcom/android/server/wm/ActivityRecordGroup;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecordGroup;->getOppositeGroup()Lcom/android/server/wm/ActivityRecordGroup;

    move-result-object p2

    if-eqz p2, :cond_71

    .line 4833
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityGroup()Lcom/android/server/wm/ActivityRecordGroup;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecordGroup;->getOppositeGroup()Lcom/android/server/wm/ActivityRecordGroup;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecordGroup;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    if-eqz p2, :cond_71

    .line 4835
    iget-object p4, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p4, p4, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 4836
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 4835
    invoke-virtual {p4, v0, v1, v2}, Lcom/android/server/wm/MultiTaskingController;->getSplitActivityInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;

    move-result-object v1

    if-eqz v1, :cond_71

    move-object p1, p2

    :cond_71
    const p2, 0x7fffffff

    if-eqz v1, :cond_89

    const/4 p4, 0x0

    .line 4844
    invoke-virtual {p1, p4, p3}, Lcom/android/server/wm/ActivityRecord;->saveRestoreActivityGroupZoneIfNeeded(ILcom/android/server/wm/ActivityRecord;)V

    .line 4845
    invoke-virtual {p1, p4, p2}, Lcom/android/server/wm/ActivityRecord;->reparentGroup(II)V

    const/4 p4, 0x1

    .line 4846
    invoke-virtual {p3, p4, p2}, Lcom/android/server/wm/ActivityRecord;->reparentGroup(II)V

    .line 4847
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/MultiTaskingController;->setRelationSplitActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_a1

    .line 4849
    :cond_89
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityGroup()Lcom/android/server/wm/ActivityRecordGroup;

    move-result-object p4

    if-eqz p4, :cond_a1

    .line 4851
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityGroup()Lcom/android/server/wm/ActivityRecordGroup;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecordGroup;->zone()I

    move-result p4

    .line 4850
    invoke-virtual {p3, p4, p2}, Lcom/android/server/wm/ActivityRecord;->reparentGroup(II)V

    .line 4852
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/MultiTaskingController;->setRelationSplitActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    :cond_a1
    :goto_a1
    return-void
.end method

.method public reset(Z)V
    .registers 6

    const/4 v0, 0x0

    .line 3528
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 3529
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    const/4 v1, -0x1

    .line 3530
    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 3531
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v2, 0x0

    .line 3532
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    .line 3534
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 3535
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 3536
    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 3538
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v3}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    .line 3540
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 3541
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 3542
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 3543
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 3544
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 3545
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    .line 3547
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 3548
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 3550
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v3, :cond_2e

    .line 3551
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 3554
    :cond_2e
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 3556
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 3557
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 3558
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    .line 3560
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 3561
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    .line 3562
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mIsTaskCleared:Z

    .line 3563
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 3564
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 3565
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 3566
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    .line 3567
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    .line 3569
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 3570
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 3572
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    if-eqz p1, :cond_53

    .line 3575
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStarter$Request;->reset()V

    .line 3580
    :cond_53
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mSavedSplitFrontTaskIds:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 3581
    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mSavedFullFrontTaskId:I

    .line 3584
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mSplitAdjacentRequested:Z

    return-void
.end method

.method public final resolveToHeavyWeightSwitcherIfNeeded()I
    .registers 18

    move-object/from16 v0, p0

    .line 1099
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_14c

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mHasHeavyWeightFeature:Z

    if-eqz v3, :cond_14c

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_19

    goto/16 :goto_14c

    .line 1105
    :cond_19
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    return v2

    .line 1110
    :cond_24
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v1, :cond_14a

    .line 1111
    iget-object v3, v1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, v5, :cond_44

    iget-object v3, v1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 1112
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    goto/16 :goto_14a

    .line 1116
    :cond_44
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v4, v3, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 1117
    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_99

    .line 1118
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    if-eqz v3, :cond_59

    .line 1120
    iget-object v3, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_99

    .line 1122
    :cond_59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find app for caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") when starting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 1123
    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    .line 1122
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    invoke-static {v0}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    const/16 v0, -0x5e

    return v0

    :cond_99
    :goto_99
    move v7, v4

    .line 1129
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v4, 0x2

    const/4 v6, 0x0

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v8, v5, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x1

    new-array v12, v15, [Landroid/content/Intent;

    iget-object v13, v5, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    aput-object v13, v12, v2

    new-array v13, v15, [Ljava/lang/String;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    aput-object v5, v13, v2

    const/high16 v14, 0x50000000

    const/16 v16, 0x0

    const-string v5, "android"

    move v2, v15

    move-object/from16 v15, v16

    invoke-virtual/range {v3 .. v15}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v3

    .line 1137
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1138
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    if-ltz v5, :cond_cf

    const-string v5, "has_result"

    .line 1140
    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1142
    :cond_cf
    new-instance v5, Landroid/content/IntentSender;

    invoke-direct {v5, v3}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    const-string v3, "intent"

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1143
    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowProcessController;->updateIntentForHeavyWeightActivity(Landroid/content/Intent;)V

    .line 1144
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v3, "new_app"

    invoke-virtual {v4, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1146
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1147
    const-class v1, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    .line 1148
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android"

    .line 1147
    invoke-virtual {v4, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1149
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object v4, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    const/4 v3, 0x0

    .line 1150
    iput-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 1151
    iput-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 1152
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iput v4, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 1153
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    iput v4, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 1154
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 1155
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    const/4 v6, 0x0

    iget v7, v1, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    const/4 v8, 0x0

    iget v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    iget v9, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget v10, v1, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 1157
    invoke-static {v2, v9, v10}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v9

    .line 1155
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 1159
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1160
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_138

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_138
    iput-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_148

    .line 1162
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    invoke-virtual {v0, v3, v2}, Landroid/app/ActivityManagerInternal;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_148
    const/4 v0, 0x0

    return v0

    :cond_14a
    :goto_14a
    move v0, v2

    return v0

    :cond_14c
    :goto_14c
    move v0, v2

    return v0
.end method

.method public final resumeTargetRootTaskIfNeeded()V
    .registers 6

    .line 4295
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_2c

    .line 4296
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 4299
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->setCurrentLaunchCanTurnScreenOn(Z)V

    .line 4301
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isFocusable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 4302
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    goto :goto_31

    .line 4305
    :cond_25
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    goto :goto_31

    .line 4308
    :cond_2c
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 4310
    :goto_31
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/RootWindowContainer;->updateUserRootTask(ILcom/android/server/wm/Task;)V

    return-void
.end method

.method public final saveFrontTaskId()V
    .registers 8

    .line 4951
    sget-object v0, Lcom/android/server/wm/ActivityStarter;->sTargetStageTypes:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_25

    aget v4, v0, v3

    .line 4952
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_22

    .line 4953
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_22

    .line 4954
    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mSavedSplitFrontTaskIds:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v6, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 4957
    :cond_25
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 4959
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 4960
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mSavedFullFrontTaskId:I

    :cond_3c
    return-void
.end method

.method public final sendCanNotEmbedActivityError(Lcom/android/server/wm/TaskFragment;I)V
    .registers 10
    .param p2    # I
        .annotation build Lcom/android/server/wm/TaskFragment$EmbeddingCheckResult;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-eq p2, v0, :cond_73

    const/4 v0, 0x2

    const-string v1, "Cannot embed "

    if-eq p2, v0, :cond_47

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1d

    .line 4419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled embed result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_90

    .line 4403
    :cond_1d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " that launched on another task,mLaunchMode="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",mLaunchFlag="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 4405
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_90

    .line 4409
    :cond_47
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". TaskFragment\'s bounds:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4410
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", minimum dimensions:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 4411
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getMinDimensions()Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_90

    .line 4415
    :cond_73
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The app:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "is not trusted to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4421
    :goto_90
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 4422
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 4423
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter$Request;->errorCallbackToken:Landroid/os/IBinder;

    const/16 v5, 0x9

    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    move-object v4, p1

    .line 4422
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    goto :goto_b3

    :cond_ae
    const-string p0, "ActivityTaskManager"

    .line 4428
    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b3
    return-void
.end method

.method public final sendMultiWindowSALogging(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 4873
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mIsFreeformLaunching:Z

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 4874
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->isBlockedFreeformLaunchSALogging(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-nez p1, :cond_20

    const-string p1, "2004"

    const-string v0, "From application"

    .line 4875
    invoke-static {p1, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 4877
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    const-string p1, "2013"

    invoke-static {p1, p0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method public final sendNewTaskResultRequestIfNeeded()V
    .registers 9

    .line 3824
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_28

    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_28

    const-string v0, "ActivityTaskManager"

    const-string v1, "Activity is launching as a new task, so cancelling activity result."

    .line 3829
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3830
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, -0x1

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V

    .line 3833
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    :cond_28
    return-void
.end method

.method public set(Lcom/android/server/wm/ActivityStarter;)V
    .registers 4

    .line 732
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 733
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 734
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 735
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 736
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    .line 738
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 739
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 740
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 742
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v1, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->set(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 744
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 745
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 746
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 747
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 748
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 749
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    .line 751
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 752
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 753
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 755
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 756
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 757
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    .line 759
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    .line 760
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 761
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mIsTaskCleared:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mIsTaskCleared:Z

    .line 762
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 763
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 764
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 765
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    .line 767
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 768
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 770
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    .line 771
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    .line 772
    iget-wide v0, p1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    iput-wide v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    .line 773
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    .line 775
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter$Request;->set(Lcom/android/server/wm/ActivityStarter$Request;)V

    return-void
.end method

.method public setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 4606
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object p0
.end method

.method public setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;
    .registers 2

    .line 4708
    invoke-static {p1}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    return-object p0
.end method

.method public setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 4703
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    return-object p0
.end method

.method public setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 4772
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->allowBackgroundActivityStart:Z

    return-object p0
.end method

.method public setAllowPendingRemoteAnimationRegistryLookup(Z)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 4762
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    return-object p0
.end method

.method public setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 4596
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    return-object p0
.end method

.method public setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 4669
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    return-object p0
.end method

.method public setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 4664
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    return-object p0
.end method

.method public setCallingPid(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 4649
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    return-object p0
.end method

.method public setCallingUid(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 4659
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    return-object p0
.end method

.method public setComponentSpecified(Z)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 4722
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    return-object p0
.end method

.method public setErrorCallbackToken(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 4801
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->errorCallbackToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public setFilterCallingUid(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 4717
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    return-object p0
.end method

.method public setGlobalConfiguration(Landroid/content/res/Configuration;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 4752
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    return-object p0
.end method

.method public setIgnoreTargetSecurity(Z)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 4712
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    return-object p0
.end method

.method public setInTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 4732
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    return-object p0
.end method

.method public setInTaskFragment(Lcom/android/server/wm/TaskFragment;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 4737
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->inTaskFragment:Lcom/android/server/wm/TaskFragment;

    return-object p0
.end method

.method public final setInitialState(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;ZILcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)V
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p5

    move/from16 v14, p6

    move-object/from16 v15, p7

    const/4 v9, 0x0

    .line 3593
    invoke-virtual {v0, v9}, Lcom/android/server/wm/ActivityStarter;->reset(Z)V

    .line 3596
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    const/4 v8, 0x1

    if-eqz v1, :cond_2c

    if-eqz v11, :cond_2c

    .line 3597
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 3598
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 3599
    iput-boolean v8, v0, Lcom/android/server/wm/ActivityStarter;->mIsFreeformLaunching:Z

    goto :goto_2e

    .line 3601
    :cond_2c
    iput-boolean v9, v0, Lcom/android/server/wm/ActivityStarter;->mIsFreeformLaunching:Z

    .line 3605
    :goto_2e
    iput-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 3606
    iget-object v1, v10, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 3607
    iput-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 3608
    iget v1, v10, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 3609
    iput-object v15, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    move-object/from16 v1, p8

    .line 3610
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    move-object/from16 v1, p9

    .line 3611
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    move/from16 v1, p10

    .line 3612
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    .line 3614
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    .line 3618
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v1

    iget-object v2, v10, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    const/16 v16, 0x0

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    move-object/from16 v2, p3

    move-object/from16 v4, p1

    move-object/from16 v5, p7

    move-object/from16 v17, v6

    move-object/from16 v6, p2

    move v11, v8

    move/from16 v8, v16

    move-object/from16 v9, v17

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 3620
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasPreferredTaskDisplayArea()Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 3621
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v1, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    goto :goto_82

    .line 3622
    :cond_7c
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    :goto_82
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 3623
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget v1, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    .line 3625
    iget v1, v10, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/4 v2, 0x3

    if-ne v2, v1, :cond_93

    move v9, v11

    goto :goto_94

    :cond_93
    const/4 v9, 0x0

    :goto_94
    const/4 v3, 0x2

    if-ne v3, v1, :cond_99

    move v1, v11

    goto :goto_9a

    :cond_99
    const/4 v1, 0x0

    .line 3627
    :goto_9a
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 3629
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    .line 3627
    invoke-virtual {v0, v10, v9, v1, v4}, Lcom/android/server/wm/ActivityStarter;->adjustLaunchFlagsToDocumentMode(Lcom/android/server/wm/ActivityRecord;ZZI)I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 3630
    iget-boolean v1, v10, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    const/high16 v4, 0x80000

    if-eqz v1, :cond_b9

    .line 3631
    invoke-virtual {v0, v3, v2}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v1

    if-nez v1, :cond_b9

    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_b9

    move v9, v11

    goto :goto_ba

    :cond_b9
    const/4 v9, 0x0

    :goto_ba
    iput-boolean v9, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 3634
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/4 v5, 0x4

    const/high16 v6, 0x10000000

    if-ne v1, v5, :cond_c8

    .line 3637
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v1, v6

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 3645
    :cond_c8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->sendNewTaskResultRequestIfNeeded()V

    .line 3648
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v4, v1

    if-eqz v4, :cond_d7

    iget-object v4, v10, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v4, :cond_d7

    or-int/2addr v1, v6

    .line 3649
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 3654
    :cond_d7
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int v4, v1, v6

    if-eqz v4, :cond_ec

    .line 3655
    iget-boolean v4, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-nez v4, :cond_e7

    iget-object v4, v10, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-ne v4, v3, :cond_ec

    :cond_e7
    const/high16 v4, 0x8000000

    or-int/2addr v1, v4

    .line 3657
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 3663
    :cond_ec
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v4, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v6, 0x40000

    and-int/2addr v4, v6

    if-nez v4, :cond_f7

    move v9, v11

    goto :goto_f8

    :cond_f7
    const/4 v9, 0x0

    :goto_f8
    iput-boolean v9, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 3664
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    const-string v4, "ActivityTaskManager"

    if-eqz v1, :cond_119

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startActivity() => mUserLeaving="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-boolean v6, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3670
    :cond_119
    iput-boolean v13, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v13, :cond_12a

    .line 3671
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    move-result v1

    if-eqz v1, :cond_12a

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v1, :cond_128

    goto :goto_12a

    :cond_128
    const/4 v1, 0x0

    goto :goto_12f

    .line 3672
    :cond_12a
    :goto_12a
    iput-boolean v11, v10, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    const/4 v1, 0x0

    .line 3673
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 3676
    :goto_12f
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_1f5

    .line 3677
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v6

    if-eq v6, v7, :cond_171

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getTaskOverlay()Z

    move-result v6

    if-eqz v6, :cond_171

    .line 3678
    invoke-virtual {v10, v11}, Lcom/android/server/wm/ActivityRecord;->setTaskOverlay(Z)V

    .line 3679
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->canTaskOverlayResume()Z

    move-result v6

    if-nez v6, :cond_17d

    .line 3680
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 3681
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v9

    .line 3680
    invoke-virtual {v6, v9}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v6

    if-eqz v6, :cond_161

    .line 3683
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    goto :goto_162

    :cond_161
    move-object v6, v8

    :goto_162
    if-eqz v6, :cond_17d

    .line 3684
    sget-object v9, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v6, v9}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v6

    if-nez v6, :cond_17d

    .line 3688
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 3689
    iput-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    goto :goto_17d

    .line 3692
    :cond_171
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v6

    if-eqz v6, :cond_17d

    .line 3693
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 3694
    iput-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 3696
    :cond_17d
    :goto_17d
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getTransientLaunch()Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    .line 3697
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    if-nez p4, :cond_1bd

    .line 3700
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 3701
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getLaunchTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v6

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 3700
    invoke-static {v6, v9}, Lcom/android/server/wm/TaskFragment;->fromTaskFragmentToken(Landroid/os/IBinder;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/TaskFragment;

    move-result-object v6

    if-eqz v6, :cond_1bf

    .line 3702
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    move-result v9

    if-eqz v9, :cond_1bf

    .line 3704
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Can not start activity in TaskFragment in PIP: "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v8

    goto :goto_1bf

    :cond_1bd
    move-object/from16 v6, p4

    .line 3710
    :cond_1bf
    :goto_1bf
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v9, :cond_1f7

    if-eqz v6, :cond_1f7

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 3711
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->isActivityEmbeddedPlaceholder()Z

    move-result v9

    if-eqz v9, :cond_1f7

    .line 3712
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v9

    if-eqz v9, :cond_1f7

    .line 3713
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v13

    if-eqz v13, :cond_1f7

    .line 3714
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v13

    if-eqz v13, :cond_1f7

    .line 3715
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v13

    new-instance v2, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v13, v2}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_1f7

    if-eq v2, v9, :cond_1f7

    .line 3718
    iput-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 3719
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    goto :goto_1f7

    :cond_1f5
    move-object/from16 v6, p4

    .line 3726
    :cond_1f7
    :goto_1f7
    iget v2, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v9, 0x1000000

    and-int/2addr v2, v9

    if-eqz v2, :cond_200

    move-object v2, v15

    goto :goto_201

    :cond_200
    move-object v2, v8

    :goto_201
    iput-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 3728
    iput-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-eqz v12, :cond_221

    .line 3733
    iget-boolean v2, v12, Lcom/android/server/wm/Task;->inRecents:Z

    if-nez v2, :cond_221

    .line 3734
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Starting activity in task not in recents: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3735
    iput-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    .line 3737
    :cond_221
    iput-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 3739
    iput v14, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/lit8 v2, v14, 0x1

    if-eqz v2, :cond_24d

    if-nez v15, :cond_23a

    .line 3746
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_23a

    .line 3748
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/Task;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_23b

    :cond_23a
    move-object v2, v15

    :goto_23b
    if-eqz v2, :cond_247

    .line 3751
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v4, v10, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 3752
    invoke-virtual {v2, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24d

    .line 3754
    :cond_247
    iget v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 3758
    :cond_24d
    iget v2, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x10000

    and-int/2addr v2, v4

    if-eqz v2, :cond_256

    move v9, v11

    goto :goto_257

    :cond_256
    move v9, v1

    :goto_257
    iput-boolean v9, v0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 3760
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    if-eqz v2, :cond_269

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isBackgroundActivityStartsEnabled()Z

    move-result v2

    if-nez v2, :cond_269

    .line 3761
    iput-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 3762
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 3766
    :cond_269
    iget-object v1, v10, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3767
    invoke-virtual {v1}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    move-result v1

    if-eq v1, v7, :cond_274

    .line 3768
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->saveFrontTaskId()V

    .line 3770
    :cond_274
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v2, 0x10001000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_302

    if-eqz v15, :cond_302

    .line 3773
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v1

    if-nez v1, :cond_302

    .line 3774
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    if-ne v1, v11, :cond_302

    .line 3775
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_302

    invoke-virtual/range {p7 .. p7}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v1

    if-eqz v1, :cond_302

    move v1, v11

    if-eqz p2, :cond_2cb

    .line 3777
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->hasValidLaunchAdjacentExt()Z

    move-result v2

    if-eqz v2, :cond_2cb

    .line 3779
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->hasValidHorizontalSplitLayoutWithAdjacentFlag()Z

    move-result v2

    if-eqz v2, :cond_2b3

    .line 3780
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->launchToTopSideWithAdjacentFlag()Z

    move-result v2

    if-eqz v2, :cond_2b1

    const/4 v2, 0x5

    goto :goto_2bc

    :cond_2b1
    const/4 v2, 0x3

    goto :goto_2bc

    .line 3786
    :cond_2b3
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->launchToRightSideWithAdjacentFlag()Z

    move-result v2

    if-eqz v2, :cond_2bb

    move v2, v3

    goto :goto_2bc

    :cond_2bb
    move v2, v5

    .line 3792
    :goto_2bc
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/TaskOrganizerController;->changeSplitScreenCreateMode(I)V

    .line 3793
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {v2}, Lcom/android/server/wm/MultiTaskingController;->deferEnsureConfig()V

    goto :goto_2ee

    .line 3795
    :cond_2cb
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getRootSideStageTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_2ee

    .line 3797
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v2

    const/16 v3, 0x40

    if-eq v2, v3, :cond_2e7

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2ee

    .line 3807
    :cond_2e7
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {v2}, Lcom/android/server/wm/MultiTaskingController;->deferEnsureConfig()V

    .line 3811
    :cond_2ee
    :goto_2ee
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_LAUNCH_ADJACENT_SA_LOGGING:Z

    if-eqz v2, :cond_2f9

    const-string v2, "1000"

    const-string v3, "From application"

    .line 3812
    invoke-static {v2, v3}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 3816
    :cond_2f9
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingHelpController:Lcom/android/server/wm/MultiTaskingHelpController;

    invoke-virtual {v2}, Lcom/android/server/wm/MultiTaskingHelpController;->scheduleNotifySplitAdjacentCallback()V

    .line 3818
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mSplitAdjacentRequested:Z

    :cond_302
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 4577
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method public setIntentGrants(Lcom/android/server/uri/NeededUriGrants;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 4586
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    return-object p0
.end method

.method public final setNewTask(Lcom/android/server/wm/Task;)V
    .registers 14

    .line 4314
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    if-nez v0, :cond_c

    move v8, v1

    goto :goto_d

    :cond_c
    move v8, v2

    .line 4315
    :goto_d
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 4316
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_14

    goto :goto_18

    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    :goto_18
    move-object v4, v0

    .line 4317
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1e

    goto :goto_20

    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    :goto_20
    move-object v5, v0

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-object v9, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v10, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v11, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 4315
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/wm/Task;->reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 4319
    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/TransitionController;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    const-string/jumbo v3, "setTaskFromReuseOrCreateNewTask"

    .line 4320
    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/wm/Task;Ljava/lang/String;)V

    .line 4322
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x4dc5c469

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v2

    aput-object v3, v7, v1

    invoke-static {v4, v5, v2, v6, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5e
    if-eqz p1, :cond_65

    .line 4326
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V

    :cond_65
    return-void
.end method

.method public setOriginatingPendingIntent(Lcom/android/server/am/PendingIntentRecord;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 4767
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    return-object p0
.end method

.method public setOutActivity([Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 4727
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method public setProfilerInfo(Landroid/app/ProfilerInfo;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 4747
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    return-object p0
.end method

.method public setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 4683
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    return-object p0
.end method

.method public setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 4693
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    return-object p0
.end method

.method public setReason(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 4591
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    return-object p0
.end method

.method public setRequestCode(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 4636
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    return-object p0
.end method

.method public setResolveInfo(Landroid/content/pm/ResolveInfo;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 4611
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    return-object p0
.end method

.method public setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 4601
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    return-object p0
.end method

.method public setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 4626
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    return-object p0
.end method

.method public setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 4631
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    return-object p0
.end method

.method public setStartFlags(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 4698
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    return-object p0
.end method

.method public final setTargetRootTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 14

    .line 4070
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->clearLastPausedActivity()V

    .line 4071
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 4075
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTopFreeform()Z

    move-result v1

    .line 4076
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    const/4 v8, 0x1

    if-eqz v2, :cond_5c

    .line 4077
    invoke-virtual {v2}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5c

    .line 4078
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 4079
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 4080
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/ActivityStarter;->canMoveTaskToBottomTask(Lcom/android/server/wm/Task;I)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 4081
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getForceLaunchOverTargetTask()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 4082
    :cond_3b
    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 4083
    invoke-virtual {p0, p1, v2, v0, v3}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v9

    if-eq v0, v9, :cond_5c

    .line 4084
    invoke-virtual {v0, v9}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-nez v2, :cond_5c

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string/jumbo v7, "reparentToLaunchPolicy"

    move-object v1, v0

    move-object v2, v9

    .line 4085
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;ZIZZLjava/lang/String;)Z

    .line 4088
    iput-boolean v8, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 4089
    iput-object v9, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    return-void

    .line 4095
    :cond_5c
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    const/4 v9, 0x0

    if-nez v2, :cond_7d

    .line 4097
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_70

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    if-eqz v2, :cond_70

    .line 4100
    invoke-static {v2}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    goto :goto_a2

    .line 4102
    :cond_70
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0, v2, v3, v0, v4}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    goto :goto_a2

    .line 4111
    :cond_7d
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-eqz v2, :cond_8e

    .line 4112
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_8f

    :cond_8e
    move-object v2, v9

    :goto_8f
    if-eqz v2, :cond_a2

    .line 4113
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v3

    if-eqz v3, :cond_a2

    .line 4115
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 4116
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_a0

    goto :goto_a2

    .line 4120
    :cond_a0
    iput-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 4126
    :cond_a2
    :goto_a2
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_a9

    .line 4127
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 4135
    :cond_a9
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    const/4 v10, 0x0

    if-ne v2, v3, :cond_fc

    .line 4136
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-nez v2, :cond_c0

    move-object v3, v9

    goto :goto_c6

    .line 4138
    :cond_c0
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/Task;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    :goto_c6
    if-eqz v3, :cond_cd

    .line 4139
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    goto :goto_ce

    :cond_cd
    move-object v3, v9

    .line 4141
    :goto_ce
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 4142
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_e0

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 4143
    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-nez v4, :cond_e0

    move v4, v8

    goto :goto_e1

    :cond_e0
    move v4, v10

    :goto_e1
    if-nez v1, :cond_eb

    .line 4145
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTopFreeform()Z

    move-result v1

    if-eqz v1, :cond_eb

    move v1, v8

    goto :goto_ec

    :cond_eb
    move v1, v10

    :goto_ec
    if-ne v3, v0, :cond_fc

    if-eqz v2, :cond_f6

    .line 4151
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-ne v3, v2, :cond_fc

    :cond_f6
    if-nez v4, :cond_fc

    if-nez v1, :cond_fc

    move v1, v10

    goto :goto_fd

    :cond_fc
    move v1, v8

    :goto_fd
    if-eqz v1, :cond_219

    .line 4162
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    if-nez v1, :cond_219

    .line 4163
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v2, 0x400000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4167
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_13c

    .line 4168
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_13c

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 4169
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-eqz v1, :cond_13c

    .line 4170
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_13c

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 4171
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 4172
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-ne v1, v2, :cond_13c

    move v1, v8

    goto :goto_13d

    :cond_13c
    move v1, v10

    .line 4177
    :goto_13d
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_157

    .line 4178
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_157

    .line 4179
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    if-ne v2, v3, :cond_157

    .line 4181
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_157

    move v2, v8

    goto :goto_158

    :cond_157
    move v2, v10

    .line 4185
    :goto_158
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_178

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_176

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    .line 4186
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 4187
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eq v3, v4, :cond_178

    :cond_176
    if-eqz v1, :cond_219

    .line 4192
    :cond_178
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v1, :cond_187

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_187

    .line 4193
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V

    .line 4196
    :cond_187
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-eqz v1, :cond_1de

    .line 4199
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    if-eq v1, v0, :cond_1b3

    .line 4200
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eq v1, v2, :cond_1b3

    .line 4201
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    const v2, 0x7fffffff

    invoke-virtual {v1, v2, v0, v10}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 4203
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 4208
    :cond_1b3
    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v1, :cond_1c7

    .line 4209
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_1c7

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 4210
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-ne p1, v1, :cond_1c7

    move v11, v8

    goto :goto_1c8

    :cond_1c7
    move v11, v10

    .line 4216
    :goto_1c8
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const/4 v6, 0x1

    const-string v7, "bringingFoundTaskToFront"

    move-object v2, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/Task;->moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;ZLjava/lang/String;)V

    xor-int/lit8 v1, v11, 0x1

    .line 4219
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    goto :goto_217

    .line 4220
    :cond_1de
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1e7

    if-eqz v2, :cond_217

    .line 4224
    :cond_1e7
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_208

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 4225
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v1

    if-nez v1, :cond_208

    .line 4226
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v1, :cond_1fe

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_1ff

    :cond_1fe
    move-object v1, v9

    :goto_1ff
    if-eqz v1, :cond_208

    .line 4229
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 4237
    :cond_208
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string/jumbo v7, "reparentToTargetRootTask"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;ZIZZLjava/lang/String;)Z

    .line 4240
    iput-boolean v8, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 4242
    :cond_217
    :goto_217
    iput-object v9, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 4247
    :cond_219
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    if-eqz v1, :cond_221

    .line 4248
    iput-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    .line 4253
    :cond_221
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 4261
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_23f

    iget-boolean v1, v0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v1, :cond_23f

    .line 4262
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23f

    .line 4263
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 4266
    :cond_23f
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 4267
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 4266
    invoke-virtual {p1, v0, v10, v1, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public setUserId(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 4757
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    return-object p0
.end method

.method public setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 4621
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    return-object p0
.end method

.method public setVoiceSession(Landroid/service/voice/IVoiceInteractionSession;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 4616
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    return-object p0
.end method

.method public setWaitResult(Landroid/app/WaitResult;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 4742
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    return-object p0
.end method

.method public shouldAbortBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLandroid/content/Intent;Landroid/app/ActivityOptions;)Z
    .registers 35

    move-object/from16 v0, p0

    move/from16 v3, p1

    move/from16 v1, p2

    move-object/from16 v4, p3

    move/from16 v7, p4

    move-object/from16 v2, p7

    move/from16 v5, p8

    .line 2081
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    const/4 v11, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_21

    if-eqz p10, :cond_21

    .line 2084
    invoke-virtual/range {p10 .. p10}, Landroid/app/ActivityOptions;->getIgnorePendingIntentCreatorForegroundState()Z

    move-result v9

    if-nez v9, :cond_1f

    goto :goto_21

    :cond_1f
    move v9, v8

    goto :goto_22

    :cond_21
    :goto_21
    move v9, v11

    :goto_22
    const/16 v10, 0x3e8

    const-string v12, "ActivityTaskManager"

    if-eqz v9, :cond_99

    const-string v13, ")"

    if-eqz v3, :cond_7d

    if-eq v6, v10, :cond_7d

    const/16 v14, 0x403

    if-ne v6, v14, :cond_33

    goto :goto_7d

    .line 2096
    :cond_33
    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/ActivityStarter;->isHomeApp(ILjava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_55

    .line 2097
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v0, :cond_54

    .line 2098
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity start allowed for home app callingUid ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    return v8

    .line 2105
    :cond_55
    iget-object v14, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v14}, Lcom/android/server/wm/RootWindowContainer;->getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;

    move-result-object v14

    if-eqz v14, :cond_99

    .line 2106
    iget v14, v14, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v6, v14, :cond_99

    .line 2107
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v0, :cond_7c

    .line 2108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity start allowed for active ime ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7c
    return v8

    .line 2088
    :cond_7d
    :goto_7d
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v0, :cond_98

    .line 2089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity start allowed for important callingUid ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_98
    return v8

    .line 2116
    :cond_99
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getBalAppSwitchesState()I

    move-result v6

    .line 2119
    iget-object v13, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v13, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    invoke-virtual {v13, v3}, Lcom/android/server/wm/MirrorActiveUids;->getUidState(I)I

    move-result v13

    .line 2120
    iget-object v14, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v14, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->hasActiveVisibleWindow(I)Z

    move-result v14

    const/4 v15, 0x2

    if-nez v14, :cond_b8

    if-eq v13, v15, :cond_b8

    const/4 v10, 0x3

    if-ne v13, v10, :cond_b6

    goto :goto_b8

    :cond_b6
    move v10, v8

    goto :goto_b9

    :cond_b8
    :goto_b8
    move v10, v11

    :goto_b9
    if-gt v13, v11, :cond_bc

    move v8, v11

    :cond_bc
    if-eq v6, v15, :cond_c4

    if-ne v6, v11, :cond_c1

    goto :goto_c4

    :cond_c1
    const/16 v17, 0x0

    goto :goto_c6

    :cond_c4
    :goto_c4
    move/from16 v17, v11

    :goto_c6
    if-nez v17, :cond_d2

    .line 2131
    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v11, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    .line 2132
    invoke-virtual {v11, v3}, Lcom/android/server/wm/MirrorActiveUids;->hasNonAppVisibleWindow(I)Z

    move-result v11

    if-eqz v11, :cond_d4

    :cond_d2
    if-nez v14, :cond_d9

    :cond_d4
    if-eqz v8, :cond_d7

    goto :goto_d9

    :cond_d7
    const/4 v11, 0x0

    goto :goto_da

    :cond_d9
    :goto_d9
    const/4 v11, 0x1

    :goto_da
    if-eqz v9, :cond_100

    if-eqz v11, :cond_100

    .line 2136
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v0, :cond_fe

    .line 2137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity start allowed: callingUidHasAnyVisibleWindow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isCallingUidPersistentSystemProcess = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fe
    const/4 v0, 0x0

    return v0

    :cond_100
    if-ne v3, v7, :cond_104

    move v11, v13

    goto :goto_10c

    .line 2146
    :cond_104
    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v11, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    invoke-virtual {v11, v7}, Lcom/android/server/wm/MirrorActiveUids;->getUidState(I)I

    move-result v11

    :goto_10c
    if-ne v3, v7, :cond_110

    move v15, v14

    goto :goto_116

    .line 2149
    :cond_110
    iget-object v15, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v15, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->hasActiveVisibleWindow(I)Z

    move-result v15

    :goto_116
    if-ne v3, v7, :cond_11b

    move/from16 v18, v10

    goto :goto_126

    :cond_11b
    if-nez v15, :cond_124

    const/4 v2, 0x2

    if-ne v11, v2, :cond_121

    goto :goto_124

    :cond_121
    const/16 v18, 0x0

    goto :goto_126

    :cond_124
    :goto_124
    const/16 v18, 0x1

    .line 2154
    :goto_126
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    if-ne v3, v7, :cond_12f

    move/from16 v16, v8

    goto :goto_13c

    :cond_12f
    move/from16 v16, v8

    const/16 v8, 0x3e8

    if-eq v2, v8, :cond_13b

    const/4 v2, 0x1

    if-gt v11, v2, :cond_139

    goto :goto_13b

    :cond_139
    const/4 v8, 0x0

    goto :goto_13c

    :cond_13b
    :goto_13b
    const/4 v8, 0x1

    .line 2162
    :goto_13c
    invoke-static/range {p4 .. p4}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v2

    if-eqz v2, :cond_173

    .line 2164
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 2163
    invoke-static {v2}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result v2

    move/from16 v19, v11

    .line 2166
    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v11, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->hasActiveVisibleWindow(I)Z

    move-result v2

    if-eqz v2, :cond_175

    .line 2167
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v0, :cond_171

    .line 2168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity start allowed: uid in SDK sandbox ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") has visible (non-toast) window."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_171
    const/4 v0, 0x0

    return v0

    :cond_173
    move/from16 v19, v11

    .line 2177
    :cond_175
    invoke-static/range {p10 .. p10}, Lcom/android/server/am/PendingIntentRecord;->isPendingIntentBalAllowedByCaller(Landroid/app/ActivityOptions;)Z

    move-result v2

    const-string v11, ") is companion app"

    move/from16 v20, v13

    const-string v13, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    if-eqz v2, :cond_221

    if-eq v7, v3, :cond_221

    .line 2181
    invoke-static/range {p10 .. p10}, Lcom/android/server/am/PendingIntentRecord;->isPendingIntentBalAllowedByPermission(Landroid/app/ActivityOptions;)Z

    move-result v21

    move/from16 v22, v14

    const-string v14, "Activity start allowed: realCallingUid ("

    if-eqz v21, :cond_1b6

    move/from16 v21, v10

    const/4 v10, -0x1

    move/from16 v23, v6

    const/4 v6, 0x1

    .line 2182
    invoke-static {v13, v7, v10, v6}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v10

    if-nez v10, :cond_1ba

    .line 2186
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v0, :cond_1b4

    .line 2187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") has BAL permission."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b4
    const/4 v0, 0x0

    return v0

    :cond_1b6
    move/from16 v23, v6

    move/from16 v21, v10

    :cond_1ba
    if-eqz v15, :cond_1d9

    .line 2196
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v0, :cond_1d7

    .line 2197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") has visible (non-toast) window"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d7
    const/4 v0, 0x0

    return v0

    :cond_1d9
    if-eqz v8, :cond_1fa

    if-eqz v5, :cond_1fa

    .line 2205
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v0, :cond_1f8

    .line 2206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") is persistent system process AND intent sender allowed (allowBackgroundActivityStart = true)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f8
    const/4 v0, 0x0

    return v0

    .line 2213
    :cond_1fa
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-virtual {v6, v10, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->isAssociatedCompanionApp(II)Z

    move-result v6

    if-eqz v6, :cond_227

    .line 2215
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v0, :cond_21f

    .line 2216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21f
    const/4 v0, 0x0

    return v0

    :cond_221
    move/from16 v23, v6

    move/from16 v21, v10

    move/from16 v22, v14

    :cond_227
    if-eqz v9, :cond_2e1

    .line 2224
    invoke-static {v13, v1, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v6

    if-nez v6, :cond_249

    .line 2227
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v0, :cond_247

    .line 2228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Background activity start allowed: START_ACTIVITIES_FROM_BACKGROUND permission granted for uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_247
    const/4 v0, 0x0

    return v0

    .line 2236
    :cond_249
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v6, v3}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v6

    const-string v10, "Background activity start allowed: callingUid ("

    if-eqz v6, :cond_272

    .line 2237
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v0, :cond_270

    .line 2238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") is recents"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_270
    const/4 v0, 0x0

    return v0

    .line 2244
    :cond_272
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->isDeviceOwner(I)Z

    move-result v6

    if-eqz v6, :cond_297

    .line 2245
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v0, :cond_295

    .line 2246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") is device owner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_295
    const/4 v0, 0x0

    return v0

    .line 2252
    :cond_297
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 2253
    iget-object v13, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v13, v6, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->isAssociatedCompanionApp(II)Z

    move-result v6

    if-eqz v6, :cond_2be

    .line 2255
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v0, :cond_2bc

    .line 2256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2bc
    const/4 v0, 0x0

    return v0

    .line 2262
    :cond_2be
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6, v3, v1, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->hasSystemAlertWindowPermission(IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e1

    .line 2264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Background activity start for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " allowed because SYSTEM_ALERT_WINDOW permission is granted."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_2e1
    if-nez p6, :cond_2f0

    if-eqz v2, :cond_2f0

    .line 2275
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    move/from16 v2, p5

    invoke-virtual {v1, v2, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    move-object v2, v1

    move v1, v7

    goto :goto_2f3

    :cond_2f0
    move-object/from16 v2, p6

    move v1, v3

    :goto_2f3
    if-eqz v2, :cond_379

    if-eqz v9, :cond_379

    move/from16 v6, v23

    .line 2281
    invoke-virtual {v2, v6}, Lcom/android/server/wm/WindowProcessController;->areBackgroundActivityStartsAllowed(I)Z

    move-result v9

    if-eqz v9, :cond_32a

    .line 2282
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v0, :cond_328

    .line 2283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Background activity start allowed: callerApp process (pid = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2284
    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") is allowed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2283
    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_328
    const/4 v0, 0x0

    return v0

    .line 2289
    :cond_32a
    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    .line 2290
    invoke-virtual {v9, v1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcesses(I)Landroid/util/ArraySet;

    move-result-object v9

    if-eqz v9, :cond_37b

    .line 2292
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    :goto_33a
    if-ltz v10, :cond_37b

    .line 2293
    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowProcessController;

    if-eq v11, v2, :cond_375

    .line 2295
    invoke-virtual {v11, v6}, Lcom/android/server/wm/WindowProcessController;->areBackgroundActivityStartsAllowed(I)Z

    move-result v13

    if-eqz v13, :cond_375

    .line 2296
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v0, :cond_373

    .line 2297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Background activity start allowed: process "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2298
    invoke-virtual {v11}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is allowed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2297
    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_373
    const/4 v11, 0x0

    return v11

    :cond_375
    const/4 v11, 0x0

    add-int/lit8 v10, v10, -0x1

    goto :goto_33a

    :cond_379
    move/from16 v6, v23

    :cond_37b
    const/4 v11, 0x0

    .line 2307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Background activity start [callingPackage: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "; callingUid: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "; appSwitchState: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; isCallingUidForeground: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v21

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "; callingUidHasAnyVisibleWindow: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v22

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "; callingUidProcState: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v9, Landroid/app/ActivityManager;

    const-string v10, "PROCESS_STATE_"

    move/from16 v13, v20

    .line 2312
    invoke-static {v9, v10, v13}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "; isCallingUidPersistentSystemProcess: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v16

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "; realCallingUid: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "; isRealCallingUidForeground: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v18

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "; realCallingUidHasAnyVisibleWindow: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "; realCallingUidProcState: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v9, Landroid/app/ActivityManager;

    move/from16 v14, v19

    .line 2318
    invoke-static {v9, v10, v14}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "; isRealCallingUidPersistentSystemProcess: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "; originatingPendingIntent: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p7

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "; allowBackgroundActivityStart: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "; intent: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p9

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "; callerApp: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "; inVisibleTask: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_42e

    .line 2326
    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->hasActivityInVisibleTask()Z

    move-result v9

    if-eqz v9, :cond_42e

    const/4 v9, 0x1

    goto :goto_42f

    :cond_42e
    move v9, v11

    :goto_42f
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2307
    invoke-static {v12, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isActivityStartsLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_45f

    .line 2330
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    if-eqz v8, :cond_450

    const/4 v10, 0x1

    goto :goto_451

    :cond_450
    move v10, v11

    :goto_451
    move-object/from16 v1, p9

    move/from16 v3, p1

    move-object/from16 v4, p3

    move v5, v13

    move/from16 v7, p4

    move v8, v14

    move v9, v15

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wm/ActivityMetricsLogger;->logAbortedBgActivityStart(Landroid/content/Intent;Lcom/android/server/wm/WindowProcessController;ILjava/lang/String;IZIIZZ)V

    :cond_45f
    const/4 v0, 0x1

    return v0
.end method

.method public final shouldCleanLaunchWindowingMode(Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;)Z
    .registers 4

    const/4 p0, 0x1

    if-eqz p2, :cond_a

    .line 4936
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result p2

    if-eqz p2, :cond_a

    return p0

    .line 4940
    :cond_a
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result p2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1a

    .line 4941
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_19

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :cond_1a
    :goto_1a
    return p0
.end method

.method public startActivityInner(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;ZLcom/android/server/uri/NeededUriGrants;)I
    .registers 36
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    move-object/from16 v12, p7

    move-object/from16 v13, p11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move/from16 v5, p6

    move/from16 v6, p5

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p10

    .line 2614
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wm/ActivityStarter;->setInitialState(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;ZILcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)V

    .line 2617
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->computeLaunchingTaskFlags()V

    .line 2619
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->computeSourceRootTask()V

    .line 2621
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget v1, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2625
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 2626
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v1

    const/4 v4, 0x5

    if-ne v1, v4, :cond_38

    move v0, v2

    goto :goto_50

    :cond_4f
    move v0, v3

    .line 2634
    :goto_50
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_5d

    .line 2635
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopLeafTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_5e

    :cond_5d
    const/4 v1, 0x0

    .line 2636
    :goto_5e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->getReusableTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 2639
    iget-object v6, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v6, :cond_8b

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->freezeRecentTasksReordering()Z

    move-result v6

    if-eqz v6, :cond_8b

    iget-object v6, v11, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget v7, v15, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 2640
    invoke-virtual {v6, v7}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v6

    if-eqz v6, :cond_8b

    iget-object v6, v11, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 2641
    invoke-virtual {v6}, Lcom/android/server/wm/RecentTasks;->isFreezeTaskListReorderingSet()Z

    move-result v6

    if-nez v6, :cond_8b

    .line 2642
    iput-boolean v2, v11, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    .line 2643
    iget-object v6, v11, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v6}, Lcom/android/server/wm/RecentTasks;->setFreezeTaskListReordering()V

    :cond_8b
    if-eqz v5, :cond_8f

    move-object v6, v5

    goto :goto_93

    .line 2647
    :cond_8f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->computeTargetTask()Lcom/android/server/wm/Task;

    move-result-object v6

    :goto_93
    if-nez v6, :cond_97

    move v7, v2

    goto :goto_98

    :cond_97
    move v7, v3

    .line 2649
    :goto_98
    iput-object v6, v11, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    .line 2652
    iget-object v8, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v8, :cond_ae

    .line 2653
    invoke-virtual {v11, v8, v5}, Lcom/android/server/wm/ActivityStarter;->shouldCleanLaunchWindowingMode(Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;)Z

    move-result v8

    if-eqz v8, :cond_ae

    .line 2654
    iget-object v8, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8, v3}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 2655
    iget-object v8, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8, v3}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 2658
    :cond_ae
    invoke-virtual {v11, v15, v14, v6}, Lcom/android/server/wm/ActivityStarter;->computeLaunchParams(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V

    .line 2661
    invoke-virtual {v11, v15, v7, v6}, Lcom/android/server/wm/ActivityStarter;->isAllowedToStart(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/Task;)I

    move-result v8

    if-eqz v8, :cond_d5

    .line 2663
    iget-object v0, v15, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_d4

    const/4 v1, -0x1

    .line 2664
    iget-object v2, v15, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v3, v15, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 p0, v0

    move/from16 p1, v1

    move-object/from16 p2, v2

    move/from16 p3, v3

    move/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V

    :cond_d4
    return v8

    .line 2670
    :cond_d5
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    const/4 v9, -0x1

    if-eqz v8, :cond_119

    if-eqz v12, :cond_e1

    .line 2671
    invoke-virtual/range {p7 .. p7}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v8

    goto :goto_e2

    :cond_e1
    move v8, v9

    :goto_e2
    if-eq v8, v9, :cond_119

    .line 2674
    iget-object v10, v11, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 2675
    invoke-virtual {v10}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v10

    if-eq v8, v10, :cond_119

    .line 2676
    iget-object v10, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v10, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    if-eqz v4, :cond_119

    .line 2678
    invoke-virtual {v4, v8}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v4

    if-eqz v4, :cond_119

    .line 2679
    invoke-virtual {v4}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v8, "SpegVirtualDisplay"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_119

    const-string v0, "SPEG"

    const-string v1, "Abort feature because app launch display is changed forcibly"

    .line 2681
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    const/16 v0, 0x66

    return v0

    :cond_119
    if-eqz v6, :cond_125

    .line 2691
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/TaskDisplayArea;->getRootTaskAbove(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v4

    iput-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    .line 2695
    :cond_125
    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v4, :cond_153

    .line 2696
    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    move-result v4

    if-eq v4, v9, :cond_153

    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 2697
    invoke-virtual {v4}, Landroid/content/Intent;->getForceLaunchOverTargetTask()Z

    move-result v4

    if-eqz v4, :cond_153

    .line 2700
    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v4

    if-eqz v4, :cond_146

    .line 2701
    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4, v3}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 2703
    :cond_146
    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v4

    if-eqz v4, :cond_153

    .line 2704
    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4, v3}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 2708
    :cond_153
    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 2710
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v8

    .line 2711
    iget-object v10, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v10, :cond_16a

    .line 2712
    invoke-virtual {v10}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v10

    goto :goto_16b

    :cond_16a
    const/4 v10, 0x0

    .line 2713
    :goto_16b
    iget-boolean v9, v11, Lcom/android/server/wm/ActivityStarter;->mSplitAdjacentRequested:Z

    if-eqz v9, :cond_183

    if-eqz v14, :cond_183

    .line 2714
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v9

    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    if-eq v9, v3, :cond_183

    if-eqz v3, :cond_181

    .line 2715
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v3

    if-eqz v3, :cond_183

    :cond_181
    move v3, v2

    goto :goto_184

    :cond_183
    const/4 v3, 0x0

    :goto_184
    if-nez v8, :cond_193

    if-nez v3, :cond_191

    if-eqz v10, :cond_193

    .line 2717
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v3

    if-nez v3, :cond_191

    goto :goto_193

    :cond_191
    move v3, v2

    goto :goto_194

    :cond_193
    :goto_193
    const/4 v3, 0x0

    .line 2719
    :goto_194
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->isMultiSplitTwoUpModeActivated()Z

    move-result v8

    if-eqz v8, :cond_1a4

    if-eqz v10, :cond_1a4

    .line 2720
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getRootCellStageTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-ne v10, v4, :cond_1a4

    move v4, v2

    goto :goto_1a5

    :cond_1a4
    const/4 v4, 0x0

    :goto_1a5
    if-eqz v3, :cond_1af

    .line 2722
    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {v3, v14}, Lcom/android/server/wm/ChangeTransitionController;->startSplitEnterTransitIfPossible(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_1b8

    :cond_1af
    if-eqz v4, :cond_1b8

    .line 2724
    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {v3}, Lcom/android/server/wm/ChangeTransitionController;->startMultiSplitEnterTransitIfPossible()V

    :cond_1b8
    :goto_1b8
    if-eqz v12, :cond_222

    .line 2728
    invoke-virtual/range {p7 .. p7}, Landroid/app/ActivityOptions;->isDismissSplitBeforeLaunch()Z

    move-result v3

    if-eqz v3, :cond_1c8

    if-eqz v5, :cond_1ce

    .line 2729
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v3

    if-eqz v3, :cond_1ce

    .line 2731
    :cond_1c8
    invoke-static {v12, v15}, Lcom/android/server/wm/ForceLaunchWindowingModeUtils;->shouldDismissSplitBeforeLaunch(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_222

    .line 2735
    :cond_1ce
    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 2736
    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 2737
    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v3

    if-eqz v3, :cond_222

    .line 2738
    invoke-virtual/range {p7 .. p7}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v3

    if-eq v3, v2, :cond_1e3

    .line 2739
    invoke-virtual {v12, v2}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 2741
    :cond_1e3
    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const v4, 0x10a0001

    const v8, 0x10a00e5

    invoke-virtual {v3, v4, v8}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplay(II)V

    .line 2743
    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-eqz v3, :cond_209

    .line 2745
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 2747
    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->getKeyguardTransition()I

    move-result v4

    .line 2746
    invoke-static {v4}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransitOld(I)Z

    move-result v4

    if-nez v4, :cond_209

    .line 2749
    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->freeze()V

    .line 2752
    :cond_209
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_DISMISS_START_SA_LOGGING:Z

    if-eqz v3, :cond_222

    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2753
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v3

    iget v4, v11, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RecentTasks;->isRecentsUid(I)Z

    move-result v3

    if-eqz v3, :cond_222

    const-string v3, "1005"

    const-string v4, "Switch to Full screen"

    .line 2754
    invoke-static {v3, v4}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 2803
    :cond_222
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_SA_LOGGING:Z

    if-eqz v3, :cond_23a

    .line 2804
    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->isFolded()Z

    move-result v3

    if-eqz v3, :cond_233

    const-string v3, "W002"

    goto :goto_235

    :cond_233
    const-string v3, "W005"

    .line 2806
    :goto_235
    iget-object v4, v15, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 2804
    invoke-static {v3, v4}, Lcom/samsung/android/core/CoreSaLogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23a
    const/16 v22, 0x0

    .line 2810
    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v12, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget v3, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 2812
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v18

    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v8, v11, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    move-object v9, v13

    move-object v13, v5

    move-object v10, v14

    move-object/from16 v14, p1

    move-object v2, v15

    move-object/from16 v15, p2

    move/from16 v16, p5

    move/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v20, p11

    move-object/from16 v21, v6

    move-object/from16 v23, v8

    .line 2810
    invoke-virtual/range {v12 .. v23}, Lcom/android/server/wm/MultiTaskingController;->interceptStartActivityLocked(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;IIILandroid/app/ActivityOptions;Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/wm/Task;ZLcom/android/server/wm/ActivityStarter$Request;)Z

    move-result v3

    const/16 v4, 0x64

    if-eqz v3, :cond_269

    return v4

    .line 2821
    :cond_269
    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-eqz v3, :cond_272

    .line 2822
    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityManagerPerformance;->onActivityStartLocked(Lcom/android/server/wm/ActivityRecord;)V

    :cond_272
    if-eqz v7, :cond_276

    const/4 v3, 0x0

    goto :goto_27a

    .line 2828
    :cond_276
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    :goto_27a
    if-eqz v3, :cond_283

    .line 2831
    invoke-virtual {v11, v6, v3, v5, v9}, Lcom/android/server/wm/ActivityStarter;->recycleTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;)I

    move-result v5

    if-eqz v5, :cond_286

    return v5

    :cond_283
    const/4 v5, 0x1

    .line 2836
    iput-boolean v5, v11, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2841
    :cond_286
    iget-object v5, v11, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v5}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_295

    .line 2843
    invoke-virtual {v11, v5, v9}, Lcom/android/server/wm/ActivityStarter;->deliverToCurrentTopIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;)I

    move-result v8

    if-eqz v8, :cond_295

    return v8

    :cond_295
    if-eqz v7, :cond_2c4

    .line 2850
    iget-object v8, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget-object v12, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v13, v11, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v14, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v15, v11, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 2852
    invoke-virtual {v15}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v15

    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    move-object/from16 v17, v5

    iget-object v5, v4, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    move-object/from16 p4, v8

    move-object/from16 p5, v12

    move-object/from16 p6, v13

    move-object/from16 p7, v14

    move/from16 p8, v15

    move-object/from16 p9, v5

    move-object/from16 p10, v4

    .line 2851
    invoke-virtual/range {p4 .. p10}, Lcom/android/server/wm/MultiTaskingController;->interceptNewTaskIfNeededLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/uri/NeededUriGrants;Lcom/android/server/wm/ActivityStarter$Request;)Z

    move-result v4

    if-eqz v4, :cond_2c6

    const/16 v4, 0x64

    return v4

    :cond_2c4
    move-object/from16 v17, v5

    .line 2858
    :cond_2c6
    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    if-nez v4, :cond_2d6

    .line 2859
    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v5, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v8, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v11, v4, v5, v6, v8}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v4

    iput-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 2863
    :cond_2d6
    iget v4, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_301

    .line 2865
    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    if-eqz v4, :cond_301

    .line 2866
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v5

    if-nez v5, :cond_301

    .line 2867
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getRootSideStageTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_301

    .line 2868
    iget-object v5, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-eqz v4, :cond_301

    .line 2869
    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    const-string v5, "adjacent"

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowOrganizerController;->onEnterSplitWithSingleStageStarted(Ljava/lang/String;)V

    :cond_301
    if-eqz v7, :cond_338

    .line 2876
    iget-boolean v3, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v3, :cond_310

    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_310

    .line 2877
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    goto :goto_311

    :cond_310
    const/4 v3, 0x0

    .line 2878
    :goto_311
    invoke-virtual {v11, v3}, Lcom/android/server/wm/ActivityStarter;->setNewTask(Lcom/android/server/wm/Task;)V

    if-eqz v10, :cond_31a

    .line 2881
    iget-boolean v3, v10, Lcom/android/server/wm/ActivityRecord;->mIsAliasActivity:Z

    if-nez v3, :cond_32e

    :cond_31a
    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_383

    const-string v4, "com.samsung.android.multiwindow.activity.alias.targetactivity"

    .line 2883
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_383

    .line 2885
    :cond_32e
    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->setAliasManagedTask()V

    goto :goto_383

    .line 2889
    :cond_338
    iget-boolean v4, v11, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-eqz v4, :cond_383

    .line 2892
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    iput-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mOriginalTopActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v4, 0x0

    .line 2893
    iput-boolean v4, v11, Lcom/android/server/wm/ActivityStarter;->mIsSecureFolderLockExceptionActivity:Z

    .line 2904
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    if-eqz v4, :cond_35b

    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-eqz v4, :cond_35b

    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2906
    invoke-virtual {v4, v5}, Lcom/android/internal/app/AppLockPolicy;->isActivityInExceptionList(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35b

    const/4 v4, 0x1

    goto :goto_35c

    :cond_35b
    const/4 v4, 0x0

    :goto_35c
    iput-boolean v4, v11, Lcom/android/server/wm/ActivityStarter;->isAppLockExceptionActivity:Z

    .line 2907
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    if-eqz v5, :cond_373

    if-eqz v4, :cond_373

    .line 2908
    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mOriginalTopActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_373

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isAlwaysOnTop()Z

    move-result v4

    if-eqz v4, :cond_373

    .line 2909
    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mOriginalTopActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->mIsAppLockExceptionActivityStarting:Z

    :cond_373
    const-string v4, "adding to task"

    .line 2914
    invoke-virtual {v11, v6, v4}, Lcom/android/server/wm/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/wm/Task;Ljava/lang/String;)V

    .line 2916
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_ACTIVITY:Z

    if-eqz v4, :cond_383

    .line 2917
    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v11, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-virtual {v11, v3, v10, v4, v5}, Lcom/android/server/wm/ActivityStarter;->reparentActivitiesToActivityGroupIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskFragment;)V

    .line 2923
    :cond_383
    :goto_383
    iget-boolean v3, v11, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    if-nez v3, :cond_3ae

    iget-boolean v3, v11, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v3, :cond_3ae

    .line 2924
    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    const-string/jumbo v4, "reuseOrNewTask"

    invoke-virtual {v3, v4, v6}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 2925
    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    move-result v3

    if-nez v3, :cond_3ae

    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->isDreaming()Z

    move-result v3

    if-eqz v3, :cond_3ae

    if-nez v0, :cond_3ae

    const/4 v0, 0x1

    .line 2929
    iput-boolean v0, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 2930
    iput-boolean v0, v2, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    .line 2934
    :cond_3ae
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2935
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v2

    .line 2934
    invoke-interface {v0, v9, v2}, Lcom/android/server/uri/UriGrantsManagerInternal;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    .line 2936
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_3fb

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_3fb

    .line 2938
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2939
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 2940
    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-wide/16 v4, 0x0

    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    .line 2943
    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v4, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v5, v11, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2944
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/4 v6, 0x1

    move-object/from16 p4, v0

    move/from16 p5, v4

    move-object/from16 p6, v5

    move/from16 p7, v3

    move/from16 p8, v2

    move/from16 p9, v6

    .line 2943
    invoke-virtual/range {p4 .. p9}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    .line 2947
    :cond_3fb
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v7, :cond_410

    .line 2949
    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v3, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 2951
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    .line 2949
    invoke-static {v2, v3, v4}, Lcom/android/server/wm/EventLogTags;->writeWmCreateTask(III)V

    .line 2954
    :cond_410
    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/16 v3, 0x7535

    .line 2956
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->getStartInfo()Ljava/lang/String;

    move-result-object v4

    .line 2954
    invoke-virtual {v2, v3, v0, v4}, Lcom/android/server/wm/ActivityRecord;->logStartActivity(ILcom/android/server/wm/Task;Ljava/lang/String;)V

    .line 2968
    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_42f

    .line 2969
    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->semSetLaunchOverTargetTask(IZ)V

    goto :goto_430

    :cond_42f
    const/4 v4, 0x0

    .line 2974
    :goto_430
    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->clearLastPausedActivity()V

    .line 2976
    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/RootWindowContainer;->startPowerModeLaunchIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    if-eq v0, v1, :cond_44a

    .line 2979
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v1

    if-nez v1, :cond_44a

    const/4 v1, 0x1

    goto :goto_44b

    :cond_44a
    const/4 v1, 0x0

    .line 2980
    :goto_44b
    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v5, v11, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    const-string/jumbo v6, "startActivityFromRecents"

    .line 2983
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v17

    move/from16 p6, v7

    move/from16 p7, v1

    move-object/from16 p8, v4

    move-object/from16 p9, p2

    move/from16 p10, v5

    .line 2980
    invoke-virtual/range {p3 .. p10}, Lcom/android/server/wm/Task;->startActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;ZZLandroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Z)V

    .line 2984
    iget-boolean v1, v11, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v1, :cond_4c2

    .line 2985
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2986
    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->isTopActivityFocusable()Z

    move-result v2

    if-eqz v2, :cond_4b4

    if-eqz v1, :cond_48c

    .line 2987
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v2

    if-eqz v2, :cond_48c

    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v2, v1, :cond_48c

    goto :goto_4b4

    .line 3008
    :cond_48c
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->isTopActivityFocusable()Z

    move-result v1

    if-eqz v1, :cond_4a6

    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    .line 3009
    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->isTopDisplayFocusedRootTask(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-nez v1, :cond_4a6

    .line 3010
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    const-string/jumbo v2, "startActivityInner"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 3012
    :cond_4a6
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-boolean v5, v11, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    goto :goto_4c2

    .line 2997
    :cond_4b4
    :goto_4b4
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 3001
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 3016
    :cond_4c2
    :goto_4c2
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->updateUserRootTask(ILcom/android/server/wm/Task;)V

    .line 3019
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 3020
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v2, v11, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;)V

    .line 3025
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_504

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->isLaunchIntoPip()Z

    move-result v0

    if-eqz v0, :cond_504

    if-eqz v10, :cond_504

    .line 3026
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-ne v0, v1, :cond_504

    iget-boolean v0, v11, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    if-nez v0, :cond_504

    .line 3028
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v2, "launch-into-pip"

    invoke-virtual {v0, v1, v10, v2}, Lcom/android/server/wm/RootWindowContainer;->moveActivityToPinnedRootTask(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    :cond_504
    if-eqz v10, :cond_50e

    .line 3034
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_50e

    const/4 v5, 0x1

    goto :goto_50f

    :cond_50e
    const/4 v5, 0x0

    .line 3035
    :goto_50f
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_51a

    move v0, v1

    goto :goto_51b

    :cond_51a
    const/4 v0, 0x0

    .line 3036
    :goto_51b
    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v2

    xor-int/2addr v1, v2

    if-eqz v5, :cond_533

    if-eqz v7, :cond_533

    if-eqz v0, :cond_533

    if-eqz v1, :cond_533

    .line 3039
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FreeformController;->showNotSupportMultiWindowToast(Lcom/android/server/wm/ActivityRecord;)V

    .line 3042
    :cond_533
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    if-eqz v0, :cond_543

    iget-boolean v0, v11, Lcom/android/server/wm/ActivityStarter;->isAppLockExceptionActivity:Z

    if-eqz v0, :cond_543

    .line 3043
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mOriginalTopActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_543

    const/4 v1, 0x0

    .line 3044
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mIsAppLockExceptionActivityStarting:Z

    goto :goto_544

    :cond_543
    const/4 v1, 0x0

    :goto_544
    return v1
.end method

.method public final startActivityUnchecked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;ZLcom/android/server/uri/NeededUriGrants;)I
    .registers 22

    move-object v7, p0

    move-object v8, p1

    const-string v9, "adjacent"

    .line 2458
    iget-object v0, v8, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2459
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v1

    if-nez v1, :cond_18

    .line 2460
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    move-result-object v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    .line 2461
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TransitionController;->createTransition(I)Lcom/android/server/wm/Transition;

    move-result-object v1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    move-object v5, v1

    .line 2462
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->takeRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object v6

    if-eqz v5, :cond_25

    if-eqz v6, :cond_25

    .line 2464
    invoke-virtual {v5, v6}, Lcom/android/server/wm/Transition;->setRemoteTransition(Landroid/window/RemoteTransition;)V

    .line 2466
    :cond_25
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    const-wide/16 v1, 0x20

    .line 2468
    :try_start_2a
    iget-object v0, v7, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    const-string/jumbo v0, "startActivityInner"

    .line 2469
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2470
    invoke-virtual/range {p0 .. p11}, Lcom/android/server/wm/ActivityStarter;->startActivityInner(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;ZLcom/android/server/uri/NeededUriGrants;)I

    move-result v0
    :try_end_39
    .catchall {:try_start_2a .. :try_end_39} :catchall_67

    .line 2474
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p7

    move v4, v0

    .line 2478
    :try_start_41
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStarter;->handleStartResult(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/Transition;Landroid/window/RemoteTransition;)Lcom/android/server/wm/Task;

    move-result-object v1
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_5f

    .line 2485
    iget-object v2, v7, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 2488
    iget-object v2, v7, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 2489
    invoke-virtual {v2}, Lcom/android/server/wm/WindowOrganizerController;->whileEnterSplitWithSingleStage()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 2490
    iget-object v2, v7, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    invoke-virtual {v2, v9}, Lcom/android/server/wm/WindowOrganizerController;->onEnterSplitWithSingleStageFinished(Ljava/lang/String;)V

    .line 2495
    :cond_5b
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityStarter;->postStartActivityProcessing(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;)V

    return v0

    :catchall_5f
    move-exception v0

    move-object v1, v0

    .line 2485
    iget-object v0, v7, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 2486
    throw v1

    :catchall_67
    move-exception v0

    .line 2474
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const/16 v4, -0x60

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p7

    .line 2478
    :try_start_71
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStarter;->handleStartResult(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/Transition;Landroid/window/RemoteTransition;)Lcom/android/server/wm/Task;
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_8b

    .line 2485
    iget-object v1, v7, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 2488
    iget-object v1, v7, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 2489
    invoke-virtual {v1}, Lcom/android/server/wm/WindowOrganizerController;->whileEnterSplitWithSingleStage()Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 2490
    iget-object v1, v7, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    invoke-virtual {v1, v9}, Lcom/android/server/wm/WindowOrganizerController;->onEnterSplitWithSingleStageFinished(Ljava/lang/String;)V

    .line 2494
    :cond_8a
    throw v0

    :catchall_8b
    move-exception v0

    move-object v1, v0

    .line 2485
    iget-object v0, v7, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 2486
    throw v1
.end method

.method public startResolvedActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;)V
    .registers 25

    move-object v13, p0

    move-object/from16 v0, p1

    .line 4781
    :try_start_3
    iget-object v1, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 4782
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    move-result-object v14

    const-string/jumbo v1, "startResolvedActivity"

    .line 4783
    iput-object v1, v13, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    .line 4784
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v13, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    .line 4785
    iput-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v12, p9

    .line 4786
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/wm/ActivityStarter;->startActivityUnchecked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;ZLcom/android/server/uri/NeededUriGrants;)I

    move-result v0

    iput v0, v13, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    .line 4790
    iget-object v0, v13, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v13, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, v1, :cond_45

    const/4 v0, 0x1

    goto :goto_46

    :cond_45
    const/4 v0, 0x0

    .line 4791
    :goto_46
    iget-object v1, v13, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v1

    iget v2, v13, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    iget-object v3, v13, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    move-object/from16 p1, v1

    move-object/from16 p2, v14

    move/from16 p3, v2

    move/from16 p4, v0

    move-object/from16 p5, v3

    move-object/from16 p6, p7

    invoke-virtual/range {p1 .. p6}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;IZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V
    :try_end_5f
    .catchall {:try_start_3 .. :try_end_5f} :catchall_63

    .line 4795
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    return-void

    :catchall_63
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 4796
    throw v0
.end method

.method public final waitResultIfNeeded(Landroid/app/WaitResult;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)I
    .registers 7

    .line 1174
    iget v0, p1, Landroid/app/WaitResult;->result:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_22

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    .line 1175
    iget-boolean v2, p2, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v2, :cond_15

    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 1176
    invoke-virtual {p2, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_22

    .line 1183
    :cond_15
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskSupervisor;->waitActivityVisibleOrLaunched(Landroid/app/WaitResult;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)V

    if-nez v0, :cond_21

    .line 1184
    iget p0, p1, Landroid/app/WaitResult;->result:I

    if-ne p0, v1, :cond_21

    return v1

    :cond_21
    return v0

    :cond_22
    :goto_22
    const/4 p0, 0x0

    .line 1178
    iput-boolean p0, p1, Landroid/app/WaitResult;->timeout:Z

    .line 1179
    iget-object p0, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iput-object p0, p1, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    const-wide/16 p2, 0x0

    .line 1180
    iput-wide p2, p1, Landroid/app/WaitResult;->totalTime:J

    return v0
.end method
