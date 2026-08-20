.class public Lcom/android/server/wm/ActivityTaskManagerService;
.super Landroid/app/IActivityTaskManager$Stub;
.source "ActivityTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityTaskManagerService$LocalService;,
        Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;,
        Lcom/android/server/wm/ActivityTaskManagerService$H;,
        Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;,
        Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;,
        Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;,
        Lcom/android/server/wm/ActivityTaskManagerService$ActiveLaunchReceiver;,
        Lcom/android/server/wm/ActivityTaskManagerService$HotPath;,
        Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;,
        Lcom/android/server/wm/ActivityTaskManagerService$LayoutReason;,
        Lcom/android/server/wm/ActivityTaskManagerService$PowerModeReason;,
        Lcom/android/server/wm/ActivityTaskManagerService$AppSwitchState;,
        Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;
    }
.end annotation


# static fields
.field public static final ACTIVITY_BG_START_GRACE_PERIOD_MS:J = 0x2710L

.field public static final ANIMATE:Z = true

.field public static final APP_SWITCH_ALLOW:I = 0x2

.field public static final APP_SWITCH_DISALLOW:I = 0x0

.field public static final APP_SWITCH_FG_ONLY:I = 0x1

.field public static final DOZE_ANIMATING_STATE_RETAIN_TIME_MS:J = 0x7d0L

.field public static final DUMP_ACTIVITIES_CMD:Ljava/lang/String; = "activities"

.field public static final DUMP_ACTIVITIES_SHORT_CMD:Ljava/lang/String; = "a"

.field public static final DUMP_CONTAINERS_CMD:Ljava/lang/String; = "containers"

.field public static final DUMP_LASTANR_CMD:Ljava/lang/String; = "lastanr"

.field public static final DUMP_LASTANR_TRACES_CMD:Ljava/lang/String; = "lastanr-traces"

.field public static final DUMP_MULTI_TASKING_CMD:Ljava/lang/String; = "multitasking"

.field public static final DUMP_MULTI_TASKING_SHORT_CMD:Ljava/lang/String; = "mt"

.field public static final DUMP_RECENTS_CMD:Ljava/lang/String; = "recents"

.field public static final DUMP_RECENTS_SHORT_CMD:Ljava/lang/String; = "r"

.field public static final DUMP_STARTER_CMD:Ljava/lang/String; = "starter"

.field public static final DUMP_TOP_RESUMED_ACTIVITY:Ljava/lang/String; = "top-resumed"

.field public static final INSTRUMENTATION_KEY_DISPATCHING_TIMEOUT_MILLIS:J = 0xea60L

.field public static final INTENT_ACTIVE_LAUNCH:Ljava/lang/String; = "com.samsung.DO_ACTIVE_LAUNCH"

.field public static final INTENT_ACTIVE_LAUNCH_FOR_KNOX:Ljava/lang/String; = "com.samsung.DO_ACTIVE_LAUNCH_FOR_KNOX"

.field public static final INTENT_ACTIVE_LAUNCH_FOR_KNOX_LAUNCHER:Ljava/lang/String; = "com.samsung.DO_ACTIVE_LAUNCH_FOR_KNOX_LAUNCHER"

.field public static final INTENT_COOLDOWN:Ljava/lang/String; = "com.samsung.CHECK_COOLDOWN_LEVEL"

.field public static final INTENT_INTERACTION_ICE:Ljava/lang/String; = "intent.action.INTERACTION_ICE"

.field public static final LAYOUT_REASON_CONFIG_CHANGED:I = 0x1

.field public static final LAYOUT_REASON_VISIBILITY_CHANGED:I = 0x2

.field public static final PENDING_ASSIST_EXTRAS_LONG_TIMEOUT:I = 0x7d0

.field public static final PENDING_ASSIST_EXTRAS_TIMEOUT:I = 0x1f4

.field public static final PENDING_AUTOFILL_ASSIST_STRUCTURE_TIMEOUT:I = 0x7d0

.field public static final POWER_MODE_REASON_ALL:I = 0x3

.field public static final POWER_MODE_REASON_CHANGE_DISPLAY:I = 0x2

.field public static final POWER_MODE_REASON_START_ACTIVITY:I = 0x1

.field public static final POWER_MODE_REASON_UNKNOWN_VISIBILITY:I = 0x4

.field public static final POWER_MODE_UNKNOWN_VISIBILITY_TIMEOUT_MS:J = 0x3e8L

.field public static final RELAUNCH_REASON_FREE_RESIZE:I = 0x2

.field public static final RELAUNCH_REASON_NONE:I = 0x0

.field public static final RELAUNCH_REASON_WINDOWING_MODE_RESIZE:I = 0x1

.field public static final RESUME_FG_APP_SWITCH_MS:J = 0x1f4L

.field public static final SHOW_KNOX_SECURITY_TOAST:I = 0x259

.field public static final STRING_BATT_TEMP_LEVEL:Ljava/lang/String; = "batt_temp_level"

.field public static final STRING_CHECK_COOLDOWN_LEVEL:Ljava/lang/String; = "check_cooldown_level"

.field public static final STRING_CHECK_COOLDOWN_LIST:Ljava/lang/String; = "check_cooldown_list"

.field public static final STRING_OVERHEAT_ID:Ljava/lang/String; = "overheat_id"

.field public static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field public static final TAG_FOCUS:Ljava/lang/String; = "ActivityTaskManager"

.field public static final TAG_ROOT_TASK:Ljava/lang/String; = "ActivityTaskManager"

.field public static final TAG_SIOP:Ljava/lang/String; = "checkingSIOP"

.field public static final TAG_SPEG:Ljava/lang/String; = "SPEG"

.field public static final TAG_SWITCH:Ljava/lang/String; = "ActivityTaskManager"

.field public static mKnoxInfo:Landroid/os/Bundle;


# instance fields
.field public final GL_ES_VERSION:I

.field public knoxVersionInfo:Landroid/os/Bundle;

.field public mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

.field public mAccessibilityServiceUids:[I

.field public final mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

.field public mActiveVoiceInteractionServiceComponent:Landroid/content/ComponentName;

.field public mActivityClientController:Lcom/android/server/wm/ActivityClientController;

.field public mActivityInterceptorCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/ActivityInterceptorCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mActivityStartController:Lcom/android/server/wm/ActivityStartController;

.field public final mAllowAppSwitchUids:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public mAmInternal:Landroid/app/ActivityManagerInternal;

.field public final mAnrController:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/AnrController;",
            ">;"
        }
    .end annotation
.end field

.field public mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mAppPairController:Lcom/android/server/wm/AppPairController;

.field public volatile mAppSwitchesState:I

.field public mAppWarnings:Lcom/android/server/wm/AppWarnings;

.field public final mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

.field public mBackgroundActivityStartCallback:Lcom/android/server/wm/BackgroundActivityStartCallback;

.field public mBatteryOverheatLevel:I

.field public mCb4Task:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Landroid/os/RemoteCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

.field public mCheckSIOPLevelList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final mCompanionAppUidsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

.field public mConfigurationSeq:I

.field public mContext:Landroid/content/Context;

.field public mController:Landroid/app/IActivityController;

.field public mControllerDescription:Ljava/lang/String;

.field public mControllerIsAMonkey:Z

.field public mCooldownLevelReceiver:Landroid/content/BroadcastReceiver;

.field public mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

.field public mDevEnableNonResizableMultiWindow:Z

.field public mDeviceOwnerUid:I

.field public mDexCompatController:Lcom/android/server/wm/DexCompatController;

.field public mDexController:Lcom/android/server/wm/DexController;

.field public mDexDockingController:Lcom/android/server/wm/DexDockingController;

.field public mDexHelpController:Lcom/android/server/wm/DexHelpController;

.field public volatile mDreaming:Z

.field public mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

.field public final mFactoryTest:I

.field public mFoldStarManagerService:Lcom/android/server/wm/FoldStarManagerService;

.field public mForceResizableActivities:Z

.field public mFreeformController:Lcom/android/server/wm/FreeformController;

.field public mGlobalAssetsSeq:I

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public final mGlobalLockWithoutBoost:Ljava/lang/Object;

.field public mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

.field public mHasHeavyWeightFeature:Z

.field public mHasLeanbackFeature:Z

.field public volatile mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

.field public volatile mHomeProcess:Lcom/android/server/wm/WindowProcessController;

.field public final mIdsLock:Ljava/lang/Object;

.field public mIdsReceiver:Landroid/content/BroadcastReceiver;

.field public mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

.field public final mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mKeyguardController:Lcom/android/server/wm/KeyguardController;

.field public mKeyguardShown:Z

.field public mLargeScreenSmallestScreenWidthDp:I

.field public mLastANRState:Ljava/lang/String;

.field public mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field public volatile mLastStopAppSwitchesTime:J

.field public mLaunchPowerModeReasons:I

.field public mLayoutReasons:I

.field public final mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

.field public mLockTaskController:Lcom/android/server/wm/LockTaskController;

.field public final mMWControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/IController;",
            ">;"
        }
    .end annotation
.end field

.field public mMinPercentageMultiWindowSupportHeight:F

.field public mMinPercentageMultiWindowSupportWidth:F

.field public mMultiStarController:Lcom/android/server/wm/MultiStarController;

.field public mMultiTaskingBinder:Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

.field public final mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

.field public mMultiTaskingHelpController:Lcom/android/server/wm/MultiTaskingHelpController;

.field public mMultiTaskingTransitController:Lcom/android/server/wm/MultiTaskingTransitionController;

.field public mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

.field public mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

.field public mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

.field public mNaturalSwitchingController:Lcom/android/server/wm/NaturalSwitchingController;

.field public mOccluding:Z

.field public mOverheatTextId:I

.field public mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

.field public final mPendingAssistExtras:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;",
            ">;"
        }
    .end annotation
.end field

.field public mPendingIntentController:Lcom/android/server/am/PendingIntentController;

.field public mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

.field public mPersonaActivityHelper:Lcom/android/server/wm/PersonaActivityHelper;

.field public mPmInternal:Landroid/content/pm/PackageManagerInternal;

.field public mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public mPrepareOccluding:Z

.field public volatile mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

.field public mPreviousProcessVisibleTime:J

.field public final mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

.field public final mProcessNames:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/server/wm/WindowProcessController;",
            ">;"
        }
    .end annotation
.end field

.field public mProfileApp:Ljava/lang/String;

.field public mProfileProc:Lcom/android/server/wm/WindowProcessController;

.field public mProfilerInfo:Landroid/app/ProfilerInfo;

.field public mRecentTasks:Lcom/android/server/wm/RecentTasks;

.field public mRemoteAppController:Lcom/android/server/wm/RemoteAppController;

.field public mRespectsActivityMinWidthHeightMultiWindow:I

.field public volatile mRetainPowerModeAndTopProcessState:Z

.field public mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field public mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

.field public mSIOPLevel:I

.field public final mScreenObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;",
            ">;"
        }
    .end annotation
.end field

.field public mSetClearIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mSettingsObserver:Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;

.field public mShowDialogs:Z

.field public mShuttingDown:Z

.field public volatile mSleeping:Z

.field public mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field public mSupportedSystemLocales:[Ljava/lang/String;

.field public mSupportsExpandedPictureInPicture:Z

.field public mSupportsFreeformWindowManagement:Z

.field public mSupportsMultiDisplay:Z

.field public mSupportsMultiWindow:Z

.field public mSupportsNonResizableMultiWindow:I

.field public mSupportsPictureInPicture:Z

.field public mSupportsSplitScreenMultiWindow:Z

.field public mSuppressResizeConfigChanges:Z

.field public mSysUiServiceComponent:Landroid/content/ComponentName;

.field public final mSystemThread:Landroid/app/ActivityThread;

.field public mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

.field public mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

.field public mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

.field public mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public mTempConfig:Landroid/content/res/Configuration;

.field public mThumbnailHeight:I

.field public mThumbnailWidth:I

.field public final mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

.field public mTopAction:Ljava/lang/String;

.field public volatile mTopApp:Lcom/android/server/wm/WindowProcessController;

.field public mTopComponent:Landroid/content/ComponentName;

.field public mTopData:Ljava/lang/String;

.field public volatile mTopProcessState:I

.field public mTracedResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field public mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

.field public final mUiContext:Landroid/content/Context;

.field public mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

.field public final mUpdateLock:Landroid/os/UpdateLock;

.field public final mUpdateOomAdjRunnable:Ljava/lang/Runnable;

.field public mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field public mUserManager:Lcom/android/server/pm/UserManagerService;

.field public mViSessionId:I

.field public final mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

.field public mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mVr2dDisplayId:I

.field public mVrController:Lcom/android/server/wm/VrController;

.field public mWindowManager:Lcom/android/server/wm/WindowManagerService;

.field public mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;


# direct methods
.method public static synthetic $r8$lambda$0lt5hsgGpP8ewA1uu12UgfVfgEw(Lcom/android/server/wm/ActivityTaskManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->cancelHeavyWeightProcessNotification(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$2Ae9rOhU_rxjDvbfiEcZnfsYND4(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->lambda$ensureConfigOnAllDisplays$11(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9eZij5pKjqlgH-t4CKrfydnl8PE(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->lambda$onSystemReady$0(Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HEMTEeC3fp_gLEGxj_TZLgVqsq8(Lcom/android/server/wm/ActivityTaskManagerService;ZZLcom/android/server/wm/DisplayContent;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->lambda$setLockScreenShown$2(ZZLcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Hrulu7IODVY-z92COBplu0AHjIY(Lcom/android/server/wm/ActivityTaskManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->lambda$onScreenAwakeChanged$4(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$MtzT3duh8kQ2bjJFaIfQXqZxIHA(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->lambda$sendAppStateBroadcaster$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$O7Y1K-N6p-Y3DCTl2XFOfUnAshk(Lcom/android/server/wm/ActivityTaskManagerService;ILcom/android/server/wm/DisplayContent;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->lambda$keyguardGoingAway$5(ILcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pb3mqYGwR6fbB4mRY6BHYYLEmAI(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->lambda$enterPictureInPictureMode$6(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TSJZNEWioDqyyi2gJRzm1pSotTA(Lcom/android/server/wm/ActivityTaskManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->lambda$setLockScreenShown$3(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$TT0YbbWBG84zQ_gh-Fc8KNaFVgo(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->lambda$updateConfigurationLocked$9(Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cB4k8uAIgFV-rmxpnihi_DiMpv4(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;Landroid/content/Intent;I)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->postHeavyWeightProcessNotification(Lcom/android/server/wm/WindowProcessController;Landroid/content/Intent;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$e9LHZ_OEClmjOdIWgGsYvSa1b6A(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/DisplayContent;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->lambda$ensureConfigOnAllDisplays$12(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jUyRSTTbV7R48fMYbKlQDGoimpo(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->lambda$applyUpdateVrModeLocked$7(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mh3mIOX-72dixanN8l_d8iGBecE(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/os/RemoteCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->lambda$notifyDedicated$14(ILandroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u5Bsqn0V30W4H11IdHlFMtgzOR8(Lcom/android/server/wm/ActivityTaskManagerService;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->lambda$postFinishBooting$10(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$uDPnzqVuuoVSFA7RJcXFWsrCwrY(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/res/Configuration;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->sendPutConfigurationForUserMsg(ILandroid/content/res/Configuration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w7h5Q1BiVoM4kD4WVojhomEoRMA(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->lambda$scheduleAppGcsLocked$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$z08o0x4a5pPwARKZa70FnH_UE40(Lcom/android/server/wm/ActivityTaskManagerService;ZLcom/android/server/wm/ActivityRecord;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->lambda$applyUpdateLockStateLocked$1(ZLcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zOgfuONaNuUgmbx61WH2FkS13Xw(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->lambda$hasWallpaperBackgroundForLetterboxLocked$15(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityInterceptorCallbacks(Lcom/android/server/wm/ActivityTaskManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityInterceptorCallbacks:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppSwitchesState(Lcom/android/server/wm/ActivityTaskManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCheckSIOPLevelList(Lcom/android/server/wm/ActivityTaskManagerService;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCheckSIOPLevelList:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCompanionAppUidsMap(Lcom/android/server/wm/ActivityTaskManagerService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompanionAppUidsMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIdsLock(Lcom/android/server/wm/ActivityTaskManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mIdsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMWControllers(Lcom/android/server/wm/ActivityTaskManagerService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMWControllers:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOverheatTextId(Lcom/android/server/wm/ActivityTaskManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mOverheatTextId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPreviousProcessVisibleTime(Lcom/android/server/wm/ActivityTaskManagerService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcessVisibleTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmRecentTasks(Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/RecentTasks;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRetainPowerModeAndTopProcessState(Lcom/android/server/wm/ActivityTaskManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRetainPowerModeAndTopProcessState:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShowDialogs(Lcom/android/server/wm/ActivityTaskManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShowDialogs:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSleeping(Lcom/android/server/wm/ActivityTaskManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmAccessibilityServiceUids(Lcom/android/server/wm/ActivityTaskManagerService;[I)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAccessibilityServiceUids:[I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAppSwitchesState(Lcom/android/server/wm/ActivityTaskManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmBackgroundActivityStartCallback(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/BackgroundActivityStartCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackgroundActivityStartCallback:Lcom/android/server/wm/BackgroundActivityStartCallback;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCheckSIOPLevelList(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/util/HashMap;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCheckSIOPLevelList:Ljava/util/HashMap;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDreaming(Lcom/android/server/wm/ActivityTaskManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDreaming:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmOverheatTextId(Lcom/android/server/wm/ActivityTaskManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mOverheatTextId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRetainPowerModeAndTopProcessState(Lcom/android/server/wm/ActivityTaskManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRetainPowerModeAndTopProcessState:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcanCloseSystemDialogs(Lcom/android/server/wm/ActivityTaskManagerService;II)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->canCloseSystemDialogs(II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetAppTasks(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;I)Ljava/util/List;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppTasks(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetIdsClearSet(Lcom/android/server/wm/ActivityTaskManagerService;)Ljava/util/Set;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getIdsClearSet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monLocalVoiceInteractionStartedLocked(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->onLocalVoiceInteractionStartedLocked(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpendingAssistExtrasTimedOut(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->pendingAssistExtrasTimedOut(Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstart(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->start()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartActivityAsUser(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;IZ)I
    .registers 14

    invoke-virtual/range {p0 .. p13}, Lcom/android/server/wm/ActivityTaskManagerService;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;IZ)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mupdateConfigurationLocked(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZ)Z
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mupdateEventDispatchingLocked(Lcom/android/server/wm/ActivityTaskManagerService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateEventDispatchingLocked(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFontScaleIfNeeded(Lcom/android/server/wm/ActivityTaskManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateFontScaleIfNeeded(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFontWeightAdjustmentIfNeeded(Lcom/android/server/wm/ActivityTaskManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateFontWeightAdjustmentIfNeeded(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateShouldShowDialogsLocked(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/res/Configuration;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateShouldShowDialogsLocked(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwriteSleepStateToProto(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/util/proto/ProtoOutputStream;IZ)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->writeSleepStateToProto(Landroid/util/proto/ProtoOutputStream;IZ)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 995
    invoke-direct {p0}, Landroid/app/IActivityTaskManager$Stub;-><init>()V

    const/4 v0, -0x1

    .line 406
    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSIOPLevel:I

    .line 407
    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mBatteryOverheatLevel:I

    .line 408
    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mOverheatTextId:I

    .line 409
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCheckSIOPLevelList:Ljava/util/HashMap;

    .line 495
    new-instance v1, Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-direct {v1}, Lcom/android/server/wm/WindowManagerGlobalLock;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 503
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    .line 511
    new-instance v1, Lcom/android/server/wm/MirrorActiveUids;

    invoke-direct {v1}, Lcom/android/server/wm/MirrorActiveUids;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    .line 513
    new-instance v1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    .line 515
    new-instance v1, Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-direct {v1}, Lcom/android/server/wm/WindowProcessControllerMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    const/4 v1, 0x0

    .line 535
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardShown:Z

    const/16 v2, 0x3e8

    .line 539
    iput v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mViSessionId:I

    .line 552
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingAssistExtras:Ljava/util/ArrayList;

    .line 559
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompanionAppUidsMap:Ljava/util/Map;

    .line 572
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityInterceptorCallbacks:Landroid/util/SparseArray;

    .line 578
    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    invoke-direct {v2}, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    .line 587
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mIdsLock:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 611
    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportedSystemLocales:[Ljava/lang/String;

    .line 618
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    const/4 v3, 0x2

    .line 624
    iput v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesState:I

    .line 652
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAnrController:Ljava/util/List;

    .line 653
    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 654
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mControllerIsAMonkey:Z

    const-string v4, "android.intent.action.MAIN"

    .line 660
    iput-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopAction:Ljava/lang/String;

    .line 664
    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileApp:Ljava/lang/String;

    .line 665
    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileProc:Lcom/android/server/wm/WindowProcessController;

    .line 666
    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 678
    new-instance v4, Landroid/os/UpdateLock;

    const-string v5, "immersive"

    invoke-direct {v4, v5}, Landroid/os/UpdateLock;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    .line 684
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAllowAppSwitchUids:Landroid/util/SparseArray;

    .line 765
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    .line 768
    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVr2dDisplayId:I

    .line 774
    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 780
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->knoxVersionInfo:Landroid/os/Bundle;

    .line 809
    iput v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    const/4 v3, 0x1

    .line 853
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShowDialogs:Z

    .line 856
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    .line 903
    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mControllerDescription:Ljava/lang/String;

    new-array v3, v1, [I

    .line 909
    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAccessibilityServiceUids:[I

    .line 911
    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDeviceOwnerUid:I

    .line 959
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerService$1;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateOomAdjRunnable:Ljava/lang/Runnable;

    .line 967
    new-instance v0, Lcom/android/server/wm/MultiTaskingController;

    invoke-direct {v0, p0}, Lcom/android/server/wm/MultiTaskingController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 969
    new-instance v0, Lcom/android/server/wm/MultiTaskingBinder;

    invoke-direct {v0, p0}, Lcom/android/server/wm/MultiTaskingBinder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingBinder:Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    .line 979
    new-instance v0, Lcom/android/server/wm/MultiStarController;

    invoke-direct {v0, p0}, Lcom/android/server/wm/MultiStarController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiStarController:Lcom/android/server/wm/MultiStarController;

    .line 984
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerService$2;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMWControllers:Ljava/util/ArrayList;

    .line 1177
    new-instance v3, Lcom/android/server/wm/ActivityTaskManagerService$3;

    invoke-direct {v3, p0}, Lcom/android/server/wm/ActivityTaskManagerService$3;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mIdsReceiver:Landroid/content/BroadcastReceiver;

    .line 1206
    new-instance v3, Lcom/android/server/wm/ActivityTaskManagerService$4;

    invoke-direct {v3, p0}, Lcom/android/server/wm/ActivityTaskManagerService$4;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCooldownLevelReceiver:Landroid/content/BroadcastReceiver;

    .line 8746
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCb4Task:Ljava/util/Optional;

    .line 9011
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPrepareOccluding:Z

    .line 9012
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mOccluding:Z

    .line 996
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 997
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    .line 998
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSystemThread:Landroid/app/ActivityThread;

    .line 999
    invoke-virtual {p1}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    .line 1000
    new-instance p1, Lcom/android/server/wm/ClientLifecycleManager;

    invoke-direct {p1}, Lcom/android/server/wm/ClientLifecycleManager;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    .line 1001
    new-instance p1, Lcom/android/server/wm/VisibleActivityProcessTracker;

    invoke-direct {p1, p0}, Lcom/android/server/wm/VisibleActivityProcessTracker;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    .line 1002
    new-instance p1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    invoke-direct {p1, p0}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string/jumbo p1, "ro.opengles.version"

    .line 1003
    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->GL_ES_VERSION:I

    .line 1004
    new-instance p1, Lcom/android/server/wm/WindowOrganizerController;

    invoke-direct {p1, p0}, Lcom/android/server/wm/WindowOrganizerController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 1005
    iget-object v1, p1, Lcom/android/server/wm/WindowOrganizerController;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 1006
    iget-object p1, p1, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 1008
    invoke-static {}, Lcom/android/server/wm/BackNavigationController;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_132

    .line 1009
    new-instance v2, Lcom/android/server/wm/BackNavigationController;

    invoke-direct {v2}, Lcom/android/server/wm/BackNavigationController;-><init>()V

    :cond_132
    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    .line 1018
    new-instance p1, Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1, p0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;-><init>(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 1023
    new-instance p1, Lcom/android/server/wm/MultiTaskingTransitionController;

    invoke-direct {p1, p0}, Lcom/android/server/wm/MultiTaskingTransitionController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingTransitController:Lcom/android/server/wm/MultiTaskingTransitionController;

    .line 1024
    new-instance p1, Lcom/android/server/wm/ChangeTransitionController;

    invoke-direct {p1, p0}, Lcom/android/server/wm/ChangeTransitionController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 1025
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingTransitController:Lcom/android/server/wm/MultiTaskingTransitionController;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1026
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1029
    new-instance p1, Lcom/android/server/wm/NaturalSwitchingController;

    invoke-direct {p1, p0}, Lcom/android/server/wm/NaturalSwitchingController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mNaturalSwitchingController:Lcom/android/server/wm/NaturalSwitchingController;

    .line 1030
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1045
    new-instance p1, Lcom/android/server/wm/MultiWindowSupportPolicyController;

    invoke-direct {p1, p0}, Lcom/android/server/wm/MultiWindowSupportPolicyController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    .line 1046
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1049
    new-instance p1, Lcom/android/server/wm/FreeformController;

    invoke-direct {p1, p0}, Lcom/android/server/wm/FreeformController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 1050
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1053
    new-instance p1, Lcom/android/server/wm/MultiWindowEnableController;

    invoke-direct {p1, p0}, Lcom/android/server/wm/MultiWindowEnableController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    .line 1054
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1057
    new-instance p1, Lcom/android/server/wm/MultiTaskingHelpController;

    invoke-direct {p1, p0}, Lcom/android/server/wm/MultiTaskingHelpController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingHelpController:Lcom/android/server/wm/MultiTaskingHelpController;

    .line 1058
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1061
    new-instance p1, Lcom/android/server/wm/AppPairController;

    invoke-direct {p1, p0}, Lcom/android/server/wm/AppPairController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppPairController:Lcom/android/server/wm/AppPairController;

    .line 1062
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1073
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MD_DEX_TASK_DOCKING:Z

    if-eqz p1, :cond_19f

    .line 1074
    new-instance p1, Lcom/android/server/wm/DexDockingController;

    invoke-direct {p1, p0}, Lcom/android/server/wm/DexDockingController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexDockingController:Lcom/android/server/wm/DexDockingController;

    .line 1075
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19f
    return-void
.end method

.method public static checkCallingPermission(Ljava/lang/String;)I
    .registers 3

    .line 3946
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3945
    invoke-static {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static checkComponentPermission(Ljava/lang/String;IIIZ)I
    .registers 5

    .line 4078
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result p0

    return p0
.end method

.method public static checkPermission(Ljava/lang/String;II)I
    .registers 5

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    .line 4073
    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result p0

    return p0
.end method

.method public static enforceNotIsolatedCaller(Ljava/lang/String;)V
    .registers 4

    .line 5141
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 5142
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Isolated process not allowed to call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static enforceTaskPermission(Ljava/lang/String;)V
    .registers 4

    const-string v0, "android.permission.MANAGE_ACTIVITY_TASKS"

    .line 4053
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    .line 4057
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const-string v1, "ActivityTaskManager"

    if-nez v0, :cond_19

    const-string p0, "MANAGE_ACTIVITY_STACKS is deprecated, please use alternative permission: MANAGE_ACTIVITY_TASKS"

    .line 4058
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4063
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " from pid="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", uid="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4064
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " requires android.permission.MANAGE_ACTIVITY_TASKS"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4065
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4066
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInputDispatchingTimeoutMillisLocked(Lcom/android/server/wm/ActivityRecord;)J
    .registers 3

    if-eqz p0, :cond_10

    .line 5594
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_10

    .line 5597
    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getInputDispatchingTimeoutMillisLocked(Lcom/android/server/wm/WindowProcessController;)J

    move-result-wide v0

    return-wide v0

    .line 5595
    :cond_10
    :goto_10
    sget p0, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public static getInputDispatchingTimeoutMillisLocked(Lcom/android/server/wm/WindowProcessController;)J
    .registers 3

    if-nez p0, :cond_6

    .line 5602
    sget p0, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long v0, p0

    return-wide v0

    .line 5604
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getInputDispatchingTimeoutMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static isMultiTaskingDumpsysCommand(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "multitasking"

    .line 4899
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "mt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method private synthetic lambda$applyUpdateLockStateLocked$1(ZLcom/android/server/wm/ActivityRecord;)V
    .registers 9

    .line 2581
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v0

    if-eq v0, p1, :cond_33

    .line 2582
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IMMERSIVE_enabled:Z

    if-eqz v0, :cond_26

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IMMERSIVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0x212f7446

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object p2, v4, v0

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_26
    if-eqz p1, :cond_2e

    .line 2585
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {p0}, Landroid/os/UpdateLock;->acquire()V

    goto :goto_33

    .line 2587
    :cond_2e
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {p0}, Landroid/os/UpdateLock;->release()V

    :cond_33
    :goto_33
    return-void
.end method

.method private synthetic lambda$applyUpdateVrModeLocked$7(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 4756
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/VrController;->onVrModeChanged(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 4759
    :cond_9
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4760
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v0}, Lcom/android/server/wm/VrController;->shouldDisableNonVrUiLocked()Z

    move-result v0

    .line 4761
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->disableNonVrUi(Z)V

    if-eqz v0, :cond_28

    .line 4765
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->removeRootTasksInWindowingModes([I)V

    .line 4767
    :cond_28
    monitor-exit p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2d
    move-exception p0

    :try_start_2e
    monitor-exit p1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public static synthetic lambda$ensureConfigOnAllDisplays$11(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;)V
    .registers 4

    .line 6319
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object p3

    if-eqz p3, :cond_39

    if-eq p3, p0, :cond_39

    .line 6320
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_39

    :cond_f
    const/4 p0, 0x0

    .line 6323
    invoke-virtual {p3, p1, p0}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    .line 6324
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p0, :cond_39

    .line 6325
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ensureActivityConfiguration(MultiFreeze): top="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", d #="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6326
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    .line 6325
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    :goto_39
    return-void
.end method

.method public static synthetic lambda$ensureConfigOnAllDisplays$12(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 6315
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->supportMultiDisplayFreeze()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 6318
    :cond_7
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/DisplayContent;)V

    invoke-virtual {p2, v0}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$enterPictureInPictureMode$6(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;)V
    .registers 5

    .line 4407
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4408
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-nez v1, :cond_27

    const-string p0, "ActivityTaskManager"

    .line 4409
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skip enterPictureInPictureMode, destroyed "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4410
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_52

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4412
    :cond_27
    :try_start_27
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V

    .line 4413
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 p2, 0x0

    const-string v1, "enterPictureInPictureMode"

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/RootWindowContainer;->moveActivityToPinnedRootTask(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 4415
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    .line 4417
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    if-ne p2, p1, :cond_42

    const-string p2, "auto-pip"

    const/4 v1, 0x0

    .line 4418
    invoke-virtual {p0, p1, v1, v1, p2}, Lcom/android/server/wm/TaskFragment;->schedulePauseActivity(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;)V

    .line 4422
    :cond_42
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SA_LOGGING:Z

    if-eqz p0, :cond_4d

    const-string p0, "2301"

    .line 4423
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 4427
    :cond_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_27 .. :try_end_4e} :catchall_52

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_52
    move-exception p0

    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public static synthetic lambda$hasWallpaperBackgroundForLetterboxLocked$15(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 9006
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasWallpaperBackgroudForLetterbox()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private synthetic lambda$keyguardGoingAway$5(ILcom/android/server/wm/DisplayContent;)V
    .registers 3

    .line 4346
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/KeyguardController;->keyguardGoingAway(II)V

    return-void
.end method

.method private synthetic lambda$notifyDedicated$14(ILandroid/os/RemoteCallback;)V
    .registers 5

    .line 8758
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "TASK_ID"

    .line 8759
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8760
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_1c

    :catch_e
    move-exception p1

    const-string p2, "ActivityTaskManager"

    const-string v0, "notifyDedicatedState : "

    .line 8762
    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8763
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCb4Task:Ljava/util/Optional;

    :goto_1c
    return-void
.end method

.method private synthetic lambda$onScreenAwakeChanged$4(Z)V
    .registers 4

    .line 3791
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 3792
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

    invoke-interface {v1, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;->onAwakeStateChanged(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method private synthetic lambda$onSystemReady$0(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .registers 8

    .line 1103
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1105
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_53

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1106
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object p1

    if-nez p1, :cond_21

    .line 1108
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_4d

    .line 1122
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 1109
    :cond_21
    :try_start_21
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_2f

    .line 1110
    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v3, :cond_2f

    .line 1112
    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowProcessController;->setOverrideDisplayId(I)V

    .line 1114
    :cond_2f
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 1115
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string/jumbo v3, "prel"

    invoke-virtual {p0, p1, v5, v4, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    goto :goto_43

    .line 1118
    :cond_3e
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V

    .line 1120
    :goto_43
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_21 .. :try_end_44} :catchall_4d

    :try_start_44
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_53

    .line 1122
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1124
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :catchall_4d
    move-exception p0

    .line 1120
    :try_start_4e
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    :try_start_4f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_53

    :catchall_53
    move-exception p0

    .line 1122
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1123
    throw p0
.end method

.method private synthetic lambda$postFinishBooting$10(ZZ)V
    .registers 3

    if-eqz p1, :cond_14

    .line 6111
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p1}, Landroid/app/ActivityManagerInternal;->finishBooting()V

    .line 6114
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->getBooster(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/Context;)Lcom/android/server/wm/ActivityManagerPerformance;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 6119
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p1}, Lcom/android/server/wm/MultiTaskingController;->finishBooting()V

    :cond_14
    if-eqz p2, :cond_1f

    .line 6124
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->enableScreenAfterBoot(Z)V

    :cond_1f
    return-void
.end method

.method private synthetic lambda$scheduleAppGcsLocked$13()V
    .registers 1

    .line 6334
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->scheduleAppGcs()V

    return-void
.end method

.method private synthetic lambda$sendAppStateBroadcaster$8()V
    .registers 2

    .line 4822
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4823
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 4825
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-nez p0, :cond_18

    .line 4827
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_17
    const/4 p0, 0x0

    .line 4830
    :cond_18
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-nez p0, :cond_1f

    return-void

    .line 4833
    :cond_1f
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationFocusLoss(Ljava/lang/String;)V

    return-void

    :catchall_25
    move-exception p0

    .line 4830
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method private synthetic lambda$setLockScreenShown$2(ZZLcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 3769
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p3

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/wm/KeyguardController;->setKeyguardShown(IZZ)V

    return-void
.end method

.method private synthetic lambda$setLockScreenShown$3(Z)V
    .registers 4

    .line 3782
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 3783
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

    invoke-interface {v1, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;->onKeyguardStateChanged(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method private synthetic lambda$updateConfigurationLocked$9(Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 5248
    iget-boolean v0, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v0, :cond_13

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->supportMultiDisplayFreeze()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 5249
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v0, p1, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    iget p1, p1, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplay(IILcom/android/server/wm/DisplayContent;)V

    :cond_13
    return-void
.end method

.method public static logAndRethrowRuntimeExceptionOnTransact(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;
    .registers 3

    .line 6599
    instance-of v0, p1, Ljava/lang/SecurityException;

    if-nez v0, :cond_2d

    .line 6600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " onTransact aborts UID:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6601
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " PID:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6602
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityTaskManager"

    .line 6600
    invoke-static {v0, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6604
    :cond_2d
    throw p1
.end method

.method public static relaunchReasonToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const-string p0, "free_resize"

    return-object p0

    :cond_b
    const-string/jumbo p0, "window_resize"

    return-object p0
.end method


# virtual methods
.method public addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3620
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3621
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3624
    :try_start_8
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_15f

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3625
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_142

    .line 3630
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_126

    .line 3635
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailWidth:I

    if-ne v5, v6, :cond_e9

    .line 3636
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailHeight:I

    if-ne v5, v6, :cond_e9

    .line 3641
    invoke-virtual {p2}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p4

    const/4 v5, 0x0

    if-eqz p4, :cond_34

    .line 3642
    invoke-virtual {p2, v5}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 3644
    :cond_34
    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object p4

    if-eqz p4, :cond_3d

    .line 3645
    invoke-virtual {p2, v5}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 3647
    :cond_3d
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result p4

    const/high16 v5, 0x80000

    and-int/2addr p4, v5

    if-eqz p4, :cond_52

    .line 3648
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result p4

    const/16 v5, 0x2000

    and-int/2addr p4, v5

    if-nez p4, :cond_52

    .line 3651
    invoke-virtual {p2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3654
    :cond_52
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p4

    const-wide/16 v5, 0x400

    .line 3655
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 3654
    invoke-interface {p4, p1, v5, v6, v7}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    const/4 p4, -0x1

    if-eqz p1, :cond_c1

    .line 3656
    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v5, v0, :cond_6a

    goto :goto_c1

    .line 3663
    :cond_6a
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3664
    new-instance v4, Lcom/android/server/wm/Task$Builder;

    invoke-direct {v4, p0}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 3665
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/Task$Builder;->setWindowingMode(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v4

    .line 3666
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/Task$Builder;->setActivityType(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v4

    .line 3667
    invoke-virtual {v4, p1}, Lcom/android/server/wm/Task$Builder;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/Task$Builder;

    move-result-object p1

    .line 3668
    invoke-virtual {p1, p2}, Lcom/android/server/wm/Task$Builder;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;

    move-result-object p1

    .line 3669
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->getNextRootTaskId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/wm/Task$Builder;->setTaskId(I)Lcom/android/server/wm/Task$Builder;

    move-result-object p1

    .line 3670
    invoke-virtual {p1}, Lcom/android/server/wm/Task$Builder;->build()Lcom/android/server/wm/Task;

    move-result-object p1

    .line 3672
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->addToBottom(Lcom/android/server/wm/Task;)Z

    move-result p0

    if-nez p0, :cond_b0

    const-string p0, "addAppTask"

    .line 3674
    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/Task;->removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V

    .line 3675
    monitor-exit v3
    :try_end_a9
    .catchall {:try_start_b .. :try_end_a9} :catchall_159

    .line 3684
    :goto_a9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p4

    .line 3677
    :cond_b0
    :try_start_b0
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/app/ActivityManager$TaskDescription;->copyFrom(Landroid/app/ActivityManager$TaskDescription;)V

    .line 3681
    iget p0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    monitor-exit v3
    :try_end_ba
    .catchall {:try_start_b0 .. :try_end_ba} :catchall_159

    .line 3684
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :cond_c1
    :goto_c1
    :try_start_c1
    const-string p0, "ActivityTaskManager"

    .line 3657
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can\'t add task for another application: target uid="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_d1

    move p1, p4

    goto :goto_d5

    .line 3658
    :cond_d1
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_d5
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", calling uid="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3657
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3660
    monitor-exit v3

    goto :goto_a9

    .line 3637
    :cond_e9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bad thumbnail size: got "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3638
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", require "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailWidth:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailHeight:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3632
    :cond_126
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Intent "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " must specify explicit component"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3627
    :cond_142
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Activity does not exist; token="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_159
    move-exception p0

    .line 3682
    monitor-exit v3
    :try_end_15b
    .catchall {:try_start_c1 .. :try_end_15b} :catchall_159

    :try_start_15b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_15f
    .catchall {:try_start_15b .. :try_end_15f} :catchall_15f

    :catchall_15f
    move-exception p0

    .line 3684
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3685
    throw p0
.end method

.method public addWindowLayoutReasons(I)V
    .registers 3

    .line 5573
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLayoutReasons:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLayoutReasons:I

    return-void
.end method

.method public adjustConfigurationForDexIfNeeded(Landroid/content/res/Configuration;ILcom/android/server/wm/WindowProcessController;)V
    .registers 4

    .line 8801
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DexController;->adjustConfigurationForDexIfNeeded(Landroid/content/res/Configuration;ILcom/android/server/wm/WindowProcessController;)V

    return-void
.end method

.method public alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V
    .registers 5

    .line 4678
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4679
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1c

    .line 4681
    :try_start_a
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_17

    .line 4683
    :try_start_f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4685
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_17
    move-exception p0

    .line 4683
    :try_start_18
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4684
    throw p0

    :catchall_1c
    move-exception p0

    .line 4685
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public applyUpdateLockStateLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    if-eqz p1, :cond_8

    .line 2579
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 2580
    :goto_9
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ZLcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public applyUpdateVrModeLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6

    .line 4749
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_3e

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_3e

    .line 4750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Moving "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to main display for VR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4752
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 4753
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTaskId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 4752
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->moveRootTaskToDisplay(IIZ)V

    .line 4755
    :cond_3e
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public assertPackageMatchesCallingUid(Ljava/lang/String;)V
    .registers 4

    .line 3021
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3022
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->isSameApp(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    return-void

    .line 3025
    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: package="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not belong to uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    .line 3027
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3028
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final buildAssistBundleLocked(Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;Landroid/os/Bundle;)V
    .registers 4

    if-eqz p2, :cond_9

    .line 4195
    iget-object p0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    const-string v0, "android.intent.extra.ASSIST_CONTEXT"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4197
    :cond_9
    iget-object p0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->hint:Ljava/lang/String;

    if-eqz p0, :cond_13

    .line 4198
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_13
    return-void
.end method

.method public final canCloseSystemDialogs(II)Z
    .registers 12

    const-string v0, "android.permission.BROADCAST_CLOSE_SYSTEM_DIALOGS"

    .line 3999
    invoke-static {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_a

    return v0

    .line 4003
    :cond_a
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4006
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcesses(I)Landroid/util/ArraySet;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4e

    .line 4008
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    move v4, v2

    :goto_1e
    if-ge v4, v3, :cond_4e

    .line 4009
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowProcessController;

    .line 4015
    invoke-virtual {v5}, Lcom/android/server/wm/WindowProcessController;->getInstrumentationSourceUid()I

    move-result v6

    .line 4016
    invoke-virtual {v5}, Lcom/android/server/wm/WindowProcessController;->isInstrumenting()Z

    move-result v7

    if-eqz v7, :cond_40

    const/4 v7, -0x1

    if-eq v6, v7, :cond_40

    const-string v8, "android.permission.BROADCAST_CLOSE_SYSTEM_DIALOGS"

    invoke-static {v8, v7, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v6

    if-nez v6, :cond_40

    .line 4019
    monitor-exit p1
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_76

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 4023
    :cond_40
    :try_start_40
    invoke-virtual {v5}, Lcom/android/server/wm/WindowProcessController;->canCloseSystemDialogsByToken()Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 4024
    monitor-exit p1
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_76

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_4e
    const-wide/32 v3, 0xa692aad

    .line 4028
    :try_start_51
    invoke-static {v3, v4, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v1

    if-nez v1, :cond_71

    .line 4038
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootWindowContainer;->hasVisibleWindowAboveButDoesNotOwnNotificationShade(I)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 4039
    monitor-exit p1
    :try_end_60
    .catchall {:try_start_51 .. :try_end_60} :catchall_76

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 4044
    :cond_64
    :try_start_64
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAccessibilityServiceUids:[I

    invoke-static {p0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p0

    if-eqz p0, :cond_71

    .line 4045
    monitor-exit p1
    :try_end_6d
    .catchall {:try_start_64 .. :try_end_6d} :catchall_76

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 4048
    :cond_71
    :try_start_71
    monitor-exit p1
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_76

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_76
    move-exception p0

    :try_start_77
    monitor-exit p1
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public canLaunchDreamActivity(Ljava/lang/String;)Z
    .registers 5

    .line 2100
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDreaming:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_33

    if-nez p1, :cond_8

    goto :goto_33

    .line 2103
    :cond_8
    const-class p0, Landroid/service/dreams/DreamManagerInternal;

    .line 2104
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/dreams/DreamManagerInternal;

    .line 2108
    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamManagerInternal;->getActiveDreamComponent(Z)Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_22

    .line 2109
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    return v2

    .line 2112
    :cond_22
    invoke-virtual {p0, v2}, Landroid/service/dreams/DreamManagerInternal;->getActiveDreamComponent(Z)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 2113
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    return v2

    :cond_33
    :goto_33
    return v0
.end method

.method public final cancelHeavyWeightProcessNotification(I)V
    .registers 8

    .line 6150
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    const-string v1, "android"

    const-string v2, "android"

    const/4 v3, 0x0

    const/16 v4, 0xb

    move v5, p1

    .line 6155
    invoke-interface/range {v0 .. v5}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_12} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_1b

    goto :goto_1b

    :catch_13
    move-exception p0

    const-string p1, "ActivityTaskManager"

    const-string v0, "Error canceling notification for service"

    .line 6158
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1b
    :goto_1b
    return-void
.end method

.method public cancelRecentsAnimation(Z)V
    .registers 9

    const-string v0, "cancelRecentsAnimation()"

    .line 3379
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 3380
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    int-to-long v0, v0

    .line 3381
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3383
    :try_start_e
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_3d

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3385
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz p1, :cond_1a

    const/4 p1, 0x2

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    .line 3387
    :goto_1b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cancelRecentsAnimation/uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3385
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowManagerService;->cancelRecentsAnimation(ILjava/lang/String;)V

    .line 3388
    monitor-exit v4
    :try_end_30
    .catchall {:try_start_11 .. :try_end_30} :catchall_37

    :try_start_30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_3d

    .line 3390
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_37
    move-exception p0

    .line 3388
    :try_start_38
    monitor-exit v4
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    :try_start_39
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception p0

    .line 3390
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3391
    throw p0
.end method

.method public cancelTaskWindowTransition(I)V
    .registers 7

    const-string v0, "cancelTaskWindowTransition()"

    .line 4537
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 4538
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4540
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_4c

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4541
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_3b

    const-string p0, "ActivityTaskManager"

    .line 4544
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelTaskWindowTransition: taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4545
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_c .. :try_end_34} :catchall_46

    .line 4550
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 4547
    :cond_3b
    :try_start_3b
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->cancelTaskWindowTransition()V

    .line 4548
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_46

    :try_start_3f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4c

    .line 4550
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_46
    move-exception p0

    .line 4548
    :try_start_47
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    :try_start_48
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception p0

    .line 4550
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4551
    throw p0
.end method

.method public checkCanCloseSystemDialogs(IILjava/lang/String;)Z
    .registers 7

    .line 3956
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3957
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    .line 3958
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_d9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-nez p3, :cond_18

    if-eqz v1, :cond_18

    .line 3967
    iget-object p3, v1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3969
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_4c

    .line 3971
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3973
    :cond_4c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->canCloseSystemDialogs(II)Z

    move-result p0

    const/4 p1, 0x1

    if-nez p0, :cond_d8

    const-wide/32 v1, 0xa692aad

    .line 3975
    invoke-static {v1, v2, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    if-nez p0, :cond_b2

    const-wide/32 v1, 0xa6929b8

    .line 3980
    invoke-static {v1, v2, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    if-eqz p0, :cond_8c

    const-string p0, "ActivityTaskManager"

    .line 3981
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Permission Denial: android.intent.action.CLOSE_SYSTEM_DIALOGS broadcast from "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " requires "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "android.permission.BROADCAST_CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", dropping broadcast."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_8c
    const-string p0, "ActivityTaskManager"

    .line 3988
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "android.intent.action.CLOSE_SYSTEM_DIALOGS broadcast from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " will require "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "android.permission.BROADCAST_CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " in future builds."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 3976
    :cond_b2
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Permission Denial: android.intent.action.CLOSE_SYSTEM_DIALOGS broadcast from "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " requires "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "android.permission.BROADCAST_CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d8
    return p1

    :catchall_d9
    move-exception p0

    .line 3958
    :try_start_da
    monitor-exit v0
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_d9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public clearAppLockedUnLockedApp()V
    .registers 1

    .line 5829
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->clearAppLockedUnLockedApp()V

    return-void
.end method

.method public clearHeavyWeightProcessIfEquals(Lcom/android/server/wm/WindowProcessController;)V
    .registers 3

    .line 6138
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eq v0, p1, :cond_9

    goto :goto_20

    :cond_9
    const/4 v0, 0x0

    .line 6142
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 6143
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda14;-><init>()V

    iget p1, p1, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    .line 6145
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 6143
    invoke-static {v0, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 6146
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_20
    :goto_20
    return-void
.end method

.method public clearLaunchParamsForPackages(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "clearLaunchParamsForPackages"

    .line 4859
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 4860
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x0

    .line 4861
    :goto_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 4862
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/LaunchParamsPersister;->removeRecordForPackage(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 4864
    :cond_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_27
    move-exception p0

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public clearRecentTasks(I)Z
    .registers 4

    .line 3234
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 3235
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_2f

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 3237
    invoke-static {v1, v0}, Lcom/samsung/android/knox/SemPersonaManager;->isContainerService(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_2f

    .line 3239
    :cond_13
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pid "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " cannot clear recent tasks!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3241
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_32
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3242
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->clearRecentTasksLocked(I)V

    .line 3243
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_40

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x1

    return p0

    :catchall_40
    move-exception p0

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public collectGrants(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/uri/NeededUriGrants;
    .registers 5

    if-eqz p2, :cond_11

    .line 2838
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 2839
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget p2, p2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 2838
    invoke-interface {p0, p1, v0, v1, p2}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object p0

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;
    .registers 2

    .line 6338
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object p0

    return-object p0
.end method

.method public final constructResumedTraceName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 6264
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "focused app: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public continueWindowLayout()V
    .registers 2

    .line 5561
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLayoutReasons:I

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowSurfacePlacer;->continueLayout(Z)V

    return-void
.end method

.method public createAppWarnings(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/io/File;)Lcom/android/server/wm/AppWarnings;
    .registers 12

    .line 1544
    new-instance v6, Lcom/android/server/wm/AppWarnings;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppWarnings;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/io/File;)V

    return-object v6
.end method

.method public createPersonaActivityHelper()Lcom/android/server/wm/PersonaActivityHelper;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 6797
    new-instance v0, Lcom/android/server/wm/PersonaActivityHelper;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/wm/PersonaActivityHelper;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;Lcom/android/server/wm/RootWindowContainer;)V

    return-object v0
.end method

.method public createTaskSupervisor()Lcom/android/server/wm/ActivityTaskSupervisor;
    .registers 3

    .line 1536
    new-instance v0, Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 1537
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;)V

    .line 1538
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->initialize()V

    return-object v0
.end method

.method public deferWindowLayout()V
    .registers 2

    .line 5550
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->isLayoutDeferred()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    .line 5553
    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLayoutReasons:I

    .line 5556
    :cond_d
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->deferLayout()V

    return-void
.end method

.method public detachNavigationBarFromApp(Landroid/os/IBinder;)V
    .registers 5

    .line 4880
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    const-string v2, "detachNavigationBarFromApp"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4882
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4884
    :try_start_d
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_28

    :try_start_10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4885
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->legacyDetachNavigationBarFromApp(Landroid/os/IBinder;)V

    .line 4886
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_22

    :try_start_1b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_28

    .line 4888
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_22
    move-exception p0

    .line 4886
    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    :try_start_24
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception p0

    .line 4888
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4889
    throw p0
.end method

.method public dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;)V
    .registers 17

    const-string v8, "ACTIVITY MANAGER ACTIVITIES (dumpsys activity activities)"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    .line 4952
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/ActivityTaskManagerService;->dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V
    .registers 16

    .line 4958
    invoke-virtual {p2, p8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4960
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RootWindowContainer;->dumpActivities(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;)Z

    move-result p1

    .line 4964
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 4965
    invoke-virtual {p3}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    const-string v5, "  ResumedActivity: "

    const/4 v6, 0x0

    move-object v1, p2

    move-object v3, p7

    move v4, p1

    .line 4964
    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_24

    const/4 p1, 0x0

    move p3, p4

    goto :goto_25

    :cond_24
    move p3, p1

    :goto_25
    if-nez p7, :cond_48

    if-eqz p1, :cond_2c

    .line 4974
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4977
    :cond_2c
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string p3, "  "

    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/ActivityTaskSupervisor;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4978
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/TaskOrganizerController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4979
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/VisibleActivityProcessTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4980
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/MirrorActiveUids;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4982
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->dumpActivitiesLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_49

    :cond_48
    move p4, p3

    :goto_49
    if-nez p4, :cond_50

    const-string p0, "  (nothing)"

    .line 4987
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_50
    return-void
.end method

.method public final dumpActivity(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;[Ljava/lang/String;Z)V
    .registers 9

    .line 5082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5084
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5085
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "ACTIVITY "

    .line 5086
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5087
    iget-object p1, p4, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, " "

    .line 5088
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5089
    invoke-static {p4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, " pid="

    .line 5090
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5091
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 5092
    iget-object p1, p4, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 5093
    iget-object p1, p4, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object p1

    goto :goto_55

    :cond_4f
    const-string p1, "(not running)"

    .line 5095
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_55
    if-eqz p6, :cond_5b

    const/4 p6, 0x1

    .line 5098
    invoke-virtual {p4, p3, v0, p6}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 5100
    :cond_5b
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_14 .. :try_end_5c} :catchall_b1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz p1, :cond_b0

    .line 5104
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 5105
    :try_start_64
    new-instance p0, Lcom/android/internal/os/TransferPipe;

    invoke-direct {p0}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_69} :catch_98
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_69} :catch_83

    .line 5106
    :try_start_69
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object p6

    iget-object p4, p4, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-interface {p1, p6, p4, v0, p5}, Landroid/app/IApplicationThread;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5107
    invoke-virtual {p0, p2}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;)V
    :try_end_75
    .catchall {:try_start_69 .. :try_end_75} :catchall_79

    .line 5108
    :try_start_75
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_98
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_78} :catch_83

    goto :goto_b0

    :catchall_79
    move-exception p1

    .line 5105
    :try_start_7a
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_7e

    goto :goto_82

    :catchall_7e
    move-exception p0

    :try_start_7f
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_82
    throw p1
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_83} :catch_98
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_83} :catch_83

    .line 5111
    :catch_83
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Got a RemoteException while dumping the activity"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b0

    :catch_98
    move-exception p0

    .line 5109
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Failure while dumping the activity: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_b0
    :goto_b0
    return-void

    :catchall_b1
    move-exception p1

    .line 5100
    :try_start_b2
    monitor-exit p0
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public dumpActivity(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZZZI)Z
    .registers 24

    move-object v0, p0

    move-object/from16 v8, p2

    move-object/from16 v1, p4

    move/from16 v2, p5

    .line 5027
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5028
    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    move-object/from16 v5, p3

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v9, p9

    invoke-virtual {v4, v5, v6, v7, v9}, Lcom/android/server/wm/RootWindowContainer;->getDumpActivities(Ljava/lang/String;ZZI)Ljava/util/ArrayList;

    move-result-object v9

    .line 5030
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_aa

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5033
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    const/4 v10, 0x1

    if-eqz v3, :cond_2e

    .line 5034
    invoke-static {}, Lcom/android/server/baiducarlife/BaiduCarlifeADBConnectUtils;->isCarlifeForceConnect()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 5035
    invoke-static/range {p2 .. p2}, Lcom/android/server/baiducarlife/BaiduCarlifeADBConnectUtils;->printCarlifeDumpActivity(Ljava/io/PrintWriter;)V

    return v10

    .line 5041
    :cond_2e
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-gtz v3, :cond_36

    return v4

    .line 5045
    :cond_36
    array-length v3, v1

    sub-int/2addr v3, v2

    new-array v11, v3, [Ljava/lang/String;

    .line 5046
    array-length v3, v1

    sub-int/2addr v3, v2

    invoke-static {v1, v2, v11, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    .line 5050
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v10

    move v12, v2

    :goto_46
    if-ltz v12, :cond_a9

    .line 5051
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_53

    .line 5053
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5056
    :cond_53
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_56
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5057
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eq v1, v2, :cond_86

    const-string v1, "TASK "

    .line 5060
    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5061
    iget-object v1, v2, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " id="

    .line 5062
    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5063
    iget v1, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " userId="

    .line 5064
    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5065
    iget v1, v2, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->println(I)V

    if-eqz p6, :cond_84

    const-string v1, "  "

    .line 5067
    invoke-virtual {v2, v8, v1}, Lcom/android/server/wm/Task;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_84
    move-object v13, v2

    goto :goto_87

    :cond_86
    move-object v13, v1

    .line 5070
    :goto_87
    monitor-exit v3
    :try_end_88
    .catchall {:try_start_56 .. :try_end_88} :catchall_a3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const-string v2, "  "

    .line 5071
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object v6, v11

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ActivityTaskManagerService;->dumpActivity(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;[Ljava/lang/String;Z)V

    add-int/lit8 v12, v12, -0x1

    move v4, v10

    move-object v1, v13

    goto :goto_46

    :catchall_a3
    move-exception v0

    .line 5070
    :try_start_a4
    monitor-exit v3
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_a9
    return v10

    :catchall_aa
    move-exception v0

    .line 5030
    :try_start_ab
    monitor-exit v3
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_aa

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public dumpActivityContainersLocked(Ljava/io/PrintWriter;)V
    .registers 3

    const-string v0, "ACTIVITY MANAGER CONTAINERS (dumpsys activity containers)"

    .line 4992
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4993
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const-string v0, " "

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ConfigurationContainer;->dumpChildrenNames(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4994
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpActivityStarterLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    const-string v0, "ACTIVITY MANAGER STARTER (dumpsys activity starter)"

    .line 4998
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4999
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/ActivityStartController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dumpInstalledPackagesConfig(Ljava/io/PrintWriter;)V
    .registers 3

    .line 5004
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/PackageConfigPersister;->dump(Ljava/io/PrintWriter;I)V

    return-void
.end method

.method public dumpLastANRLocked(Ljava/io/PrintWriter;)V
    .registers 3

    const-string v0, "ACTIVITY MANAGER LAST ANR (dumpsys activity lastanr)"

    .line 4904
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4905
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastANRState:Ljava/lang/String;

    if-nez p0, :cond_f

    const-string p0, "  <no ANR has occurred since boot>"

    .line 4906
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12

    .line 4908
    :cond_f
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_12
    return-void
.end method

.method public dumpLastANRTracesLocked(Ljava/io/PrintWriter;)V
    .registers 10

    const-string p0, "ACTIVITY MANAGER LAST ANR TRACES (dumpsys activity lastanr-traces)"

    .line 4913
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4915
    new-instance p0, Ljava/io/File;

    const-string v0, "/data/anr"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 4916
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string p0, "  <no ANR has occurred since boot>"

    .line 4917
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1c
    const/4 v0, 0x0

    .line 4922
    array-length v1, p0

    const/4 v2, 0x0

    :goto_1f
    if-ge v2, v1, :cond_35

    aget-object v3, p0, v2

    if-eqz v0, :cond_31

    .line 4923
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_32

    :cond_31
    move-object v0, v3

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_35
    const-string p0, "File: "

    .line 4927
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4928
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4929
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4930
    :try_start_44
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4e} :catch_66

    .line 4932
    :goto_4e
    :try_start_4e
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 4933
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_5c

    goto :goto_4e

    .line 4935
    :cond_58
    :try_start_58
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_66

    goto :goto_72

    :catchall_5c
    move-exception v0

    .line 4930
    :try_start_5d
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_61

    goto :goto_65

    :catchall_61
    move-exception p0

    :try_start_62
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_65
    throw v0
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_66} :catch_66

    :catch_66
    move-exception p0

    const-string v0, "Unable to read: "

    .line 4936
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4937
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4938
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :goto_72
    return-void
.end method

.method public dumpTopResumedActivityLocked(Ljava/io/PrintWriter;)V
    .registers 4

    const-string v0, "ACTIVITY MANAGER TOP-RESUMED (dumpsys activity top-resumed)"

    .line 4943
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4944
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    const-string v1, ""

    .line 4946
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :cond_13
    return-void
.end method

.method public endLaunchPowerMode(I)V
    .registers 5

    .line 5519
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLaunchPowerModeReasons:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    not-int p1, p1

    and-int/2addr p1, v0

    .line 5520
    iput p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLaunchPowerModeReasons:I

    and-int/lit8 p1, p1, 0x4

    const/4 v0, 0x0

    if-eqz p1, :cond_3a

    .line 5524
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result p1

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    :goto_16
    if-ltz p1, :cond_2a

    .line 5525
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 5526
    invoke-virtual {v2}, Lcom/android/server/wm/UnknownAppVisibilityController;->allResolved()Z

    move-result v2

    and-int/2addr v1, v2

    add-int/lit8 p1, p1, -0x1

    goto :goto_16

    :cond_2a
    if-eqz v1, :cond_3a

    .line 5529
    iget p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLaunchPowerModeReasons:I

    and-int/lit8 p1, p1, -0x5

    iput p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLaunchPowerModeReasons:I

    .line 5530
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRetainPowerModeAndTopProcessState:Z

    .line 5531
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5535
    :cond_3a
    iget p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLaunchPowerModeReasons:I

    if-nez p1, :cond_4f

    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-eqz p1, :cond_4f

    const/4 v1, 0x5

    .line 5536
    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 5539
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-eqz p1, :cond_4f

    .line 5540
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityManagerPerformance;->onActivityVisibleLocked(Lcom/android/server/wm/ActivityRecord;)V

    :cond_4f
    return-void
.end method

.method public final enforceCallerIsDream(Ljava/lang/String;)V
    .registers 4

    .line 2120
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2122
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->canLaunchDreamActivity(Ljava/lang/String;)Z

    move-result p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_16

    if-eqz p0, :cond_e

    .line 2127
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2123
    :cond_e
    :try_start_e
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "The dream activity can be started only when the device is dreaming and only by the active dream package."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_16

    :catchall_16
    move-exception p0

    .line 2127
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2128
    throw p0
.end method

.method public enforceSystemHasVrFeature()V
    .registers 2

    .line 4475
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.vr.high_performance"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f

    return-void

    .line 4477
    :cond_f
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "VR mode not supported on this device!"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enqueueAssistContext(ILandroid/content/Intent;Ljava/lang/String;Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZILandroid/os/Bundle;JI)Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;
    .registers 28

    move-object v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p10

    .line 4127
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v4, "android.permission.GET_TOP_ACTIVITY_INFO"

    const-string v5, "enqueueAssistContext()"

    invoke-virtual {v3, v4, v5}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4130
    iget-object v10, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v10

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4131
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    const/4 v11, 0x0

    if-eqz v3, :cond_20

    .line 4133
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    goto :goto_21

    :cond_20
    move-object v3, v11

    :goto_21
    if-nez v3, :cond_2f

    const-string v0, "ActivityTaskManager"

    const-string v1, "getAssistContextExtras failed: no top activity"

    .line 4135
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4136
    monitor-exit v10
    :try_end_2b
    .catchall {:try_start_11 .. :try_end_2b} :catchall_145

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v11

    .line 4138
    :cond_2f
    :try_start_2f
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v4

    if-nez v4, :cond_50

    const-string v0, "ActivityTaskManager"

    .line 4139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAssistContextExtras failed: no process for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4140
    monitor-exit v10
    :try_end_4c
    .catchall {:try_start_2f .. :try_end_4c} :catchall_145

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v11

    :cond_50
    if-eqz p7, :cond_7f

    if-eqz v1, :cond_7d

    .line 4144
    :try_start_54
    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eq v3, v1, :cond_7d

    const-string v0, "ActivityTaskManager"

    .line 4146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enqueueAssistContext failed: caller "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not current top "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4148
    monitor-exit v10
    :try_end_79
    .catchall {:try_start_54 .. :try_end_79} :catchall_145

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v11

    :cond_7d
    move-object v12, v3

    goto :goto_c6

    .line 4152
    :cond_7f
    :try_start_7f
    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_a5

    const-string v0, "ActivityTaskManager"

    .line 4154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enqueueAssistContext failed: activity for token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " couldn\'t be found"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4156
    monitor-exit v10
    :try_end_a1
    .catchall {:try_start_7f .. :try_end_a1} :catchall_145

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v11

    .line 4158
    :cond_a5
    :try_start_a5
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v1

    if-nez v1, :cond_7d

    const-string v0, "ActivityTaskManager"

    .line 4159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueAssistContext failed: no process for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4160
    monitor-exit v10
    :try_end_c2
    .catchall {:try_start_a5 .. :try_end_c2} :catchall_145

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v11

    .line 4165
    :goto_c6
    :try_start_c6
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    if-eqz v2, :cond_d0

    .line 4167
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_d0
    const-string v1, "android.intent.extra.ASSIST_PACKAGE"

    .line 4169
    iget-object v2, v12, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.intent.extra.ASSIST_UID"

    .line 4170
    iget-object v2, v12, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v2, v2, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4172
    new-instance v13, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    move-object v1, v13

    move-object v2, p0

    move-object v3, v12

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;I)V

    .line 4174
    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v1

    iput-boolean v1, v13, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->isHome:Z

    if-eqz p8, :cond_100

    .line 4178
    iget v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mViSessionId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mViSessionId:I
    :try_end_100
    .catchall {:try_start_c6 .. :try_end_100} :catchall_145

    .line 4181
    :cond_100
    :try_start_100
    iget-object v1, v12, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, v12, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    iget v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mViSessionId:I

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v13

    move/from16 p5, p1

    move/from16 p6, v3

    move/from16 p7, p13

    invoke-interface/range {p2 .. p7}, Landroid/app/IApplicationThread;->requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;III)V

    .line 4183
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingAssistExtras:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4184
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    move-wide/from16 v1, p11

    invoke-virtual {v0, v13, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_125
    .catch Landroid/os/RemoteException; {:try_start_100 .. :try_end_125} :catch_12a
    .catchall {:try_start_100 .. :try_end_125} :catchall_145

    .line 4189
    :try_start_125
    monitor-exit v10
    :try_end_126
    .catchall {:try_start_125 .. :try_end_126} :catchall_145

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v13

    :catch_12a
    :try_start_12a
    const-string v0, "ActivityTaskManager"

    .line 4186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAssistContextExtras failed: crash calling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4187
    monitor-exit v10
    :try_end_141
    .catchall {:try_start_12a .. :try_end_141} :catchall_145

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v11

    :catchall_145
    move-exception v0

    .line 4190
    :try_start_146
    monitor-exit v10
    :try_end_147
    .catchall {:try_start_146 .. :try_end_147} :catchall_145

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public ensureConfigAndVisibilityAfterUpdate(Lcom/android/server/wm/ActivityRecord;I)Z
    .registers 4

    const/4 v0, 0x0

    .line 6270
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->ensureConfigAndVisibilityAfterUpdate(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/DisplayContent;)Z

    move-result p0

    return p0
.end method

.method public ensureConfigAndVisibilityAfterUpdate(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/DisplayContent;)Z
    .registers 5

    if-eqz p3, :cond_7

    .line 6280
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object p3

    goto :goto_d

    .line 6283
    :cond_7
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p3}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object p3

    :goto_d
    if-eqz p3, :cond_29

    if-eqz p2, :cond_17

    if-nez p1, :cond_17

    .line 6291
    invoke-virtual {p3}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    :cond_17
    if-eqz p1, :cond_29

    const/4 p3, 0x0

    .line 6295
    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    move-result v0

    if-eqz p2, :cond_23

    .line 6299
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->ensureConfigOnAllDisplays(Lcom/android/server/wm/ActivityRecord;I)V

    .line 6304
    :cond_23
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    goto :goto_2a

    :cond_29
    const/4 v0, 0x1

    :goto_2a
    return v0
.end method

.method public final ensureConfigOnAllDisplays(Lcom/android/server/wm/ActivityRecord;I)V
    .registers 4

    .line 6314
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/ActivityRecord;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public enterPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;)Z
    .registers 6

    .line 4395
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const-string v0, "enterPictureInPictureMode"

    const/4 v2, 0x0

    .line 4401
    invoke-virtual {p1, v0, v2}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_12

    return v2

    .line 4406
    :cond_12
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;)V

    .line 4430
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isKeyguardLocked()Z

    move-result p2

    if-eqz p2, :cond_2b

    .line 4434
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    iget-object p1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerService$5;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService$5;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    invoke-virtual {p2, p1, v2, p0}, Lcom/android/server/wm/ActivityClientController;->dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto :goto_2e

    .line 4442
    :cond_2b
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_2e
    return v1
.end method

.method public finishRunningVoiceLocked()V
    .registers 2

    .line 4313
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    .line 4314
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    .line 4315
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4316
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    :cond_f
    return-void
.end method

.method public finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .registers 5

    .line 3522
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3523
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1c

    .line 3527
    :try_start_a
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_17

    .line 3529
    :try_start_f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3531
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_17
    move-exception p0

    .line 3529
    :try_start_18
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3530
    throw p0

    :catchall_1c
    move-exception p0

    .line 3531
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getActivityClientController()Landroid/app/IActivityClientController;
    .registers 1

    .line 2571
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    return-object p0
.end method

.method public getActivityInterceptorCallbacks()Landroid/util/SparseArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/ActivityInterceptorCallback;",
            ">;"
        }
    .end annotation

    .line 1697
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityInterceptorCallbacks:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getActivityStartController()Lcom/android/server/wm/ActivityStartController;
    .registers 1

    .line 1629
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    return-object p0
.end method

.method public getAllRootTaskInfos()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityTaskManager$RootTaskInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "getAllRootTaskInfos()"

    .line 3326
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 3327
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3329
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_24

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3330
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/server/wm/RootWindowContainer;->getAllRootTaskInfos(I)Ljava/util/ArrayList;

    move-result-object p0

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_1e

    .line 3333
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_1e
    move-exception p0

    .line 3331
    :try_start_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    :try_start_20
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p0

    .line 3333
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3334
    throw p0
.end method

.method public getAllRootTaskInfosOnDisplay(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityTaskManager$RootTaskInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "getAllRootTaskInfosOnDisplay()"

    .line 3352
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 3353
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3355
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_23

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3356
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getAllRootTaskInfos(I)Ljava/util/ArrayList;

    move-result-object p0

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_1d

    .line 3359
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_1d
    move-exception p0

    .line 3357
    :try_start_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_23

    :catchall_23
    move-exception p0

    .line 3359
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3360
    throw p0
.end method

.method public getAnrController(Landroid/content/pm/ApplicationInfo;)Landroid/app/AnrController;
    .registers 12

    const/4 v0, 0x0

    if-eqz p1, :cond_46

    .line 3058
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_8

    goto :goto_46

    .line 3063
    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3064
    new-instance v2, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAnrController:Ljava/util/List;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3065
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_40

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3067
    iget-object p0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3068
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3072
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :cond_24
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AnrController;

    .line 3073
    invoke-interface {v6, p0, p1}, Landroid/app/AnrController;->getAnrDelayMillis(Ljava/lang/String;I)J

    move-result-wide v7

    cmp-long v9, v7, v2

    if-lez v9, :cond_24

    cmp-long v9, v7, v4

    if-lez v9, :cond_24

    move-object v0, v6

    move-wide v4, v7

    goto :goto_24

    :cond_3f
    return-object v0

    :catchall_40
    move-exception p0

    .line 3065
    :try_start_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_46
    :goto_46
    return-object v0
.end method

.method public getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 6422
    :cond_4
    new-instance p0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, p1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 6423
    invoke-virtual {p0, p2}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    return-object p0
.end method

.method public getAppLockedCheckAction()Ljava/lang/String;
    .registers 1

    .line 5840
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getAppLockedCheckAction()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAppLockedLockType()Ljava/lang/String;
    .registers 1

    .line 5834
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getAppLockedLockType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAppLockedPackageList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5813
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getAppLockedPackageList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAppOpsManager()Landroid/app/AppOpsManager;
    .registers 3

    .line 1593
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-nez v0, :cond_10

    .line 1594
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1596
    :cond_10
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method public getAppTaskThumbnailSize()Landroid/graphics/Point;
    .registers 4

    .line 3690
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3691
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailWidth:I

    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailHeight:I

    invoke-direct {v1, v2, p0}, Landroid/graphics/Point;-><init>(II)V

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    :catchall_14
    move-exception p0

    .line 3692
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getAppTasks(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 3505
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 3506
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppTasks(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getAppTasks(Ljava/lang/String;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 3510
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3512
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_1e

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3513
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/RecentTasks;->getAppTasksList(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_18

    .line 3516
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_18
    move-exception p0

    .line 3514
    :try_start_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    :try_start_1a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception p0

    .line 3516
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3517
    throw p0
.end method

.method public getAppWarningsLocked()Lcom/android/server/wm/AppWarnings;
    .registers 1

    .line 6380
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    return-object p0
.end method

.method public getApplockLockedAppsClass()Ljava/lang/String;
    .registers 1

    .line 5886
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getApplockLockedAppsClass()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getApplockLockedAppsPackage()Ljava/lang/String;
    .registers 1

    .line 5881
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getApplockLockedAppsPackage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getApplockType()I
    .registers 1

    .line 5891
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getApplockType()I

    move-result p0

    return p0
.end method

.method public getAssistContextExtras(I)Landroid/os/Bundle;
    .registers 16

    .line 3920
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v10, 0x0

    const-wide/16 v11, 0x1f4

    const/4 v13, 0x0

    move-object v0, p0

    move v1, p1

    .line 3918
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/wm/ActivityTaskManagerService;->enqueueAssistContext(ILandroid/content/Intent;Ljava/lang/String;Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZILandroid/os/Bundle;JI)Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    move-result-object p1

    if-nez p1, :cond_19

    const/4 p0, 0x0

    return-object p0

    .line 3924
    :cond_19
    monitor-enter p1

    .line 3925
    :catch_1a
    :goto_1a
    :try_start_1a
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->haveResult:Z
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_45

    if-nez v0, :cond_22

    .line 3927
    :try_start_1e
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_21} :catch_1a
    .catchall {:try_start_1e .. :try_end_21} :catchall_45

    goto :goto_1a

    .line 3931
    :cond_22
    :try_start_22
    monitor-exit p1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_45

    .line 3932
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3933
    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->result:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->buildAssistBundleLocked(Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;Landroid/os/Bundle;)V

    .line 3934
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingAssistExtras:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3935
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3936
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_26 .. :try_end_39} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3937
    iget-object p0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    return-object p0

    :catchall_3f
    move-exception p0

    .line 3936
    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :catchall_45
    move-exception p0

    .line 3931
    :try_start_46
    monitor-exit p1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw p0
.end method

.method public getAtmInternal()Lcom/android/server/wm/ActivityTaskManagerInternal;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1480
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-object p0
.end method

.method public getAutoRemoveRecents(I)Z
    .registers 4

    .line 8738
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8739
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_15

    const/4 p0, 0x0

    .line 8740
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    .line 8741
    :cond_15
    :try_start_15
    iget-boolean p0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_1c
    move-exception p0

    .line 8742
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getBackgroundActivityStartCallback()Lcom/android/server/wm/BackgroundActivityStartCallback;
    .registers 1

    .line 1693
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackgroundActivityStartCallback:Lcom/android/server/wm/BackgroundActivityStartCallback;

    return-object p0
.end method

.method public getBalAppSwitchesState()I
    .registers 1

    .line 3035
    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesState:I

    return p0
.end method

.method public getBoundsCompatAlignment()I
    .registers 2

    .line 8933
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_BOUNDS_COMPAT_ALIGNMENT_CONTROL:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 8936
    :cond_6
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8937
    invoke-static {}, Lcom/android/server/wm/BoundsCompatAlignmentController;->getAlignmentLocked()I

    move-result v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_15
    move-exception v0

    .line 8938
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .registers 3

    .line 5148
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5149
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfigurationForCallingPid()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    const/4 p0, 0x0

    .line 5150
    iput-boolean p0, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 5151
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    :catchall_17
    move-exception p0

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getCurrentUserId()I
    .registers 1

    .line 5137
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result p0

    return p0
.end method

.method public getCutoutPolicy(ILjava/lang/String;)I
    .registers 6

    const-string v0, "getCutoutPolicy()"

    .line 8856
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 8857
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 8859
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_25

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8860
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mDisplayCutoutController:Lcom/android/server/wm/DisplayCutoutController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayCutoutController;->getPolicy(ILjava/lang/String;)I

    move-result p0

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_1f

    .line 8863
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1f
    move-exception p0

    .line 8861
    :try_start_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    :try_start_21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception p0

    .line 8863
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8864
    throw p0
.end method

.method public getDedicatedProcesses(I)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8714
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8715
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->getDedicatedProcesses(I)Ljava/util/ArrayList;

    move-result-object p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    :catchall_11
    move-exception p0

    .line 8716
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getDedicatedTaskIds(I)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 8720
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8721
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->getDedicatedTaskIdsLocked(I)Ljava/util/ArrayList;

    move-result-object p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    :catchall_11
    move-exception p0

    .line 8722
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;
    .registers 7

    .line 1672
    new-instance v0, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v0}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 1673
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1674
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfigurationForCallingPid()Landroid/content/res/Configuration;

    move-result-object v2

    .line 1675
    iget v3, v2, Landroid/content/res/Configuration;->touchscreen:I

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    .line 1676
    iget v3, v2, Landroid/content/res/Configuration;->keyboard:I

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    .line 1677
    iget v2, v2, Landroid/content/res/Configuration;->navigation:I

    iput v2, v0, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_21

    const/4 v5, 0x3

    if-ne v2, v5, :cond_26

    .line 1680
    :cond_21
    iget v2, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v2, v4

    iput v2, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    :cond_26
    if-eqz v3, :cond_30

    const/4 v2, 0x1

    if-eq v3, v2, :cond_30

    .line 1684
    iget v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v2, v3

    iput v2, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 1686
    :cond_30
    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->GL_ES_VERSION:I

    iput p0, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 1687
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    :catchall_39
    move-exception p0

    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "getFocusedRootTaskInfo()"

    .line 2640
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2641
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2643
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_2e

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2644
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 2646
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, v3}, Lcom/android/server/wm/RootWindowContainer;->getRootTaskInfo(I)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object p0

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_28

    .line 2651
    :goto_1e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :cond_25
    const/4 p0, 0x0

    .line 2648
    :try_start_26
    monitor-exit v2

    goto :goto_1e

    :catchall_28
    move-exception p0

    .line 2649
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_28

    :try_start_2a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 2651
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2652
    throw p0
.end method

.method public getFoldStarManagerService()Lcom/samsung/android/core/IFoldStarManager;
    .registers 3

    const-string v0, "getFoldStarManagerService()"

    .line 8951
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 8952
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8953
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFoldStarManagerService:Lcom/android/server/wm/FoldStarManagerService;

    if-nez v1, :cond_16

    .line 8954
    new-instance v1, Lcom/android/server/wm/FoldStarManagerService;

    invoke-direct {v1, p0}, Lcom/android/server/wm/FoldStarManagerService;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFoldStarManagerService:Lcom/android/server/wm/FoldStarManagerService;

    .line 8956
    :cond_16
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFoldStarManagerService:Lcom/android/server/wm/FoldStarManagerService;

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    :catchall_1d
    move-exception p0

    .line 8957
    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getFrontActivityScreenCompatMode()I
    .registers 3

    const-string v0, "getFrontActivityScreenCompatMode"

    .line 2609
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 2610
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2611
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 2612
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    if-nez v1, :cond_1f

    const/4 p0, -0x3

    .line 2614
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    .line 2616
    :cond_1f
    :try_start_1f
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/CompatModePackages;->computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I

    move-result p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_2e
    move-exception p0

    .line 2617
    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getGlobalConfiguration()Landroid/content/res/Configuration;
    .registers 1

    .line 5163
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    goto :goto_e

    .line 5164
    :cond_9
    new-instance p0, Landroid/content/res/Configuration;

    invoke-direct {p0}, Landroid/content/res/Configuration;-><init>()V

    :goto_e
    return-object p0
.end method

.method public getGlobalConfigurationForCallingPid()Landroid/content/res/Configuration;
    .registers 2

    .line 1649
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1650
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfigurationForPid(I)Landroid/content/res/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public getGlobalConfigurationForPid(I)Landroid/content/res/Configuration;
    .registers 4

    .line 1657
    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq p1, v0, :cond_29

    if-gez p1, :cond_7

    goto :goto_29

    .line 1660
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1661
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 1662
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    goto :goto_1e

    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    :catchall_23
    move-exception p0

    .line 1663
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 1658
    :cond_29
    :goto_29
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;
    .registers 1

    .line 1474
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-object p0
.end method

.method public getHomeIntent()Landroid/content/Intent;
    .registers 4

    .line 6384
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopAction:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopData:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6385
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v1, 0x100

    .line 6386
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6387
    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    const/4 v1, 0x1

    if-eq p0, v1, :cond_25

    const-string p0, "android.intent.category.HOME"

    .line 6388
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_25
    return-object v0
.end method

.method public final getIdsClearSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1196
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSetClearIds:Ljava/util/Set;

    if-nez v0, :cond_a

    .line 1198
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSetClearIds:Ljava/util/Set;

    .line 1201
    :cond_a
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSetClearIds:Ljava/util/Set;

    return-object p0
.end method

.method public getInitProcessDisplayId(Lcom/android/server/wm/WindowProcessController;)I
    .registers 3

    .line 6677
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6678
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexController;->getInitProcessDisplayId(Lcom/android/server/wm/WindowProcessController;)I

    move-result p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_11
    move-exception p0

    .line 6679
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getIntentSenderLocked(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;
    .registers 29

    move/from16 v13, p1

    const/4 v14, 0x3

    const/4 v0, 0x0

    if-ne v13, v14, :cond_4c

    .line 6215
    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    const-string v2, "Failed createPendingResult: activity "

    const-string v3, "ActivityTaskManager"

    if-nez v1, :cond_2a

    .line 6217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not in any root task"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2a
    move-object/from16 v6, p6

    .line 6221
    iget-boolean v4, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_48

    .line 6222
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is finishing"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_48
    move-object/from16 v0, p0

    move-object v15, v1

    goto :goto_51

    :cond_4c
    move-object/from16 v6, p6

    move-object v15, v0

    move-object/from16 v0, p0

    .line 6227
    :goto_51
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/PendingIntentController;->getIntentSender(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/server/am/PendingIntentRecord;

    move-result-object v0

    const/high16 v1, 0x20000000

    and-int v1, p11, v1

    if-eqz v1, :cond_77

    const/4 v1, 0x1

    goto :goto_78

    :cond_77
    const/4 v1, 0x0

    :goto_78
    if-eqz v1, :cond_7b

    return-object v0

    :cond_7b
    if-ne v13, v14, :cond_8f

    .line 6235
    iget-object v1, v15, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-nez v1, :cond_88

    .line 6236
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v15, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 6238
    :cond_88
    iget-object v1, v15, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_8f
    return-object v0
.end method

.method public getLastResumedActivityUserId()I
    .registers 4

    .line 4612
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v2, "getLastResumedActivityUserId()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4614
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4615
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v1, :cond_1c

    .line 4616
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    .line 4618
    :cond_1c
    :try_start_1c
    iget p0, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_23
    move-exception p0

    .line 4619
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getLastStopAppSwitchesTime()J
    .registers 3

    .line 4738
    iget-wide v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastStopAppSwitchesTime:J

    return-wide v0
.end method

.method public getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;
    .registers 1

    .line 1625
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    return-object p0
.end method

.method public getLockTaskController()Lcom/android/server/wm/LockTaskController;
    .registers 1

    .line 1637
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    return-object p0
.end method

.method public getLockTaskModeState()I
    .registers 1

    .line 3500
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->getLockTaskModeState()I

    move-result p0

    return p0
.end method

.method public getMultiTaskingBinder()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;
    .registers 1

    .line 4895
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingBinder:Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    return-object p0
.end method

.method public getOrientationControlPolicy(ILjava/lang/String;)I
    .registers 4

    .line 8888
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const-string v0, "getOrientationControlPolicy()"

    .line 8891
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 8892
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8893
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mOrientationController:Lcom/android/server/wm/OrientationController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/OrientationController;->getPolicy(ILjava/lang/String;)I

    move-result p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_1e
    move-exception p0

    .line 8894
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getPackageAskScreenCompat(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "getPackageAskScreenCompat"

    .line 4790
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 4791
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4792
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/CompatModePackages;->getPackageAskCompatModeLocked(Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_16
    move-exception p0

    .line 4793
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getPackageManager()Landroid/content/pm/IPackageManager;
    .registers 1

    .line 6347
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    return-object p0
.end method

.method public getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;
    .registers 2

    .line 6351
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_e

    .line 6352
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 6354
    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public getPackageScreenCompatMode(Ljava/lang/String;)I
    .registers 3

    const-string v0, "getPackageScreenCompatMode"

    .line 4773
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 4774
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4775
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/CompatModePackages;->getPackageScreenCompatModeLocked(Ljava/lang/String;)I

    move-result p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_16
    move-exception p0

    .line 4776
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getPermissionPolicyInternal()Lcom/android/server/policy/PermissionPolicyInternal;
    .registers 2

    .line 6366
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    if-nez v0, :cond_e

    .line 6367
    const-class v0, Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/PermissionPolicyInternal;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    .line 6369
    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    return-object p0
.end method

.method public getPersonaActivityHelper()Lcom/android/server/wm/PersonaActivityHelper;
    .registers 1

    .line 6801
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPersonaActivityHelper:Lcom/android/server/wm/PersonaActivityHelper;

    return-object p0
.end method

.method public getProcessController(II)Lcom/android/server/wm/WindowProcessController;
    .registers 4

    .line 6469
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_a

    return-object p1

    .line 6471
    :cond_a
    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    if-ne v0, p2, :cond_15

    return-object p0

    :cond_15
    return-object p1
.end method

.method public getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 6453
    :cond_4
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 6454
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p0

    .line 6455
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_14
    if-ltz v1, :cond_41

    .line 6456
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 6457
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_22
    if-ltz v3, :cond_3e

    .line 6458
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowProcessController;

    .line 6459
    invoke-virtual {v4}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {v4}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, p1, :cond_3b

    return-object v4

    :cond_3b
    add-int/lit8 v3, v3, -0x1

    goto :goto_22

    :cond_3e
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    :cond_41
    return-object v0
.end method

.method public getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;
    .registers 8

    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_36

    .line 6431
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    .line 6432
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_14

    const/4 p0, 0x0

    return-object p0

    .line 6434
    :cond_14
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_36

    .line 6436
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 6437
    invoke-static {v3}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-nez v4, :cond_33

    invoke-static {v3, p2}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v3

    if-nez v3, :cond_2c

    goto :goto_33

    .line 6441
    :cond_2c
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowProcessController;

    return-object p0

    :cond_33
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 6445
    :cond_36
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowProcessController;

    return-object p0
.end method

.method public getRecentTasks(III)Landroid/content/pm/ParceledListSlice;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 3315
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 3316
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string v1, "getRecentTasks"

    invoke-virtual {p0, v0, v5, p3, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result v4

    const-string p3, "getRecentTasks"

    .line 3317
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p0, p3, v0, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->isGetTasksAllowed(Ljava/lang/String;II)Z

    move-result v3

    .line 3319
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p3

    :try_start_1b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3320
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RecentTasks;->getRecentTasks(IIZII)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    monitor-exit p3
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    :catchall_2b
    move-exception p0

    .line 3321
    :try_start_2c
    monitor-exit p3
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getRecentTasks()Lcom/android/server/wm/RecentTasks;
    .registers 1

    .line 1621
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    return-object p0
.end method

.method public getRequestedOrientationByTaskId(I)I
    .registers 6

    .line 8649
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const-string v1, "getRequestedOrientation"

    .line 8651
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 8650
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->isGetTasksAllowed(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 8652
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_2f

    const/4 p1, 0x0

    const/4 v1, 0x1

    .line 8654
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowContainer;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_2f

    .line 8656
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    .line 8660
    :cond_2f
    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, -0x1

    return p0

    :catchall_35
    move-exception p0

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getResumedTaskThumbnail(I)Landroid/graphics/Bitmap;
    .registers 6

    .line 8784
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.READ_FRAME_BUFFER"

    const-string v2, "getResumedTaskThumbnail()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8787
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8788
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v1, v3, v2}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_1f

    .line 8791
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v3

    .line 8793
    :cond_1f
    :try_start_1f
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSnapshotAsBitmapForRecentsLocked()Landroid/graphics/Bitmap;

    move-result-object p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    :catchall_28
    move-exception p0

    .line 8794
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;
    .registers 6

    const-string v0, "getRootTaskInfo()"

    .line 3339
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 3340
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3342
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_23

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3343
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object p0

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_1d

    .line 3346
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_1d
    move-exception p0

    .line 3344
    :try_start_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_23

    :catchall_23
    move-exception p0

    .line 3346
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3347
    throw p0
.end method

.method public getRootTaskInfoOnDisplay(III)Landroid/app/ActivityTaskManager$RootTaskInfo;
    .registers 7

    const-string v0, "getRootTaskInfoOnDisplay()"

    .line 3366
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 3367
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3369
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_23

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3370
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->getRootTaskInfo(III)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object p0

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_1d

    .line 3373
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_1d
    move-exception p0

    .line 3371
    :try_start_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_23

    :catchall_23
    move-exception p0

    .line 3373
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3374
    throw p0
.end method

.method public getScpmVersion()Ljava/lang/String;
    .registers 2

    .line 9056
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mPackageFeatureManagerService:Lcom/android/server/wm/PackageFeatureManagerService;

    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->FOLDABLE_PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    iget-object v0, v0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/PackageFeatureManagerService;->getScpmVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSecondaryHomeIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    .line 6402
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopAction:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopData:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6403
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11101f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz p1, :cond_27

    if-eqz v1, :cond_23

    goto :goto_27

    .line 6411
    :cond_23
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_37

    .line 6407
    :cond_27
    :goto_27
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x1040393

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 6409
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_37
    const/16 p1, 0x100

    .line 6413
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6414
    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    const/4 p1, 0x1

    if-eq p0, p1, :cond_46

    const-string p0, "android.intent.category.SECONDARY_HOME"

    .line 6415
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_46
    return-object v0
.end method

.method public getSsecureHiddenAppsPackages()Ljava/lang/String;
    .registers 1

    .line 5896
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getSsecureHiddenAppsPackages()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .registers 2

    .line 6373
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v0, :cond_e

    .line 6374
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 6376
    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    return-object p0
.end method

.method public getSysUiServiceComponentLocked()Landroid/content/ComponentName;
    .registers 2

    .line 6358
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSysUiServiceComponent:Landroid/content/ComponentName;

    if-nez v0, :cond_e

    .line 6359
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 6360
    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSysUiServiceComponent:Landroid/content/ComponentName;

    .line 6362
    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSysUiServiceComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getTaskBounds(I)Landroid/graphics/Rect;
    .registers 8

    const-string v0, "getTaskBounds()"

    .line 2785
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2786
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2787
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2789
    :try_start_e
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_63

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2790
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x1

    invoke-virtual {p0, p1, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_40

    const-string p0, "ActivityTaskManager"

    .line 2793
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTaskBounds: taskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2794
    monitor-exit v3
    :try_end_39
    .catchall {:try_start_11 .. :try_end_39} :catchall_5d

    .line 2803
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    .line 2796
    :cond_40
    :try_start_40
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    if-eqz p1, :cond_4e

    .line 2797
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_55

    .line 2798
    :cond_4e
    iget-object p0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz p0, :cond_55

    .line 2799
    invoke-virtual {v2, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2801
    :cond_55
    :goto_55
    monitor-exit v3
    :try_end_56
    .catchall {:try_start_40 .. :try_end_56} :catchall_5d

    :try_start_56
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_63

    .line 2803
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_5d
    move-exception p0

    .line 2801
    :try_start_5e
    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    :try_start_5f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_63

    :catchall_63
    move-exception p0

    .line 2803
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2804
    throw p0
.end method

.method public getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;
    .registers 1

    .line 1633
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    return-object p0
.end method

.method public getTaskDescription(I)Landroid/app/ActivityManager$TaskDescription;
    .registers 4

    .line 2810
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const-string v1, "getTaskDescription()"

    .line 2811
    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2812
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 2815
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    .line 2817
    :cond_1d
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return-object p0

    :catchall_23
    move-exception p0

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 6

    .line 3821
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v2, "getTaskDescriptionIcon"

    invoke-virtual {p0, v0, v1, p2, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p2

    .line 3824
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3825
    new-instance v1, Ljava/io/File;

    invoke-static {p2}, Lcom/android/server/wm/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    move-result-object v2

    .line 3826
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3827
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    const-string v0, "_activity_icon_"

    .line 3828
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 3832
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 3829
    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad file path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " passed for userId "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getTaskSnapshot(IZ)Landroid/window/TaskSnapshot;
    .registers 8

    .line 4556
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.READ_FRAME_BUFFER"

    const-string v2, "getTaskSnapshot()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4557
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4560
    :try_start_d
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_58

    :try_start_10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4561
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v3

    if-nez v3, :cond_40

    const-string p0, "ActivityTaskManager"

    .line 4564
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTaskSnapshot: taskId="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 4565
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_10 .. :try_end_39} :catchall_52

    .line 4584
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 4579
    :cond_40
    :try_start_40
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_52

    :try_start_41
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4581
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget v2, v3, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p0, p1, v2, v4, p2}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IIZZ)Landroid/window/TaskSnapshot;

    move-result-object p0
    :try_end_4e
    .catchall {:try_start_41 .. :try_end_4e} :catchall_58

    .line 4584
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_52
    move-exception p0

    .line 4579
    :try_start_53
    monitor-exit v2
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    :try_start_54
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_58

    :catchall_58
    move-exception p0

    .line 4584
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4585
    throw p0
.end method

.method public getTasks(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3119
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTasks(IZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTasks(IZZ)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 3129
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 3130
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p3, :cond_e

    const/16 p3, 0x8

    goto :goto_f

    :cond_e
    move p3, v1

    :goto_f
    or-int/2addr p2, p3

    .line 3134
    invoke-virtual {p0, v0, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->isCrossUserAllowed(II)Z

    move-result p3

    if-eqz p3, :cond_18

    const/4 p3, 0x4

    goto :goto_19

    :cond_18
    move p3, v1

    :goto_19
    or-int/2addr p2, p3

    .line 3136
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object p3

    .line 3137
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/4 v3, 0x1

    .line 3136
    invoke-virtual {p3, v2, v3}, Lcom/android/server/pm/UserManagerService;->getProfileIds(IZ)[I

    move-result-object p3

    .line 3138
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move v2, v1

    .line 3139
    :goto_2d
    array-length v3, p3

    if-ge v2, v3, :cond_3c

    .line 3140
    aget v3, p3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 3142
    :cond_3c
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 3144
    iget-object v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v6

    :try_start_44
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const-string v2, "getTasks"

    .line 3147
    invoke-virtual {p0, v2, v0, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->isGetTasksAllowed(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v1, 0x2

    :cond_50
    or-int v3, p2, v1

    .line 3149
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    move v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RootWindowContainer;->getRunningTasks(ILjava/util/List;IILandroid/util/ArraySet;)V

    .line 3151
    monitor-exit v6
    :try_end_5a
    .catchall {:try_start_44 .. :try_end_5a} :catchall_5e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p3

    :catchall_5e
    move-exception p0

    :try_start_5f
    monitor-exit v6
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;
    .registers 1

    .line 4840
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public getTransitionController()Lcom/android/server/wm/TransitionController;
    .registers 1

    .line 1641
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrganizerController;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object p0

    return-object p0
.end method

.method public getUserManager()Lcom/android/server/pm/UserManagerService;
    .registers 2

    .line 1585
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    if-nez v0, :cond_13

    const-string/jumbo v0, "user"

    .line 1586
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1587
    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 1589
    :cond_13
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-object p0
.end method

.method public getVisibleTasks()Landroid/content/pm/ParceledListSlice;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 6685
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 6686
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 6687
    invoke-virtual {p0, v0, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->isCrossUserAllowed(II)Z

    move-result v1

    .line 6688
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    .line 6689
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/4 v4, 0x1

    .line 6688
    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/UserManagerService;->getProfileIds(IZ)[I

    move-result-object v2

    .line 6690
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 6691
    :goto_20
    array-length v7, v2

    if-ge v4, v7, :cond_2f

    .line 6692
    aget v7, v2, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 6694
    :cond_2f
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 6695
    iget-object v9, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v9

    :try_start_37
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const-string v2, "getVisibleTasks"

    .line 6696
    invoke-virtual {p0, v2, v0, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->isGetTasksAllowed(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v1, :cond_44

    const/4 v1, 0x4

    goto :goto_45

    :cond_44
    move v1, v3

    :goto_45
    if-eqz v0, :cond_48

    const/4 v3, 0x2

    :cond_48
    or-int/2addr v3, v1

    .line 6699
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getRunningTasks()Lcom/android/server/wm/RunningTasks;

    move-result-object v0

    const/16 v1, 0x64

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v7, 0x1

    move-object v2, v8

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/RunningTasks;->getTasks(ILjava/util/List;ILcom/android/server/wm/RootWindowContainer;ILandroid/util/ArraySet;Z)V

    .line 6702
    monitor-exit v9
    :try_end_59
    .catchall {:try_start_37 .. :try_end_59} :catchall_62

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6703
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v8}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0

    :catchall_62
    move-exception p0

    .line 6702
    :try_start_63
    monitor-exit v9
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getVoiceInteractorPackageName(Landroid/os/IBinder;)Ljava/lang/String;
    .registers 2

    .line 2392
    const-class p0, Landroid/service/voice/VoiceInteractionManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 2393
    invoke-virtual {p0, p1}, Landroid/service/voice/VoiceInteractionManagerInternal;->getVoiceInteractorPackageName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWindowOrganizerController()Landroid/window/IWindowOrganizerController;
    .registers 1

    .line 4462
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    return-object p0
.end method

.method public handleIncomingUser(IIILjava/lang/String;)I
    .registers 13

    .line 2359
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public hasActiveVisibleWindow(I)Z
    .registers 3

    .line 6480
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/VisibleActivityProcessTracker;->hasVisibleActivity(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 6483
    :cond_a
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MirrorActiveUids;->hasNonAppVisibleWindow(I)Z

    move-result p0

    return p0
.end method

.method public hasSystemAlertWindowPermission(IILjava/lang/String;)Z
    .registers 10

    .line 1605
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0x18

    const/4 v4, 0x0

    const-string v5, ""

    move v2, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1f

    const-string p0, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 1608
    invoke-static {p0, p2, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_1d

    goto :goto_1e

    :cond_1d
    move p3, v0

    :goto_1e
    return p3

    :cond_1f
    if-nez p0, :cond_22

    goto :goto_23

    :cond_22
    move p3, v0

    :goto_23
    return p3
.end method

.method public hasUserRestriction(Ljava/lang/String;I)Z
    .registers 3

    .line 1600
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public hasWallpaperBackgroundForLetterbox(I)Z
    .registers 4

    const-string v0, "hasWallpaperBackgroundForLetterbox()"

    .line 8997
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 8998
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8999
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 9000
    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 8999
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->hasWallpaperBackgroundForLetterboxLocked(Lcom/android/server/wm/DisplayContent;)Z

    move-result p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_1a
    move-exception p0

    .line 9001
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public hasWallpaperBackgroundForLetterboxLocked(Lcom/android/server/wm/DisplayContent;)Z
    .registers 2

    if-eqz p1, :cond_f

    .line 9005
    new-instance p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda15;

    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda15;-><init>()V

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public final increaseAssetConfigurationSeq()I
    .registers 3

    .line 5462
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalAssetsSeq:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalAssetsSeq:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalAssetsSeq:I

    return v0
.end method

.method public increaseConfigurationSeqLocked()I
    .registers 3

    .line 1531
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    return v0
.end method

.method public initActivityManagerPerformance()V
    .registers 2

    .line 8773
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/server/wm/ActivityManagerPerformance;->getBooster(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/Context;)Lcom/android/server/wm/ActivityManagerPerformance;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    return-void
.end method

.method public initialize(Lcom/android/server/firewall/IntentFirewall;Lcom/android/server/am/PendingIntentController;Landroid/os/Looper;)V
    .registers 6

    .line 1485
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {v0, p0, p3}, Lcom/android/server/wm/ActivityTaskManagerService$H;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 1486
    new-instance p3, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    invoke-direct {p3, p0}, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    .line 1487
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    .line 1488
    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object p1

    .line 1489
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    invoke-virtual {p0, p3, v0, v1, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->createAppWarnings(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/io/File;)Lcom/android/server/wm/AppWarnings;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    .line 1490
    new-instance p3, Lcom/android/server/wm/CompatModePackages;

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {p3, p0, p1, v0}, Lcom/android/server/wm/CompatModePackages;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/io/File;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    .line 1491
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    .line 1492
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->createTaskSupervisor()Lcom/android/server/wm/ActivityTaskSupervisor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1493
    new-instance p1, Lcom/android/server/wm/ActivityClientController;

    invoke-direct {p1, p0}, Lcom/android/server/wm/ActivityClientController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    .line 1495
    new-instance p1, Lcom/android/server/wm/TaskChangeNotificationController;

    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {p1, p2, p3}, Lcom/android/server/wm/TaskChangeNotificationController;-><init>(Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 1497
    new-instance p1, Lcom/android/server/wm/LockTaskController;

    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/server/wm/LockTaskController;-><init>(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/os/Handler;Lcom/android/server/wm/TaskChangeNotificationController;)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 1499
    new-instance p1, Lcom/android/server/wm/ActivityStartController;

    invoke-direct {p1, p0}, Lcom/android/server/wm/ActivityStartController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 1500
    new-instance p1, Lcom/android/server/wm/RecentTasks;

    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/RecentTasks;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->setRecentTasks(Lcom/android/server/wm/RecentTasks;)V

    .line 1501
    new-instance p1, Lcom/android/server/wm/VrController;

    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-direct {p1, p2}, Lcom/android/server/wm/VrController;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    .line 1502
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 1503
    new-instance p1, Lcom/android/server/wm/PackageConfigPersister;

    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskSupervisor;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    invoke-direct {p1, p2, p0}, Lcom/android/server/wm/PackageConfigPersister;-><init>(Lcom/android/server/wm/PersisterQueue;Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    .line 1507
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->initialize()V

    .line 1510
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMWControllers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/IController;

    .line 1511
    invoke-interface {p1}, Lcom/android/server/wm/IController;->initialize()V

    goto :goto_8a

    :cond_9a
    return-void
.end method

.method public installSystemProviders()V
    .registers 2

    .line 1357
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSettingsObserver:Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;

    return-void
.end method

.method public instrumentationSourceHasPermission(ILjava/lang/String;)Z
    .registers 4

    .line 6665
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6666
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    .line 6667
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p1, 0x0

    if-eqz p0, :cond_26

    .line 6668
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->isInstrumenting()Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_26

    .line 6671
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getInstrumentationSourceUid()I

    move-result p0

    const/4 v0, -0x1

    .line 6672
    invoke-static {p2, v0, p0}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_26

    const/4 p1, 0x1

    :cond_26
    :goto_26
    return p1

    :catchall_27
    move-exception p0

    .line 6667
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final isActivityStartAllowedOnDisplay(ILandroid/content/Intent;Ljava/lang/String;I)Z
    .registers 9

    .line 2542
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2543
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2544
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2548
    :try_start_c
    invoke-virtual {p0, p2, p3, p4, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->resolveActivityInfoForIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ActivityInfo;

    move-result-object p2

    .line 2551
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p3
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_2a

    :try_start_13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2552
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->canPlaceEntityOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result p0

    monitor-exit p3
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_24

    .line 2556
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_24
    move-exception p0

    .line 2554
    :try_start_25
    monitor-exit p3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    :try_start_26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception p0

    .line 2556
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2557
    throw p0
.end method

.method public isActivityStartsLoggingEnabled()Z
    .registers 1

    .line 5586
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->isActivityStartsLoggingEnabled()Z

    move-result p0

    return p0
.end method

.method public isAppLockedPackage(Ljava/lang/String;)Z
    .registers 2

    .line 5824
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->isAppLockedPackage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isAppLockedVerifying(Ljava/lang/String;)Z
    .registers 2

    .line 5851
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->isAppLockedVerifying(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isApplockEnabled()Z
    .registers 1

    .line 5901
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->isApplockEnabled()Z

    move-result p0

    return p0
.end method

.method public isAssistDataAllowedOnCurrentActivity()Z
    .registers 4

    .line 4260
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4261
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_2e

    .line 4262
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeAssistant()Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_2e

    .line 4266
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-nez p0, :cond_1f

    .line 4268
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 4270
    :cond_1f
    :try_start_1f
    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 4271
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4272
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyCache;->isScreenCaptureAllowed(I)Z

    move-result p0

    return p0

    .line 4263
    :cond_2e
    :goto_2e
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_33
    move-exception p0

    .line 4271
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public isAssociatedCompanionApp(II)Z
    .registers 3

    .line 6579
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompanionAppUidsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return p0

    .line 6583
    :cond_10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isBackgroundActivityStartsEnabled()Z
    .registers 1

    .line 5590
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->isBackgroundActivityStartsEnabled()Z

    move-result p0

    return p0
.end method

.method public isBooted()Z
    .registers 1

    .line 6105
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->isBooted()Z

    move-result p0

    return p0
.end method

.method public isBooting()Z
    .registers 1

    .line 6097
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->isBooting()Z

    move-result p0

    return p0
.end method

.method public isCallerRecents(I)Z
    .registers 2

    .line 4083
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result p0

    return p0
.end method

.method public isControllerAMonkey()Z
    .registers 3

    .line 3105
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3106
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v1, :cond_10

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mControllerIsAMonkey:Z

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_16
    move-exception p0

    .line 3107
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public isCrossUserAllowed(II)Z
    .registers 3

    const-string p0, "android.permission.INTERACT_ACROSS_USERS"

    .line 4119
    invoke-static {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_13

    const-string p0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 4120
    invoke-static {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public isDedicatedProcess(ILjava/lang/String;)Z
    .registers 4

    .line 8726
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8727
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RecentTasks;->isDedicatedProcess(ILjava/lang/String;)Z

    move-result p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_11
    move-exception p0

    .line 8728
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public isDeviceOwner(I)Z
    .registers 2

    if-ltz p1, :cond_8

    .line 6487
    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDeviceOwnerUid:I

    if-ne p0, p1, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isDreaming()Z
    .registers 1

    .line 2096
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDreaming:Z

    return p0
.end method

.method public isForceStopDisabled(Lcom/android/server/wm/Task;)Z
    .registers 3

    const/4 v0, 0x0

    .line 3157
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isForceStopDisabled(Lcom/android/server/wm/Task;Z)Z

    move-result p0

    return p0
.end method

.method public isForceStopDisabled(Lcom/android/server/wm/Task;Z)Z
    .registers 10

    if-nez p2, :cond_36

    if-eqz p1, :cond_36

    .line 3166
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    const/4 v0, 0x0

    .line 3168
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz p2, :cond_12

    .line 3170
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_22

    :cond_12
    if-eqz v1, :cond_22

    .line 3172
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_22

    .line 3173
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_22
    :goto_22
    move-object v2, v0

    if-eqz v2, :cond_36

    .line 3176
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_36

    .line 3177
    iget v3, p1, Lcom/android/server/wm/Task;->mUserId:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 3178
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityTaskManagerService;->isForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_36
    const/4 p0, 0x0

    return p0
.end method

.method public isForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 3206
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ActivityTaskManagerService;->isForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 15

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 3211
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/ActivityTaskManagerService;->isForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p0

    return p0
.end method

.method public isForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .registers 15

    :try_start_0
    const-string p0, "application_policy"

    .line 3220
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-nez p6, :cond_1b

    if-eqz p1, :cond_1b

    if-eqz v0, :cond_1b

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p7

    .line 3223
    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1a} :catch_1b

    return p0

    :catch_1b
    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public isForceStopDisabledWithoutToast(Lcom/android/server/wm/Task;)Z
    .registers 3

    const/4 v0, 0x0

    .line 3161
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isForceStopDisabledWithoutToast(Lcom/android/server/wm/Task;Z)Z

    move-result p0

    return p0
.end method

.method public isForceStopDisabledWithoutToast(Lcom/android/server/wm/Task;Z)Z
    .registers 12

    if-nez p2, :cond_38

    if-eqz p1, :cond_38

    .line 3186
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    const/4 v0, 0x0

    .line 3188
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz p2, :cond_12

    .line 3190
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_22

    :cond_12
    if-eqz v1, :cond_22

    .line 3192
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_22

    .line 3193
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_22
    :goto_22
    move-object v2, v0

    if-eqz v2, :cond_38

    .line 3196
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_38

    .line 3197
    iget v3, p1, Lcom/android/server/wm/Task;->mUserId:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    .line 3198
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/ActivityTaskManagerService;->isForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p0

    return p0

    :cond_38
    const/4 p0, 0x0

    return p0
.end method

.method public isGetTasksAllowed(Ljava/lang/String;II)Z
    .registers 13

    .line 4087
    invoke-virtual {p0, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->isCallerRecents(I)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_8

    return v0

    :cond_8
    const-string p0, "android.permission.REAL_GET_TASKS"

    .line 4092
    invoke-static {p0, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_13

    move p0, v0

    goto :goto_14

    :cond_13
    move p0, v1

    :goto_14
    if-nez p0, :cond_62

    const-string v2, "android.permission.GET_TASKS"

    .line 4095
    invoke-static {v2, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result p2

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-nez p2, :cond_47

    .line 4102
    :try_start_21
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p2

    invoke-interface {p2, p3}, Landroid/content/pm/IPackageManager;->isUidPrivileged(I)Z

    move-result p2
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_29} :catch_47

    if-eqz p2, :cond_47

    .line 4104
    :try_start_2b
    sget-boolean p0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz p0, :cond_46

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    int-to-long v5, p3

    sget-object p2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x36ab9724    # -870029.75f

    new-array v8, v2, [Ljava/lang/Object;

    aput-object p0, v8, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v8, v0

    invoke-static {p2, v7, v4, v3, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_46} :catch_46

    :catch_46
    :cond_46
    move p0, v0

    .line 4111
    :catch_47
    :cond_47
    sget-boolean p2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz p2, :cond_62

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    int-to-long p2, p3

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x17e73996

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v5, v6, v4, v3, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_62
    return p0
.end method

.method public isInLockTaskMode()Z
    .registers 1

    .line 3495
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskModeState()I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isKeyguardLocked(I)Z
    .registers 2

    .line 4849
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked(I)Z

    move-result p0

    return p0
.end method

.method public isOccluding()Z
    .registers 1

    .line 9019
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mOccluding:Z

    return p0
.end method

.method public isPossibleToStart(Landroid/content/Intent;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 2869
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MAIN"

    .line 2871
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1a

    const-string v2, "android.intent.category.HOME"

    .line 2872
    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    return v3

    :cond_1a
    if-eqz v1, :cond_41

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    .line 2876
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    const-string v2, "com.android.internal.intent.action.REQUEST_SHUTDOWN"

    .line 2877
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 2878
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v4, "emergency"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_40

    const-string v2, "intent.action.INTERACTION_ICE"

    .line 2879
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    :cond_40
    return v3

    .line 2883
    :cond_41
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCheckSIOPLevelList:Ljava/util/HashMap;

    if-eqz v1, :cond_b5

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_b5

    .line 2884
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b5

    .line 2886
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPossibleToStart  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "checkingSIOP"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2887
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCheckSIOPLevelList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 2888
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCheckSIOPLevelList:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 2890
    :cond_80
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCheckSIOPLevelList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2891
    :cond_8a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 2892
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2893
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 2894
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 2900
    :cond_b5
    iget p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSIOPLevel:I

    const/16 v1, 0x8

    if-eq p1, v1, :cond_c0

    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mBatteryOverheatLevel:I

    if-gtz p0, :cond_c0

    move v0, v3

    :cond_c0
    return v0
.end method

.method public isPrepareOccluding()Z
    .registers 1

    .line 9015
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPrepareOccluding:Z

    return p0
.end method

.method public final isSameApp(ILjava/lang/String;)Z
    .registers 4

    if-eqz p1, :cond_11

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_11

    .line 3011
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, p2, p1, v0}, Landroid/content/pm/PackageManagerInternal;->isSameApp(Ljava/lang/String;II)Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x1

    return p0
.end method

.method public isSleepingLocked()Z
    .registers 2

    .line 5678
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    if-eqz v0, :cond_c

    .line 5679
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isOccluding()Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isSleepingOrShuttingDownLocked()Z
    .registers 2

    .line 5674
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingLocked()Z

    move-result v0

    if-nez v0, :cond_d

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

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

.method public isTopActivityImmersive()Z
    .registers 3

    const-string v0, "isTopActivityImmersive"

    .line 2595
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 2596
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2597
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_17

    .line 2599
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 2602
    :cond_17
    :try_start_17
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 2603
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    if-eqz p0, :cond_22

    const/4 v1, 0x1

    :cond_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_27
    move-exception p0

    .line 2604
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public keyguardGoingAway(I)V
    .registers 7

    .line 4335
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CONTROL_KEYGUARD"

    const-string/jumbo v2, "unlock keyguard"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "keyguardGoingAway"

    .line 4336
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 4337
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4339
    :try_start_13
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_3b

    :try_start_16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    and-int/lit8 v3, p1, 0x16

    if-eqz v3, :cond_23

    .line 4342
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityClientController;->invalidateHomeTaskSnapshot(Landroid/os/IBinder;)V

    .line 4345
    :cond_23
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v4, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;I)V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 4348
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_16 .. :try_end_2e} :catchall_35

    :try_start_2e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_3b

    .line 4350
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_35
    move-exception p0

    .line 4348
    :try_start_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    :try_start_37
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception p0

    .line 4350
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4351
    throw p0
.end method

.method public killPackageProcesses(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    const-string v0, "killPackageProcesses()"

    .line 8967
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 8968
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 8971
    :try_start_9
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 8970
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/PackagesChange;->removeTaskWithoutRemoveFromRecents(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_14

    .line 8973
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_14
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8974
    throw p0
.end method

.method public logAppTooSlow(Lcom/android/server/wm/WindowProcessController;JLjava/lang/String;)V
    .registers 5

    return-void
.end method

.method public moveRootTaskToDisplay(II)V
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 3837
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v4, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const-string v5, "moveRootTaskToDisplay()"

    invoke-virtual {v3, v4, v5}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3839
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3840
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_4d

    .line 3842
    :try_start_19
    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_3b

    int-to-long v8, v1

    int-to-long v10, v2

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, -0x549fd97e

    const/4 v13, 0x5

    const/4 v14, 0x0

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v15, v16

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v15, v7

    invoke-static {v6, v12, v13, v14, v15}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3844
    :cond_3b
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/server/wm/RootWindowContainer;->moveRootTaskToDisplay(IIZ)V
    :try_end_40
    .catchall {:try_start_19 .. :try_end_40} :catchall_48

    .line 3846
    :try_start_40
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3848
    monitor-exit v3
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_4d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_48
    move-exception v0

    .line 3846
    :try_start_49
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3847
    throw v0

    :catchall_4d
    move-exception v0

    .line 3848
    monitor-exit v3
    :try_end_4f
    .catchall {:try_start_49 .. :try_end_4f} :catchall_4d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public moveTaskToFront(Landroid/app/IApplicationThread;Ljava/lang/String;IILandroid/os/Bundle;)V
    .registers 14

    .line 2910
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.REORDER_TASKS"

    const-string v2, "moveTaskToFront()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2913
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v0, :cond_21

    int-to-long v0, p3

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x7e397b9d

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v2, v3, v5, v4, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2914
    :cond_21
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_24
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2916
    invoke-static {p5}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 2915
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityTaskManagerService;->moveTaskToFrontLocked(Landroid/app/IApplicationThread;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;)V

    .line 2917
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_24 .. :try_end_34} :catchall_38

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_38
    move-exception p0

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public moveTaskToFrontLocked(Landroid/app/IApplicationThread;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 2923
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ActivityTaskManagerService;->moveTaskToFrontLocked(Landroid/app/IApplicationThread;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;Z)V

    return-void
.end method

.method public moveTaskToFrontLocked(Landroid/app/IApplicationThread;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;Z)V
    .registers 32

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p5

    .line 2930
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 2931
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object/from16 v6, p2

    .line 2932
    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 2934
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    const/4 v13, 0x0

    if-eqz p1, :cond_20

    .line 2937
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    move-object v9, v3

    goto :goto_21

    :cond_20
    move-object v9, v13

    .line 2939
    :goto_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v3

    const-string v7, "moveTaskToFront"

    invoke-virtual {v3, v13, v7}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object/from16 v6, p2

    move-object v2, v13

    move-object/from16 v13, v16

    .line 2941
    invoke-virtual/range {v3 .. v13}, Lcom/android/server/wm/ActivityStarter;->shouldAbortBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLandroid/content/Intent;Landroid/app/ActivityOptions;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 2943
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBackgroundActivityStartsEnabled()Z

    move-result v3

    if-nez v3, :cond_44

    return-void

    .line 2948
    :cond_44
    :try_start_44
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v3

    const/4 v10, 0x1

    if-nez v3, :cond_6a

    .line 2950
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v0, :cond_63

    int-to-long v0, v1

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x57dfeb84

    new-array v5, v10, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v10, v2, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2951
    :cond_63
    invoke-static/range {p5 .. p5}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V
    :try_end_66
    .catchall {:try_start_44 .. :try_end_66} :catchall_d0

    .line 3002
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2954
    :cond_6a
    :try_start_6a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_82

    const-string v0, "ActivityTaskManager"

    const-string v1, "moveTaskToFront: Attempt to violate Lock Task Mode"

    .line 2955
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2956
    invoke-static/range {p5 .. p5}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V
    :try_end_7e
    .catchall {:try_start_6a .. :try_end_7e} :catchall_d0

    .line 3002
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2961
    :cond_82
    :try_start_82
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_91

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v1

    if-eqz v1, :cond_91

    .line 2964
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->resumeAppSwitches()V

    :cond_91
    move-object/from16 v1, p5

    if-eqz v1, :cond_9d

    .line 2969
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v13

    move-object v7, v13

    goto :goto_9e

    :cond_9d
    move-object v7, v2

    .line 2984
    :goto_9e
    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string v8, "moveTaskToFront"

    const/4 v9, 0x0

    move-object v5, v3

    move/from16 v6, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/ActivityTaskSupervisor;->findTaskToMoveToFront(Lcom/android/server/wm/Task;ILandroid/app/ActivityOptions;Ljava/lang/String;Z)V

    .line 2987
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_cc

    if-eqz p6, :cond_c9

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    .line 2995
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isProcessRunning()Z

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v16, v0

    .line 2994
    invoke-virtual/range {v16 .. v24}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZZZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)V

    goto :goto_cc

    .line 2998
    :cond_c9
    invoke-virtual {v0, v10}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Z)V
    :try_end_cc
    .catchall {:try_start_82 .. :try_end_cc} :catchall_d0

    .line 3002
    :cond_cc
    :goto_cc
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d0
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3003
    throw v0
.end method

.method public moveTaskToRootTask(IIZ)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "moveTaskToRootTask()"

    .line 3250
    invoke-static {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 3251
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3252
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_c0

    .line 3254
    :try_start_15
    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v6, v1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v7

    if-nez v7, :cond_3b

    const-string v0, "ActivityTaskManager"

    .line 3256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveTaskToRootTask: No task for id="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_15 .. :try_end_33} :catchall_bb

    .line 3275
    :try_start_33
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_c0

    .line 3257
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3260
    :cond_3b
    :try_start_3b
    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v6, :cond_65

    int-to-long v8, v1

    int-to-long v10, v2

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, -0x28610e9b

    const/16 v13, 0x35

    const/4 v14, 0x0

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v15, v16

    const/4 v8, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v15, v8

    const/4 v8, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v15, v8

    invoke-static {v6, v12, v13, v14, v15}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3263
    :cond_65
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(I)Lcom/android/server/wm/Task;

    move-result-object v8

    if-eqz v8, :cond_a4

    .line 3268
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v0

    if-eqz v0, :cond_85

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-string v13, "moveTaskToRootTask"

    move/from16 v9, p3

    .line 3272
    invoke-virtual/range {v7 .. v13}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;ZIZZLjava/lang/String;)Z
    :try_end_7d
    .catchall {:try_start_3b .. :try_end_7d} :catchall_bb

    .line 3275
    :try_start_7d
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3277
    monitor-exit v3
    :try_end_81
    .catchall {:try_start_7d .. :try_end_81} :catchall_c0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3269
    :cond_85
    :try_start_85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "moveTaskToRootTask: Attempt to move task "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to rootTask "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3265
    :cond_a4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveTaskToRootTask: No rootTask for rootTaskId="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_bb
    .catchall {:try_start_85 .. :try_end_bb} :catchall_bb

    :catchall_bb
    move-exception v0

    .line 3275
    :try_start_bc
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3276
    throw v0

    :catchall_c0
    move-exception v0

    .line 3277
    monitor-exit v3
    :try_end_c2
    .catchall {:try_start_bc .. :try_end_c2} :catchall_c0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public notifyDedicated(I)V
    .registers 6

    .line 8754
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "ActivityTaskManager"

    .line 8755
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDedicatedState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCb4Task:Ljava/util/Optional;

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8756
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCb4Task:Ljava/util/Optional;

    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 8766
    monitor-exit v0

    return-void

    :catchall_33
    move-exception p0

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V
    .registers 3

    .line 4845
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    return-void
.end method

.method public onActivityManagerInternalAdded()V
    .registers 3

    .line 1524
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1525
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 1526
    const-class v1, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriGrantsManagerInternal;

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 1527
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1f
    move-exception p0

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onImeWindowSetOnDisplayArea(ILcom/android/server/wm/DisplayArea;)V
    .registers 8

    .line 6616
    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2c

    if-gez p1, :cond_9

    goto :goto_2c

    .line 6621
    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    if-nez p0, :cond_28

    .line 6623
    sget-boolean p0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    if-eqz p0, :cond_27

    int-to-long p0, p1

    sget-object p2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v0, -0x1ac5015f

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-static {p2, v0, v3, v2, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_27
    return-void

    .line 6627
    :cond_28
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowProcessController;->registerDisplayAreaConfigurationListener(Lcom/android/server/wm/DisplayArea;)V

    return-void

    .line 6617
    :cond_2c
    :goto_2c
    sget-boolean p0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    if-eqz p0, :cond_38

    sget-object p0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const p1, -0x6be93a42

    invoke-static {p0, p1, v1, v2, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_38
    return-void
.end method

.method public onInitPowerManagement()V
    .registers 5

    .line 1241
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1242
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->initPowerManagement()V

    .line 1243
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1244
    const-class v2, Landroid/os/PowerManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManagerInternal;

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v2, 0x1

    const-string v3, "*voice*"

    .line 1245
    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 p0, 0x0

    .line 1246
    invoke-virtual {v1, p0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1252
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_32
    move-exception p0

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final onLocalVoiceInteractionStartedLocked(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .registers 7

    .line 4277
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 4279
    :cond_7
    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityRecord;->setVoiceSessionLocked(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 4283
    :try_start_a
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Landroid/app/IApplicationThread;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 4285
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_17} :catch_29

    .line 4287
    :try_start_17
    iget-object p1, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->startRunningVoiceLocked(Landroid/service/voice/IVoiceInteractionSession;I)V
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_24

    .line 4289
    :try_start_20
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2c

    :catchall_24
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4290
    throw p0
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_29} :catch_29

    .line 4294
    :catch_29
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->clearVoiceSessionLocked()V

    :goto_2c
    return-void
.end method

.method public onPictureInPictureStateChanged(Landroid/app/PictureInPictureUiState;)V
    .registers 4

    const-string/jumbo v0, "onPictureInPictureStateChanged"

    .line 4869
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 4870
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 4871
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 4872
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 4873
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    .line 4874
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 4873
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/ActivityClientController;->onPictureInPictureStateChanged(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureUiState;)V

    :cond_25
    return-void
.end method

.method public onScreenAwakeChanged(Z)V
    .registers 4

    .line 3790
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz p1, :cond_d

    return-void

    .line 3802
    :cond_d
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter p1

    .line 3803
    :try_start_10
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 3804
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 3806
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    .line 3807
    :goto_2c
    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_45

    if-nez v0, :cond_30

    return-void

    .line 3813
    :cond_30
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->setRunningAnimationUnsafe()V

    .line 3814
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3815
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :catchall_45
    move-exception p0

    .line 3807
    :try_start_46
    monitor-exit p1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw p0
.end method

.method public onSplashScreenViewCopyFinished(ILandroid/window/SplashScreenView$SplashScreenViewParcelable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4373
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_TASKS"

    const-string v2, "copySplashScreenViewFinish()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4375
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4376
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 4379
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopWaitSplashScreenActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 4381
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityRecord;->onCopySplashScreenFinish(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)V

    .line 4384
    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_26
    move-exception p0

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onSystemReady()V
    .registers 5

    .line 1083
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.CHECK_COOLDOWN_LEVEL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1084
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCooldownLevelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1087
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1088
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.software.cant_save_state"

    .line 1089
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHasHeavyWeightFeature:Z

    const-string v2, "android.software.leanback"

    .line 1090
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHasLeanbackFeature:Z

    .line 1091
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v1}, Lcom/android/server/wm/VrController;->onSystemReady()V

    .line 1092
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v1}, Lcom/android/server/wm/RecentTasks;->onSystemReadyLocked()V

    .line 1093
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->onSystemReady()V

    .line 1094
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityClientController;->onSystemReady()V

    .line 1096
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v1, :cond_58

    .line 1098
    sget-boolean v1, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->DISABLE_PREL:Z

    if-nez v1, :cond_58

    .line 1099
    const-class v1, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;

    .line 1100
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;

    if-eqz v1, :cond_58

    .line 1102
    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/appprelauncher/AppPrelaunchManagerService;->setRemoveTaskByIdCallback(Ljava/util/function/Function;)V

    .line 1132
    :cond_58
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->onSystemReady()V

    .line 1140
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_11 .. :try_end_5e} :catchall_94

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1144
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "activeLaunch"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1145
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.samsung.DO_ACTIVE_LAUNCH"

    .line 1146
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.DO_ACTIVE_LAUNCH_FOR_KNOX"

    .line 1147
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.DO_ACTIVE_LAUNCH_FOR_KNOX_LAUNCHER"

    .line 1148
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1150
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1151
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1152
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/wm/ActivityTaskManagerService$ActiveLaunchReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/wm/ActivityTaskManagerService$ActiveLaunchReceiver;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v3, v1, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :catchall_94
    move-exception p0

    .line 1140
    :try_start_95
    monitor-exit v0
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6590
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/IActivityTaskManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    const-string p1, "ActivityTaskManager"

    .line 6592
    invoke-static {p1, p0}, Lcom/android/server/wm/ActivityTaskManagerService;->logAndRethrowRuntimeExceptionOnTransact(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final pendingAssistExtrasTimedOut(Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;)V
    .registers 4

    .line 4204
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4205
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingAssistExtras:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4206
    iget-object p0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiver:Landroid/app/IAssistDataReceiver;

    .line 4207
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz p0, :cond_25

    .line 4210
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "receiverExtras"

    .line 4212
    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiverExtras:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4214
    :try_start_20
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiver:Landroid/app/IAssistDataReceiver;

    invoke-interface {p1, p0}, Landroid/app/IAssistDataReceiver;->onHandleAssistData(Landroid/os/Bundle;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_25

    :catch_25
    :cond_25
    return-void

    :catchall_26
    move-exception p0

    .line 4207
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public postFinishBooting(ZZ)V
    .registers 5

    .line 6109
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final postHeavyWeightProcessNotification(Lcom/android/server/wm/WindowProcessController;Landroid/content/Intent;I)V
    .registers 13

    const-string v0, "ActivityTaskManager"

    if-nez p1, :cond_5

    return-void

    .line 6170
    :cond_5
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    if-nez v1, :cond_c

    return-void

    .line 6176
    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1

    .line 6177
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const v4, 0x10405da

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    .line 6178
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v3

    .line 6177
    invoke-virtual {v2, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 6179
    new-instance v3, Landroid/app/Notification$Builder;

    sget-object v4, Lcom/android/internal/notification/SystemNotificationChannels;->HEAVY_WEIGHT_APP:Ljava/lang/String;

    invoke-direct {v3, p1, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p1, 0x1080a85

    .line 6182
    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    const-wide/16 v3, 0x0

    .line 6183
    invoke-virtual {p1, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 6184
    invoke-virtual {p1, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 6185
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const v4, 0x106001c

    .line 6186
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 6188
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const v3, 0x10405db

    .line 6190
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 6189
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x14000000

    const/4 v6, 0x0

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p3}, Landroid/os/UserHandle;-><init>(I)V

    move-object v4, p2

    .line 6191
    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 6195
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6
    :try_end_83
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_83} :catch_96

    :try_start_83
    const-string v2, "android"

    const-string v3, "android"

    const/4 v4, 0x0

    const/16 v5, 0xb

    move v7, p3

    .line 6197
    invoke-interface/range {v1 .. v7}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    :try_end_8e
    .catch Ljava/lang/RuntimeException; {:try_start_83 .. :try_end_8e} :catch_8f
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_8e} :catch_9c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_83 .. :try_end_8e} :catch_96

    goto :goto_9c

    :catch_8f
    move-exception p0

    :try_start_90
    const-string p1, "Error showing notification for heavy-weight app"

    .line 6200
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_95
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_90 .. :try_end_95} :catch_96

    goto :goto_9c

    :catch_96
    move-exception p0

    const-string p1, "Unable to create context for heavy notification"

    .line 6204
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_9c
    :goto_9c
    return-void
.end method

.method public registerAnrController(Landroid/app/AnrController;)V
    .registers 3

    .line 3040
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3041
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAnrController:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3042
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception p0

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public registerCallback4Task(Landroid/os/RemoteCallback;)V
    .registers 3

    .line 8748
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 8749
    :try_start_3
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCb4Task:Ljava/util/Optional;

    .line 8750
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;)V
    .registers 7

    .line 4640
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    const-string/jumbo v2, "registerRemoteAnimationForNextActivityStart"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4642
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/RemoteAnimationAdapter;->setCallingPidUid(II)V

    .line 4643
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4644
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_33

    .line 4646
    :try_start_1f
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityStartController;->registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_2e

    .line 4649
    :try_start_26
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4651
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2e
    move-exception p0

    .line 4649
    :try_start_2f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4650
    throw p0

    :catchall_33
    move-exception p0

    .line 4651
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public registerRemoteAnimationsForDisplay(ILandroid/view/RemoteAnimationDefinition;)V
    .registers 6

    .line 4657
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    const-string/jumbo v2, "registerRemoteAnimations"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4659
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/RemoteAnimationDefinition;->setCallingPidUid(II)V

    .line 4660
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4661
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-nez p0, :cond_3e

    const-string p0, "ActivityTaskManager"

    .line 4663
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t find display with id: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4664
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_18 .. :try_end_3a} :catchall_52

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4666
    :cond_3e
    :try_start_3e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_52

    .line 4668
    :try_start_42
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_4d

    .line 4670
    :try_start_45
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4672
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_52

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_4d
    move-exception p0

    .line 4670
    :try_start_4e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4671
    throw p0

    :catchall_52
    move-exception p0

    .line 4672
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_4e .. :try_end_54} :catchall_52

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    .registers 3

    const-string/jumbo v0, "registerTaskStackListener()"

    .line 3854
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 3855
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    return-void
.end method

.method public releaseSomeActivities(Landroid/app/IApplicationThread;)V
    .registers 5

    .line 3739
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3740
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_20

    .line 3742
    :try_start_a
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    const-string p1, "low-mem"

    .line 3743
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->releaseSomeActivities(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_1b

    .line 3745
    :try_start_13
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3747
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1b
    move-exception p0

    .line 3745
    :try_start_1c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3746
    throw p0

    :catchall_20
    move-exception p0

    .line 3747
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public removeAllVisibleRecentTasks()V
    .registers 5

    .line 2772
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.REMOVE_TASKS"

    const-string/jumbo v2, "removeAllVisibleRecentTasks()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2773
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2774
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_2e

    .line 2776
    :try_start_14
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v3

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result p0

    invoke-virtual {v3, p0}, Lcom/android/server/wm/RecentTasks;->removeAllVisibleTasks(I)V
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_29

    .line 2778
    :try_start_21
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2780
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_29
    move-exception p0

    .line 2778
    :try_start_2a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2779
    throw p0

    :catchall_2e
    move-exception p0

    .line 2780
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public removeDedicatedProcessFromPackage(Ljava/lang/String;I)V
    .registers 4

    .line 8732
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8733
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RecentTasks;->removeDedicatedProcessFromPackage(Ljava/lang/String;I)V

    .line 8734
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception p0

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public removeRootTasksInWindowingModes([I)V
    .registers 5

    const-string/jumbo v0, "removeRootTasksInWindowingModes()"

    .line 3286
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 3288
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3289
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_22

    .line 3291
    :try_start_10
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->removeRootTasksInWindowingModes([I)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1d

    .line 3293
    :try_start_15
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3295
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1d
    move-exception p0

    .line 3293
    :try_start_1e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3294
    throw p0

    :catchall_22
    move-exception p0

    .line 3295
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public removeRootTasksWithActivityTypes([I)V
    .registers 5

    const-string/jumbo v0, "removeRootTasksWithActivityTypes()"

    .line 3300
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 3302
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3303
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_22

    .line 3305
    :try_start_10
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->removeRootTasksWithActivityTypes([I)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1d

    .line 3307
    :try_start_15
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3309
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1d
    move-exception p0

    .line 3307
    :try_start_1e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3308
    throw p0

    :catchall_22
    move-exception p0

    .line 3309
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public removeTask(I)Z
    .registers 7

    .line 2729
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.REMOVE_TASKS"

    const-string/jumbo v2, "removeTask()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2730
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2731
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_5e

    .line 2733
    :try_start_14
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v3

    if-nez v3, :cond_3d

    const-string p0, "ActivityTaskManager"

    .line 2736
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeTask: No task remove with id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_14 .. :try_end_34} :catchall_59

    const/4 p0, 0x0

    .line 2747
    :try_start_35
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_5e

    .line 2737
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    .line 2740
    :cond_3d
    :try_start_3d
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 2741
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string/jumbo p1, "remove-task"

    invoke-virtual {p0, v3, v4, v4, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    goto :goto_51

    .line 2743
    :cond_4c
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V
    :try_end_51
    .catchall {:try_start_3d .. :try_end_51} :catchall_59

    .line 2747
    :goto_51
    :try_start_51
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_5e

    .line 2745
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    :catchall_59
    move-exception p0

    .line 2747
    :try_start_5a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2748
    throw p0

    :catchall_5e
    move-exception p0

    .line 2749
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5a .. :try_end_60} :catchall_5e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V
    .registers 7

    .line 3538
    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    .line 3539
    monitor-enter p1

    .line 3540
    :try_start_3
    iput-object p2, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->result:Landroid/os/Bundle;

    .line 3541
    iput-object p3, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->structure:Landroid/app/assist/AssistStructure;

    .line 3542
    iput-object p4, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->content:Landroid/app/assist/AssistContent;

    if-eqz p5, :cond_12

    .line 3544
    iget-object p4, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    const-string v0, "android.intent.extra.REFERRER"

    invoke-virtual {p4, v0, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3546
    :cond_12
    iget-object p4, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p4}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result p4

    if-nez p4, :cond_1c

    .line 3551
    monitor-exit p1

    return-void

    :cond_1c
    if-eqz p3, :cond_35

    .line 3555
    iget-object p4, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p4

    iget p4, p4, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p3, p4}, Landroid/app/assist/AssistStructure;->setTaskId(I)V

    .line 3556
    iget-object p4, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    iget-object p4, p4, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p3, p4}, Landroid/app/assist/AssistStructure;->setActivityComponent(Landroid/content/ComponentName;)V

    .line 3557
    iget-boolean p4, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->isHome:Z

    invoke-virtual {p3, p4}, Landroid/app/assist/AssistStructure;->setHomeActivity(Z)V

    :cond_35
    const/4 p3, 0x1

    .line 3559
    iput-boolean p3, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->haveResult:Z

    .line 3560
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 3561
    iget-object p3, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    if-nez p3, :cond_45

    iget-object p3, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiver:Landroid/app/IAssistDataReceiver;

    if-nez p3, :cond_45

    .line 3563
    monitor-exit p1

    return-void

    .line 3565
    :cond_45
    monitor-exit p1
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_e9

    const/4 p3, 0x0

    .line 3569
    iget-object p4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p4

    :try_start_4a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3570
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->buildAssistBundleLocked(Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;Landroid/os/Bundle;)V

    .line 3571
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingAssistExtras:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p2

    .line 3572
    iget-object p5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    invoke-virtual {p5, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez p2, :cond_62

    .line 3575
    monitor-exit p4
    :try_end_5e
    .catchall {:try_start_4a .. :try_end_5e} :catchall_e3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3578
    :cond_62
    :try_start_62
    iget-object p2, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiver:Landroid/app/IAssistDataReceiver;

    if-eqz p2, :cond_a0

    .line 3580
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo p5, "taskId"

    .line 3581
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    .line 3582
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 3581
    invoke-virtual {p3, p5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p5, "activityId"

    .line 3583
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->assistToken:Landroid/os/Binder;

    invoke-virtual {p3, p5, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string p5, "data"

    .line 3585
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    invoke-virtual {p3, p5, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string/jumbo p5, "structure"

    .line 3586
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->structure:Landroid/app/assist/AssistStructure;

    invoke-virtual {p3, p5, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p5, "content"

    .line 3587
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->content:Landroid/app/assist/AssistContent;

    invoke-virtual {p3, p5, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo p5, "receiverExtras"

    .line 3588
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiverExtras:Landroid/os/Bundle;

    invoke-virtual {p3, p5, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3590
    :cond_a0
    monitor-exit p4
    :try_end_a1
    .catchall {:try_start_62 .. :try_end_a1} :catchall_e3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz p2, :cond_aa

    .line 3593
    :try_start_a6
    invoke-interface {p2, p3}, Landroid/app/IAssistDataReceiver;->onHandleAssistData(Landroid/os/Bundle;)V
    :try_end_a9
    .catch Landroid/os/RemoteException; {:try_start_a6 .. :try_end_a9} :catch_a9

    :catch_a9
    return-void

    .line 3599
    :cond_aa
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    .line 3601
    :try_start_ae
    iget-object p4, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    iget-object p5, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    invoke-virtual {p4, p5}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3602
    iget-object p4, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    const/high16 p5, 0x34000000

    invoke-virtual {p4, p5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3605
    iget-object p4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string p5, "assist"

    invoke-virtual {p4, p5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_c3
    .catchall {:try_start_ae .. :try_end_c3} :catchall_de

    .line 3608
    :try_start_c3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object p4, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    new-instance p5, Landroid/os/UserHandle;

    iget p1, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->userHandle:I

    invoke-direct {p5, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p4, p5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_d1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c3 .. :try_end_d1} :catch_d2
    .catchall {:try_start_c3 .. :try_end_d1} :catchall_de

    goto :goto_da

    :catch_d2
    move-exception p0

    :try_start_d3
    const-string p1, "ActivityTaskManager"

    const-string p4, "No activity to handle assist action."

    .line 3610
    invoke-static {p1, p4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_da
    .catchall {:try_start_d3 .. :try_end_da} :catchall_de

    .line 3613
    :goto_da
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_de
    move-exception p0

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3614
    throw p0

    :catchall_e3
    move-exception p0

    .line 3590
    :try_start_e4
    monitor-exit p4
    :try_end_e5
    .catchall {:try_start_e4 .. :try_end_e5} :catchall_e3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :catchall_e9
    move-exception p0

    .line 3565
    :try_start_ea
    monitor-exit p1
    :try_end_eb
    .catchall {:try_start_ea .. :try_end_eb} :catchall_e9

    throw p0
.end method

.method public requestAssistContextExtras(ILandroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z
    .registers 21

    .line 3870
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x7d0

    const/4 v13, 0x0

    move-object v0, p0

    move v1, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    .line 3869
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/wm/ActivityTaskManagerService;->enqueueAssistContext(ILandroid/content/Intent;Ljava/lang/String;Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZILandroid/os/Bundle;JI)Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    move-result-object v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method public requestAssistDataForTask(Landroid/app/IAssistDataReceiver;ILjava/lang/String;)Z
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 3877
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v3, "android.permission.GET_TOP_ACTIVITY_INFO"

    const-string/jumbo v4, "requestAssistDataForTask()"

    invoke-virtual {v2, v3, v4}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3879
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3882
    :try_start_12
    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getAttachedNonFinishingActivityForTask(ILandroid/os/IBinder;)Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;

    move-result-object v4
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_75

    .line 3884
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v4, :cond_36

    .line 3887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find activity for task "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 3891
    :cond_36
    new-instance v9, Lcom/android/server/wm/AssistDataReceiverProxy;

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v9, v1, v2}, Lcom/android/server/wm/AssistDataReceiverProxy;-><init>(Landroid/app/IAssistDataReceiver;Ljava/lang/String;)V

    .line 3893
    new-instance v10, Ljava/lang/Object;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 3894
    new-instance v1, Lcom/android/server/am/AssistDataRequester;

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 3895
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v8

    const/16 v11, 0x31

    const/4 v12, -0x1

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lcom/android/server/am/AssistDataRequester;-><init>(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/app/AppOpsManager;Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;Ljava/lang/Object;II)V

    .line 3898
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 3899
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    .line 3903
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v18

    move-object v10, v1

    move-object/from16 v19, p3

    .line 3900
    invoke-virtual/range {v10 .. v19}, Lcom/android/server/am/AssistDataRequester;->requestAssistData(Ljava/util/List;ZZZZZZILjava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :catchall_75
    move-exception v0

    .line 3884
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3885
    throw v0
.end method

.method public requestAutofillData(Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z
    .registers 19

    .line 3912
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v10, 0x0

    const-wide/16 v11, 0x7d0

    move-object v0, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v13, p4

    .line 3911
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/wm/ActivityTaskManagerService;->enqueueAssistContext(ILandroid/content/Intent;Ljava/lang/String;Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZILandroid/os/Bundle;JI)Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method public requestWaitingForOccluding(I)V
    .registers 6

    const-string/jumbo v0, "requestWaitingForOccluding"

    .line 9032
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 9033
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9035
    :try_start_a
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_3c

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9037
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isPrepareOccluding()Z

    move-result v3

    if-nez v3, :cond_22

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked(I)Z

    move-result p1

    if-eqz p1, :cond_22

    const/4 p1, 0x1

    .line 9038
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->setPrepareOccluding(Z)V

    .line 9040
    :cond_22
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p0, :cond_2e

    const-string p0, "ActivityTaskManager"

    const-string/jumbo p1, "requestWaitingForOccluding is called"

    .line 9041
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9043
    :cond_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_d .. :try_end_2f} :catchall_36

    :try_start_2f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3c

    .line 9045
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_36
    move-exception p0

    .line 9043
    :try_start_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    :try_start_38
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception p0

    .line 9045
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9046
    throw p0
.end method

.method public resetUserPackageSettings(II)V
    .registers 5

    const-string/jumbo p0, "resetUserPackageSettings()"

    .line 8691
    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 8692
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 8694
    :try_start_a
    invoke-static {}, Lcom/android/server/wm/PackageSettingsManager;->getInstance()Lcom/android/server/wm/PackageSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/PackageSettingsManager;->resetAllIfNeeded(II)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_15

    .line 8696
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_15
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8697
    throw p0
.end method

.method public resizeTask(ILandroid/graphics/Rect;I)Z
    .registers 8

    const-string/jumbo v0, "resizeTask()"

    .line 3710
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 3711
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3713
    :try_start_a
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_77

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3714
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_3d

    const-string p0, "ActivityTaskManager"

    .line 3717
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "resizeTask: taskId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3718
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_d .. :try_end_36} :catchall_71

    .line 3733
    :goto_36
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    .line 3720
    :cond_3d
    :try_start_3d
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    move-result p1

    if-nez p1, :cond_60

    const-string p1, "ActivityTaskManager"

    .line 3721
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "resizeTask not allowed on task="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3722
    monitor-exit v2

    goto :goto_36

    :cond_60
    and-int/lit8 p1, p3, 0x1

    if-eqz p1, :cond_65

    const/4 v3, 0x1

    .line 3730
    :cond_65
    invoke-virtual {p0, p2, p3, v3}, Lcom/android/server/wm/Task;->resize(Landroid/graphics/Rect;IZ)Z

    move-result p0

    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_3d .. :try_end_6a} :catchall_71

    .line 3733
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_71
    move-exception p0

    .line 3731
    :try_start_72
    monitor-exit v2
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    :try_start_73
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_77
    .catchall {:try_start_73 .. :try_end_77} :catchall_77

    :catchall_77
    move-exception p0

    .line 3733
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3734
    throw p0
.end method

.method public resolveActivityInfoForIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ActivityInfo;
    .registers 12

    .line 2562
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/16 v1, -0x2710

    .line 2564
    invoke-static {p4, p4, v1}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    .line 2562
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 2566
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, p1, p3}, Landroid/app/ActivityManagerInternal;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method public resumeAppSwitches()V
    .registers 4

    .line 4730
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.STOP_APP_SWITCHES"

    const-string/jumbo v2, "resumeAppSwitches"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4731
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x2

    .line 4732
    iput v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesState:I

    .line 4733
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4734
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1e
    move-exception p0

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public retrieveSettings(Landroid/content/ContentResolver;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1361
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1362
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.software.freeform_window_management"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_1e

    const-string v2, "enable_freeform_support"

    .line 1363
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_1e

    :cond_1c
    move v2, v4

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v2, 0x1

    .line 1366
    :goto_1f
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/ActivityTaskManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 1367
    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1368
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.software.picture_in_picture"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_37

    const/4 v6, 0x1

    goto :goto_38

    :cond_37
    move v6, v4

    :goto_38
    if-eqz v6, :cond_4a

    .line 1369
    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1370
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.software.expanded_picture_in_picture"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4a

    const/4 v7, 0x1

    goto :goto_4b

    :cond_4a
    move v7, v4

    .line 1372
    :goto_4b
    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1373
    invoke-static {v8}, Landroid/app/ActivityTaskManager;->supportsSplitScreenMultiWindow(Landroid/content/Context;)Z

    move-result v8

    .line 1374
    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "android.software.activities_on_secondary_displays"

    .line 1375
    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "debug.force_rtl"

    .line 1376
    invoke-static {v1, v10, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_67

    const/4 v10, 0x1

    goto :goto_68

    :cond_67
    move v10, v4

    :goto_68
    const-string v11, "force_resizable_activities"

    .line 1377
    invoke-static {v1, v11, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_72

    const/4 v11, 0x1

    goto :goto_73

    :cond_72
    move v11, v4

    :goto_73
    const-string v12, "enable_non_resizable_multi_window"

    .line 1379
    invoke-static {v1, v12, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_7d

    const/4 v12, 0x1

    goto :goto_7e

    :cond_7d
    move v12, v4

    .line 1381
    :goto_7e
    iget-object v13, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x10e0127

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 1383
    iget-object v14, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10e0102

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    .line 1385
    iget-object v15, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v4, 0x10500c0

    invoke-virtual {v15, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v4

    .line 1387
    iget-object v15, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v3, 0x10500c1

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    .line 1389
    iget-object v15, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v16, v7

    const v7, 0x10e00aa

    invoke-virtual {v15, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 1393
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-static {v15}, Landroid/sysprop/DisplayProperties;->debug_force_rtl(Ljava/lang/Boolean;)V

    .line 1395
    new-instance v15, Landroid/content/res/Configuration;

    invoke-direct {v15}, Landroid/content/res/Configuration;-><init>()V

    .line 1396
    invoke-static {v1, v15}, Landroid/provider/Settings$System;->getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V

    if-eqz v10, :cond_d7

    .line 1399
    iget-object v1, v15, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v15, v1}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 1402
    :cond_d7
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_da
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1403
    iput-boolean v11, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    .line 1404
    iput-boolean v12, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDevEnableNonResizableMultiWindow:Z

    .line 1405
    iput v13, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsNonResizableMultiWindow:I

    .line 1406
    iput v14, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRespectsActivityMinWidthHeightMultiWindow:I

    .line 1407
    iput v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMinPercentageMultiWindowSupportHeight:F

    .line 1408
    iput v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMinPercentageMultiWindowSupportWidth:F

    .line 1409
    iput v7, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mLargeScreenSmallestScreenWidthDp:I

    if-nez v2, :cond_f6

    if-nez v8, :cond_f6

    if-nez v6, :cond_f6

    if-eqz v9, :cond_f4

    goto :goto_f6

    :cond_f4
    const/4 v3, 0x0

    goto :goto_f7

    :cond_f6
    :goto_f6
    const/4 v3, 0x1

    :goto_f7
    if-nez v5, :cond_fb

    if-eqz v11, :cond_10d

    :cond_fb
    if-eqz v3, :cond_10d

    const/4 v3, 0x1

    .line 1415
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    .line 1416
    iput-boolean v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 1417
    iput-boolean v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    .line 1418
    iput-boolean v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    move/from16 v3, v16

    .line 1419
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsExpandedPictureInPicture:Z

    .line 1420
    iput-boolean v9, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    goto :goto_120

    :cond_10d
    const/4 v2, 0x0

    .line 1422
    iput-boolean v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    .line 1423
    iput-boolean v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 1424
    iput-boolean v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    .line 1425
    iput-boolean v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    .line 1426
    iput-boolean v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsExpandedPictureInPicture:Z

    if-eqz v9, :cond_11e

    const/4 v3, 0x1

    .line 1430
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    goto :goto_120

    .line 1433
    :cond_11e
    iput-boolean v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    .line 1436
    :goto_120
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->onSettingsRetrieved()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1439
    invoke-virtual {v0, v15, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z

    .line 1440
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 1441
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    if-eqz v4, :cond_146

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x4dd440e8

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v4, v5, v7, v2, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1444
    :cond_146
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050002

    .line 1445
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailWidth:I

    const v3, 0x1050001

    .line 1447
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailHeight:I

    .line 1452
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->installSystemProvidersLocked()V

    .line 1458
    monitor-exit v1
    :try_end_164
    .catchall {:try_start_da .. :try_end_164} :catchall_177

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1462
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {v1}, Lcom/android/server/wm/MultiTaskingController;->retrieveSettings()V

    .line 1464
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    invoke-virtual {v1}, Lcom/android/server/wm/MultiWindowEnableController;->initDeviceSupportsMultiWindow()V

    .line 1467
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {v0}, Lcom/android/server/wm/FreeformController;->initFreeformHeaderType()V

    return-void

    :catchall_177
    move-exception v0

    .line 1458
    :try_start_178
    monitor-exit v1
    :try_end_179
    .catchall {:try_start_178 .. :try_end_179} :catchall_177

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public rotateDexCompatTask(Landroid/os/IBinder;)V
    .registers 2

    return-void
.end method

.method public saveANRState(Ljava/lang/String;)V
    .registers 13

    .line 6499
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 6500
    new-instance v10, Lcom/android/internal/util/FastPrintWriter;

    const/4 v1, 0x0

    const/16 v2, 0x400

    invoke-direct {v10, v0, v1, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 6501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  ANR time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p1, :cond_44

    .line 6503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v10, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6505
    :cond_44
    invoke-virtual {v10}, Ljava/io/PrintWriter;->println()V

    .line 6506
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "  "

    invoke-virtual {p1, v10, v2, v1}, Lcom/android/server/wm/ActivityStartController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 6507
    invoke-virtual {v10}, Ljava/io/PrintWriter;->println()V

    const-string p1, "-------------------------------------------------------------------------------"

    .line 6508
    invoke-virtual {v10, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    move-object v1, p0

    move-object v3, v10

    .line 6510
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/ActivityTaskManagerService;->dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V

    .line 6513
    invoke-virtual {v10}, Ljava/io/PrintWriter;->println()V

    .line 6514
    invoke-virtual {v10}, Ljava/io/PrintWriter;->close()V

    .line 6516
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastANRState:Ljava/lang/String;

    return-void
.end method

.method public scheduleAppGcsLocked()V
    .registers 3

    .line 6334
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public semRemoveTask(II)Z
    .registers 7

    .line 2755
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.REMOVE_TASKS"

    const-string/jumbo v2, "removeTask()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2756
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const-string v1, "ActivityTaskManager"

    .line 2757
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semRemoveTask: callingUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", callerPid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2758
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    .line 2759
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2757
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_53
    .catchall {:try_start_d .. :try_end_53} :catchall_66

    .line 2762
    :try_start_53
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->removeTaskLocked(II)Z

    move-result p0
    :try_end_59
    .catchall {:try_start_53 .. :try_end_59} :catchall_61

    .line 2764
    :try_start_59
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_66

    .line 2762
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_61
    move-exception p0

    .line 2764
    :try_start_62
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2765
    throw p0

    :catchall_66
    move-exception p0

    .line 2766
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_66

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public sendAppStateBroadcaster()V
    .registers 3

    .line 4819
    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->mObjHandler:Landroid/os/Handler;

    if-eqz v0, :cond_c

    .line 4820
    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method public final sendPutConfigurationForUserMsg(ILandroid/content/res/Configuration;)V
    .registers 3

    .line 5581
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 5582
    invoke-static {p0, p2, p1}, Landroid/provider/Settings$System;->putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z

    return-void
.end method

.method public sendSaLoggingBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 13

    .line 8670
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SA_LOGGING:Z

    if-nez v0, :cond_5

    return-void

    .line 8673
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/core/CoreSaLogger;->sendSaLoggingBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public sendSaLoggingBroadcastForSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 8678
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SA_LOGGING:Z

    if-nez v0, :cond_5

    return-void

    .line 8681
    :cond_5
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/core/CoreSaLogger;->sendSaLoggingBroadcastForSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setActivityController(Landroid/app/IActivityController;Z)V
    .registers 6

    .line 3085
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string/jumbo v2, "setActivityController()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3088
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 3089
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3091
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3092
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 3093
    iput-boolean p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mControllerIsAMonkey:Z

    .line 3094
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 3097
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "pid = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " uid = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mControllerDescription:Ljava/lang/String;

    .line 3098
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mControllerDescription:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/android/server/Watchdog;->setActivityControllerDescription(Ljava/lang/String;)V

    .line 3101
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_15 .. :try_end_49} :catchall_4d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_4d
    move-exception p0

    :try_start_4e
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setAppLockedUnLockPackage(Ljava/lang/String;)V
    .registers 2

    .line 5818
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->setAppLockedUnLockPackage(Ljava/lang/String;)V

    return-void
.end method

.method public setAppLockedVerifying(Ljava/lang/String;Z)V
    .registers 3

    .line 5845
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->setAppLockedVerifying(Ljava/lang/String;Z)V

    return-void
.end method

.method public setApplockEnabled(Z)V
    .registers 2

    .line 5871
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->setApplockEnabled(Z)V

    return-void
.end method

.method public setApplockLockedAppsClass(Ljava/lang/String;)V
    .registers 2

    .line 5861
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->setApplockLockedAppsClass(Ljava/lang/String;)V

    return-void
.end method

.method public setApplockLockedAppsPackage(Ljava/lang/String;)V
    .registers 2

    .line 5856
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->setApplockLockedAppsPackage(Ljava/lang/String;)V

    return-void
.end method

.method public setApplockType(I)V
    .registers 2

    .line 5866
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->setApplockType(I)V

    return-void
.end method

.method public setBooted(Z)V
    .registers 2

    .line 6101
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, p1}, Landroid/app/ActivityManagerInternal;->setBooted(Z)V

    return-void
.end method

.method public setBooting(Z)V
    .registers 2

    .line 6093
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, p1}, Landroid/app/ActivityManagerInternal;->setBooting(Z)V

    return-void
.end method

.method public setBoundsCompatAlignment(I)V
    .registers 3

    .line 8923
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_BOUNDS_COMPAT_ALIGNMENT_CONTROL:Z

    if-nez v0, :cond_5

    return-void

    .line 8926
    :cond_5
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8927
    invoke-static {p1}, Lcom/android/server/wm/BoundsCompatAlignmentController;->setAlignmentLocked(I)V

    .line 8928
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_13
    move-exception p1

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setCustomSplashScreenTheme(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    if-eqz p1, :cond_54

    .line 8814
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 8815
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8816
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    if-eqz v2, :cond_46

    .line 8820
    iget-object v2, v2, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 8823
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_4e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 8824
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v2, "setCustomSplashScreenTheme"

    invoke-virtual {p0, v0, v1, p3, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p0

    .line 8826
    :try_start_2d
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p3

    invoke-interface {p3, p1, p2, p0}, Landroid/content/pm/IPackageManager;->setSplashScreenTheme(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_34} :catch_35

    goto :goto_3d

    :catch_35
    move-exception p0

    const-string p1, "ActivityTaskManager"

    const-string p2, "Couldn\'t persist the starting theme"

    .line 8828
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3d
    return-void

    .line 8821
    :cond_3e
    :try_start_3e
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Can not replace splash screen theme on other package"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8818
    :cond_46
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Can not verify calling process"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_4e
    move-exception p0

    .line 8823
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_3e .. :try_end_50} :catchall_4e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 8812
    :cond_54
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can not verify calling package"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCutoutPolicy(ILjava/lang/String;I)V
    .registers 8

    const-string/jumbo v0, "setCutoutPolicy()"

    .line 8839
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 8840
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 8842
    :try_start_a
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_26

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8843
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mDisplayCutoutController:Lcom/android/server/wm/DisplayCutoutController;

    const/4 v3, 0x1

    invoke-virtual {p0, p1, p2, p3, v3}, Lcom/android/server/wm/DisplayCutoutController;->setPolicy(ILjava/lang/String;IZ)V

    .line 8845
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_20

    :try_start_19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_26

    .line 8847
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_20
    move-exception p0

    .line 8845
    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    :try_start_22
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception p0

    .line 8847
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8848
    throw p0
.end method

.method public setDeviceOwnerUid(I)V
    .registers 2

    .line 6491
    iput p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDeviceOwnerUid:I

    return-void
.end method

.method public setDisallowWhenLandscape(Z)V
    .registers 3

    .line 8910
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string/jumbo v0, "setDisallowWhenLandscape()"

    .line 8913
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 8914
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8915
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mOrientationController:Lcom/android/server/wm/OrientationController;

    iput-boolean p1, p0, Lcom/android/server/wm/OrientationController;->mDisallowWhenLandscapeFixedApp:Z

    .line 8916
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1c
    move-exception p0

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setFocusedRootTask(I)V
    .registers 10

    const-string/jumbo v0, "setFocusedRootTask()"

    .line 2657
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2658
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_enabled:Z

    if-eqz v0, :cond_1e

    int-to-long v0, p1

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0xf382dd5

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v2, v3, v5, v4, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2659
    :cond_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2661
    :try_start_22
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_71

    :try_start_25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2662
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(I)Lcom/android/server/wm/Task;

    move-result-object v3

    if-nez v3, :cond_4f

    const-string p0, "ActivityTaskManager"

    .line 2664
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setFocusedRootTask: No task with id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_25 .. :try_end_48} :catchall_6b

    .line 2673
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2667
    :cond_4f
    :try_start_4f
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_63

    const-string/jumbo v3, "setFocusedRootTask"

    .line 2668
    invoke-virtual {p1, v3}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_63

    .line 2669
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 2671
    :cond_63
    monitor-exit v2
    :try_end_64
    .catchall {:try_start_4f .. :try_end_64} :catchall_6b

    :try_start_64
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_71

    .line 2673
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_6b
    move-exception p0

    .line 2671
    :try_start_6c
    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    :try_start_6d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_71
    .catchall {:try_start_6d .. :try_end_71} :catchall_71

    :catchall_71
    move-exception p0

    .line 2673
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2674
    throw p0
.end method

.method public setFocusedTask(I)V
    .registers 6

    const-string/jumbo v0, "setFocusedTask()"

    .line 2679
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    const-string v0, "ActivityTaskManager"

    .line 2682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFocusedTask: taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2683
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2682
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2688
    :try_start_2d
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_45

    :try_start_30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v3, 0x0

    .line 2689
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->setFocusedTask(ILcom/android/server/wm/ActivityRecord;)V

    .line 2690
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_3f

    :try_start_38
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_45

    .line 2692
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_3f
    move-exception p0

    .line 2690
    :try_start_40
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    :try_start_41
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_45

    :catchall_45
    move-exception p0

    .line 2692
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2693
    throw p0
.end method

.method public setFocusedTask(ILcom/android/server/wm/ActivityRecord;)V
    .registers 12

    .line 2697
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    int-to-long v3, p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x34a1065

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v8, v2

    aput-object v0, v8, v1

    invoke-static {v5, v6, v1, v7, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2699
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object p1

    if-nez p1, :cond_28

    return-void

    .line 2703
    :cond_28
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_2f

    return-void

    :cond_2f
    const-string/jumbo v0, "setFocusedTask"

    .line 2713
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 2714
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    goto :goto_5e

    :cond_3e
    if-eqz p2, :cond_5e

    .line 2715
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 2716
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p1

    if-eqz p1, :cond_5e

    .line 2717
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 2719
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 2720
    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    .line 2721
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    :cond_5e
    :goto_5e
    return-void
.end method

.method public setFrontActivityScreenCompatMode(I)V
    .registers 5

    .line 2622
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.SET_SCREEN_COMPATIBILITY"

    const-string/jumbo v2, "setFrontActivityScreenCompatMode"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2625
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2626
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 2627
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    if-nez v1, :cond_2b

    const-string p0, "ActivityTaskManager"

    const-string/jumbo p1, "setFrontActivityScreenCompatMode failed: no top activity"

    .line 2629
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2632
    :cond_2b
    :try_start_2b
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2633
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/CompatModePackages;->setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V

    .line 2634
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_39
    move-exception p0

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setHeavyWeightProcess(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 6130
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 6131
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda2;-><init>()V

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 6133
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 6131
    invoke-static {v0, p0, v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 6134
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setLockScreenShown(ZZ)V
    .registers 9

    const-string v0, "android.permission.DEVICE_POWER"

    .line 3752
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_53

    .line 3758
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3759
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3760
    iget-boolean v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardShown:Z

    if-eq v3, p1, :cond_2c

    .line 3761
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardShown:Z

    .line 3762
    new-instance v3, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda24;

    invoke-direct {v3}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda24;-><init>()V

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 3764
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 3762
    invoke-static {v3, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 3765
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2c
    .catchall {:try_start_b .. :try_end_2c} :catchall_4d

    .line 3768
    :cond_2c
    :try_start_2c
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v4, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda25;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ZZ)V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_48

    .line 3773
    :try_start_36
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3779
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_4d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3781
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Z)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_48
    move-exception p0

    .line 3773
    :try_start_49
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3774
    throw p0

    :catchall_4d
    move-exception p0

    .line 3779
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_49 .. :try_end_4f} :catchall_4d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 3754
    :cond_53
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires permission android.permission.DEVICE_POWER"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setLocusId(Landroid/content/LocusId;Landroid/os/IBinder;)V
    .registers 3

    .line 2828
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2829
    invoke-static {p2}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 2831
    invoke-virtual {p2, p1}, Lcom/android/server/wm/ActivityRecord;->setLocusId(Landroid/content/LocusId;)V

    .line 2833
    :cond_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_14
    move-exception p1

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setLongLiveTask(IZ)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 8703
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8704
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object p1

    if-nez p1, :cond_1e

    .line 8706
    new-instance p0, Landroid/util/Pair;

    const/4 p1, 0x0

    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    .line 8708
    :cond_1e
    :try_start_1e
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RecentTasks;->dedicateTo(Lcom/android/server/wm/Task;Z)V

    .line 8709
    new-instance p0, Landroid/util/Pair;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootProcessName()Ljava/lang/String;

    move-result-object p2

    iget p1, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_1e .. :try_end_33} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p0

    :catchall_37
    move-exception p0

    .line 8710
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setOccluding(Z)V
    .registers 2

    .line 9027
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mOccluding:Z

    return-void
.end method

.method public setOrientationControlDefault(Z)V
    .registers 3

    .line 8899
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string/jumbo v0, "setOrientationControlDefault()"

    .line 8902
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 8903
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8904
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mOrientationController:Lcom/android/server/wm/OrientationController;

    iput-boolean p1, p0, Lcom/android/server/wm/OrientationController;->mDefaultEnabled:Z

    .line 8905
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1c
    move-exception p0

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setOrientationControlPolicy(ILjava/lang/String;I)V
    .registers 6

    .line 8871
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string/jumbo v0, "setOrientationControlPolicy()"

    .line 8874
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 8875
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8876
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mOrientationController:Lcom/android/server/wm/OrientationController;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/OrientationController;->setPolicy(ILjava/lang/String;I)V

    .line 8877
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_31

    .line 8879
    :try_start_1c
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mOrientationController:Lcom/android/server/wm/OrientationController;

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Lcom/android/server/wm/PackagesChangeAsTask;->updateValueToTask(Z)V
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_2c

    .line 8881
    :try_start_24
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8883
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2c
    move-exception p0

    .line 8881
    :try_start_2d
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8882
    throw p0

    :catchall_31
    move-exception p0

    .line 8883
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setPackageAskScreenCompat(Ljava/lang/String;Z)V
    .registers 6

    .line 4798
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.SET_SCREEN_COMPATIBILITY"

    const-string/jumbo v2, "setPackageAskScreenCompat"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4800
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4801
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/CompatModePackages;->setPackageAskCompatModeLocked(Ljava/lang/String;Z)V

    .line 4802
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1a
    move-exception p0

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setPackageScreenCompatMode(Ljava/lang/String;I)V
    .registers 6

    .line 4781
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.SET_SCREEN_COMPATIBILITY"

    const-string/jumbo v2, "setPackageScreenCompatMode"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4783
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4784
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/CompatModePackages;->setPackageScreenCompatModeLocked(Ljava/lang/String;I)V

    .line 4785
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1a
    move-exception p0

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setPersistentVrThread(I)V
    .registers 5

    const-string v0, "android.permission.RESTRICTED_VR_ACCESS"

    .line 4700
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2b

    .line 4709
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceSystemHasVrFeature()V

    .line 4710
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4711
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 4712
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    .line 4713
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/wm/VrController;->setPersistentVrThreadLocked(IILcom/android/server/wm/WindowProcessController;)V

    .line 4714
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_25
    move-exception p0

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 4702
    :cond_2b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Permission Denial: setPersistentVrThread() from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4703
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4704
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " requires "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "android.permission.RESTRICTED_VR_ACCESS"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    .line 4706
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4707
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPrepareOccluding(Z)V
    .registers 2

    .line 9023
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPrepareOccluding:Z

    return-void
.end method

.method public setRecentTasks(Lcom/android/server/wm/RecentTasks;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1616
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 1617
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->setRecentTasks(Lcom/android/server/wm/RecentTasks;)V

    return-void
.end method

.method public setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .registers 9

    .line 5684
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 5685
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandard()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_39

    .line 5686
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eq v1, v4, :cond_35

    if-eqz v1, :cond_2b

    .line 5689
    invoke-virtual {v1}, Lcom/android/server/am/AppTimeTracker;->stop()V

    .line 5690
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    invoke-virtual {v1, v2, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 5691
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 5692
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/RootWindowContainer;->clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V

    .line 5693
    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 5695
    :cond_2b
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz v1, :cond_3b

    .line 5696
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 5697
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->startTimeTrackingFocusedActivityLocked()V

    goto :goto_3b

    .line 5700
    :cond_35
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->startTimeTrackingFocusedActivityLocked()V

    goto :goto_3b

    .line 5703
    :cond_39
    iput-object v3, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 5708
    :cond_3b
    :goto_3b
    iget-object v1, v0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    if-eqz v1, :cond_4b

    .line 5709
    iget-object v1, v0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v1, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->startRunningVoiceLocked(Landroid/service/voice/IVoiceInteractionSession;I)V

    goto :goto_66

    .line 5711
    :cond_4b
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->finishRunningVoiceLocked()V

    .line 5713
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_66

    .line 5716
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_5d

    .line 5717
    iget-object v1, v1, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v1, :cond_5d

    goto :goto_61

    .line 5721
    :cond_5d
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    :goto_61
    if-eqz v1, :cond_66

    .line 5729
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 5734
    :cond_66
    :goto_66
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_75

    iget v4, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eq v4, v1, :cond_75

    .line 5735
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1, v4}, Landroid/app/ActivityManagerInternal;->sendForegroundProfileChanged(I)V

    .line 5740
    :cond_75
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_92

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-eqz v4, :cond_92

    .line 5741
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v1

    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v1, v4, :cond_92

    .line 5742
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v1

    if-ne v1, v4, :cond_92

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq p1, v1, :cond_92

    .line 5744
    invoke-static {p1}, Lcom/android/server/wm/ActivityManagerPerformance;->notifyMultiWindowChanged(Lcom/android/server/wm/ActivityRecord;)V

    .line 5750
    :cond_92
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_9a

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 5752
    :cond_9a
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateResumedAppTrace(Lcom/android/server/wm/ActivityRecord;)V

    .line 5753
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 5755
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_ad

    .line 5757
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v4, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 5769
    :cond_ad
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v1, :cond_c1

    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    const-string v5, "SpegVirtualDisplay"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d5

    :cond_c1
    if-eqz v3, :cond_c5

    if-eq v0, v3, :cond_d5

    :cond_c5
    if-eqz v3, :cond_ce

    .line 5772
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v3, v4}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskFocusChanged(IZ)V

    .line 5774
    :cond_ce
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    iget v3, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskFocusChanged(IZ)V

    .line 5780
    :cond_d5
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->touchGainFocusTime()V

    .line 5784
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->applyUpdateLockStateLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 5785
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->applyUpdateVrModeLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 5788
    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 5789
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 5787
    invoke-static {v0, v1, p2}, Lcom/android/server/wm/EventLogTags;->writeWmSetResumedActivity(ILjava/lang/String;Ljava/lang/String;)V

    .line 5798
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    if-eqz p2, :cond_ee

    .line 5799
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->startAppLockActivity(Lcom/android/server/wm/ActivityRecord;)V

    :cond_ee
    return-void
.end method

.method public setRunningRemoteTransitionDelegate(Landroid/app/IApplicationThread;)V
    .registers 7

    .line 6632
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    const-string/jumbo v2, "setRunningRemoteTransition"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6634
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 6635
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 6636
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6639
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    if-eqz v3, :cond_51

    .line 6641
    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->isRunningRemoteTransition()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 6648
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    if-nez p0, :cond_45

    const-string p0, "ActivityTaskManager"

    .line 6650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to find process for application "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6651
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_15 .. :try_end_41} :catchall_7a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_45
    const/4 p1, 0x1

    .line 6653
    :try_start_46
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setRunningRemoteAnimation(Z)V

    .line 6654
    invoke-virtual {v3, p0}, Lcom/android/server/wm/WindowProcessController;->addRemoteAnimationDelegate(Lcom/android/server/wm/WindowProcessController;)V

    .line 6655
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_7a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 6642
    :cond_51
    :try_start_51
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Can\'t call setRunningRemoteTransition from a process (pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") which isn\'t itself running a remote transition."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    .line 6645
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6646
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_7a
    move-exception p0

    .line 6655
    monitor-exit v2
    :try_end_7c
    .catchall {:try_start_51 .. :try_end_7c} :catchall_7a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setSplitScreenResizing(Z)V
    .registers 5

    const-string/jumbo v0, "setSplitScreenResizing()"

    .line 4449
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 4450
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4452
    :try_start_a
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_23

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4453
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->setSplitScreenResizing(Z)V

    .line 4454
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1d

    :try_start_16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_23

    .line 4456
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1d
    move-exception p0

    .line 4454
    :try_start_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_23

    :catchall_23
    move-exception p0

    .line 4456
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4457
    throw p0
.end method

.method public setSsecureHiddenAppsPackages(Ljava/lang/String;)V
    .registers 2

    .line 5876
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->setSsecureHiddenAppsPackages(Ljava/lang/String;)V

    return-void
.end method

.method public setTaskResizeable(II)V
    .registers 5

    .line 3697
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3698
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_30

    const-string p0, "ActivityTaskManager"

    .line 3701
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTaskResizeable: taskId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3702
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_38

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3704
    :cond_30
    :try_start_30
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task;->setResizeMode(I)V

    .line 3705
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_38

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_38
    move-exception p0

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V
    .registers 3

    .line 1579
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1580
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 1581
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_d
    move-exception p0

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setUseLetterbox(Z)V
    .registers 4

    .line 8981
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string/jumbo v0, "setUseLetterbox()"

    .line 8984
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 8985
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 8987
    :try_start_f
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_26

    :try_start_12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8988
    invoke-static {p1}, Lcom/android/server/wm/CustomLetterboxConfiguration;->setUseLetterbox(Z)V

    .line 8989
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_20

    :try_start_19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_26

    .line 8991
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_20
    move-exception p1

    .line 8989
    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    :try_start_22
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception p0

    .line 8991
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8992
    throw p0
.end method

.method public setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V
    .registers 5

    .line 4322
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4323
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v1, :cond_21

    invoke-interface {v1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-ne v1, p1, :cond_21

    if-eqz p2, :cond_1c

    .line 4325
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_21

    .line 4327
    :cond_1c
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4330
    :cond_21
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_26
    move-exception p0

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setVrThread(I)V
    .registers 5

    .line 4690
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceSystemHasVrFeature()V

    .line 4691
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4692
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 4693
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    .line 4694
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/wm/VrController;->setVrThreadLocked(IILcom/android/server/wm/WindowProcessController;)V

    .line 4695
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1d
    move-exception p0

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 5

    .line 1548
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1549
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 1550
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1551
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowOrganizerController;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 1552
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 1553
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 1554
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    const/4 v2, 0x1

    iput v2, v1, Landroid/content/res/Configuration;->seq:I

    iput v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    .line 1555
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1556
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/LockTaskController;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 1557
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 1558
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 1559
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    if-eqz v1, :cond_43

    .line 1560
    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/BackNavigationController;->setTaskSnapshotController(Lcom/android/server/wm/TaskSnapshotController;)V

    .line 1564
    :cond_43
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMWControllers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_49
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/IController;

    .line 1565
    invoke-interface {v1, p1}, Lcom/android/server/wm/IController;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    goto :goto_49

    .line 1575
    :cond_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_3 .. :try_end_5a} :catchall_5e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_5e
    move-exception p0

    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public shouldDisableNonVrUiLocked()Z
    .registers 1

    .line 4743
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {p0}, Lcom/android/server/wm/VrController;->shouldDisableNonVrUiLocked()Z

    move-result p0

    return p0
.end method

.method public final start()V
    .registers 2

    .line 1701
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public final startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    .registers 24

    move-object v0, p0

    move-object/from16 v5, p2

    .line 1776
    invoke-virtual {p0, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    const-string/jumbo v1, "startActivities"

    .line 1778
    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1779
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move/from16 v4, p8

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result v11

    .line 1781
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    .line 1783
    invoke-static/range {p7 .. p7}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v10

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const-string/jumbo v12, "startActivities"

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 1781
    invoke-virtual/range {v0 .. v14}, Lcom/android/server/wm/ActivityStartController;->startActivities(Landroid/app/IApplicationThread;IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;ILjava/lang/String;Lcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0

    return v0
.end method

.method public final startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I
    .registers 26

    .line 1750
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->WIFI_OFFLOAD:Z

    if-eqz v0, :cond_47

    if-eqz p4, :cond_47

    .line 1751
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 1752
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    if-eqz p11, :cond_47

    .line 1754
    invoke-static/range {p11 .. p11}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 1756
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->isActiveApplaunch()Z

    move-result v1

    if-nez v1, :cond_47

    .line 1757
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->isMlLaunch()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_47

    move-object v0, p0

    .line 1758
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sem_wifi"

    .line 1759
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz v1, :cond_48

    .line 1761
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/wifi/SemWifiManager;->checkAppForWiFiOffloading(Ljava/lang/String;)V

    goto :goto_48

    :cond_47
    move-object v0, p0

    .line 1769
    :cond_48
    :goto_48
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    .line 1767
    invoke-virtual/range {v1 .. v13}, Lcom/android/server/wm/ActivityTaskManagerService;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    return v0
.end method

.method public final startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/WaitResult;
    .registers 20

    move-object v0, p0

    move-object v1, p2

    .line 2188
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 2189
    new-instance v2, Landroid/app/WaitResult;

    invoke-direct {v2}, Landroid/app/WaitResult;-><init>()V

    const-string/jumbo v3, "startActivityAndWait"

    .line 2190
    invoke-static {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 2191
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move/from16 v6, p12

    invoke-virtual {p0, v4, v5, v6, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result v4

    .line 2194
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    move-object v5, p4

    invoke-virtual {v0, p4, v3}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    move-object v3, p1

    .line 2195
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 2196
    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    move-object v1, p3

    .line 2197
    invoke-virtual {v0, p3}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    move-object v1, p5

    .line 2198
    invoke-virtual {v0, p5}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    move-object v1, p6

    .line 2199
    invoke-virtual {v0, p6}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    move-object v1, p7

    .line 2200
    invoke-virtual {v0, p7}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    move v1, p8

    .line 2201
    invoke-virtual {v0, p8}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    move/from16 v1, p9

    .line 2202
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    move-object/from16 v1, p11

    .line 2203
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 2204
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    move-object/from16 v1, p10

    .line 2205
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setProfilerInfo(Landroid/app/ProfilerInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 2206
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter;->setWaitResult(Landroid/app/WaitResult;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 2207
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    return-object v2
.end method

.method public final startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I
    .registers 26

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    move/from16 v2, p11

    move-object v3, p0

    move/from16 v4, p12

    .line 2255
    iget-object v5, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    if-eqz v1, :cond_17a

    .line 2260
    invoke-static/range {p5 .. p5}, Lcom/android/server/wm/ActivityRecord;->isInAnyTask(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_163

    .line 2264
    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v7, :cond_15b

    const-string v7, "android.permission.START_ACTIVITY_AS_CALLER"

    .line 2268
    invoke-static {v7}, Lcom/android/server/wm/ActivityTaskManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x3e8

    if-eqz v7, :cond_71

    .line 2272
    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v9, "android"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_69

    .line 2276
    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v7, v7, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    if-eq v7, v8, :cond_71

    .line 2279
    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v7, v7, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget v9, v6, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    if-ne v7, v9, :cond_44

    goto :goto_71

    .line 2280
    :cond_44
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling activity in uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v2, v2, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " must be system uid or original calling uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2273
    :cond_69
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must be called from an activity that is declared in the android package"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2290
    :cond_71
    :goto_71
    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v7, :cond_8d

    iget v7, v7, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    if-ne v7, v8, :cond_8d

    const-string v7, "com.samsung.android.da.daagent"

    iget-object v8, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2291
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8d

    move v7, v9

    goto :goto_8e

    :cond_8d
    move v7, v10

    .line 2292
    :goto_8e
    iget-object v8, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v11, "android"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b7

    .line 2293
    invoke-static/range {p12 .. p12}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v8

    if-eqz v8, :cond_b7

    iget-object v8, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v8, v8, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    if-nez v8, :cond_b7

    .line 2294
    iget-object v8, v6, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iget-object v11, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v11, v11, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-static {v0, v8, v4, v11}, Lcom/android/server/DualAppManagerService;->mayForwardShare(Landroid/content/Intent;Ljava/lang/String;II)Z

    .line 2298
    :cond_b7
    iget-object v8, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v11, "android"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_ce

    if-eqz v7, :cond_c6

    goto :goto_ce

    .line 2299
    :cond_c6
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must be called from an activity that is declared in the android package"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ce
    :goto_ce
    if-eqz v2, :cond_ed

    .line 2304
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_e5

    .line 2308
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v7

    if-nez v7, :cond_dd

    goto :goto_ed

    .line 2309
    :cond_dd
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Selector not allowed with ignoreTargetSecurity"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2305
    :cond_e5
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Component must be specified with ignoreTargetSecurity"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2313
    :cond_ed
    :goto_ed
    iget v7, v6, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 2314
    iget-object v8, v6, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 2315
    iget-object v11, v6, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    .line 2316
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isResolverOrChildActivity()Z

    move-result v12

    .line 2317
    monitor-exit v5
    :try_end_f8
    .catchall {:try_start_c .. :try_end_f8} :catchall_182

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/16 v5, -0x2710

    if-ne v4, v5, :cond_107

    .line 2320
    iget-object v4, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v4, v4, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 2325
    :cond_107
    :try_start_107
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v3

    const-string/jumbo v5, "startActivityAsCaller"

    invoke-virtual {v3, v0, v5}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 2326
    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 2327
    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 2328
    invoke-virtual {v0, v11}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    move-object/from16 v3, p4

    .line 2329
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 2330
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    move-object/from16 v1, p6

    .line 2331
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    move/from16 v1, p7

    .line 2332
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    move/from16 v1, p8

    .line 2333
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    move-object/from16 v1, p10

    .line 2334
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 2335
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 2336
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter;->setIgnoreTargetSecurity(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    if-eqz v12, :cond_14b

    goto :goto_14c

    :cond_14b
    move v10, v7

    .line 2337
    :goto_14c
    invoke-virtual {v0, v10}, Lcom/android/server/wm/ActivityStarter;->setFilterCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 2340
    invoke-virtual {v0, v9}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 2341
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v0
    :try_end_158
    .catch Ljava/lang/SecurityException; {:try_start_107 .. :try_end_158} :catch_159

    return v0

    :catch_159
    move-exception v0

    .line 2354
    throw v0

    .line 2265
    :cond_15b
    :try_start_15b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Called without a process attached to activity"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2262
    :cond_163
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called with bad activity token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2257
    :cond_17a
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must be called from an activity"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_182
    move-exception v0

    .line 2317
    monitor-exit v5
    :try_end_184
    .catchall {:try_start_15b .. :try_end_184} :catchall_182

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    .registers 28

    move-object v1, p0

    .line 1794
    iget v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSIOPLevel:I

    const/4 v2, 0x6

    if-ge v0, v2, :cond_e

    iget v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mBatteryOverheatLevel:I

    if-lez v0, :cond_b

    goto :goto_e

    :cond_b
    move-object/from16 v0, p4

    goto :goto_59

    :cond_e
    :goto_e
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isPossibleToStart(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 1795
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-string v3, ""

    .line 1796
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1797
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_29

    const/4 v0, 0x0

    goto :goto_2d

    .line 1798
    :cond_29
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_2d
    move-object v3, v0

    .line 1799
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v3, :cond_51

    const/16 v4, 0x2000

    .line 1802
    :try_start_38
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1803
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_44
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_4d

    :catch_45
    move-exception v0

    const-string v4, "ActivityTaskManager"

    const-string v5, "No such package"

    .line 1805
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4d
    if-eqz v3, :cond_51

    .line 1808
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1811
    :cond_51
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/16 v0, -0x66

    return v0

    :cond_59
    :goto_59
    const/4 v14, 0x1

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    .line 1816
    invoke-virtual/range {v1 .. v14}, Lcom/android/server/wm/ActivityTaskManagerService;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;IZ)I

    move-result v0

    return v0
.end method

.method public final startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;IZ)I
    .registers 27

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p4

    .line 1829
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    const-string/jumbo v3, "startActivityAsUser"

    .line 1830
    invoke-static {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1831
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1832
    const-class v4, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;

    invoke-static {v4}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;

    if-eqz v4, :cond_25

    .line 1838
    invoke-interface {v4, v2}, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;->enforceAllowedToStartActivity(Landroid/content/Intent;)V

    goto :goto_2d

    .line 1835
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SdkSandboxManagerLocal not found when starting an activity from an SDK sandbox uid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1843
    :cond_2d
    :goto_2d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startActivityAsUser: callingPid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", callingUid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1844
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", caller="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x7

    .line 1845
    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityTaskManager"

    .line 1843
    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v6

    .line 1850
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    const-string/jumbo v11, "startActivityAsUser"

    move/from16 v7, p12

    move/from16 v8, p13

    .line 1849
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/ActivityStartController;->checkTargetUser(IZIILjava/lang/String;)I

    move-result v4

    .line 1852
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v5, :cond_112

    const-string v5, "SPEG"

    if-eqz v1, :cond_10d

    .line 1855
    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-class v7, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/DisplayManager;

    .line 1857
    invoke-virtual {v6, p2}, Landroid/hardware/display/DisplayManager;->getHiddenDisplayId(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_112

    .line 1866
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    const/16 v8, 0x66

    if-eqz v7, :cond_f3

    .line 1867
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1868
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c4

    .line 1871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") is trying to startActivityAsUser from another package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_c4
    if-nez p11, :cond_cb

    .line 1882
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v7

    goto :goto_cf

    .line 1883
    :cond_cb
    invoke-static/range {p11 .. p11}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v7

    .line 1884
    :goto_cf
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reuse old hidden display #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    invoke-virtual {v7, v6}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 1888
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    goto :goto_114

    .line 1877
    :cond_f3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent launched from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has no component"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_10d
    const-string v6, "callingPackage is null"

    .line 1891
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_112
    move-object/from16 v5, p11

    .line 1905
    :goto_114
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v6

    if-eqz v6, :cond_15e

    .line 1906
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1907
    invoke-static {v2, v6, v4, p2}, Lcom/android/server/DualAppManagerService;->startDAChooserActivity(Landroid/content/Intent;IILjava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_131

    const/4 v2, 0x0

    move-object v12, v7

    move-object v7, v2

    move-object v2, v12

    goto :goto_133

    :cond_131
    move-object/from16 v7, p5

    .line 1913
    :goto_133
    invoke-static {v6}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v6

    if-eqz v6, :cond_160

    .line 1915
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_148

    .line 1916
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    goto :goto_14c

    .line 1918
    :cond_148
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    :goto_14c
    if-eqz v1, :cond_160

    if-eqz v6, :cond_160

    .line 1920
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_160

    .line 1921
    invoke-static {v6}, Lcom/android/server/DualAppManagerService;->shouldForwardToOwner(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_160

    const/4 v4, 0x0

    goto :goto_160

    :cond_15e
    move-object/from16 v7, p5

    .line 1931
    :cond_160
    :goto_160
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    move-object v2, p1

    .line 1932
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1933
    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    move-object/from16 v1, p3

    .line 1934
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1935
    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    move-object/from16 v1, p6

    .line 1936
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    move-object/from16 v1, p7

    .line 1937
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    move/from16 v1, p8

    .line 1938
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    move/from16 v1, p9

    .line 1939
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    move-object/from16 v1, p10

    .line 1940
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setProfilerInfo(Landroid/app/ProfilerInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1941
    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1942
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1943
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v0

    return v0
.end method

.method public startActivityFromGameSession(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;II)I
    .registers 11

    const-string v0, "android.permission.MANAGE_GAME_ACTIVITY"

    .line 2484
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5e

    .line 2492
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 2494
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p2

    .line 2495
    invoke-virtual {p2, p7}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    const-string/jumbo p7, "startActivityFromGameSession"

    .line 2497
    invoke-virtual {p0, p4, p5, p8, p7}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p8

    .line 2499
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2501
    :try_start_1d
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object p0

    .line 2502
    invoke-virtual {p0, p6, p7}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2503
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2504
    invoke-virtual {p0, p5}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2505
    invoke-virtual {p0, p4}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2506
    invoke-virtual {p6}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2507
    invoke-virtual {p0, p3}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2508
    invoke-virtual {p0, p8}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2509
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2510
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2511
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result p0
    :try_end_55
    .catchall {:try_start_1d .. :try_end_55} :catchall_59

    .line 2513
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_59
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2514
    throw p0

    .line 2485
    :cond_5e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Permission Denial: startActivityFromGameSession() from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2486
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2487
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " requires "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    .line 2489
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2490
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final startActivityFromRecents(ILandroid/os/Bundle;)I
    .registers 7

    .line 2458
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.START_TASKS_FROM_RECENTS"

    const-string/jumbo v2, "startActivityFromRecents()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2461
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2462
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2463
    invoke-static {p2}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object p2

    .line 2464
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2466
    :try_start_1a
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->startActivityFromRecents(IIILcom/android/server/wm/SafeActivityOptions;)I

    move-result p0
    :try_end_20
    .catch Ljava/lang/SecurityException; {:try_start_1a .. :try_end_20} :catch_26
    .catchall {:try_start_1a .. :try_end_20} :catchall_24

    .line 2476
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_24
    move-exception p0

    goto :goto_30

    :catch_26
    move-exception p0

    :try_start_27
    const-string p1, "ActivityTaskManager"

    const-string/jumbo p2, "startActivity: reason=startActivityFromRecents"

    .line 2471
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2473
    throw p0
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_24

    .line 2476
    :goto_30
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2477
    throw p0
.end method

.method public startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string/jumbo v2, "startActivityIntentSender"

    .line 1951
    invoke-static {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    if-eqz p4, :cond_1b

    .line 1953
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_1b

    .line 1954
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File descriptors passed in Intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1957
    :cond_1b
    :goto_1b
    instance-of v2, v1, Lcom/android/server/am/PendingIntentRecord;

    if-eqz v2, :cond_6d

    .line 1961
    move-object v3, v1

    check-cast v3, Lcom/android/server/am/PendingIntentRecord;

    .line 1963
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1966
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_47

    .line 1967
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_47

    .line 1968
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1969
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-ne v2, v4, :cond_47

    const/4 v2, 0x2

    .line 1970
    iput v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesState:I

    .line 1972
    :cond_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_25 .. :try_end_48} :catchall_67

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p3

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p1

    .line 1973
    invoke-virtual/range {v3 .. v16}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Landroid/app/IApplicationThread;)I

    move-result v0

    return v0

    :catchall_67
    move-exception v0

    .line 1972
    :try_start_68
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1958
    :cond_6d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad PendingIntent object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I
    .registers 16

    .line 2216
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    const-string/jumbo v0, "startActivityWithConfig"

    .line 2217
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 2218
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p0, v1, v2, p12, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p12

    .line 2221
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object p0

    invoke-virtual {p0, p4, v0}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2222
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2223
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2224
    invoke-virtual {p0, p3}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2225
    invoke-virtual {p0, p5}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2226
    invoke-virtual {p0, p6}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2227
    invoke-virtual {p0, p7}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2228
    invoke-virtual {p0, p8}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2229
    invoke-virtual {p0, p9}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2230
    invoke-virtual {p0, p10}, Lcom/android/server/wm/ActivityStarter;->setGlobalConfiguration(Landroid/content/res/Configuration;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2231
    invoke-virtual {p0, p11}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2232
    invoke-virtual {p0, p12}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2233
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result p0

    return p0
.end method

.method public startAppLockService(Landroid/os/IBinder;Landroid/content/Intent;ZLjava/lang/String;)V
    .registers 5

    .line 5808
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->startAppLockService(Landroid/os/IBinder;Landroid/content/Intent;ZLjava/lang/String;)V

    return-void
.end method

.method public startAssistantActivity(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)I
    .registers 12

    .line 2400
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 2401
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.BIND_VOICE_INTERACTION"

    const-string/jumbo v2, "startAssistantActivity()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "startAssistantActivity"

    .line 2402
    invoke-virtual {p0, p3, p4, p8, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p3

    .line 2404
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2406
    :try_start_18
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object p0

    invoke-virtual {p0, p5, v0}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2407
    invoke-virtual {p0, p4}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2408
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2409
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2410
    invoke-virtual {p0, p6}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2411
    invoke-virtual {p0, p7}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2412
    invoke-virtual {p0, p3}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    const/4 p1, 0x1

    .line 2413
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2414
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result p0
    :try_end_41
    .catchall {:try_start_18 .. :try_end_41} :catchall_45

    .line 2416
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_45
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2417
    throw p0
.end method

.method public startBackNavigation(Z)Landroid/window/BackNavigationInfo;
    .registers 5

    .line 2519
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.START_TASKS_FROM_RECENTS"

    const-string/jumbo v2, "startBackNavigation()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2521
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    if-nez v0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 2524
    :cond_10
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/BackNavigationController;->startBackNavigation(Lcom/android/server/wm/WindowManagerService;Z)Landroid/window/BackNavigationInfo;

    move-result-object p0

    return-object p0
.end method

.method public startDreamActivity(Landroid/content/Intent;)Z
    .registers 11

    .line 2133
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 2134
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsDream(Ljava/lang/String;)V

    .line 2136
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    const v1, 0x103044a

    .line 2137
    iput v1, v0, Landroid/content/pm/ActivityInfo;->theme:I

    const/4 v1, 0x1

    .line 2138
    iput-boolean v1, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 2139
    const-class v2, Landroid/service/dreams/DreamActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2140
    iput-boolean v1, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    const/4 v2, 0x3

    .line 2141
    iput v2, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 2142
    iput v1, v0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    const/4 v2, -0x1

    .line 2143
    iput v2, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/4 v2, 0x0

    .line 2144
    iput v2, v0, Landroid/content/pm/ActivityInfo;->colorMode:I

    .line 2145
    iget v3, v0, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 2146
    iput v2, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 2148
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    const/4 v3, 0x5

    .line 2149
    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    .line 2151
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_43
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2152
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v4

    .line 2154
    iget-object v5, v4, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2155
    iput-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2156
    iget-object v4, v4, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iput-object v4, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 2157
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    iput v4, v0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 2158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/dream"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 2160
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2161
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 2163
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_86
    .catchall {:try_start_43 .. :try_end_86} :catchall_c8

    .line 2165
    :try_start_86
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object p0

    const-string v8, "dream"

    invoke-virtual {p0, p1, v8}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2166
    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2167
    invoke-virtual {p0, v5}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2168
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2169
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2170
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2173
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2174
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2175
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->execute()I
    :try_end_bb
    .catchall {:try_start_86 .. :try_end_bb} :catchall_c3

    .line 2178
    :try_start_bb
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_bf
    .catchall {:try_start_bb .. :try_end_bf} :catchall_c8

    .line 2176
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_c3
    move-exception p0

    .line 2178
    :try_start_c4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2179
    throw p0

    :catchall_c8
    move-exception p0

    .line 2180
    monitor-exit v3
    :try_end_ca
    .catchall {:try_start_c4 .. :try_end_ca} :catchall_c8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public startLaunchPowerMode(I)V
    .registers 5

    .line 5503
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    const/4 v2, 0x5

    .line 5504
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 5506
    :cond_9
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLaunchPowerModeReasons:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLaunchPowerModeReasons:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2c

    .line 5508
    iget-boolean p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRetainPowerModeAndTopProcessState:Z

    const/4 v0, 0x3

    if-eqz p1, :cond_1c

    .line 5509
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 5511
    :cond_1c
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRetainPowerModeAndTopProcessState:Z

    .line 5512
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string p0, "ActivityTaskManager"

    const-string p1, "Temporarily retain top process state for launching app"

    .line 5514
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    return-void
.end method

.method public startLockTaskMode(Lcom/android/server/wm/Task;Z)V
    .registers 10

    .line 3427
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_LOCKTASK_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x11a27eaf

    const/4 v5, 0x0

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-static {v3, v4, v2, v5, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_17
    if-eqz p1, :cond_56

    .line 3428
    iget v0, p1, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    if-nez v0, :cond_1e

    goto :goto_56

    .line 3432
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 3433
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne p1, v0, :cond_4e

    .line 3443
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3444
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 3447
    :try_start_34
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-array v1, v1, [I

    const/4 v6, 0x2

    aput v6, v1, v2

    invoke-virtual {v5, v1}, Lcom/android/server/wm/RootWindowContainer;->removeRootTasksInWindowingModes([I)V

    .line 3448
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object p0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/LockTaskController;->startLockTaskMode(Lcom/android/server/wm/Task;ZI)V
    :try_end_45
    .catchall {:try_start_34 .. :try_end_45} :catchall_49

    .line 3450
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_49
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3451
    throw p0

    .line 3434
    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid task, not in foreground"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_56
    :goto_56
    return-void
.end method

.method public startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z
    .registers 16

    if-eqz p2, :cond_11

    .line 1981
    invoke-virtual {p2}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_11

    .line 1982
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "File descriptors passed in Intent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1984
    :cond_11
    :goto_11
    invoke-static {p3}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object p3

    .line 1986
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1987
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_2a

    .line 1989
    invoke-static {p3}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 1990
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_1b3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 1992
    :cond_2a
    :try_start_2a
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v2

    if-nez v2, :cond_38

    .line 1994
    invoke-static {p3}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 1995
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_1b3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 1997
    :cond_38
    :try_start_38
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1999
    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, p2, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x0

    .line 2001
    invoke-virtual {v8, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2003
    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v2
    :try_end_54
    .catchall {:try_start_38 .. :try_end_54} :catchall_1b3

    and-int/lit8 v2, v2, 0x8

    const/4 v9, 0x1

    if-eqz v2, :cond_5b

    move v10, v9

    goto :goto_5c

    :cond_5b
    move v10, v1

    .line 2008
    :goto_5c
    :try_start_5c
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->resolvedType:Ljava/lang/String;

    const-wide/32 v5, 0x10400

    .line 2011
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    move-object v3, v8

    .line 2008
    invoke-interface/range {v2 .. v7}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 2011
    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_79

    .line 2014
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_7a

    :cond_79
    move v3, v1

    :goto_7a
    move v4, v1

    :goto_7b
    if-ge v4, v3, :cond_108

    .line 2016
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 2017
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_104

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2018
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_104

    add-int/2addr v4, v9

    if-ge v4, v3, :cond_a9

    .line 2023
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_a8
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_a8} :catch_108
    .catchall {:try_start_5c .. :try_end_a8} :catchall_1b3

    goto :goto_aa

    :cond_a9
    move-object v2, p2

    :goto_aa
    if-eqz v10, :cond_109

    :try_start_ac
    const-string v3, "ActivityTaskManager"

    .line 2026
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Next matching activity: found current "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "ActivityTaskManager"

    .line 2028
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Next matching activity: next is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_e1

    const-string v5, "null"

    goto :goto_f9

    .line 2029
    :cond_e1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_f9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2028
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_103
    .catch Landroid/os/RemoteException; {:try_start_ac .. :try_end_103} :catch_109
    .catchall {:try_start_ac .. :try_end_103} :catchall_1b3

    goto :goto_109

    :cond_104
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7b

    :catch_108
    :cond_108
    move-object v2, p2

    :catch_109
    :cond_109
    :goto_109
    if-nez v2, :cond_11c

    .line 2039
    :try_start_10b
    invoke-static {p3}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    if-eqz v10, :cond_117

    const-string p0, "ActivityTaskManager"

    const-string p1, "Next matching activity: nothing found"

    .line 2040
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    :cond_117
    monitor-exit v0
    :try_end_118
    .catchall {:try_start_10b .. :try_end_118} :catchall_1b3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 2044
    :cond_11c
    :try_start_11c
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2046
    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const v4, -0x1e000001

    and-int/2addr v3, v4

    invoke-virtual {v8, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2055
    iget-boolean v3, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 2056
    iput-boolean v9, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 2059
    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 2060
    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 2061
    iget v6, p1, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    .line 2062
    iput-object p2, p1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_146

    .line 2064
    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/wm/ActivityRecord;->removeResultsLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V

    .line 2067
    :cond_146
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2069
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object p0

    const-string/jumbo v7, "startNextMatchingActivity"

    .line 2070
    invoke-virtual {p0, v8, v7}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    iget-object v7, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 2071
    invoke-virtual {v7}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    iget-object v7, p1, Lcom/android/server/wm/ActivityRecord;->resolvedType:Ljava/lang/String;

    .line 2072
    invoke-virtual {p0, v7}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2073
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    if-eqz v4, :cond_16d

    .line 2074
    iget-object p2, v4, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    :cond_16d
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2075
    invoke-virtual {p0, v5}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2076
    invoke-virtual {p0, v6}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    const/4 p2, -0x1

    .line 2077
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    iget v2, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 2078
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 2079
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    .line 2080
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2081
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    iget p2, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 2082
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2083
    invoke-virtual {p0, p3}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2084
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result p0

    .line 2085
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2087
    iput-boolean v3, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz p0, :cond_1ae

    .line 2089
    monitor-exit v0
    :try_end_1aa
    .catchall {:try_start_11c .. :try_end_1aa} :catchall_1b3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 2091
    :cond_1ae
    :try_start_1ae
    monitor-exit v0
    :try_end_1af
    .catchall {:try_start_1ae .. :try_end_1af} :catchall_1b3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v9

    :catchall_1b3
    move-exception p0

    .line 2092
    :try_start_1b4
    monitor-exit v0
    :try_end_1b5
    .catchall {:try_start_1b4 .. :try_end_1b5} :catchall_1b3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public startProcessAsync(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;)V
    .registers 12

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 6057
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ActivityTaskManagerService;->startProcessAsync(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;II)V

    return-void
.end method

.method public startProcessAsync(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;II)V
    .registers 22

    move-object v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x20

    .line 6064
    :try_start_5
    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 6065
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchingStartProcess:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6070
    :cond_21
    new-instance v5, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v5}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda6;-><init>()V

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v7, v1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 6071
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 6072
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    .line 6073
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v11, p4

    .line 6070
    invoke-static/range {v5 .. v14}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/NonaConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 6074
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4f
    .catchall {:try_start_5 .. :try_end_4f} :catchall_53

    .line 6076
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_53
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 6077
    throw v0
.end method

.method public startProcessAsyncForActiveLaunch(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZZLjava/lang/String;Landroid/content/ComponentName;ZI)V
    .registers 20

    move-object v0, p0

    .line 6085
    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda23;

    invoke-direct {v1}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda23;-><init>()V

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 6086
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 6087
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 6085
    invoke-static/range {v1 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/NonaConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 6088
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startRecentsActivity(Landroid/content/Intent;JLandroid/view/IRecentsAnimationRunner;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v11, p4

    const-string/jumbo v1, "startRecentsActivity()"

    .line 2430
    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2431
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2432
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2433
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 2435
    :try_start_16
    iget-object v14, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v14
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_5d

    :try_start_19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2436
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v3}, Lcom/android/server/wm/RecentTasks;->getRecentsComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 2437
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v3}, Lcom/android/server/wm/RecentTasks;->getRecentsComponentFeatureId()Ljava/lang/String;

    move-result-object v8

    .line 2438
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v3}, Lcom/android/server/wm/RecentTasks;->getRecentsComponentUid()I

    move-result v9

    .line 2439
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v10

    .line 2442
    new-instance v15, Lcom/android/server/wm/RecentsAnimation;

    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2443
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v10}, Lcom/android/server/wm/RecentsAnimation;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityStartController;Lcom/android/server/wm/WindowManagerService;Landroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/String;ILcom/android/server/wm/WindowProcessController;)V

    if-nez v11, :cond_4a

    .line 2446
    invoke-virtual {v15}, Lcom/android/server/wm/RecentsAnimation;->preloadRecentsActivity()V

    goto :goto_4f

    :cond_4a
    move-wide/from16 v0, p2

    .line 2448
    invoke-virtual {v15, v11, v0, v1}, Lcom/android/server/wm/RecentsAnimation;->startRecentsActivity(Landroid/view/IRecentsAnimationRunner;J)V

    .line 2450
    :goto_4f
    monitor-exit v14
    :try_end_50
    .catchall {:try_start_19 .. :try_end_50} :catchall_57

    :try_start_50
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_5d

    .line 2452
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_57
    move-exception v0

    .line 2450
    :try_start_58
    monitor-exit v14
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    :try_start_59
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_5d

    :catchall_5d
    move-exception v0

    .line 2452
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2453
    throw v0
.end method

.method public final startRunningVoiceLocked(Landroid/service/voice/IVoiceInteractionSession;I)V
    .registers 5

    const-string v0, "ActivityTaskManager"

    const-string v1, "<<<  startRunningVoiceLocked()"

    .line 4300
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4301
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p2}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 4302
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz p2, :cond_1f

    invoke-interface {p2}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eq p2, v0, :cond_32

    .line 4303
    :cond_1f
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz p2, :cond_25

    const/4 p2, 0x1

    goto :goto_26

    :cond_25
    const/4 p2, 0x0

    .line 4304
    :goto_26
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-nez p2, :cond_32

    .line 4306
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4307
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    :cond_32
    return-void
.end method

.method public startSystemLockTaskMode(I)V
    .registers 7

    const-string/jumbo v0, "startSystemLockTaskMode"

    .line 3396
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 3398
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3400
    :try_start_a
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_3d

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3401
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object p1

    if-nez p1, :cond_21

    .line 3404
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_37

    .line 3412
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 3408
    :cond_21
    :try_start_21
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    const-string/jumbo v4, "startSystemLockTaskMode"

    invoke-virtual {v3, v4}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 3409
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->startLockTaskMode(Lcom/android/server/wm/Task;Z)V

    .line 3410
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_37

    :try_start_30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_3d

    .line 3412
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_37
    move-exception p0

    .line 3410
    :try_start_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    :try_start_39
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception p0

    .line 3412
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3413
    throw p0
.end method

.method public final startTimeTrackingFocusedActivityLocked()V
    .registers 3

    .line 6245
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 6246
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    if-nez v1, :cond_15

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz p0, :cond_15

    if-eqz v0, :cond_15

    .line 6247
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppTimeTracker;->start(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public startVoiceActivity(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    .registers 16

    .line 2368
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 2369
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.BIND_VOICE_INTERACTION"

    const-string/jumbo v2, "startVoiceActivity()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_52

    if-eqz p8, :cond_52

    const-string/jumbo v0, "startVoiceActivity"

    .line 2373
    invoke-virtual {p0, p3, p4, p12, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p3

    .line 2375
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object p0

    invoke-virtual {p0, p5, v0}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2376
    invoke-virtual {p0, p4}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2377
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2378
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2379
    invoke-virtual {p0, p6}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2380
    invoke-virtual {p0, p7}, Lcom/android/server/wm/ActivityStarter;->setVoiceSession(Landroid/service/voice/IVoiceInteractionSession;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2381
    invoke-virtual {p0, p8}, Lcom/android/server/wm/ActivityStarter;->setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2382
    invoke-virtual {p0, p9}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2383
    invoke-virtual {p0, p10}, Lcom/android/server/wm/ActivityStarter;->setProfilerInfo(Landroid/app/ProfilerInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2384
    invoke-virtual {p0, p11}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2385
    invoke-virtual {p0, p3}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    const/4 p1, 0x1

    .line 2386
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 2387
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result p0

    return p0

    .line 2371
    :cond_52
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null session or interactor"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public stopAppSwitches()V
    .registers 6

    .line 4719
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.STOP_APP_SWITCHES"

    const-string/jumbo v2, "stopAppSwitches"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4720
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x0

    .line 4721
    iput v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesState:I

    .line 4722
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastStopAppSwitchesTime:J

    .line 4723
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4724
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    const-wide/16 v3, 0x1f4

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4725
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2b
    move-exception p0

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public stopLockTaskModeInternal(Landroid/os/IBinder;Z)V
    .registers 8

    .line 3455
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3456
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3458
    :try_start_8
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_49

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v4, 0x0

    if-eqz p1, :cond_23

    .line 3461
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_1f

    .line 3463
    monitor-exit v3
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_43

    .line 3476
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 3465
    :cond_1f
    :try_start_1f
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 3467
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object p1

    invoke-virtual {p1, v4, p2, v0}, Lcom/android/server/wm/LockTaskController;->stopLockTaskMode(Lcom/android/server/wm/Task;ZI)V

    .line 3468
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_43

    :try_start_2b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3471
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "telecom"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    if-eqz p0, :cond_3f

    const/4 p1, 0x0

    .line 3473
    invoke-virtual {p0, p1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V
    :try_end_3f
    .catchall {:try_start_2b .. :try_end_3f} :catchall_49

    .line 3476
    :cond_3f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_43
    move-exception p0

    .line 3468
    :try_start_44
    monitor-exit v3
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    :try_start_45
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_49

    :catchall_49
    move-exception p0

    .line 3476
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3477
    throw p0
.end method

.method public stopSystemLockTaskMode()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "stopSystemLockTaskMode"

    .line 3422
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3423
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->stopLockTaskModeInternal(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public supportsLocalVoiceInteraction()Z
    .registers 1

    .line 4483
    const-class p0, Landroid/service/voice/VoiceInteractionManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 4484
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionManagerInternal;->supportsLocalVoiceInteraction()Z

    move-result p0

    return p0
.end method

.method public suppressResizeConfigChanges(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4356
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_TASKS"

    const-string/jumbo v2, "suppressResizeConfigChanges()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4358
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4359
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSuppressResizeConfigChanges:Z

    .line 4360
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_17
    move-exception p0

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public takeTaskSnapshot(I)Landroid/window/TaskSnapshot;
    .registers 7

    .line 4590
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.READ_FRAME_BUFFER"

    const-string/jumbo v2, "takeTaskSnapshot()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4591
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4593
    :try_start_e
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_5a

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4594
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 4596
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v4

    if-nez v4, :cond_24

    goto :goto_35

    .line 4600
    :cond_24
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    const/4 p1, 0x0

    invoke-virtual {p0, v3, p1}, Lcom/android/server/wm/TaskSnapshotController;->captureTaskSnapshot(Lcom/android/server/wm/Task;Z)Landroid/window/TaskSnapshot;

    move-result-object p0

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_54

    .line 4604
    :goto_2e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :cond_35
    :goto_35
    :try_start_35
    const-string p0, "ActivityTaskManager"

    .line 4597
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "takeTaskSnapshot: taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found or not visible"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 4598
    monitor-exit v2

    goto :goto_2e

    :catchall_54
    move-exception p0

    .line 4602
    monitor-exit v2
    :try_end_56
    .catchall {:try_start_35 .. :try_end_56} :catchall_54

    :try_start_56
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception p0

    .line 4604
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4605
    throw p0
.end method

.method public unhandledBack()V
    .registers 4

    .line 2847
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.FORCE_BACK"

    const-string/jumbo v2, "unhandledBack()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2850
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2851
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_2a

    .line 2853
    :try_start_14
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 2855
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->unhandledBackLocked()V
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_25

    .line 2858
    :cond_1d
    :try_start_1d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2860
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_25
    move-exception p0

    .line 2858
    :try_start_26
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2859
    throw p0

    :catchall_2a
    move-exception p0

    .line 2860
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public unregisterAnrController(Landroid/app/AnrController;)V
    .registers 3

    .line 3047
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3048
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAnrController:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3049
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception p0

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    .registers 3

    const-string/jumbo v0, "unregisterTaskStackListener()"

    .line 3861
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 3862
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    return-void
.end method

.method public updateActivityUsageStats(Lcom/android/server/wm/ActivityRecord;I)V
    .registers 12

    .line 6030
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 6032
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 6034
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    move-object v7, v0

    .line 6040
    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda22;

    invoke-direct {v1}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda22;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 6042
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    iget-object v8, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 6040
    invoke-static/range {v1 .. v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HeptConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 6044
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateAssetConfiguration(Ljava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wm/WindowProcessController;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "ActivityTaskManager"

    .line 5472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAssetConfiguration() called with: processes = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], updateFrameworkRes = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5474
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_27
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5475
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->increaseAssetConfigurationSeq()I

    move-result v1

    const/4 v2, 0x1

    if-eqz p2, :cond_44

    .line 5480
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iput-boolean v2, p2, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mAvoidCompatDisplayInsets:Z

    .line 5483
    new-instance p2, Landroid/content/res/Configuration;

    invoke-direct {p2}, Landroid/content/res/Configuration;-><init>()V

    .line 5484
    iput v1, p2, Landroid/content/res/Configuration;->assetsSeq:I

    .line 5485
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfiguration(Landroid/content/res/Configuration;)Z

    .line 5488
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mAvoidCompatDisplayInsets:Z

    .line 5495
    :cond_44
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v2

    :goto_49
    if-ltz p0, :cond_57

    .line 5496
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/WindowProcessController;

    .line 5497
    invoke-virtual {p2, v1}, Lcom/android/server/wm/WindowProcessController;->updateAssetConfiguration(I)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_49

    .line 5499
    :cond_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_27 .. :try_end_58} :catchall_5c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_5c
    move-exception p0

    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public updateBatteryStats(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 11

    .line 5994
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v0, :cond_20

    .line 5995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityRecord own empty wpc. caller : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x19

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5998
    :cond_20
    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda7;-><init>()V

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 5999
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 6000
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 5998
    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 6001
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;)Z
    .registers 15

    .line 4489
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CHANGE_CONFIGURATION"

    const-string/jumbo v2, "updateConfiguration()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4491
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4492
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    if-nez v1, :cond_21

    const-string p0, "ActivityTaskManager"

    const-string p1, "Skip updateConfiguration because mWindowManager isn\'t set"

    .line 4493
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4494
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_73

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_21
    if-nez p1, :cond_27

    .line 4499
    :try_start_23
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object p1

    :cond_27
    move-object v4, p1

    .line 4502
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda20;

    invoke-direct {v1}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda20;-><init>()V

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 4504
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 4502
    invoke-static {v1, v3, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4507
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    .line 4510
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11
    :try_end_44
    .catchall {:try_start_23 .. :try_end_44} :catchall_73

    if-eqz v4, :cond_49

    .line 4513
    :try_start_46
    invoke-static {v4}, Landroid/provider/Settings$System;->clearConfiguration(Landroid/content/res/Configuration;)V

    .line 4517
    :cond_49
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1, p1}, Landroid/app/ActivityManagerInternal;->setUpdateConfigurationCallerLocked(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, -0x2710

    const/4 v9, 0x0

    .line 4518
    iget-object v10, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZLcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z

    .line 4521
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p1}, Landroid/app/ActivityManagerInternal;->resetUpdateConfigurationCallerLocked()V

    .line 4528
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->changes:I
    :try_end_63
    .catchall {:try_start_46 .. :try_end_63} :catchall_6e

    if-eqz p0, :cond_66

    const/4 v2, 0x1

    .line 4530
    :cond_66
    :try_start_66
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_66 .. :try_end_6a} :catchall_73

    .line 4528
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_6e
    move-exception p0

    .line 4530
    :try_start_6f
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4531
    throw p0

    :catchall_73
    move-exception p0

    .line 4532
    monitor-exit v0
    :try_end_75
    .catchall {:try_start_6f .. :try_end_75} :catchall_73

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z
    .registers 5

    const/4 v0, 0x0

    .line 5169
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZ)Z

    move-result p0

    return p0
.end method

.method public updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZ)Z
    .registers 12

    const/4 v4, 0x0

    const/16 v5, -0x2710

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    .line 5175
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZ)Z

    move-result p0

    return p0
.end method

.method public final updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZ)Z
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 5208
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZLcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z

    move-result p0

    return p0
.end method

.method public updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZLcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z
    .registers 11

    .line 5228
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_55

    .line 5232
    :try_start_7
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_UI_MODE_ANIMATION:Z

    if-eqz v2, :cond_16

    .line 5233
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v2

    if-eqz v2, :cond_16

    move v0, v1

    .line 5235
    :cond_16
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/server/wm/ActivityTaskManagerService;->updateGlobalConfigurationLocked(Landroid/content/res/Configuration;ZZI)I

    move-result p1

    .line 5238
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->FW_UI_MODE_ANIMATION:Z

    if-eqz p3, :cond_51

    .line 5239
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result p3

    if-eq v0, p3, :cond_51

    .line 5240
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p3

    if-eqz p3, :cond_51

    .line 5243
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/android/server/wm/DisplayRotation;->selectDisplayChangeAnimation(I)Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    move-result-object p4

    .line 5244
    iget p5, p4, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    if-nez p5, :cond_40

    iget v0, p4, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    if-eqz v0, :cond_51

    .line 5245
    :cond_40
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v2, p4, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    invoke-virtual {v0, v2, p5, p3}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplay(IILcom/android/server/wm/DisplayContent;)V

    .line 5247
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance p5, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda21;

    invoke-direct {p5, p0, p4}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;)V

    invoke-virtual {p3, p5}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    :cond_51
    move v0, p1

    goto :goto_55

    :catchall_53
    move-exception p1

    goto :goto_5c

    :cond_55
    :goto_55
    if-nez p6, :cond_60

    .line 5260
    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->ensureConfigAndVisibilityAfterUpdate(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v1
    :try_end_5b
    .catchall {:try_start_7 .. :try_end_5b} :catchall_53

    goto :goto_60

    .line 5263
    :goto_5c
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 5264
    throw p1

    .line 5263
    :cond_60
    :goto_60
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    if-eqz p7, :cond_6b

    .line 5267
    iput v0, p7, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->changes:I

    xor-int/lit8 p0, v1, 0x1

    .line 5268
    iput-boolean p0, p7, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->activityRelaunched:Z

    :cond_6b
    return v1
.end method

.method public updateCpuStats()V
    .registers 3

    .line 5989
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda17;-><init>(Landroid/app/ActivityManagerInternal;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateEventDispatchingLocked(Z)V
    .registers 3

    .line 5577
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz p1, :cond_a

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->setEventDispatching(Z)V

    return-void
.end method

.method public final updateFontScaleIfNeeded(I)V
    .registers 6

    .line 5628
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_7

    return-void

    .line 5632
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 5635
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5636
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v2, v2, v0

    if-nez v2, :cond_2a

    .line 5637
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 5640
    :cond_2a
    :try_start_2a
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    .line 5641
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v2

    .line 5642
    iput v0, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 5643
    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updatePersistentConfiguration(Landroid/content/res/Configuration;I)V

    .line 5644
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_3b
    move-exception p0

    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final updateFontWeightAdjustmentIfNeeded(I)V
    .registers 6

    .line 5648
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_7

    return-void

    .line 5652
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 5654
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_weight_adjustment"

    const v2, 0x7fffffff

    .line 5653
    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 5659
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5660
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    if-ne v2, v0, :cond_29

    .line 5661
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 5664
    :cond_29
    :try_start_29
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    .line 5665
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v2

    .line 5666
    iput v0, v2, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 5667
    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updatePersistentConfiguration(Landroid/content/res/Configuration;I)V

    .line 5668
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_3a
    move-exception p0

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public updateGlobalConfigurationLocked(Landroid/content/res/Configuration;ZZI)I
    .registers 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "ActivityTaskManagerService"

    .line 5277
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 5278
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_19

    return v4

    .line 5283
    :cond_19
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_2f

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x3743f29c

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v5, v10, v4

    invoke-static {v8, v9, v4, v6, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5285
    :cond_2f
    invoke-static {v3}, Lcom/android/server/am/EventLogTags;->writeConfigurationChanged(I)V

    const/16 v11, 0x42

    .line 5286
    iget v12, v1, Landroid/content/res/Configuration;->colorMode:I

    iget v13, v1, Landroid/content/res/Configuration;->densityDpi:I

    iget v14, v1, Landroid/content/res/Configuration;->fontScale:F

    iget v15, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v5, v1, Landroid/content/res/Configuration;->keyboard:I

    move/from16 v16, v5

    iget v5, v1, Landroid/content/res/Configuration;->keyboardHidden:I

    move/from16 v17, v5

    iget v5, v1, Landroid/content/res/Configuration;->mcc:I

    move/from16 v18, v5

    iget v5, v1, Landroid/content/res/Configuration;->mnc:I

    move/from16 v19, v5

    iget v5, v1, Landroid/content/res/Configuration;->navigation:I

    move/from16 v20, v5

    iget v5, v1, Landroid/content/res/Configuration;->navigationHidden:I

    move/from16 v21, v5

    iget v5, v1, Landroid/content/res/Configuration;->orientation:I

    move/from16 v22, v5

    iget v5, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    move/from16 v23, v5

    iget v5, v1, Landroid/content/res/Configuration;->screenLayout:I

    move/from16 v24, v5

    iget v5, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    move/from16 v25, v5

    iget v5, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move/from16 v26, v5

    iget v5, v1, Landroid/content/res/Configuration;->touchscreen:I

    move/from16 v27, v5

    iget v5, v1, Landroid/content/res/Configuration;->uiMode:I

    move/from16 v28, v5

    invoke-static/range {v11 .. v28}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFIIIIIIIIIIIIII)V

    if-nez p2, :cond_cd

    .line 5306
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_cd

    iget-boolean v5, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v5, :cond_cd

    .line 5307
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    .line 5309
    invoke-virtual {v5}, Landroid/os/LocaleList;->size()I

    move-result v8

    if-le v8, v7, :cond_aa

    .line 5310
    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportedSystemLocales:[Ljava/lang/String;

    if-nez v8, :cond_9f

    .line 5311
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportedSystemLocales:[Ljava/lang/String;

    .line 5313
    :cond_9f
    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportedSystemLocales:[Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/os/LocaleList;->getFirstMatchIndex([Ljava/lang/String;)I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_ab

    :cond_aa
    move v8, v4

    .line 5317
    :goto_ab
    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v10, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 5318
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v10

    iget-boolean v1, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 5317
    invoke-virtual {v9, v10, v5, v1}, Landroid/app/ActivityManagerInternal;->addToLocaleChangedHistoryLocked(Landroid/os/LocaleList;Landroid/os/LocaleList;Z)V

    .line 5322
    invoke-virtual {v5, v8}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v9, "persist.sys.locale"

    .line 5321
    invoke-static {v9, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5323
    invoke-static {v5, v8}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;I)V

    .line 5326
    :cond_cd
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->increaseConfigurationSeqLocked()I

    move-result v5

    iput v5, v1, Landroid/content/res/Configuration;->seq:I

    .line 5328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Config changes="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5330
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v9}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v9

    invoke-virtual {v1, v8, v9}, Landroid/app/usage/UsageStatsManagerInternal;->reportConfigurationChange(Landroid/content/res/Configuration;I)V

    .line 5333
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateShouldShowDialogsLocked(Landroid/content/res/Configuration;)V

    .line 5335
    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    move-result-object v1

    if-eqz v1, :cond_116

    .line 5337
    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v8}, Lcom/android/internal/policy/AttributeCache;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 5344
    :cond_116
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSystemThread:Landroid/app/ActivityThread;

    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v8}, Landroid/app/ActivityThread;->applyConfigurationToResources(Landroid/content/res/Configuration;)V

    if-eqz p3, :cond_13e

    .line 5346
    invoke-static {v3}, Landroid/provider/Settings$System;->hasInterestingConfigurationChanges(I)Z

    move-result v1

    if-eqz v1, :cond_13e

    .line 5353
    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda10;-><init>()V

    .line 5355
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Landroid/content/res/Configuration;

    iget-object v10, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-direct {v9, v10}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 5353
    invoke-static {v1, v0, v8, v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 5356
    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v8, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5360
    :cond_13e
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getSysUiPid()I

    move-result v1

    const/4 v8, -0x1

    if-le v1, v8, :cond_149

    move v9, v7

    goto :goto_14a

    :cond_149
    move v9, v4

    .line 5364
    :goto_14a
    iget-object v10, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowProcessControllerMap;->getPidMap()Landroid/util/SparseArray;

    move-result-object v10

    .line 5365
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v11

    sub-int/2addr v11, v7

    :goto_155
    if-ltz v11, :cond_26c

    .line 5369
    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    if-eqz v9, :cond_168

    .line 5374
    invoke-virtual {v10, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_166

    add-int/lit8 v11, v11, 0x1

    move v12, v1

    :cond_166
    move v9, v4

    goto :goto_171

    :cond_168
    if-ne v12, v1, :cond_171

    move-object/from16 p4, v10

    move v10, v4

    move v4, v7

    move v7, v8

    goto/16 :goto_264

    .line 5385
    :cond_171
    :goto_171
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/WindowProcessController;

    .line 5387
    new-instance v13, Landroid/content/res/Configuration;

    iget-object v14, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-direct {v13, v14}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 5389
    sget-boolean v14, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z

    if-eqz v14, :cond_18c

    .line 5390
    invoke-static {}, Lcom/android/server/DssController;->getService()Lcom/android/server/DssController;

    move-result-object v14

    .line 5391
    iget-object v15, v12, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v14, v13, v15}, Lcom/android/server/DssController;->createScaledConfiguration(Landroid/content/res/Configuration;Ljava/lang/String;)Landroid/content/res/Configuration;

    move-result-object v13

    :cond_18c
    const/high16 v14, -0x7fff0000

    and-int/2addr v14, v3

    if-eqz v14, :cond_225

    .line 5399
    iget-object v14, v12, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v14

    move v8, v4

    :goto_198
    if-ge v8, v14, :cond_225

    .line 5401
    iget-object v6, v12, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 5403
    :try_start_1a2
    iget-object v7, v12, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_1fc

    .line 5404
    iget-object v4, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_1fc

    .line 5405
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1fc

    .line 5406
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[updateGlobalConfigurationLocked]  = "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5407
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4
    :try_end_1c8
    .catch Ljava/lang/Exception; {:try_start_1a2 .. :try_end_1c8} :catch_202

    move v15, v9

    move-object/from16 p4, v10

    :try_start_1cb
    iget v9, v12, Lcom/android/server/wm/WindowProcessController;->mUserId:I
    :try_end_1cd
    .catch Ljava/lang/Exception; {:try_start_1cb .. :try_end_1cd} :catch_205

    move/from16 v21, v11

    const-wide/16 v10, 0x0

    .line 5408
    :try_start_1d1
    invoke-interface {v4, v6, v10, v11, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_219

    .line 5411
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[updateGlobalConfigurationLocked] from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v4, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5412
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iput-object v4, v7, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;
    :try_end_1fb
    .catch Ljava/lang/Exception; {:try_start_1d1 .. :try_end_1fb} :catch_207

    goto :goto_219

    :cond_1fc
    move v15, v9

    move-object/from16 p4, v10

    move/from16 v21, v11

    goto :goto_219

    :catch_202
    move v15, v9

    move-object/from16 p4, v10

    :catch_205
    move/from16 v21, v11

    :catch_207
    const/4 v4, 0x2

    new-array v7, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v6, v7, v4

    const/4 v4, 0x1

    aput-object v12, v7, v4

    const-string v4, "Failed to update %s ApplicationInfo for %s"

    .line 5416
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_219
    :goto_219
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v10, p4

    move v9, v15

    move/from16 v11, v21

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_198

    :cond_225
    move v15, v9

    move-object/from16 p4, v10

    move/from16 v21, v11

    .line 5424
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    if-eqz v4, :cond_253

    iget-object v4, v12, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z

    if-eqz v6, :cond_23a

    move-object v6, v13

    goto :goto_23c

    :cond_23a
    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    :goto_23c
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x1e052edc

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v4, 0x1

    aput-object v6, v9, v4

    const/4 v6, 0x0

    invoke-static {v7, v8, v10, v6, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_256

    :cond_253
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 5427
    :goto_256
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z

    if-eqz v7, :cond_25b

    goto :goto_25d

    .line 5428
    :cond_25b
    iget-object v13, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    .line 5427
    :goto_25d
    invoke-virtual {v12, v13}, Lcom/android/server/wm/WindowProcessController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    move v9, v15

    move/from16 v11, v21

    const/4 v7, -0x1

    :goto_264
    add-int/2addr v11, v7

    move v8, v7

    move v7, v4

    move v4, v10

    move-object/from16 v10, p4

    goto/16 :goto_155

    .line 5431
    :cond_26c
    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda11;-><init>()V

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 5433
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 5431
    invoke-static {v1, v2, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 5434
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5437
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5447
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX:Z

    if-eqz v0, :cond_296

    and-int/lit16 v0, v3, 0x1400

    if-eqz v0, :cond_296

    .line 5450
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->onConfigurationChanged()V

    .line 5452
    :cond_296
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ENHANCED_AS_CAPTURED_BLUR:Z

    if-eqz v0, :cond_2a1

    and-int/lit16 v0, v3, 0x200

    if-eqz v0, :cond_2a1

    .line 5454
    invoke-static {}, Lcom/android/server/wm/CustomLetterboxConfiguration;->onUiModeChanged()V

    :cond_2a1
    return v3
.end method

.method public updateLockTaskFeatures(II)V
    .registers 12

    .line 4624
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_14

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_14

    .line 4626
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.UPDATE_LOCK_TASK_PACKAGES"

    const-string/jumbo v2, "updateLockTaskFeatures()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4630
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4631
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_LOCKTASK_enabled:Z

    if-eqz v1, :cond_3d

    int-to-long v1, p1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0xa0facdd

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v8

    const/4 v1, 0x1

    aput-object v3, v7, v1

    invoke-static {v4, v5, v1, v6, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 4633
    :cond_3d
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/LockTaskController;->updateLockTaskFeatures(II)V

    .line 4634
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_17 .. :try_end_45} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_49
    move-exception p0

    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public updateLockTaskPackages(I[Ljava/lang/String;)V
    .registers 12

    .line 3482
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_14

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_14

    .line 3484
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.UPDATE_LOCK_TASK_PACKAGES"

    const-string/jumbo v2, "updateLockTaskPackages()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3487
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3488
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_LOCKTASK_enabled:Z

    if-eqz v1, :cond_3d

    int-to-long v1, p1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x2aa97a22

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v8

    const/4 v1, 0x1

    aput-object v3, v7, v1

    invoke-static {v4, v5, v1, v6, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3489
    :cond_3d
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/LockTaskController;->updateLockTaskPackages(I[Ljava/lang/String;)V

    .line 3490
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_17 .. :try_end_45} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_49
    move-exception p0

    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public updateOomAdj()V
    .registers 3

    .line 5984
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateOomAdjRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5985
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateOomAdjRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updatePersistentConfiguration(Landroid/content/res/Configuration;I)V
    .registers 15

    .line 5181
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 5183
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5185
    :try_start_8
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_35

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5188
    iget-object v4, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->setToDefaults()V

    .line 5191
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v4, v0}, Landroid/app/ActivityManagerInternal;->setUpdateConfigurationCallerLocked(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x0

    move-object v5, p0

    move-object v6, p1

    move v10, p2

    .line 5192
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZ)Z

    .line 5194
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->resetUpdateConfigurationCallerLocked()V

    .line 5200
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_2f

    :try_start_28
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_35

    .line 5202
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2f
    move-exception p0

    .line 5200
    :try_start_30
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_35
    .catchall {:try_start_31 .. :try_end_35} :catchall_35

    :catchall_35
    move-exception p0

    .line 5202
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5203
    throw p0
.end method

.method public updatePreviousProcess(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6

    .line 6016
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_24

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    if-eq v0, v1, :cond_24

    iget-wide v0, p1, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    iget-wide v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcessVisibleTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_24

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-eq v0, v1, :cond_24

    .line 6023
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    .line 6024
    iget-wide v0, p1, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    iput-wide v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcessVisibleTime:J

    :cond_24
    return-void
.end method

.method public final updateResumedAppTrace(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6

    .line 6252
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTracedResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    const-wide/16 v2, 0x20

    if-eqz v0, :cond_10

    .line 6253
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 6254
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->constructResumedTraceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6253
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_10
    if-eqz p1, :cond_1b

    .line 6257
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 6258
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->constructResumedTraceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6257
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 6260
    :cond_1b
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTracedResumedActivity:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method

.method public final updateShouldShowDialogsLocked(Landroid/content/res/Configuration;)V
    .registers 7

    .line 5617
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-ne v0, v2, :cond_11

    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v0, v2, :cond_f

    goto :goto_11

    :cond_f
    move v0, v1

    goto :goto_12

    :cond_11
    :goto_11
    move v0, v2

    .line 5620
    :goto_12
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hide_error_dialogs"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_22

    move v3, v2

    goto :goto_23

    :cond_22
    move v3, v1

    :goto_23
    if-eqz v0, :cond_2e

    .line 5623
    invoke-static {p1}, Landroid/app/ActivityTaskManager;->currentUiModeSupportsErrorDialogs(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_2e

    if-nez v3, :cond_2e

    move v1, v2

    :cond_2e
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShowDialogs:Z

    return-void
.end method

.method public updateSleepIfNeededLocked()V
    .registers 7

    .line 5938
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->hasAwakeDisplay()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 5939
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    const/16 v3, 0xe

    const-string v4, "ActivityTaskManager"

    const/4 v5, 0x0

    if-nez v0, :cond_30

    if-eqz v2, :cond_28

    .line 5947
    iput-boolean v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    const/4 v0, 0x2

    .line 5948
    invoke-static {v3, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 5950
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->startTimeTrackingFocusedActivityLocked()V

    .line 5951
    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    const-string v0, "Top Process State changed to PROCESS_STATE_TOP"

    .line 5952
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5953
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->comeOutOfSleepIfNeededLocked()V

    .line 5955
    :cond_28
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->applySleepTokens(Z)V

    if-eqz v2, :cond_5f

    goto :goto_60

    .line 5959
    :cond_30
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    if-nez v2, :cond_55

    if-eqz v0, :cond_55

    .line 5960
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 5961
    invoke-static {v3, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 5963
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz v0, :cond_42

    .line 5964
    invoke-virtual {v0}, Lcom/android/server/am/AppTimeTracker;->stop()V

    :cond_42
    const/16 v0, 0xc

    .line 5966
    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    const-string v0, "Top Process State changed to PROCESS_STATE_TOP_SLEEPING"

    .line 5967
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5968
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->goingToSleepLocked()V

    const/4 v0, 0x0

    .line 5969
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateResumedAppTrace(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_60

    :cond_55
    const-string v0, "Top Process State changed to PROCESS_STATE_TOP_SLEEPING#2"

    .line 5974
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5975
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v5}, Lcom/android/server/wm/RootWindowContainer;->applySleepTokens(Z)V

    :cond_5f
    move v1, v5

    :goto_60
    if-eqz v1, :cond_65

    .line 5979
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateOomAdj()V

    :cond_65
    return-void
.end method

.method public updateTopApp(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    if-eqz p1, :cond_3

    goto :goto_9

    .line 6007
    :cond_3
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    :goto_9
    if-eqz p1, :cond_e

    .line 6008
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    return-void
.end method

.method public final writeSleepStateToProto(Landroid/util/proto/ProtoOutputStream;IZ)V
    .registers 10

    const-wide v0, 0x10b0000001bL

    .line 5118
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 5120
    invoke-static {p2}, Landroid/os/PowerManagerInternal;->wakefulnessToProtoEnum(I)I

    move-result p2

    const-wide v2, 0x10e00000001L

    .line 5119
    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5121
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object p2, p2, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, p2, :cond_39

    .line 5123
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, v3, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Landroid/util/SparseArray;

    .line 5124
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/RootWindowContainer$SleepToken;

    const-wide v4, 0x20900000002L

    .line 5126
    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer$SleepToken;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5125
    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_39
    const-wide v2, 0x10800000003L

    .line 5128
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000004L

    .line 5129
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000005L

    .line 5131
    invoke-virtual {p1, v2, v3, p3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5133
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
