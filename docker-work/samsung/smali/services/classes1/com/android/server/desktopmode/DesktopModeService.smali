.class public Lcom/android/server/desktopmode/DesktopModeService;
.super Lcom/samsung/android/desktopmode/IDesktopMode$Stub;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/DesktopModeService$LocalService;,
        Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;,
        Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;,
        Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;,
        Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;,
        Lcom/android/server/desktopmode/DesktopModeService$Receiver;,
        Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;
    }
.end annotation


# static fields
.field public static final CONFIGURATION_DISABLED:I = 0x0

.field public static final CONFIGURATION_ENABLED:I = 0x1

.field public static final CONFIGURATION_UNDEFINED:I = -0x1

.field public static final ENTER_REQUEST:I = 0x1

.field public static final EXIT_REQUEST:I = 0x2

.field public static final IGNORE_INITIAL_POGO_CONNECTION_DIALOG_DELAY:I = 0x1388

.field public static final NO_REQUEST:I = 0x0

.field public static final TAG:Ljava/lang/String;

.field public static final TAG_PREFIX:Ljava/lang/String; = "[DMS]"

.field public static final TAG_PREFIX_POLICY:Ljava/lang/String; = "[DMS_POLICY]"


# instance fields
.field public mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field public mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mAllowPogoInitialDialog:Z

.field public mBleAdvertiserServiceManager:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

.field public mBlockerManager:Lcom/android/server/desktopmode/BlockerManager;

.field public mBootInitBlocker:Lcom/android/server/desktopmode/BootInitBlocker;

.field public final mContext:Landroid/content/Context;

.field public mCoverStateManager:Lcom/android/server/desktopmode/CoverStateManager;

.field public mCurrentUserId:I

.field public mDexManager:Lcom/samsung/android/knox/dex/DexManager;

.field public mDisplayPortStateManager:Lcom/android/server/desktopmode/DisplayPortStateManager;

.field public mDockManager:Lcom/android/server/desktopmode/DockManager;

.field public mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

.field public mEmergencyModeBlocker:Lcom/android/server/desktopmode/EmergencyModeBlocker;

.field public mEnteredViaWirelessDex:Z

.field public final mExternalDisplayModeListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

.field public final mHandler:Landroid/os/Handler;

.field public mHwManager:Lcom/android/server/desktopmode/HardwareManager;

.field public final mInjector:Lcom/android/server/desktopmode/Injector;

.field public mIsBootComplete:Z

.field public mIsDesktopModeEnablingOrEnabled:Z

.field public mLauncherInterface:Lcom/samsung/android/desktopmode/IDesktopModeLauncher;

.field public final mLock:Ljava/lang/Object;

.field public mMcfManager:Lcom/android/server/desktopmode/McfManager;

.field public mModeChanger:Lcom/android/server/desktopmode/ModeChanger;

.field public mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

.field public mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

.field public mPackageStateManager:Lcom/android/server/desktopmode/PackageStateManager;

.field public final mPreconditionChecker:Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;

.field public final mResolver:Landroid/content/ContentResolver;

.field public final mSemDesktopModeStateNotifier:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

.field public mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

.field public mShowModeChangeScreen:Z

.field public mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

.field public final mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

.field public final mStateManager:Lcom/android/server/desktopmode/IStateManager;

.field public mStatusBarManager:Landroid/app/StatusBarManager;

.field public mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;

.field public mUiManager:Lcom/android/server/desktopmode/UiManager;

.field public mUserRequest:I

.field public mUserSetupCompleteObserver:Landroid/database/ContentObserver;

.field public mWelcomeActivityListener:Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;

.field public final mWelcomeCompletedSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

.field public mWirelessDexManager:Lcom/android/server/desktopmode/WirelessDexManager;

.field public mWirelessDexSetting:I


# direct methods
.method public static synthetic $r8$lambda$QZMNF2rhTZaJCFJsDR1-OD7s6ig(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/State;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->lambda$sendMessage$2(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xmqd4EEjW5duK3rfvujdSFQUeKY(Lcom/android/server/desktopmode/DesktopModeService;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->lambda$scheduleUpdateDesktopMode$1(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$gGMBFyM1Q1SiYDCN5w08szwn0w0(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->lambda$scheduleUpdateDesktopMode$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$vIaotAeSBdam7Bu1Hj2udJDH81o(Lcom/android/server/desktopmode/DesktopModeService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/DesktopModeService;->lambda$sendMessage$3()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCoverStateManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/CoverStateManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverStateManager:Lcom/android/server/desktopmode/CoverStateManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentUserId(Lcom/android/server/desktopmode/DesktopModeService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDualModeChanger(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DualModeChanger;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEnteredViaWirelessDex(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mEnteredViaWirelessDex:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHwManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/HardwareManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHwManager:Lcom/android/server/desktopmode/HardwareManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/Injector;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInjector:Lcom/android/server/desktopmode/Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmModeToModeChangeInfo(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmResolver(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSettingsHelper(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/SettingsHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShowModeChangeScreen(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mShowModeChangeScreen:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStandaloneModeChanger(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/StandaloneModeChanger;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/IStateManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStatusBarManager(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/app/StatusBarManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUiManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/UiManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserRequest(Lcom/android/server/desktopmode/DesktopModeService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUserRequest:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWirelessDexManager(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/WirelessDexManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWirelessDexManager:Lcom/android/server/desktopmode/WirelessDexManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWirelessDexSetting(Lcom/android/server/desktopmode/DesktopModeService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWirelessDexSetting:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmAllowPogoInitialDialog(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mAllowPogoInitialDialog:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEnteredViaWirelessDex(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mEnteredViaWirelessDex:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsBootComplete(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBootComplete:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmModeChanger(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/ModeChanger;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChanger:Lcom/android/server/desktopmode/ModeChanger;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmModeToModeChangeInfo(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmShowModeChangeScreen(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mShowModeChangeScreen:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUserSetupCompleteObserver(Lcom/android/server/desktopmode/DesktopModeService;Landroid/database/ContentObserver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUserSetupCompleteObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWirelessDexSetting(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWirelessDexSetting:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdismissDialog(Lcom/android/server/desktopmode/DesktopModeService;[I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->dismissDialog([I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfinishWelcomeActivity(Lcom/android/server/desktopmode/DesktopModeService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->finishWelcomeActivity()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetCurrentUiMode(Lcom/android/server/desktopmode/DesktopModeService;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->getCurrentUiMode()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetModeToModeChangeType(Lcom/android/server/desktopmode/DesktopModeService;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->getModeToModeChangeType()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetTouchpadSupportedFeatures(Lcom/android/server/desktopmode/DesktopModeService;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->getTouchpadSupportedFeatures()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandleHdmiAutoEnter(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->handleHdmiAutoEnter(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandlePogoAutoEnter(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->handlePogoAutoEnter(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleWirelessDexEnter(Lcom/android/server/desktopmode/DesktopModeService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->handleWirelessDexEnter()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitializeStates(Lcom/android/server/desktopmode/DesktopModeService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->initializeStates()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misAllowedInternal(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/State;ZZ)Z
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/desktopmode/DesktopModeService;->isAllowedInternal(Lcom/android/server/desktopmode/State;ZZ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misBlockerRegistered(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/State;Z)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->isBlockerRegistered(Lcom/android/server/desktopmode/State;Z)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misConfigurationChangedFromDeX(Lcom/android/server/desktopmode/DesktopModeService;Landroid/content/res/Configuration;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->isConfigurationChangedFromDeX(Landroid/content/res/Configuration;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misDesktopModeAvailableEx(Lcom/android/server/desktopmode/DesktopModeService;ZZ)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeAvailableEx(ZZ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misDesktopModeEnablingOrEnabled(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeEnablingOrEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misDesktopModeForPreparing(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeForPreparing()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misDesktopModeForPreparing(Lcom/android/server/desktopmode/DesktopModeService;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeForPreparing(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misForcedInternalScreenModeEnabled(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isForcedInternalScreenModeEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misLockTaskModeEnabledAndSecured(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isLockTaskModeEnabledAndSecured()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misModeChangePending(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isModeChangePending()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misModeChangePending(Lcom/android/server/desktopmode/DesktopModeService;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->isModeChangePending(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misNeededStartConnectivityActivity(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/State;I)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->isNeededStartConnectivityActivity(Lcom/android/server/desktopmode/State;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misSystemReady(Lcom/android/server/desktopmode/DesktopModeService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isSystemReady()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mlogDesktopModeChanged(Lcom/android/server/desktopmode/DesktopModeService;Landroid/content/Intent;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->logDesktopModeChanged(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mminimizeAllTasks(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->minimizeAllTasks(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monDesktopDisplayConfigured(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onDesktopDisplayConfigured(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monSecuredAppLaunched(Lcom/android/server/desktopmode/DesktopModeService;ILjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->onSecuredAppLaunched(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserStarting(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onUserStarting(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserStopped(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onUserStopped(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserStopping(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onUserStopping(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserSwitching(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onUserSwitching(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserUnlocking(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onUserUnlocking(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrequestTileUpdate(Lcom/android/server/desktopmode/DesktopModeService;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->requestTileUpdate(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetUserRequest(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setUserRequest(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshouldStayInDesktopMode(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/State;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->shouldStayInDesktopMode(Lcom/android/server/desktopmode/State;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mshowDialog(Lcom/android/server/desktopmode/DesktopModeService;ILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->showDialog(ILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartConnectivityActivity(Lcom/android/server/desktopmode/DesktopModeService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->startConnectivityActivity()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartConnectivityActivity(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->startConnectivityActivity(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartHome(Lcom/android/server/desktopmode/DesktopModeService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->startHome()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartHome(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/State;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->startHome(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartWelcomeActivity(Lcom/android/server/desktopmode/DesktopModeService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->startWelcomeActivity()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smisConnectionTypeChanged(Lcom/android/server/desktopmode/State;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isConnectionTypeChanged(Lcom/android/server/desktopmode/State;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisDesktopDockConnectedOrForced(Lcom/android/server/desktopmode/State;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopDockConnectedOrForced(Lcom/android/server/desktopmode/State;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisDexPadConnected(Lcom/android/server/desktopmode/State;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isDexPadConnected(Lcom/android/server/desktopmode/State;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisExternalDisplayConnectedOrForced(Lcom/android/server/desktopmode/State;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isExternalDisplayConnectedOrForced(Lcom/android/server/desktopmode/State;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smuserRequestToString(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->userRequestToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/desktopmode/Injector;Landroid/content/Context;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;Lcom/android/server/desktopmode/IStateManager;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1061
    invoke-direct {p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;-><init>()V

    .line 145
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLock:Ljava/lang/Object;

    .line 146
    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService$1;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/DesktopModeService$1;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 308
    new-instance v1, Lcom/android/server/desktopmode/DesktopModeService$2;

    const-string/jumbo v2, "welcome_completed"

    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/DesktopModeService$2;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWelcomeCompletedSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    .line 320
    new-instance v1, Lcom/android/server/desktopmode/DesktopModeService$3;

    const-string v2, "external_display_mode"

    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/DesktopModeService$3;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mExternalDisplayModeListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    const/4 v1, 0x0

    .line 330
    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mAllowPogoInitialDialog:Z

    .line 331
    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mEnteredViaWirelessDex:Z

    .line 332
    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBootComplete:Z

    .line 333
    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mShowModeChangeScreen:Z

    .line 334
    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopModeEnablingOrEnabled:Z

    .line 335
    iput v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUserRequest:I

    const/16 v1, -0x2710

    .line 337
    iput v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    .line 1062
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInjector:Lcom/android/server/desktopmode/Injector;

    .line 1063
    iput-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    .line 1064
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {v1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Landroid/os/Handler;

    .line 1065
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 1066
    iput-object p4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSemDesktopModeStateNotifier:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    .line 1067
    iput-object p5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 1068
    invoke-interface {p5, v0}, Lcom/android/server/desktopmode/IStateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    .line 1070
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_STANDALONE:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_5c

    .line 1071
    new-instance p2, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;

    invoke-direct {p2, p0, p3}, Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$TabletPreconditionChecker-IA;)V

    goto :goto_61

    .line 1072
    :cond_5c
    new-instance p2, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;

    invoke-direct {p2, p0, p3}, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker-IA;)V

    :goto_61
    iput-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPreconditionChecker:Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;

    .line 1073
    const-class p2, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    new-instance p4, Lcom/android/server/desktopmode/DesktopModeService$LocalService;

    invoke-direct {p4, p0, p3}, Lcom/android/server/desktopmode/DesktopModeService$LocalService;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$LocalService-IA;)V

    invoke-virtual {p1, p2, p4}, Lcom/android/server/desktopmode/Injector;->addLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1074
    new-instance p1, Lcom/android/server/desktopmode/DesktopModeService$Receiver;

    invoke-direct {p1, p0, p3}, Lcom/android/server/desktopmode/DesktopModeService$Receiver;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$Receiver-IA;)V

    invoke-virtual {p1}, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->register()V

    return-void
.end method

.method public static isConnectionTypeChanged(Lcom/android/server/desktopmode/State;)Z
    .registers 3

    .line 1303
    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->getConnectedDisplay()Lcom/android/server/desktopmode/DisplayInfo;

    move-result-object v0

    .line 1304
    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->getPreviousConnectedDisplay()Lcom/android/server/desktopmode/DisplayInfo;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    if-eqz p0, :cond_18

    .line 1306
    invoke-virtual {v0}, Lcom/android/server/desktopmode/DisplayInfo;->getType()I

    move-result v0

    .line 1307
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DisplayInfo;->getType()I

    move-result p0

    if-eq v0, p0, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method public static isDesktopDockConnectedOrForced(Lcom/android/server/desktopmode/State;)Z
    .registers 2

    .line 1212
    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDesktopModeSupported()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1213
    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->isDexOnPcOrWirelessDexConnected()Z

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

.method public static isDesktopModeEnablingOrEnabled(Lcom/android/server/desktopmode/State;I)Z
    .registers 3

    .line 1255
    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_d

    .line 1256
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v0

    if-ne v0, p1, :cond_16

    :cond_d
    iget p0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 p1, 0x3

    if-eq p0, p1, :cond_18

    const/4 p1, 0x4

    if-ne p0, p1, :cond_16

    goto :goto_18

    :cond_16
    const/4 p0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 p0, 0x1

    :goto_19
    return p0
.end method

.method public static isDesktopModeForPreparing(Lcom/android/server/desktopmode/State;I)Z
    .registers 4

    .line 1269
    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_e

    .line 1270
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v1

    if-ne v1, p1, :cond_25

    :cond_e
    iget p1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v1, 0x4

    if-eq p1, v1, :cond_26

    const/4 p1, 0x3

    const/16 v1, 0x1e

    .line 1272
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(II)Z

    move-result p1

    if-nez p1, :cond_26

    const/16 p1, 0x14

    .line 1273
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(II)Z

    move-result p0

    if-eqz p0, :cond_25

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :cond_26
    :goto_26
    return v0
.end method

.method public static isDexPadConnected(Lcom/android/server/desktopmode/State;)Z
    .registers 1

    .line 1203
    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexPad()Z

    move-result p0

    return p0
.end method

.method public static isExternalDisplayConnectedOrForced(Lcom/android/server/desktopmode/State;)Z
    .registers 2

    .line 1299
    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->isForcedInternalScreenModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public static isModeChangePending(Lcom/android/server/desktopmode/State;I)Z
    .registers 3

    .line 1289
    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_d

    .line 1290
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v0

    if-ne v0, p1, :cond_15

    :cond_d
    iget p0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 p1, 0x1e

    if-ne p0, p1, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method private synthetic lambda$scheduleUpdateDesktopMode$0(Z)V
    .registers 4

    .line 1374
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/desktopmode/DesktopModeService;->updateDesktopMode(Lcom/android/server/desktopmode/State;ZZ)V

    return-void
.end method

.method private synthetic lambda$scheduleUpdateDesktopMode$1(ZZ)V
    .registers 4

    .line 1378
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->updateDesktopMode(Lcom/android/server/desktopmode/State;ZZ)V

    return-void
.end method

.method private synthetic lambda$sendMessage$2(Lcom/android/server/desktopmode/State;)V
    .registers 2

    .line 1607
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->minimizeAllTasks(I)V

    return-void
.end method

.method private synthetic lambda$sendMessage$3()V
    .registers 2

    .line 1620
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->startHome(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static startActivityInDisplayAsUser(Landroid/content/Context;Landroid/content/Intent;II)V
    .registers 5

    .line 1676
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 1677
    invoke-virtual {v0, p2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 1678
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static userRequestToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_20

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1a

    .line 1797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    const-string p0, "EXIT_REQUEST"

    return-object p0

    :cond_1d
    const-string p0, "ENTER_REQUEST"

    return-object p0

    :cond_20
    const-string p0, "NO_REQUEST"

    return-object p0
.end method


# virtual methods
.method public final disableNotificationAlertToType(ZI)V
    .registers 6

    .line 1656
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_27

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableNotificationAlertToType(enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", barType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    :cond_27
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz p1, :cond_2e

    const/high16 p1, 0x40000

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    invoke-virtual {p0, p1, p2}, Landroid/app/StatusBarManager;->disableToType(II)V

    return-void
.end method

.method public final varargs dismissDialog([I)V
    .registers 6

    .line 1494
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_e

    aget v2, p1, v1

    .line 1495
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {v3, v2}, Lcom/android/server/desktopmode/UiManager;->dismissDialog(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 1803
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    :cond_b
    if-eqz p3, :cond_b3

    .line 1805
    array-length p1, p3

    if-eqz p1, :cond_b3

    const/4 p1, 0x0

    aget-object v0, p3, p1

    const-string v1, "-a"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto/16 :goto_b3

    .line 1860
    :cond_1d
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_184

    .line 1861
    aget-object p1, p3, p1

    .line 1862
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->MD_DEX_EMULATOR:Z

    const-string v0, "  cmd desktopmode "

    if-eqz p3, :cond_32

    const-string/jumbo p3, "on"

    .line 1863
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_95

    :cond_32
    const-string/jumbo p3, "off"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_95

    const-string/jumbo p3, "toggle"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_45

    goto :goto_95

    :cond_45
    const-string/jumbo p0, "settings"

    .line 1867
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7c

    const-string/jumbo p0, "resolution"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7c

    const-string/jumbo p0, "ui"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_61

    goto :goto_7c

    .line 1872
    :cond_61
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown argument: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; USAGE: [on|off|toggle|dblist]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_184

    :cond_7c
    :goto_7c
    const-string p0, "Please enter below instead:"

    .line 1868
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1869
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_184

    .line 1864
    :cond_95
    :goto_95
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHwManager:Lcom/android/server/desktopmode/HardwareManager;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/desktopmode/HardwareManager;->command(Ljava/io/PrintWriter;Ljava/lang/String;)I

    const-string p0, "Please enter below next time:"

    .line 1865
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1866
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_184

    .line 1806
    :cond_b3
    :goto_b3
    new-instance p1, Landroid/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p2, "DesktopModeService (dumpsys desktopmode):"

    .line 1807
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1808
    invoke-static {p1}, Lcom/android/server/desktopmode/Log;->dump(Ljava/io/PrintWriter;)V

    .line 1809
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInjector:Lcom/android/server/desktopmode/Injector;

    invoke-virtual {p2}, Lcom/android/server/desktopmode/Injector;->binderClearCallingIdentity()J

    move-result-wide p2

    .line 1810
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-static {p1, v0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->dumpApp(Landroid/util/IndentingPrintWriter;Landroid/content/ContentResolver;I)V

    .line 1811
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInjector:Lcom/android/server/desktopmode/Injector;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/desktopmode/Injector;->binderRestoreCallingIdentity(J)V

    .line 1812
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1813
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1814
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->dumpImpl(Landroid/util/IndentingPrintWriter;)V

    .line 1815
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1816
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    invoke-virtual {p2, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1817
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1818
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-virtual {p2, p1}, Lcom/android/server/desktopmode/DualModeChanger;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1819
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1820
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p2, p1}, Lcom/android/server/desktopmode/IStateManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1821
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1822
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPackageStateManager:Lcom/android/server/desktopmode/PackageStateManager;

    invoke-virtual {p2, p1}, Lcom/android/server/desktopmode/PackageStateManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1823
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1824
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    iget-object p3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-virtual {p2, p1, p3, v0}, Lcom/android/server/desktopmode/SettingsHelper;->dump(Landroid/util/IndentingPrintWriter;Landroid/content/ContentResolver;I)V

    .line 1825
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1826
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {p2, p1}, Lcom/android/server/desktopmode/UiManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1827
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1828
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSemDesktopModeStateNotifier:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    invoke-virtual {p2, p1}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1829
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1830
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mBlockerManager:Lcom/android/server/desktopmode/BlockerManager;

    invoke-virtual {p2, p1}, Lcom/android/server/desktopmode/BlockerManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1831
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1832
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHwManager:Lcom/android/server/desktopmode/HardwareManager;

    invoke-virtual {p2, p1}, Lcom/android/server/desktopmode/HardwareManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1833
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1834
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-virtual {p2, p1}, Lcom/android/server/desktopmode/TouchpadManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1835
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1836
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverStateManager:Lcom/android/server/desktopmode/CoverStateManager;

    invoke-virtual {p2, p1}, Lcom/android/server/desktopmode/CoverStateManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1837
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1838
    invoke-static {p1}, Lcom/android/server/desktopmode/ToastManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1839
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1840
    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeKillPolicyManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1841
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1842
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {p2, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1843
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1844
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDockManager:Lcom/android/server/desktopmode/DockManager;

    invoke-virtual {p2, p1}, Lcom/android/server/desktopmode/DockManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1845
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1846
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayPortStateManager:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-virtual {p2, p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1847
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_WIRELESS_DEX:Z

    if-eqz p2, :cond_181

    .line 1848
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1849
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWirelessDexManager:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-virtual {p2, p1}, Lcom/android/server/desktopmode/WirelessDexManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1850
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mBleAdvertiserServiceManager:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    if-eqz p2, :cond_175

    .line 1851
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1852
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mBleAdvertiserServiceManager:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    invoke-virtual {p2, p1}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1854
    :cond_175
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mMcfManager:Lcom/android/server/desktopmode/McfManager;

    if-eqz p2, :cond_181

    .line 1855
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1856
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mMcfManager:Lcom/android/server/desktopmode/McfManager;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/McfManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1859
    :cond_181
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_184
    :goto_184
    return-void
.end method

.method public final dumpImpl(Landroid/util/IndentingPrintWriter;)V
    .registers 6

    .line 1878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Configuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mUserRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUserRequest:I

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->userRequestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "welcomeCompleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "welcome_completed"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DISPLAY_SIZE_FORCED="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "display_size_forced"

    .line 1884
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1883
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DISPLAY_DENSITY_FORCED="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "display_density_forced"

    .line 1886
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1885
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SCREEN_OFF_TIMEOUT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    iget v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    const-string/jumbo v3, "screen_off_timeout"

    .line 1889
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1888
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHOW_IME_WITH_HARD_KEYBOARD="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    const-string/jumbo v2, "show_ime_with_hard_keyboard"

    .line 1892
    invoke-static {v1, v2, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1891
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final finishWelcomeActivity()V
    .registers 3

    .line 1514
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string v1, "finishWelcomeActivity()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    :cond_b
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v0, 0x12d

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/UiManager;->finishActivity(I)V

    return-void
.end method

.method public final getCurrentUiMode()I
    .registers 1

    .line 1357
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->getCurrentUiMode()I

    move-result p0

    return p0
.end method

.method public getCurrentUserId()I
    .registers 1

    .line 1539
    iget p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    return p0
.end method

.method public getDesktopModeKillPolicy()Landroid/os/Bundle;
    .registers 1

    .line 1580
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeKillPolicyManager;->getDesktopModeKillPolicy()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;
    .registers 1

    .line 1224
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p0

    return-object p0
.end method

.method public final getModeToModeChangeType()I
    .registers 4

    .line 1706
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    .line 1707
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_19

    .line 1708
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->getModeToModeChangeType()I

    move-result p0

    return p0

    .line 1709
    :cond_19
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v0

    const/16 v1, 0x66

    if-ne v0, v1, :cond_2c

    .line 1710
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DualModeChanger;->getModeToModeChangeType()I

    move-result p0

    return p0

    :cond_2c
    const/4 p0, -0x1

    return p0
.end method

.method public final getTouchpadSupportedFeatures()I
    .registers 4

    .line 1692
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    .line 1693
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChanger:Lcom/android/server/desktopmode/ModeChanger;

    instance-of v1, v1, Lcom/android/server/desktopmode/DualModeChanger;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-virtual {v1, v0}, Lcom/android/server/desktopmode/TouchpadManager;->isTouchpadFeatureAvailable(Lcom/android/server/desktopmode/State;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    .line 1696
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/TouchpadManager;->isSPenFeatureAvailable(Lcom/android/server/desktopmode/State;)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 v1, 0x3

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    .line 1700
    :cond_20
    :goto_20
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_3b

    sget-object p0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getTouchpadSupportedFeatures(), supportedFeatures="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    return v1
.end method

.method public final handleHdmiAutoEnter(Z)V
    .registers 7

    .line 1408
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->getCurrentUserId()I

    move-result v0

    if-nez v0, :cond_44

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isSystemReady()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_44

    :cond_d
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_3a

    .line 1412
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const-string/jumbo v4, "hdmi_auto_enter"

    invoke-static {p1, v4, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1414
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez p1, :cond_31

    .line 1415
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "hdmi_initial_connection_dialog_shown"

    invoke-static {p1, v4, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_31

    .line 1417
    invoke-virtual {p0, v0, v4, v1}, Lcom/android/server/desktopmode/DesktopModeService;->showInitialConnectionDialog(ILjava/lang/String;Z)V

    goto :goto_44

    :cond_31
    if-eqz v3, :cond_44

    .line 1421
    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/DesktopModeService;->setUserRequest(I)V

    .line 1422
    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    goto :goto_44

    :cond_3a
    new-array p1, v2, [I

    aput v0, p1, v1

    .line 1426
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->dismissDialog([I)V

    .line 1427
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->finishWelcomeActivity()V

    :cond_44
    :goto_44
    return-void
.end method

.method public final handlePogoAutoEnter(Z)V
    .registers 8

    .line 1432
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->getCurrentUserId()I

    move-result v0

    if-nez v0, :cond_55

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isSystemReady()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_55

    :cond_d
    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_4b

    .line 1436
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const-string/jumbo v4, "pogo_auto_enter"

    invoke-static {p1, v4, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1438
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1439
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "welcome_completed"

    invoke-static {v4, v5, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v3, :cond_34

    if-eqz v4, :cond_55

    .line 1443
    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/DesktopModeService;->setUserRequest(I)V

    .line 1444
    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    goto :goto_55

    :cond_34
    if-nez p1, :cond_55

    .line 1446
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "pogo_initial_connection_dialog_shown"

    invoke-static {p1, v3, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_55

    iget-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mAllowPogoInitialDialog:Z

    if-eqz p1, :cond_55

    if-nez v4, :cond_55

    .line 1449
    invoke-virtual {p0, v0, v3, v2}, Lcom/android/server/desktopmode/DesktopModeService;->showInitialConnectionDialog(ILjava/lang/String;Z)V

    goto :goto_55

    :cond_4b
    new-array p1, v2, [I

    aput v0, p1, v1

    .line 1454
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->dismissDialog([I)V

    .line 1455
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->finishWelcomeActivity()V

    :cond_55
    :goto_55
    return-void
.end method

.method public final handleWirelessDexEnter()V
    .registers 2

    .line 1460
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->getCurrentUserId()I

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isSystemReady()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_11

    :cond_d
    const/4 v0, 0x1

    .line 1463
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    :cond_11
    :goto_11
    return-void
.end method

.method public final initializeStates()V
    .registers 5

    .line 1135
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_24

    .line 1136
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUserSetupCompleteObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_12

    .line 1137
    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService$4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/DesktopModeService$4;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUserSetupCompleteObserver:Landroid/database/ContentObserver;

    .line 1147
    :cond_12
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUserSetupCompleteObserver:Landroid/database/ContentObserver;

    iget p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_2d

    .line 1150
    :cond_24
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBootComplete:Z

    if-eqz v0, :cond_2d

    .line 1151
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0}, Lcom/android/server/desktopmode/IStateManager;->notifyBootCompleted()V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public injectServices(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskManagerInternal;Lcom/android/server/desktopmode/BlockerManager;Lcom/android/server/desktopmode/EmergencyModeBlocker;Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/desktopmode/HardwareManager;Lcom/android/server/desktopmode/TouchpadManager;Lcom/android/server/desktopmode/CoverStateManager;Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/DockManager;Lcom/android/server/desktopmode/PackageStateManager;Landroid/app/StatusBarManager;Lcom/android/server/desktopmode/BootInitBlocker;Lcom/android/server/desktopmode/DisplayPortStateManager;Lcom/android/server/desktopmode/WirelessDexManager;Lcom/android/server/desktopmode/BleAdvertiserServiceManager;Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/StandaloneModeChanger;Lcom/android/server/desktopmode/McfManager;Lcom/samsung/android/knox/dex/DexManager;)V
    .registers 27
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object v0, p0

    move-object v1, p7

    move-object/from16 v2, p15

    move-object v3, p1

    .line 1101
    iput-object v3, v0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, p2

    .line 1102
    iput-object v3, v0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object v3, p3

    .line 1103
    iput-object v3, v0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-object v3, p4

    .line 1105
    iput-object v3, v0, Lcom/android/server/desktopmode/DesktopModeService;->mBlockerManager:Lcom/android/server/desktopmode/BlockerManager;

    move-object v3, p5

    .line 1106
    iput-object v3, v0, Lcom/android/server/desktopmode/DesktopModeService;->mEmergencyModeBlocker:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    move-object v3, p6

    .line 1107
    iput-object v3, v0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 1108
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    .line 1109
    iget-object v3, v0, Lcom/android/server/desktopmode/DesktopModeService;->mWelcomeCompletedSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    invoke-virtual {p7, v3}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    .line 1110
    iget-object v3, v0, Lcom/android/server/desktopmode/DesktopModeService;->mExternalDisplayModeListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    invoke-virtual {p7, v3}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    move-object v1, p8

    .line 1111
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mHwManager:Lcom/android/server/desktopmode/HardwareManager;

    move-object v1, p9

    .line 1112
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;

    move-object v1, p10

    .line 1113
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverStateManager:Lcom/android/server/desktopmode/CoverStateManager;

    move-object v1, p11

    .line 1114
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    move-object/from16 v1, p12

    .line 1115
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mDockManager:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v1, p13

    .line 1116
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mPackageStateManager:Lcom/android/server/desktopmode/PackageStateManager;

    move-object/from16 v1, p14

    .line 1117
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mStatusBarManager:Landroid/app/StatusBarManager;

    move-object/from16 v1, p19

    .line 1119
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

    move-object/from16 v3, p20

    .line 1120
    iput-object v3, v0, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    .line 1121
    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_STANDALONE:Z

    if-eqz v3, :cond_47

    const/4 v1, 0x0

    :cond_47
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChanger:Lcom/android/server/desktopmode/ModeChanger;

    if-eqz v2, :cond_50

    .line 1124
    iput-object v2, v0, Lcom/android/server/desktopmode/DesktopModeService;->mBootInitBlocker:Lcom/android/server/desktopmode/BootInitBlocker;

    .line 1125
    invoke-virtual/range {p15 .. p15}, Lcom/android/server/desktopmode/BootInitBlocker;->register()V

    :cond_50
    move-object/from16 v1, p16

    .line 1127
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayPortStateManager:Lcom/android/server/desktopmode/DisplayPortStateManager;

    move-object/from16 v1, p17

    .line 1128
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mWirelessDexManager:Lcom/android/server/desktopmode/WirelessDexManager;

    move-object/from16 v1, p18

    .line 1129
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mBleAdvertiserServiceManager:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    move-object/from16 v1, p21

    .line 1130
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mMcfManager:Lcom/android/server/desktopmode/McfManager;

    move-object/from16 v1, p22

    .line 1131
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mDexManager:Lcom/samsung/android/knox/dex/DexManager;

    return-void
.end method

.method public isAllowed()Z
    .registers 3

    .line 1237
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPreconditionChecker:Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;

    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1, v1}, Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;->isAllowed(Lcom/android/server/desktopmode/State;ZZ)Z

    move-result p0

    return p0
.end method

.method public final isAllowedInternal(Lcom/android/server/desktopmode/State;ZZ)Z
    .registers 5

    .line 1241
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPreconditionChecker:Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;->isAllowed(Lcom/android/server/desktopmode/State;ZZ)Z

    move-result p2

    if-eqz p2, :cond_a

    const/4 p0, 0x1

    return p0

    .line 1243
    :cond_a
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_WIRELESS_DEX:Z

    if-eqz p2, :cond_19

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isWirelessDexConnected()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 1244
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWirelessDexManager:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/WirelessDexManager;->disconnect()V

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public final isBlockerRegistered(Lcom/android/server/desktopmode/State;Z)Z
    .registers 7

    .line 1717
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mBlockerManager:Lcom/android/server/desktopmode/BlockerManager;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/BlockerManager;->getBlocker(Lcom/android/server/desktopmode/State;)Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 1721
    :cond_a
    sget-object v1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAllowed(showToast="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "), blocked by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_51

    .line 1724
    :try_start_2b
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    iget-object p2, v0, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;->blocker:Lcom/samsung/android/desktopmode/IDesktopModeBlocker;

    invoke-interface {p2}, Lcom/samsung/android/desktopmode/IDesktopModeBlocker;->onBlocked()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1725
    invoke-static {p1, v0}, Lcom/android/server/desktopmode/Log;->saveState(Lcom/android/server/desktopmode/State;Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_39} :catch_3a

    goto :goto_51

    :catch_3a
    move-exception p0

    .line 1727
    sget-object p1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get blocking message from blocker "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_51
    :goto_51
    const/4 p0, 0x0

    return p0
.end method

.method public final isConfigurationChangedFromDeX(Landroid/content/res/Configuration;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_53

    .line 1546
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    if-eqz v1, :cond_53

    .line 1547
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v1

    .line 1548
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->getConfigurationState(Landroid/content/res/Configuration;)I

    move-result p0

    .line 1550
    iget v2, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v3, 0x1e

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2c

    if-ne p0, v4, :cond_25

    iget v2, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2b

    :cond_25
    if-nez p0, :cond_2c

    iget p0, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne p0, v4, :cond_2c

    :cond_2b
    move v0, v4

    .line 1555
    :cond_2c
    sget-object p0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isConfigurationChangedFromDeX()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", config="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", desktopModeState="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    return v0
.end method

.method public isDesktopDockConnected()Z
    .registers 1

    .line 1199
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->getDockState()Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    move-result p0

    return p0
.end method

.method public isDesktopMode()Z
    .registers 2

    .line 1218
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public final isDesktopModeAvailable()Z
    .registers 2

    .line 1228
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPreconditionChecker:Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;

    const/4 v0, 0x1

    invoke-interface {p0, v0, v0}, Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;->isDesktopModeAvailableEx(ZZ)Z

    move-result p0

    return p0
.end method

.method public final isDesktopModeAvailableEx(ZZ)Z
    .registers 3

    .line 1232
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPreconditionChecker:Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;

    invoke-interface {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;->isDesktopModeAvailableEx(ZZ)Z

    move-result p0

    return p0
.end method

.method public final isDesktopModeEnablingOrEnabled()Z
    .registers 2

    .line 1250
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeEnablingOrEnabled(Lcom/android/server/desktopmode/State;I)Z

    move-result p0

    return p0
.end method

.method public final isDesktopModeForPreparing()Z
    .registers 2

    .line 1261
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeForPreparing(Lcom/android/server/desktopmode/State;I)Z

    move-result p0

    return p0
.end method

.method public final isDesktopModeForPreparing(I)Z
    .registers 2

    .line 1265
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeForPreparing(Lcom/android/server/desktopmode/State;I)Z

    move-result p0

    return p0
.end method

.method public isDeviceConnected()Z
    .registers 1

    .line 1208
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopDockConnectedOrForced(Lcom/android/server/desktopmode/State;)Z

    move-result p0

    return p0
.end method

.method public isExternalDisplayConnected()Z
    .registers 1

    .line 1295
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result p0

    return p0
.end method

.method public final isForcedInternalScreenModeEnabled()Z
    .registers 1

    .line 1277
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->isForcedInternalScreenModeEnabled()Z

    move-result p0

    return p0
.end method

.method public final isLockTaskModeEnabledAndSecured()Z
    .registers 1

    .line 1362
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChanger:Lcom/android/server/desktopmode/ModeChanger;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/desktopmode/ModeChanger;->isLockTaskModeEnabledAndSecured()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final isModeChangePending()Z
    .registers 2

    .line 1281
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->isModeChangePending(Lcom/android/server/desktopmode/State;I)Z

    move-result p0

    return p0
.end method

.method public final isModeChangePending(I)Z
    .registers 2

    .line 1285
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->isModeChangePending(Lcom/android/server/desktopmode/State;I)Z

    move-result p0

    return p0
.end method

.method public final isNeededStartConnectivityActivity(Lcom/android/server/desktopmode/State;I)Z
    .registers 4

    .line 1749
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_c

    sget-object p0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "isNeededStartConnectivityActivity()"

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    :cond_c
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_STANDALONE:Z

    const/4 v0, 0x0

    if-nez p0, :cond_29

    const/4 p0, 0x3

    if-eq p2, p0, :cond_29

    const/4 p0, 0x5

    if-eq p2, p0, :cond_29

    .line 1753
    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeService;->isExternalDisplayConnectedOrForced(Lcom/android/server/desktopmode/State;)Z

    move-result p0

    if-nez p0, :cond_29

    .line 1754
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(II)Z

    move-result p0

    if-eqz p0, :cond_29

    const/4 v0, 0x1

    :cond_29
    return v0
.end method

.method public final isSystemReady()Z
    .registers 4

    .line 1478
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBootComplete:Z

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_18

    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_18

    const/4 p0, 0x1

    return p0

    .line 1482
    :cond_18
    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSystemReady(), mIsBootComplete="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBootComplete:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isFactoryBinary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1483
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1482
    invoke-static {v0, p0}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final isUserSetupComplete()Z
    .registers 4

    .line 1467
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_f

    const/4 v2, 0x1

    :cond_f
    if-nez v2, :cond_1d

    .line 1471
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_1d

    sget-object p0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "isUserSetupComplete()=false"

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return v2
.end method

.method public final logDesktopModeChanged(Landroid/content/Intent;)V
    .registers 7

    const-string v0, "com.samsung.android.desktopmode.extra.DESKTOP_MODE_STATE"

    const/4 v1, -0x1

    .line 1519
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "com.samsung.android.desktopmode.extra.DESKTOP_MODE_SOURCE"

    .line 1521
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1523
    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EXTRA_DESKTOP_MODE_SOURCE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->sourceToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v3}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result v3

    if-eqz v3, :cond_68

    if-le p1, v1, :cond_68

    const/4 v1, 0x1

    if-ne v0, v1, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v1, 0x0

    .line 1527
    :goto_3a
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_58

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "logDesktopModeChanged("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    :cond_58
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_5f

    const-string v0, "LMTD"

    goto :goto_61

    :cond_5f
    const-string v0, "LDTM"

    .line 1529
    :goto_61
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 1528
    invoke-static {p0, v0, p1}, Lcom/android/server/desktopmode/DesktopModeLogger;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_68
    return-void
.end method

.method public final minimizeAllTasks(I)V
    .registers 3

    if-eqz p1, :cond_7

    .line 1634
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->saveTopTaskId(I)V

    .line 1636
    :cond_7
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->minimizeAllTasks(IZ)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    if-eqz p1, :cond_e

    .line 1343
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    if-eqz p0, :cond_e

    .line 1344
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_e
    return-void
.end method

.method public final onDesktopDisplayConfigured(Z)V
    .registers 2

    .line 1351
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->onDesktopDisplayConfigured(Z)V

    return-void
.end method

.method public final onSecuredAppLaunched(ILjava/lang/String;)V
    .registers 6

    .line 1741
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_23

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSecuredAppLaunched, taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", packageName= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    :cond_23
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isDexOnPcConnected()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1744
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/DualModeChanger;->onSecuredAppLaunched(ILjava/lang/String;)V

    :cond_34
    return-void
.end method

.method public onSecuredAppLaunched(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 5

    .line 1736
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityManagerService;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->onSecuredAppLaunched(ILjava/lang/String;)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1643
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_31

    .line 1644
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInjector:Lcom/android/server/desktopmode/Injector;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/Injector;->binderGetCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_19

    if-nez v0, :cond_11

    goto :goto_19

    .line 1646
    :cond_11
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller must be shell"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1648
    :cond_19
    :goto_19
    new-instance v0, Lcom/android/server/desktopmode/Shell;

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHwManager:Lcom/android/server/desktopmode/HardwareManager;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/desktopmode/Shell;-><init>(Landroid/content/ContentResolver;Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/HardwareManager;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    goto :goto_34

    .line 1651
    :cond_31
    invoke-super/range {p0 .. p6}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V

    :goto_34
    return-void
.end method

.method public final onUserChanged(I)V
    .registers 5

    .line 1188
    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    if-ne p1, v0, :cond_21

    .line 1189
    sget-object p0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUserChanged(), userId and mCurrentUserId are same("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1192
    :cond_21
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_3c

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserChanged(), userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    :cond_3c
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setCurrentUserId(I)V

    .line 1194
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->initializeStates()V

    return-void
.end method

.method public final onUserStarting(I)V
    .registers 4

    .line 1156
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_1b

    sget-object p0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStartUser(), userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    return-void
.end method

.method public final onUserStopped(I)V
    .registers 4

    .line 1178
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_1b

    sget-object p0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCleanupUser(), userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    return-void
.end method

.method public final onUserStopping(I)V
    .registers 4

    .line 1174
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_27

    sget-object p0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStopUser(), userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", CurrentUser="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    return-void
.end method

.method public final onUserSwitching(I)V
    .registers 5

    .line 1168
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSwitchUser(), userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onUserChanged(I)V

    return-void
.end method

.method public final onUserUnlocking(I)V
    .registers 5

    .line 1160
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_27

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnlockUser(), userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", CurrentUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const/4 v0, 0x1

    .line 1161
    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBootComplete:Z

    .line 1162
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-ne p1, v0, :cond_33

    .line 1163
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->onUserChanged(I)V

    :cond_33
    return-void
.end method

.method public registerBlocker(Lcom/samsung/android/desktopmode/IDesktopModeBlocker;Ljava/lang/String;)Z
    .registers 5

    .line 1321
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInjector:Lcom/android/server/desktopmode/Injector;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/Injector;->binderGetCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_11

    .line 1324
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mBlockerManager:Lcom/android/server/desktopmode/BlockerManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/BlockerManager;->registerBlocker(Lcom/samsung/android/desktopmode/IDesktopModeBlocker;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1322
    :cond_11
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only the system may call registerBlocker()"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerDesktopLauncher(Lcom/samsung/android/desktopmode/IDesktopModeLauncher;)V
    .registers 4

    .line 1585
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInjector:Lcom/android/server/desktopmode/Injector;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/Injector;->binderGetCallingUid()I

    move-result v0

    .line 1586
    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    if-eqz v1, :cond_e

    .line 1587
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    :cond_e
    if-eqz v0, :cond_1e

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_15

    goto :goto_1e

    .line 1595
    :cond_15
    sget-object p0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "registerDesktopLauncher() is blocked!!"

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 1591
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1592
    :try_start_21
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLauncherInterface:Lcom/samsung/android/desktopmode/IDesktopModeLauncher;

    .line 1593
    monitor-exit v0

    :goto_24
    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public registerDesktopModeListener(Lcom/samsung/android/desktopmode/IDesktopModeListener;Ljava/lang/String;)Z
    .registers 3

    .line 1316
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSemDesktopModeStateNotifier:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->registerDesktopModeListener(Lcom/samsung/android/desktopmode/IDesktopModeListener;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final removeNotification(I)V
    .registers 2

    .line 1370
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->removeNotification(I)V

    return-void
.end method

.method public final requestTileUpdate(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .registers 5

    if-eqz p1, :cond_12

    .line 297
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    .line 298
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_12

    :cond_10
    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    .line 299
    :goto_13
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopModeEnablingOrEnabled:Z

    if-eq v0, p1, :cond_33

    .line 300
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopModeEnablingOrEnabled:Z

    .line 301
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.desktopmode.uiservice"

    const-string v2, "com.sec.android.desktopmode.uiservice.DesktopModeTile"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Landroid/service/quicksettings/TileService;->requestListeningState(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 303
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/ComponentName;

    const-string v0, "com.sec.android.desktopmode.uiservice.DesktopDisplayDesktopModeTile"

    invoke-direct {p1, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroid/service/quicksettings/TileService;->requestListeningState(Landroid/content/Context;Landroid/content/ComponentName;)V

    :cond_33
    return-void
.end method

.method public scheduleUpdateDesktopMode(Z)V
    .registers 4

    .line 1374
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleUpdateDesktopMode(ZZ)V
    .registers 5

    .line 1378
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/DesktopModeService;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sendMessage(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6

    .line 1601
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.desktopmode.permission.BIND_DESKTOP_MODE_UI_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_26

    const-string v0, "command"

    .line 1604
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_5e

    .line 1606
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 1607
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v1

    .line 1610
    :cond_26
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5e

    .line 1613
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1614
    :try_start_33
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLauncherInterface:Lcom/samsung/android/desktopmode/IDesktopModeLauncher;
    :try_end_35
    .catchall {:try_start_33 .. :try_end_35} :catchall_5b

    if-eqz v2, :cond_51

    .line 1616
    :try_start_37
    invoke-interface {v2, p1}, Lcom/samsung/android/desktopmode/IDesktopModeLauncher;->sendMessage(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3b} :catch_3d
    .catchall {:try_start_37 .. :try_end_3b} :catchall_5b

    :try_start_3b
    monitor-exit v0

    return-object p0

    :catch_3d
    move-exception p1

    .line 1618
    sget-object v2, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendMessage(), Failed to communicate with launcher. Starting again..."

    invoke-static {v2, v3, p1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1620
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_59

    .line 1623
    :cond_51
    sget-object p0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendMessage(), mLauncherInterface == null"

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    :goto_59
    monitor-exit v0

    goto :goto_5e

    :catchall_5b
    move-exception p0

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_3b .. :try_end_5d} :catchall_5b

    throw p0

    :cond_5e
    :goto_5e
    return-object v1
.end method

.method public setCurrentUserId(I)V
    .registers 5

    .line 1182
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentUserId(), userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    :cond_1b
    iput p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    .line 1184
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0, p1}, Lcom/android/server/desktopmode/IStateManager;->setCurrentUserId(I)V

    return-void
.end method

.method public final setUserRequest(I)V
    .registers 4

    .line 1534
    iput p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUserRequest:I

    .line 1535
    sget-object p1, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "userRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUserRequest:I

    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->userRequestToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final shouldStayInDesktopMode(Lcom/android/server/desktopmode/State;)Z
    .registers 7

    .line 1772
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isHdmiConnected()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    const/16 v0, 0x66

    .line 1773
    invoke-static {p1, v0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeEnablingOrEnabled(Lcom/android/server/desktopmode/State;I)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v2

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    if-eqz v0, :cond_2a

    .line 1774
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDexManager:Lcom/samsung/android/knox/dex/DexManager;

    .line 1775
    invoke-virtual {v3}, Lcom/samsung/android/knox/dex/DexManager;->getHDMIAutoEnterState()I

    move-result v3

    if-ne v3, v2, :cond_2a

    .line 1776
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const p1, 0x1040436

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return v2

    :cond_2a
    if-eqz v0, :cond_50

    .line 1779
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->isDexStationConnectedWithFlipCover()Z

    move-result p1

    if-eqz p1, :cond_50

    .line 1780
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const v0, 0x1040441

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    const v4, 0x1040446

    .line 1782
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v1

    .line 1780
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return v2

    :cond_50
    return v1
.end method

.method public final showDialog(ILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .registers 3

    .line 1490
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/UiManager;->showDialog(ILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method public final showInitialConnectionDialog(ILjava/lang/String;Z)V
    .registers 5

    .line 1388
    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService$5;

    invoke-direct {v0, p0, p3, p2}, Lcom/android/server/desktopmode/DesktopModeService$5;-><init>(Lcom/android/server/desktopmode/DesktopModeService;ZLjava/lang/String;)V

    .line 1404
    invoke-virtual {p0, p1, v0}, Lcom/android/server/desktopmode/DesktopModeService;->showDialog(ILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method public final showNotification(I)V
    .registers 2

    .line 1366
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->showNotification(I)V

    return-void
.end method

.method public final startActivityInDesktopDisplay(Landroid/content/Intent;Lcom/android/server/desktopmode/State;)V
    .registers 5

    const/16 v0, 0x66

    .line 1664
    invoke-static {p2, v0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeEnablingOrEnabled(Lcom/android/server/desktopmode/State;I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1665
    invoke-interface {p2}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2e

    .line 1666
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    invoke-interface {p2}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result p2

    iget p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-static {v0, p1, p2, p0}, Lcom/android/server/desktopmode/DesktopModeService;->startActivityInDisplayAsUser(Landroid/content/Context;Landroid/content/Intent;II)V

    goto :goto_2e

    :cond_1b
    const/16 v0, 0x65

    .line 1669
    invoke-static {p2, v0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeEnablingOrEnabled(Lcom/android/server/desktopmode/State;I)Z

    move-result p2

    if-eqz p2, :cond_2e

    .line 1670
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public final startConnectivityActivity()V
    .registers 2

    const/4 v0, 0x0

    .line 1768
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->startConnectivityActivity(I)V

    return-void
.end method

.method public final startConnectivityActivity(I)V
    .registers 6

    .line 1758
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startConnectivityActivity()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    :cond_c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.desktopmode.uiservice"

    const-string v3, "com.sec.android.desktopmode.uiservice.activity.connectivity.ConnectivityActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x14200000

    .line 1761
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 1764
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    invoke-static {v1, v0, p1, p0}, Lcom/android/server/desktopmode/DesktopModeService;->startActivityInDisplayAsUser(Landroid/content/Context;Landroid/content/Intent;II)V

    return-void
.end method

.method public final startHome()V
    .registers 2

    .line 1562
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->startHome(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public final startHome(Lcom/android/server/desktopmode/State;)V
    .registers 5

    .line 1566
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    .line 1567
    iget v1, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_29

    .line 1569
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_1c

    .line 1570
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->startHome(Lcom/android/server/desktopmode/State;)V

    goto :goto_29

    .line 1571
    :cond_1c
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v0

    const/16 v1, 0x66

    if-ne v0, v1, :cond_29

    .line 1572
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->startHome(Lcom/android/server/desktopmode/State;)V

    :cond_29
    :goto_29
    return-void
.end method

.method public final startWelcomeActivity()V
    .registers 4

    .line 1500
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startWelcomeActivity()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    :cond_c
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "skip_welcome_screen"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1502
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x1

    const-string/jumbo v1, "welcome_completed"

    invoke-static {p0, v1, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_37

    .line 1505
    :cond_22
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWelcomeActivityListener:Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;

    if-nez v0, :cond_2e

    .line 1506
    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener-IA;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWelcomeActivityListener:Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;

    .line 1508
    :cond_2e
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    const/16 v1, 0x12d

    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWelcomeActivityListener:Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;

    invoke-virtual {v0, v2, v1, p0}, Lcom/android/server/desktopmode/UiManager;->startActivity(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    :goto_37
    return-void
.end method

.method public unregisterBlocker(Lcom/samsung/android/desktopmode/IDesktopModeBlocker;)Z
    .registers 4

    .line 1329
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInjector:Lcom/android/server/desktopmode/Injector;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/Injector;->binderGetCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_11

    .line 1332
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mBlockerManager:Lcom/android/server/desktopmode/BlockerManager;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/BlockerManager;->unregisterBlocker(Lcom/samsung/android/desktopmode/IDesktopModeBlocker;)Z

    move-result p0

    return p0

    .line 1330
    :cond_11
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only the system may call unregisterBlocker()"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterDesktopModeListener(Lcom/samsung/android/desktopmode/IDesktopModeListener;)Z
    .registers 2

    .line 1337
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSemDesktopModeStateNotifier:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->unregisterDesktopModeListener(Lcom/samsung/android/desktopmode/IDesktopModeListener;)Z

    move-result p0

    return p0
.end method

.method public final updateDesktopMode(Lcom/android/server/desktopmode/State;ZZ)V
    .registers 4

    .line 1382
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPreconditionChecker:Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/desktopmode/DesktopModeService$PreconditionChecker;->updateDesktopMode(Lcom/android/server/desktopmode/State;ZZ)Z

    move-result p0

    .line 1383
    invoke-static {p1, p2, p0}, Lcom/android/server/desktopmode/Log;->saveState(Lcom/android/server/desktopmode/State;ZZ)V

    return-void
.end method
