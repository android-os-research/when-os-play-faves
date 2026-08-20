.class public final Lcom/android/server/UiModeManagerService;
.super Lcom/android/server/SystemService;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/UiModeManagerService$LogWrapper;,
        Lcom/android/server/UiModeManagerService$Injector;,
        Lcom/android/server/UiModeManagerService$LocalService;,
        Lcom/android/server/UiModeManagerService$Shell;,
        Lcom/android/server/UiModeManagerService$ProjectionHolder;
    }
.end annotation


# static fields
.field public static final ENABLE_LAUNCH_DESK_DOCK_APP:Z = true

.field public static final KEY_SMART_SWITCH_TRANSFER_START:Ljava/lang/String; = "smartswitch_transfer_start_in_oobe"

.field public static final LOG:Z = false

.field public static final NANOS_PER_SECOND:J = 0x3b9aca00L

.field public static final SMART_SWITCH_TRANSFER_START_WITH_SETTING_BACKUP:I = 0x2

.field public static final SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYSTEM_PROPERTY_DEVICE_THEME:Ljava/lang/String; = "persist.sys.theme"

.field public static final TAG:Ljava/lang/String;

.field public static sFormatter:Ljava/time/format/DateTimeFormatter;


# instance fields
.field public final DEFAULT_CUSTOM_NIGHT_END_TIME:Ljava/time/LocalTime;

.field public final DEFAULT_CUSTOM_NIGHT_START_TIME:Ljava/time/LocalTime;

.field public mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mAutoModeChangeImmediately:Z

.field public final mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field public mCar:Z

.field public mCarModeEnableFlags:I

.field public mCarModeEnabled:Z

.field public mCarModeKeepsScreenOn:Z

.field public mCarModePackagePriority:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mCharging:Z

.field public mComputedNightMode:Z

.field public mConfiguration:Landroid/content/res/Configuration;

.field public mCurUiMode:I

.field public mCurrentUser:I

.field public mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

.field public mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

.field public final mCustomTimeListener:Landroid/app/AlarmManager$OnAlarmListener;

.field public final mDarkThemeObserver:Landroid/database/ContentObserver;

.field public mDefaultUiModeType:I

.field public mDeskModeKeepsScreenOn:Z

.field public mDesktopModeEnabled:Z

.field public final mDockModeReceiver:Landroid/content/BroadcastReceiver;

.field public mDockState:I

.field public mEnableCarDockLaunch:Z

.field public final mHandler:Landroid/os/Handler;

.field public mHoldingConfiguration:Z

.field public final mInjector:Lcom/android/server/UiModeManagerService$Injector;

.field public mIsNightModeRegistered:Z

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public mLastBedtimeRequestedNightMode:Z

.field public mLastBroadcastState:I

.field public mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field public final mLocalService:Lcom/android/server/UiModeManagerService$LocalService;

.field public final mLock:Ljava/lang/Object;

.field public mNightMode:I

.field public mNightModeCustomType:I

.field public mNightModeLocked:Z

.field public mNotificationManager:Landroid/app/NotificationManager;

.field public final mOnScreenOffHandler:Landroid/content/BroadcastReceiver;

.field public final mOnShutdown:Landroid/content/BroadcastReceiver;

.field public final mOnTimeChangedHandler:Landroid/content/BroadcastReceiver;

.field public mOverrideNightModeOff:Z

.field public mOverrideNightModeOn:Z

.field public mOverrideNightModeUser:I

.field public mPowerManager:Landroid/os/PowerManager;

.field public mPowerSave:Z

.field public mProjectionHolders:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/server/UiModeManagerService$ProjectionHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field public mProjectionListeners:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IOnProjectionStateChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mResultReceiver:Landroid/content/BroadcastReceiver;

.field public final mService:Landroid/app/IUiModeManager$Stub;

.field public mSetUiMode:I

.field public final mSettingsRestored:Landroid/content/BroadcastReceiver;

.field public mSetupWizardComplete:Z

.field public final mSetupWizardObserver:Landroid/database/ContentObserver;

.field public mStartDreamImmediatelyOnDock:Z

.field public mStatusBarManager:Landroid/app/StatusBarManager;

.field public mSystemReady:Z

.field public mTelevision:Z

.field public final mTwilightListener:Lcom/android/server/twilight/TwilightListener;

.field public mTwilightManager:Lcom/android/server/twilight/TwilightManager;

.field public mUiModeLocked:Z

.field public mVrHeadset:Z

.field public final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

.field public mWaitForScreenOff:Z

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mWatch:Z

.field public mWindowManager:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$PaBCfyaMPQ7iYMgwuzPhRDqgklY(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/UiModeManagerService;->lambda$onStart$1(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nBXoPX29oGtvKQx7QC8Jg06Ugmg(Lcom/android/server/UiModeManagerService;Landroid/os/PowerSaveState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService;->lambda$initPowerSave$2(Landroid/os/PowerSaveState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pevdTYO_WFhV2BTdsH_e7_A8u9Y(Lcom/android/server/UiModeManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService;->lambda$new$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityTaskManager(Lcom/android/server/UiModeManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAutoModeChangeImmediately(Lcom/android/server/UiModeManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/UiModeManagerService;->mAutoModeChangeImmediately:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCarModeEnabled(Lcom/android/server/UiModeManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCarModePackagePriority(Lcom/android/server/UiModeManagerService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmComputedNightMode(Lcom/android/server/UiModeManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConfiguration(Lcom/android/server/UiModeManagerService;)Landroid/content/res/Configuration;
    .registers 1

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentUser(Lcom/android/server/UiModeManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/UiModeManagerService;->mCurrentUser:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCustomAutoNightModeEndMilliseconds(Lcom/android/server/UiModeManagerService;)Ljava/time/LocalTime;
    .registers 1

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCustomAutoNightModeStartMilliseconds(Lcom/android/server/UiModeManagerService;)Ljava/time/LocalTime;
    .registers 1

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDockState(Lcom/android/server/UiModeManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$Injector;
    .registers 1

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mInjector:Lcom/android/server/UiModeManagerService$Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsNightModeRegistered(Lcom/android/server/UiModeManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/UiModeManagerService;->mIsNightModeRegistered:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNightModeCustomType(Lcom/android/server/UiModeManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNightModeLocked(Lcom/android/server/UiModeManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProjectionHolders(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProjectionListeners(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/UiModeManagerService;)Landroid/app/IUiModeManager$Stub;
    .registers 1

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/app/IUiModeManager$Stub;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSetupWizardComplete(Lcom/android/server/UiModeManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSetupWizardObserver(Lcom/android/server/UiModeManagerService;)Landroid/database/ContentObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUiModeLocked(Lcom/android/server/UiModeManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmAutoModeChangeImmediately(Lcom/android/server/UiModeManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mAutoModeChangeImmediately:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCharging(Lcom/android/server/UiModeManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmComputedNightMode(Lcom/android/server/UiModeManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCustomAutoNightModeEndMilliseconds(Lcom/android/server/UiModeManagerService;Ljava/time/LocalTime;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCustomAutoNightModeStartMilliseconds(Lcom/android/server/UiModeManagerService;Ljava/time/LocalTime;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDesktopModeEnabled(Lcom/android/server/UiModeManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mDesktopModeEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsNightModeRegistered(Lcom/android/server/UiModeManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mIsNightModeRegistered:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastBedtimeRequestedNightMode(Lcom/android/server/UiModeManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mLastBedtimeRequestedNightMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNightMode(Lcom/android/server/UiModeManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNightModeCustomType(Lcom/android/server/UiModeManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmOverrideNightModeOff(Lcom/android/server/UiModeManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmOverrideNightModeOn(Lcom/android/server/UiModeManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmOverrideNightModeUser(Lcom/android/server/UiModeManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeUser:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmProjectionHolders(Lcom/android/server/UiModeManagerService;Landroid/util/SparseArray;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmProjectionListeners(Lcom/android/server/UiModeManagerService;Landroid/util/SparseArray;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSetupWizardComplete(Lcom/android/server/UiModeManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmVrHeadset(Lcom/android/server/UiModeManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mVrHeadset:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWaitForScreenOff(Lcom/android/server/UiModeManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mWaitForScreenOff:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mapplyConfigurationExternallyLocked(Lcom/android/server/UiModeManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->applyConfigurationExternallyLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$massertLegit(Lcom/android/server/UiModeManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->assertLegit(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcanSetNightMode(Lcom/android/server/UiModeManagerService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->canSetNightMode()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcancelCustomAlarm(Lcom/android/server/UiModeManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->cancelCustomAlarm()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceProjectionTypePermissions(Lcom/android/server/UiModeManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->enforceProjectionTypePermissions(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetPackageName(Lcom/android/server/UiModeManagerService;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misSetupWizardAllowDarkMode(Lcom/android/server/UiModeManagerService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->isSetupWizardAllowDarkMode()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misWithInCustomScheduled(Lcom/android/server/UiModeManagerService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->isWithInCustomScheduled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monCustomTimeUpdated(Lcom/android/server/UiModeManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->onCustomTimeUpdated(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monProjectionStateChangedLocked(Lcom/android/server/UiModeManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->onProjectionStateChangedLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpersistComputedNightMode(Lcom/android/server/UiModeManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->persistComputedNightMode(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpersistNightMode(Lcom/android/server/UiModeManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->persistNightMode(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpersistNightModeOverrides(Lcom/android/server/UiModeManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->persistNightModeOverrides(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpersistNightModeSettingDB(Lcom/android/server/UiModeManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->persistNightModeSettingDB(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpopulateWithRelevantActivePackageNames(Lcom/android/server/UiModeManagerService;ILjava/util/List;)I
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/UiModeManagerService;->populateWithRelevantActivePackageNames(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mregisterScreenOffEventLocked(Lcom/android/server/UiModeManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->registerScreenOffEventLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterTimeChangeEvent(Lcom/android/server/UiModeManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->registerTimeChangeEvent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreleaseProjectionUnchecked(Lcom/android/server/UiModeManagerService;ILjava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/UiModeManagerService;->releaseProjectionUnchecked(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mresetNightModeOverrideLocked(Lcom/android/server/UiModeManagerService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->resetNightModeOverrideLocked()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetupWizardCompleteForCurrentUser(Lcom/android/server/UiModeManagerService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->setupWizardCompleteForCurrentUser()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mshouldApplyAutomaticChangesImmediately(Lcom/android/server/UiModeManagerService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->shouldApplyAutomaticChangesImmediately()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$munregisterScreenOffEventLocked(Lcom/android/server/UiModeManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->unregisterScreenOffEventLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munregisterTimeChangeEvent(Lcom/android/server/UiModeManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->unregisterTimeChangeEvent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateAfterBroadcastLocked(Lcom/android/server/UiModeManagerService;Ljava/lang/String;II)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/UiModeManagerService;->updateAfterBroadcastLocked(Ljava/lang/String;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateConfigurationLocked(Lcom/android/server/UiModeManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateCustomTimeLocked(Lcom/android/server/UiModeManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->updateCustomTimeLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateDockState(Lcom/android/server/UiModeManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->updateDockState(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateNightModeFromSettingsLocked(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Landroid/content/res/Resources;I)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/UiModeManagerService;->updateNightModeFromSettingsLocked(Landroid/content/Context;Landroid/content/res/Resources;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSystemProperties(Lcom/android/server/UiModeManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->updateSystemProperties()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mverifySetupWizardCompleted(Lcom/android/server/UiModeManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->verifySetupWizardCompleted()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smassertSingleProjectionType(I)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->assertSingleProjectionType(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smfromMilliseconds(J)Ljava/time/LocalTime;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/UiModeManagerService;->fromMilliseconds(J)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smisDeskDockState(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smtoMilliSeconds(Ljava/time/LocalTime;)J
    .registers 3

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->toMilliSeconds(Ljava/time/LocalTime;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static constructor <clinit>()V
    .registers 4

    .line 134
    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    .line 141
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    .line 142
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    const-string v0, "MM-dd HH:mm:ss.SSS"

    .line 233
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/server/UiModeManagerService;->sFormatter:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 245
    new-instance v0, Lcom/android/server/UiModeManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/UiModeManagerService$Injector;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;ZLcom/android/server/twilight/TwilightManager;Lcom/android/server/UiModeManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/android/server/twilight/TwilightManager;Lcom/android/server/UiModeManagerService$Injector;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 251
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 151
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 153
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 155
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    const/4 v0, 0x1

    .line 156
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const/4 v1, -0x1

    .line 157
    iput v1, p0, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    const/16 v1, 0x13

    .line 158
    invoke-static {v1, p1}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->DEFAULT_CUSTOM_NIGHT_START_TIME:Ljava/time/LocalTime;

    const/4 v2, 0x7

    .line 159
    invoke-static {v2, p1}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->DEFAULT_CUSTOM_NIGHT_END_TIME:Ljava/time/LocalTime;

    .line 160
    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    .line 161
    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    .line 163
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    .line 164
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 165
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    .line 166
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    .line 170
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mWaitForScreenOff:Z

    .line 179
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mLastBedtimeRequestedNightMode:Z

    .line 184
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mStartDreamImmediatelyOnDock:Z

    .line 186
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    .line 188
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    .line 190
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    .line 192
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    .line 193
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    .line 194
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 197
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 200
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    .line 216
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeUser:I

    .line 220
    new-instance v1, Lcom/android/server/UiModeManagerService$LocalService;

    invoke-direct {v1, p0}, Lcom/android/server/UiModeManagerService$LocalService;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mLocalService:Lcom/android/server/UiModeManagerService$LocalService;

    .line 231
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mAutoModeChangeImmediately:Z

    .line 232
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mIsNightModeRegistered:Z

    .line 241
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mDesktopModeEnabled:Z

    .line 270
    new-instance p1, Lcom/android/server/UiModeManagerService$1;

    invoke-direct {p1, p0}, Lcom/android/server/UiModeManagerService$1;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 289
    new-instance p1, Lcom/android/server/UiModeManagerService$2;

    invoke-direct {p1, p0}, Lcom/android/server/UiModeManagerService$2;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    .line 298
    new-instance p1, Lcom/android/server/UiModeManagerService$3;

    invoke-direct {p1, p0}, Lcom/android/server/UiModeManagerService$3;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 316
    new-instance p1, Lcom/android/server/UiModeManagerService$4;

    invoke-direct {p1, p0}, Lcom/android/server/UiModeManagerService$4;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    .line 338
    new-instance p1, Lcom/android/server/UiModeManagerService$5;

    invoke-direct {p1, p0}, Lcom/android/server/UiModeManagerService$5;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mOnScreenOffHandler:Landroid/content/BroadcastReceiver;

    .line 349
    new-instance p1, Lcom/android/server/UiModeManagerService$6;

    invoke-direct {p1, p0}, Lcom/android/server/UiModeManagerService$6;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mOnTimeChangedHandler:Landroid/content/BroadcastReceiver;

    .line 358
    new-instance p1, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mCustomTimeListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 364
    new-instance p1, Lcom/android/server/UiModeManagerService$7;

    invoke-direct {p1, p0}, Lcom/android/server/UiModeManagerService$7;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 376
    new-instance p1, Lcom/android/server/UiModeManagerService$8;

    invoke-direct {p1, p0, v0}, Lcom/android/server/UiModeManagerService$8;-><init>(Lcom/android/server/UiModeManagerService;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardObserver:Landroid/database/ContentObserver;

    .line 395
    new-instance p1, Lcom/android/server/UiModeManagerService$9;

    invoke-direct {p1, p0, v0}, Lcom/android/server/UiModeManagerService$9;-><init>(Lcom/android/server/UiModeManagerService;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mDarkThemeObserver:Landroid/database/ContentObserver;

    .line 507
    new-instance p1, Lcom/android/server/UiModeManagerService$10;

    invoke-direct {p1, p0}, Lcom/android/server/UiModeManagerService$10;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mOnShutdown:Landroid/content/BroadcastReceiver;

    .line 522
    new-instance p1, Lcom/android/server/UiModeManagerService$11;

    invoke-direct {p1, p0}, Lcom/android/server/UiModeManagerService$11;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mSettingsRestored:Landroid/content/BroadcastReceiver;

    .line 697
    new-instance p1, Lcom/android/server/UiModeManagerService$12;

    invoke-direct {p1, p0}, Lcom/android/server/UiModeManagerService$12;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/app/IUiModeManager$Stub;

    .line 252
    iget-object p1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 253
    iput-boolean p2, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    .line 254
    iput-object p3, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 255
    iput-object p4, p0, Lcom/android/server/UiModeManagerService;->mInjector:Lcom/android/server/UiModeManagerService$Injector;

    return-void
.end method

.method public static adjustTab(I)Ljava/lang/String;
    .registers 3

    .line 2214
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 2215
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_c

    goto :goto_1d

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1d
    return-object p0
.end method

.method public static assertSingleProjectionType(I)V
    .registers 2

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    if-eqz p0, :cond_d

    if-eqz v0, :cond_d

    return-void

    .line 1273
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must specify exactly one projection type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    .line 259
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10200000

    .line 261
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 2206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    sget-object v2, Lcom/android/server/UiModeManagerService;->sFormatter:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2207
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->adjustTab(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2208
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->adjustTab(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2209
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->adjustTab(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fromMilliseconds(J)Ljava/time/LocalTime;
    .registers 4

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    .line 658
    invoke-static {p0, p1}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method public static isDeskDockState(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const/4 v1, 0x3

    if-eq p0, v1, :cond_b

    const/4 v1, 0x4

    if-eq p0, v1, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    return v0
.end method

.method private synthetic lambda$initPowerSave$2(Landroid/os/PowerSaveState;)V
    .registers 4

    .line 543
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 544
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    iget-boolean p1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-ne v1, p1, :cond_b

    .line 545
    monitor-exit v0

    return-void

    .line 547
    :cond_b
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    .line 548
    iget-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz p1, :cond_15

    const/4 p1, 0x0

    .line 549
    invoke-virtual {p0, p1, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 551
    :cond_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    .line 359
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 360
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->updateCustomTimeLocked()V

    .line 361
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method private synthetic lambda$onStart$1(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 5

    .line 495
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 496
    :try_start_3
    const-class v1, Lcom/android/server/twilight/TwilightManager;

    invoke-virtual {p0, v1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/twilight/TwilightManager;

    if-eqz v1, :cond_f

    .line 497
    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    :cond_f
    const/4 v1, -0x2

    .line 498
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/UiModeManagerService;->updateNightModeFromSettingsLocked(Landroid/content/Context;Landroid/content/res/Resources;I)V

    .line 499
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->updateSystemProperties()V

    .line 500
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public static toMilliSeconds(Ljava/time/LocalTime;)J
    .registers 5

    .line 654
    invoke-virtual {p0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static toPackageNameList(Ljava/util/Collection;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/UiModeManagerService$ProjectionHolder;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1279
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/UiModeManagerService$ProjectionHolder;

    .line 1280
    invoke-static {v1}, Lcom/android/server/UiModeManagerService$ProjectionHolder;->-$$Nest$fgetmPackageName(Lcom/android/server/UiModeManagerService$ProjectionHolder;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1d
    return-object v0
.end method


# virtual methods
.method public final adjustStatusBarCarModeLocked()V
    .registers 10

    .line 2004
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2005
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v1, :cond_13

    const-string/jumbo v1, "statusbar"

    .line 2007
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 2015
    :cond_13
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v1, :cond_22

    .line 2016
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v2, :cond_1e

    const/high16 v2, 0x80000

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 2021
    :cond_22
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v1, :cond_31

    const-string/jumbo v1, "notification"

    .line 2023
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 2026
    :cond_31
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_a1

    .line 2027
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    const/16 v6, 0xa

    const/4 v7, 0x0

    if-eqz v2, :cond_9c

    .line 2028
    new-instance v2, Landroid/content/Intent;

    const-class v1, Lcom/android/internal/app/DisableCarModeActivity;

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2030
    new-instance v1, Landroid/app/Notification$Builder;

    sget-object v3, Lcom/android/internal/notification/SystemNotificationChannels;->CAR_MODE:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x1080a76

    .line 2032
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v3, 0x4

    .line 2033
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v3, 0x1

    .line 2034
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const-wide/16 v3, 0x0

    .line 2035
    invoke-virtual {v1, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    const v3, 0x106001c

    .line 2036
    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const v3, 0x10402a7

    .line 2039
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2038
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v3, 0x10402a6

    .line 2041
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2040
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    const/4 v1, 0x0

    const/high16 v3, 0x2000000

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 2046
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2043
    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2049
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 2050
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 2049
    invoke-virtual {p0, v7, v6, v0, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_a1

    .line 2052
    :cond_9c
    sget-object p0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v7, v6, p0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :cond_a1
    :goto_a1
    return-void
.end method

.method public final applyConfigurationExternallyLocked()V
    .registers 3

    .line 1785
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v0, v1, :cond_2a

    .line 1786
    iput v1, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    .line 1788
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->clearSnapshotCache()V

    .line 1790
    :try_start_f
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-interface {v0, p0}, Landroid/app/IActivityTaskManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_18} :catch_22
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_18} :catch_19

    goto :goto_2a

    :catch_19
    move-exception p0

    .line 1794
    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Activity does not have the "

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a

    :catch_22
    move-exception p0

    .line 1792
    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Failure communicating with activity manager"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2a
    :goto_2a
    return-void
.end method

.method public final assertLegit(Ljava/lang/String;)V
    .registers 4

    .line 1385
    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->doesPackageHaveCallingUid(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 1386
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caller claimed bogus packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final canSetNightMode()Z
    .registers 4

    .line 2099
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_sec_active_themepackage"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_34

    .line 2101
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_34

    .line 2104
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "current_theme_support_night_mode"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_2a

    goto :goto_2b

    :cond_2a
    move v1, v2

    :goto_2b
    if-nez v1, :cond_34

    .line 2107
    sget-object p0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string v0, "Cannot set night mode because current theme does not support night mode"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    :goto_34
    return v1
.end method

.method public final cancelCustomAlarm()V
    .registers 2

    .line 670
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mCustomTimeListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    return-void
.end method

.method public final computeCustomNightMode()Z
    .registers 3

    .line 1779
    invoke-static {}, Ljava/time/LocalTime;->now()Ljava/time/LocalTime;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    invoke-static {v0, v1, p0}, Landroid/util/TimeUtils;->isTimeBetween(Ljava/time/LocalTime;Ljava/time/LocalTime;Ljava/time/LocalTime;)Z

    move-result p0

    return p0
.end method

.method public final disableCarMode(IILjava/lang/String;)V
    .registers 8

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    move p1, v0

    goto :goto_9

    :cond_8
    move p1, v1

    .line 1549
    :goto_9
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez p2, :cond_1b

    move v3, v0

    goto :goto_1c

    :cond_1b
    move v3, v1

    :goto_1c
    if-nez v3, :cond_36

    if-eqz v2, :cond_32

    .line 1551
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    .line 1555
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    :cond_32
    if-eqz p1, :cond_35

    goto :goto_36

    :cond_35
    move v0, v1

    :cond_36
    :goto_36
    if-eqz v0, :cond_98

    .line 1560
    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableCarMode: disabling, priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_8c

    .line 1563
    new-instance p1, Landroid/util/ArraySet;

    iget-object p2, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    .line 1564
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1565
    iget-object p2, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 1567
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_98

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 1568
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p3, p2}, Lcom/android/server/UiModeManagerService;->notifyCarModeDisabled(ILjava/lang/String;)V

    goto :goto_6c

    .line 1571
    :cond_8c
    iget-object p1, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1572
    invoke-virtual {p0, p2, p3}, Lcom/android/server/UiModeManagerService;->notifyCarModeDisabled(ILjava/lang/String;)V

    :cond_98
    return-void
.end method

.method public final doesPackageHaveCallingUid(Ljava/lang/String;)Z
    .registers 7

    .line 1391
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mInjector:Lcom/android/server/UiModeManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService$Injector;->getCallingUid()I

    move-result v0

    .line 1392
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1393
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x0

    .line 1395
    :try_start_f
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_1b} :catch_27
    .catchall {:try_start_f .. :try_end_1b} :catchall_22

    if-ne p0, v0, :cond_1e

    const/4 v4, 0x1

    .line 1400
    :cond_1e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_22
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1401
    throw p0

    .line 1400
    :catch_27
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4
.end method

.method public dumpImpl(Ljava/io/PrintWriter;)V
    .registers 6

    .line 1447
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "Current UI Mode Service state:"

    .line 1448
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  mDockState="

    .line 1449
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " mLastBroadcastState="

    .line 1450
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    const-string v1, " mStartDreamImmediatelyOnDock="

    .line 1452
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mStartDreamImmediatelyOnDock:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, "  mNightMode="

    .line 1454
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1455
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    iget v2, p0, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    invoke-static {v1, v2}, Lcom/android/server/UiModeManagerService$Shell;->-$$Nest$smnightModeToStr(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ") "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " mOverrideOn/Off="

    .line 1456
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, "/"

    .line 1457
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mNightModeLocked="

    .line 1459
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string v1, "  mCarModeEnabled="

    .line 1461
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " (carModeApps="

    .line 1462
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1463
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1464
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v3, ":"

    .line 1465
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1466
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " "

    .line 1467
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7c

    :cond_a3
    const-string v1, ""

    .line 1469
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, " waitScreenOff="

    .line 1470
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mWaitForScreenOff:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mComputedNightMode="

    .line 1471
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " customStart="

    .line 1472
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v1, " customEnd"

    .line 1473
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v1, " mCarModeEnableFlags="

    .line 1474
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " mEnableCarDockLaunch="

    .line 1475
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string v1, "  mCurUiMode=0x"

    .line 1477
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " mUiModeLocked="

    .line 1478
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mSetUiMode=0x"

    .line 1479
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  mHoldingConfiguration="

    .line 1481
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mSystemReady="

    .line 1482
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1484
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v1, :cond_130

    const-string v1, "  mTwilightService.getLastTwilightState()="

    .line 1486
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1487
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v1}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_130
    const/16 v1, 0x56

    .line 1490
    sget-object v2, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string v3, "SavedLogsStart"

    invoke-static {v1, v2, v3}, Lcom/android/server/UiModeManagerService;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1491
    invoke-static {}, Lcom/android/server/UiModeManagerService$LogWrapper;->getLogText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v1, "  mDesktopModeEnabled="

    .line 1494
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/UiModeManagerService;->mDesktopModeEnabled:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1496
    monitor-exit v0

    return-void

    :catchall_150
    move-exception p0

    monitor-exit v0
    :try_end_152
    .catchall {:try_start_3 .. :try_end_152} :catchall_150

    throw p0
.end method

.method public final enableCarMode(ILjava/lang/String;)V
    .registers 6

    .line 1588
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 1589
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v0, :cond_3f

    if-nez v1, :cond_3f

    .line 1591
    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableCarMode: enabled at priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1594
    invoke-virtual {p0, p1, p2}, Lcom/android/server/UiModeManagerService;->notifyCarModeEnabled(ILjava/lang/String;)V

    goto :goto_5a

    .line 1596
    :cond_3f
    sget-object p0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableCarMode: car mode at priority "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " already enabled."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5a
    return-void
.end method

.method public final enforceProjectionTypePermissions(I)V
    .registers 3

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_10

    .line 1263
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "android.permission.TOGGLE_AUTOMOTIVE_PROJECTION"

    const-string/jumbo v0, "toggleProjection"

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method public final getComputedUiModeConfiguration(I)I
    .registers 3

    .line 1771
    iget-boolean p0, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    if-eqz p0, :cond_7

    const/16 v0, 0x20

    goto :goto_9

    :cond_7
    const/16 v0, 0x10

    :goto_9
    or-int/2addr p1, v0

    if-eqz p0, :cond_f

    const/16 p0, -0x11

    goto :goto_11

    :cond_f
    const/16 p0, -0x21

    :goto_11
    and-int/2addr p0, p1

    return p0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 562
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method public final getCustomTimeToMinute(Ljava/time/LocalTime;)J
    .registers 2

    .line 2189
    invoke-virtual {p1}, Ljava/time/LocalTime;->getHour()I

    move-result p0

    mul-int/lit8 p0, p0, 0x3c

    invoke-virtual {p1}, Ljava/time/LocalTime;->getMinute()I

    move-result p1

    add-int/2addr p0, p1

    int-to-long p0, p0

    return-wide p0
.end method

.method public final getCustomTimeToNano(J)J
    .registers 5

    const-wide/16 v0, 0x3c

    mul-long/2addr p1, v0

    const-wide/32 v0, 0x3b9aca00

    mul-long/2addr p1, v0

    return-wide p1
.end method

.method public final getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .registers 3

    .line 1816
    invoke-virtual {p2}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p0

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p0

    .line 1819
    invoke-virtual {p0, p2}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result p1

    if-eqz p1, :cond_14

    const-wide/16 p1, 0x1

    invoke-virtual {p0, p1, p2}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object p0

    :cond_14
    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .registers 4

    .line 2198
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-interface {p0, v0}, Landroid/app/IActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    .line 2200
    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in getPackageNameFromAppProcesses : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "none"

    return-object p0
.end method

.method public getService()Landroid/app/IUiModeManager;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 557
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/app/IUiModeManager$Stub;

    return-object p0
.end method

.method public final initPowerSave()V
    .registers 4

    .line 539
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    const/16 v1, 0x10

    .line 540
    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    .line 542
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    new-instance v2, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/UiModeManagerService;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public final isCarModeEnabled()Z
    .registers 1

    .line 1622
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mCarModePackagePriority:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final isMinimalBatteryUseEnabled(Landroid/content/Context;)Z
    .registers 3

    .line 2181
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "minimal_battery_use"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_10

    move v0, p1

    :cond_10
    return v0
.end method

.method public final isSetDarkTheme()Z
    .registers 4

    .line 2176
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "display_night_theme"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_14

    move v1, v0

    :cond_14
    return v1
.end method

.method public final isSetupWizardAllowDarkMode()Z
    .registers 3

    .line 580
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "smartswitch_transfer_start_in_oobe"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method public final isWithInCustomScheduled()Z
    .registers 3

    .line 2185
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->computeCustomNightMode()Z

    move-result v0

    iget-boolean p0, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    xor-int/2addr p0, v0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public final notifyCarModeDisabled(ILjava/lang/String;)V
    .registers 5

    .line 1610
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.EXIT_CAR_MODE_PRIORITIZED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.app.extra.CALLING_PACKAGE"

    .line 1611
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.app.extra.PRIORITY"

    .line 1612
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1613
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string p2, "android.permission.HANDLE_CAR_MODE_CHANGES"

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public final notifyCarModeEnabled(ILjava/lang/String;)V
    .registers 5

    .line 1602
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.ENTER_CAR_MODE_PRIORITIZED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.app.extra.CALLING_PACKAGE"

    .line 1603
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.app.extra.PRIORITY"

    .line 1604
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1605
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string p2, "android.permission.HANDLE_CAR_MODE_CHANGES"

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public onBootPhase(I)V
    .registers 7

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_c0

    .line 431
    iget-object p1, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 432
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    .line 433
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    .line 434
    const-class v2, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string/jumbo v2, "power"

    .line 435
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/16 v3, 0x1a

    .line 436
    sget-object v4, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 437
    const-class v2, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 438
    const-class v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 439
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 440
    const-class v2, Lcom/android/server/twilight/TwilightManager;

    invoke-virtual {p0, v2}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/twilight/TwilightManager;

    if-eqz v2, :cond_5b

    .line 441
    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 442
    :cond_5b
    const-class v2, Landroid/os/PowerManagerInternal;

    .line 443
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManagerInternal;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 444
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->initPowerSave()V

    .line 445
    iget v2, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_6f

    goto :goto_70

    :cond_6f
    move v1, v4

    :goto_70
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 446
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->registerVrStateListener()V

    .line 448
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "ui_night_mode"

    .line 449
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mDarkThemeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 451
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 453
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 454
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 455
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mSettingsRestored:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.os.action.SETTING_RESTORED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 457
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mOnShutdown:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 459
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    .line 460
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->applyConfigurationExternallyLocked()V

    .line 461
    monitor-exit p1

    goto :goto_c0

    :catchall_bd
    move-exception p0

    monitor-exit p1
    :try_end_bf
    .catchall {:try_start_7 .. :try_end_bf} :catchall_bd

    throw p0

    :cond_c0
    :goto_c0
    return-void
.end method

.method public final onCustomTimeUpdated(I)V
    .registers 3

    .line 1436
    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->persistNightMode(I)V

    .line 1437
    iget p1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_9

    return-void

    .line 1438
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->shouldApplyAutomaticChangesImmediately()Z

    move-result p1

    if-nez p1, :cond_1a

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->isWithInCustomScheduled()Z

    move-result p1

    if-eqz p1, :cond_16

    goto :goto_1a

    .line 1442
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->registerScreenOffEventLocked()V

    goto :goto_21

    .line 1439
    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->unregisterScreenOffEventLocked()V

    const/4 p1, 0x0

    .line 1440
    invoke-virtual {p0, p1, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    :goto_21
    return-void
.end method

.method public final onProjectionStateChangedLocked(I)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1407
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    move v1, v0

    .line 1410
    :goto_7
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4b

    .line 1411
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    and-int v3, p1, v2

    if-eqz v3, :cond_48

    .line 1415
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mProjectionListeners:Landroid/util/SparseArray;

    .line 1416
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallbackList;

    .line 1417
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1419
    invoke-virtual {p0, v2, v4}, Lcom/android/server/UiModeManagerService;->populateWithRelevantActivePackageNames(ILjava/util/List;)I

    move-result v2

    .line 1421
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    move v6, v0

    :goto_2f
    if-ge v6, v5, :cond_45

    .line 1424
    :try_start_31
    invoke-virtual {v3, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Landroid/app/IOnProjectionStateChangedListener;

    invoke-interface {v7, v2, v4}, Landroid/app/IOnProjectionStateChangedListener;->onProjectionStateChanged(ILjava/util/List;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3a} :catch_3b

    goto :goto_42

    .line 1427
    :catch_3b
    sget-object v7, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string v8, "Failed a call to onProjectionStateChanged()."

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_42
    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    .line 1430
    :cond_45
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_4b
    return-void
.end method

.method public onStart()V
    .registers 7

    .line 467
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 470
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->verifySetupWizardCompleted()V

    .line 472
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11101c4

    .line 473
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mStartDreamImmediatelyOnDock:Z

    const v2, 0x10e0065

    .line 475
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const v2, 0x10e0070

    .line 477
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/UiModeManagerService;->mDefaultUiModeType:I

    const v2, 0x10e004c

    .line 479
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_33

    move v2, v4

    goto :goto_34

    :cond_33
    move v2, v3

    :goto_34
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    const v2, 0x10e0074

    .line 481
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-ne v2, v4, :cond_41

    move v2, v4

    goto :goto_42

    :cond_41
    move v2, v3

    :goto_42
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    const v2, 0x1110132

    .line 483
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    const v2, 0x111017d

    .line 485
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    const v2, 0x111017c

    .line 486
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mNightModeLocked:Z

    .line 487
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v5, "android.hardware.type.television"

    .line 488
    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_73

    const-string v5, "android.software.leanback"

    .line 489
    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_74

    :cond_73
    move v3, v4

    :cond_74
    iput-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mTelevision:Z

    const-string v3, "android.hardware.type.automotive"

    .line 490
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mCar:Z

    const-string v3, "android.hardware.type.watch"

    .line 491
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mWatch:Z

    .line 494
    new-instance v2, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Landroid/content/res/Resources;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".onStart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 503
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mService:Landroid/app/IUiModeManager$Stub;

    const-string/jumbo v1, "uimode"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 504
    const-class v0, Lcom/android/server/UiModeManagerInternal;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLocalService:Lcom/android/server/UiModeManagerService$LocalService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 413
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p2

    iput p2, p0, Lcom/android/server/UiModeManagerService;->mCurrentUser:I

    .line 414
    iget p2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-nez p2, :cond_11

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->persistComputedNightMode(I)V

    :cond_11
    return-void
.end method

.method public final persistComputedNightMode(I)V
    .registers 4

    .line 517
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 518
    iget-boolean p0, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    const-string/jumbo v1, "ui_night_mode_last_computed"

    .line 517
    invoke-static {v0, v1, p0, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public final persistNightMode(I)V
    .registers 6

    .line 1651
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-nez v0, :cond_50

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCar:Z

    if-eqz v0, :cond_9

    goto :goto_50

    .line 1652
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const-string/jumbo v2, "ui_night_mode"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1654
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    int-to-long v1, v1

    const-string/jumbo v3, "ui_night_mode_custom_type"

    invoke-static {v0, v3, v1, v2, p1}, Landroid/provider/Settings$Secure;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    .line 1657
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    .line 1659
    invoke-virtual {p0, v1}, Lcom/android/server/UiModeManagerService;->getCustomTimeToMinute(Ljava/time/LocalTime;)J

    move-result-wide v1

    const-string v3, "display_night_theme_on_time"

    .line 1657
    invoke-static {v0, v3, v1, v2, p1}, Landroid/provider/Settings$System;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    .line 1660
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    .line 1662
    invoke-virtual {p0, v1}, Lcom/android/server/UiModeManagerService;->getCustomTimeToMinute(Ljava/time/LocalTime;)J

    move-result-wide v1

    const-string p0, "display_night_theme_off_time"

    .line 1660
    invoke-static {v0, p0, v1, v2, p1}, Landroid/provider/Settings$System;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    :cond_50
    :goto_50
    return-void
.end method

.method public final persistNightModeOverrides(I)V
    .registers 5

    .line 1675
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-nez v0, :cond_29

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCar:Z

    if-eqz v0, :cond_9

    goto :goto_29

    .line 1676
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1677
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    const-string/jumbo v2, "ui_night_mode_override_on"

    .line 1676
    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1678
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1679
    iget-boolean p0, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    const-string/jumbo v1, "ui_night_mode_override_off"

    .line 1678
    invoke-static {v0, v1, p0, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_29
    :goto_29
    return-void
.end method

.method public final persistNightModeSettingDB(I)V
    .registers 8

    .line 2115
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const-string v1, "display_night_theme_scheduled"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5f

    const-string v4, "display_night_theme"

    if-eq v0, v3, :cond_46

    const/4 v5, 0x2

    if-eq v0, v5, :cond_2d

    const/4 v4, 0x3

    if-eq v0, v4, :cond_13

    goto :goto_86

    .line 2145
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, v3, :cond_86

    .line 2147
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v3, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_86

    .line 2124
    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v3, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2126
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2128
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    goto :goto_86

    .line 2117
    :cond_46
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v2, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2119
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2121
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    goto :goto_86

    .line 2131
    :cond_5f
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, v3, :cond_78

    .line 2133
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v3, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2136
    :cond_78
    iget-object p1, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/UiModeManagerService$13;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$13;-><init>(Lcom/android/server/UiModeManagerService;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2142
    iput-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mAutoModeChangeImmediately:Z

    :cond_86
    :goto_86
    return-void
.end method

.method public final populateWithRelevantActivePackageNames(ILjava/util/List;)I
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1295
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 1297
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    move v0, v1

    .line 1298
    :goto_9
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 1299
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1300
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    and-int v4, p1, v2

    if-eqz v4, :cond_2e

    .line 1302
    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->toPackageNameList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2e

    or-int/2addr v0, v2

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_31
    move v1, v0

    :cond_32
    return v1
.end method

.method public final registerScreenOffEventLocked()V
    .registers 3

    .line 662
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 663
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mWaitForScreenOff:Z

    .line 664
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 666
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mOnScreenOffHandler:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final registerTimeChangeEvent()V
    .registers 3

    .line 683
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 685
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 686
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mOnTimeChangedHandler:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final registerVrStateListener()V
    .registers 4

    const-string/jumbo v0, "vrmanager"

    .line 2086
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 2090
    :try_start_d
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v0, p0}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    goto :goto_2a

    :catch_13
    move-exception p0

    .line 2093
    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to register VR mode state listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    :goto_2a
    return-void
.end method

.method public final releaseProjectionUnchecked(ILjava/lang/String;)Z
    .registers 10

    .line 1313
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1315
    :try_start_4
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mProjectionHolders:Landroid/util/SparseArray;

    if-eqz v2, :cond_55

    .line 1316
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_55

    .line 1319
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_16
    if-ltz v3, :cond_55

    .line 1320
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/UiModeManagerService$ProjectionHolder;

    .line 1321
    invoke-static {v5}, Lcom/android/server/UiModeManagerService$ProjectionHolder;->-$$Nest$fgetmPackageName(Lcom/android/server/UiModeManagerService$ProjectionHolder;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 1322
    invoke-static {v5}, Lcom/android/server/UiModeManagerService$ProjectionHolder;->-$$Nest$munlinkToDeath(Lcom/android/server/UiModeManagerService$ProjectionHolder;)V

    .line 1323
    sget-object v1, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Projection type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " released by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v1, v4

    :cond_52
    add-int/lit8 v3, v3, -0x1

    goto :goto_16

    :cond_55
    if-eqz v1, :cond_5b

    .line 1332
    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->onProjectionStateChangedLocked(I)V

    goto :goto_79

    .line 1334
    :cond_5b
    sget-object p0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " tried to release projection type "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but was not set by that package."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    :goto_79
    monitor-exit v0

    return v1

    :catchall_7b
    move-exception p0

    .line 1338
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_4 .. :try_end_7d} :catchall_7b

    throw p0
.end method

.method public final resetNightModeOverrideLocked()Z
    .registers 3

    .line 2075
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    const/4 v1, 0x0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    if-eqz v0, :cond_a

    goto :goto_b

    :cond_a
    return v1

    .line 2076
    :cond_b
    :goto_b
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    .line 2077
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    .line 2078
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeUser:I

    invoke-virtual {p0, v0}, Lcom/android/server/UiModeManagerService;->persistNightModeOverrides(I)V

    .line 2079
    iput v1, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeUser:I

    const/4 p0, 0x1

    return p0
.end method

.method public final scheduleNextCustomTimeListener()V
    .registers 9

    .line 1805
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->cancelCustomAlarm()V

    .line 1806
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1807
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->computeCustomNightMode()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1809
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/UiModeManagerService;->getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_1a

    .line 1810
    :cond_14
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/UiModeManagerService;->getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1811
    :goto_1a
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    .line 1812
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x1

    sget-object v5, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/UiModeManagerService;->mCustomTimeListener:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method public final sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V
    .registers 19

    move-object/from16 v1, p0

    const-string v2, "Could not start dock app: "

    const/4 v3, 0x0

    .line 1961
    iput-boolean v3, v1, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 1962
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    if-eqz p1, :cond_82

    .line 1974
    invoke-static/range {p1 .. p1}, Lcom/android/server/UiModeManagerService;->buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    .line 1975
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v15}, Landroid/service/dreams/Sandman;->shouldStartDockApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 1977
    :try_start_1a
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v4

    const/4 v5, 0x0

    .line 1978
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v6

    .line 1979
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v14, v1, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_36} :catch_6c

    const/4 v0, 0x0

    const/16 v16, -0x2

    move-object v8, v15

    move-object v3, v15

    move-object v15, v0

    .line 1977
    :try_start_3c
    invoke-interface/range {v4 .. v16}, Landroid/app/IActivityTaskManager;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v0

    .line 1981
    invoke-static {v0}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v4

    if-eqz v4, :cond_49

    const/4 v0, 0x1

    move v3, v0

    goto :goto_83

    :cond_49
    const/16 v4, -0x5b

    if-eq v0, v4, :cond_82

    .line 1984
    sget-object v4, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", startActivityWithConfig result "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_69} :catch_6a

    goto :goto_82

    :catch_6a
    move-exception v0

    goto :goto_6e

    :catch_6c
    move-exception v0

    move-object v3, v15

    .line 1988
    :goto_6e
    sget-object v4, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_82
    :goto_82
    const/4 v3, 0x0

    .line 1994
    :goto_83
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->applyConfigurationExternallyLocked()V

    if-eqz p1, :cond_9d

    if-nez v3, :cond_9d

    .line 1997
    iget-boolean v0, v1, Lcom/android/server/UiModeManagerService;->mStartDreamImmediatelyOnDock:Z

    if-nez v0, :cond_96

    iget-object v0, v1, Lcom/android/server/UiModeManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1998
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 1999
    :cond_96
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/Sandman;->startDreamWhenDockedIfAppropriate(Landroid/content/Context;)V

    :cond_9d
    return-void
.end method

.method public final sendForegroundBroadcastToAllUsers(Ljava/lang/String;)V
    .registers 3

    .line 1920
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000000

    .line 1921
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1920
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public setCarModeLocked(ZIILjava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_6

    .line 1515
    invoke-virtual {p0, p3, p4}, Lcom/android/server/UiModeManagerService;->enableCarMode(ILjava/lang/String;)V

    goto :goto_9

    .line 1517
    :cond_6
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/UiModeManagerService;->disableCarMode(IILjava/lang/String;)V

    .line 1519
    :goto_9
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->isCarModeEnabled()Z

    move-result p1

    .line 1521
    iget-boolean p3, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eq p3, p1, :cond_21

    .line 1522
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-nez p1, :cond_21

    .line 1525
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 1527
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const/4 p4, -0x2

    .line 1526
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/UiModeManagerService;->updateNightModeFromSettingsLocked(Landroid/content/Context;Landroid/content/res/Resources;I)V

    .line 1531
    :cond_21
    iput p2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    return-void
.end method

.method public final setupWizardCompleteForCurrentUser()Z
    .registers 4

    .line 586
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "user_setup_complete"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_15

    move v1, v0

    :cond_15
    return v1
.end method

.method public final shouldApplyAutomaticChangesImmediately()Z
    .registers 3

    .line 1800
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCar:Z

    const/4 v1, 0x1

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_13

    iget p0, p0, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    if-ne p0, v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :cond_13
    :goto_13
    return v1
.end method

.method public final unregisterScreenOffEventLocked()V
    .registers 2

    const/4 v0, 0x0

    .line 674
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mWaitForScreenOff:Z

    .line 676
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mOnScreenOffHandler:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_c} :catch_c

    :catch_c
    return-void
.end method

.method public final unregisterTimeChangeEvent()V
    .registers 2

    .line 691
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mOnTimeChangedHandler:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method

.method public final updateAfterBroadcastLocked(Ljava/lang/String;II)V
    .registers 5

    .line 1927
    sget-object v0, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1930
    iget-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    if-eqz p1, :cond_29

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_29

    const-string p1, "android.intent.category.CAR_DOCK"

    goto :goto_2a

    .line 1934
    :cond_13
    sget-object v0, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_29

    const-string p1, "android.intent.category.DESK_DOCK"

    goto :goto_2a

    :cond_22
    and-int/lit8 p1, p3, 0x1

    if-eqz p1, :cond_29

    const-string p1, "android.intent.category.HOME"

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    .line 1956
    :goto_2a
    invoke-virtual {p0, p1}, Lcom/android/server/UiModeManagerService;->sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V

    return-void
.end method

.method public final updateComputedNightModeLocked(Z)V
    .registers 4

    .line 2059
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 2060
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_21

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    goto :goto_21

    .line 2063
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    if-eqz v0, :cond_14

    if-nez p1, :cond_14

    .line 2064
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    return-void

    .line 2067
    :cond_14
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    if-eqz v0, :cond_1e

    if-eqz p1, :cond_1e

    const/4 p1, 0x0

    .line 2068
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    return-void

    .line 2071
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->resetNightModeOverrideLocked()Z

    :cond_21
    :goto_21
    return-void
.end method

.method public final updateConfigurationLocked()V
    .registers 8

    .line 1683
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDefaultUiModeType:I

    .line 1684
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mUiModeLocked:Z

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz v1, :cond_9

    goto :goto_2f

    .line 1688
    :cond_9
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mDesktopModeEnabled:Z

    if-eqz v1, :cond_f

    :goto_d
    move v0, v3

    goto :goto_2f

    .line 1692
    :cond_f
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mTelevision:Z

    if-eqz v1, :cond_15

    const/4 v0, 0x4

    goto :goto_2f

    .line 1694
    :cond_15
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mWatch:Z

    if-eqz v1, :cond_1b

    const/4 v0, 0x6

    goto :goto_2f

    .line 1696
    :cond_1b
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_21

    move v0, v2

    goto :goto_2f

    .line 1698
    :cond_21
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_d

    .line 1700
    :cond_2a
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mVrHeadset:Z

    if-eqz v1, :cond_2f

    const/4 v0, 0x7

    .line 1704
    :cond_2f
    :goto_2f
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v3, :cond_37

    if-ne v1, v5, :cond_3f

    :cond_37
    if-ne v1, v3, :cond_3b

    move v1, v5

    goto :goto_3c

    :cond_3b
    move v1, v4

    .line 1705
    :goto_3c
    invoke-virtual {p0, v1}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked(Z)V

    .line 1708
    :cond_3f
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-nez v1, :cond_6f

    .line 1709
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 1710
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v3, :cond_5f

    .line 1711
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    iget-object v6, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    invoke-interface {v3, v1, v6}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    .line 1712
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v1}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object v1

    if-nez v1, :cond_5b

    .line 1713
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    goto :goto_5f

    :cond_5b
    invoke-virtual {v1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v1

    .line 1715
    :cond_5f
    :goto_5f
    invoke-virtual {p0, v1}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked(Z)V

    .line 1718
    iget-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    if-eq v1, v3, :cond_68

    .line 1719
    iput-boolean v4, p0, Lcom/android/server/UiModeManagerService;->mWaitForScreenOff:Z

    .line 1721
    :cond_68
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->updateThemeImmediately()V

    .line 1722
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->unregisterScreenOffEventLocked()V

    goto :goto_78

    .line 1725
    :cond_6f
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v1, :cond_78

    .line 1726
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    invoke-interface {v1, v3}, Lcom/android/server/twilight/TwilightManager;->unregisterListener(Lcom/android/server/twilight/TwilightListener;)V

    .line 1730
    :cond_78
    :goto_78
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-ne v1, v2, :cond_97

    .line 1731
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    if-ne v1, v5, :cond_86

    .line 1732
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mLastBedtimeRequestedNightMode:Z

    invoke-virtual {p0, v1}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked(Z)V

    goto :goto_9a

    .line 1734
    :cond_86
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->registerTimeChangeEvent()V

    .line 1735
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->computeCustomNightMode()Z

    move-result v1

    .line 1736
    invoke-virtual {p0, v1}, Lcom/android/server/UiModeManagerService;->updateComputedNightModeLocked(Z)V

    .line 1737
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->scheduleNextCustomTimeListener()V

    .line 1739
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->updateThemeImmediately()V

    goto :goto_9a

    .line 1743
    :cond_97
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->unregisterTimeChangeEvent()V

    .line 1747
    :goto_9a
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    if-eqz v1, :cond_ab

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-nez v1, :cond_ab

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCar:Z

    if-nez v1, :cond_ab

    and-int/lit8 v0, v0, -0x11

    or-int/lit8 v0, v0, 0x20

    goto :goto_af

    .line 1751
    :cond_ab
    invoke-virtual {p0, v0}, Lcom/android/server/UiModeManagerService;->getComputedUiModeConfiguration(I)I

    move-result v0

    .line 1763
    :goto_af
    iput v0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    .line 1764
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    if-nez v1, :cond_c1

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mWaitForScreenOff:Z

    if-eqz v1, :cond_bd

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mPowerSave:Z

    if-eqz v1, :cond_c1

    .line 1765
    :cond_bd
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    :cond_c1
    return-void
.end method

.method public final updateCustomTimeLocked()V
    .registers 3

    .line 591
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    return-void

    .line 592
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->shouldApplyAutomaticChangesImmediately()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    .line 593
    invoke-virtual {p0, v0, v0}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    goto :goto_14

    .line 595
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->registerScreenOffEventLocked()V

    .line 597
    :goto_14
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->scheduleNextCustomTimeListener()V

    return-void
.end method

.method public final updateDockState(I)V
    .registers 6

    .line 1626
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1627
    :try_start_3
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-eq p1, v1, :cond_1d

    .line 1628
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_10

    move p1, v2

    goto :goto_11

    :cond_10
    move p1, v3

    :goto_11
    const-string v1, ""

    .line 1629
    invoke-virtual {p0, p1, v3, v3, v1}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZIILjava/lang/String;)V

    .line 1631
    iget-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz p1, :cond_1d

    .line 1632
    invoke-virtual {p0, v2, v3}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 1635
    :cond_1d
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public updateLocked(II)V
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1825
    iget v3, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v3, v5, :cond_12

    .line 1826
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    .line 1827
    sget-object v3, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    goto :goto_1c

    .line 1828
    :cond_12
    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1829
    sget-object v3, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    goto :goto_1c

    :cond_1b
    move-object v3, v4

    .line 1832
    :goto_1c
    iget-boolean v6, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_32

    .line 1833
    iget v6, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    if-eq v6, v5, :cond_4e

    .line 1834
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    if-eqz v3, :cond_2d

    .line 1836
    invoke-virtual {v0, v3}, Lcom/android/server/UiModeManagerService;->sendForegroundBroadcastToAllUsers(Ljava/lang/String;)V

    .line 1838
    :cond_2d
    iput v5, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 1839
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    goto :goto_52

    .line 1841
    :cond_32
    iget v6, v0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v6}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 1842
    iget v6, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-static {v6}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v6

    if-nez v6, :cond_4e

    if-eqz v3, :cond_47

    .line 1844
    invoke-virtual {v0, v3}, Lcom/android/server/UiModeManagerService;->sendForegroundBroadcastToAllUsers(Ljava/lang/String;)V

    .line 1846
    :cond_47
    iget v3, v0, Lcom/android/server/UiModeManagerService;->mDockState:I

    iput v3, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 1847
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    goto :goto_52

    :cond_4e
    move-object v3, v4

    goto :goto_52

    .line 1850
    :cond_50
    iput v7, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    :goto_52
    const/4 v6, 0x1

    if-eqz v3, :cond_80

    .line 1867
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "enableFlags"

    .line 1868
    invoke-virtual {v9, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "disableFlags"

    .line 1869
    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 1870
    invoke-virtual {v9, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1871
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v8

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v8 .. v16}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1877
    iput-boolean v6, v0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 1878
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    goto :goto_a5

    .line 1881
    :cond_80
    iget-boolean v3, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v3, :cond_8e

    .line 1882
    iget-boolean v2, v0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    if-eqz v2, :cond_a2

    and-int/2addr v1, v6

    if-eqz v1, :cond_a2

    const-string v4, "android.intent.category.CAR_DOCK"

    goto :goto_a2

    .line 1886
    :cond_8e
    iget v3, v0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    move-result v3

    if-eqz v3, :cond_9c

    and-int/2addr v1, v6

    if-eqz v1, :cond_a2

    const-string v4, "android.intent.category.DESK_DOCK"

    goto :goto_a2

    :cond_9c
    and-int/lit8 v1, v2, 0x1

    if-eqz v1, :cond_a2

    const-string v4, "android.intent.category.HOME"

    .line 1902
    :cond_a2
    :goto_a2
    invoke-virtual {v0, v4}, Lcom/android/server/UiModeManagerService;->sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V

    .line 1906
    :goto_a5
    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    if-eqz v1, :cond_bf

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v1, :cond_b6

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    if-eqz v1, :cond_b6

    iget v1, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnableFlags:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_be

    :cond_b6
    iget v1, v0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    if-ne v1, v5, :cond_bf

    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    if-eqz v1, :cond_bf

    :cond_be
    move v7, v6

    .line 1910
    :cond_bf
    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eq v7, v1, :cond_d4

    if-eqz v7, :cond_cf

    .line 1912
    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_d4

    .line 1914
    :cond_cf
    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_d4
    :goto_d4
    return-void
.end method

.method public final updateNightModeFromSettingsLocked(Landroid/content/Context;Landroid/content/res/Resources;I)V
    .registers 11

    .line 608
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-nez v0, :cond_c8

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCar:Z

    if-eqz v0, :cond_a

    goto/16 :goto_c8

    .line 611
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->isSetupWizardAllowDarkMode()Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 612
    :cond_14
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const v1, 0x10e0065

    .line 613
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    const-string/jumbo v1, "ui_night_mode"

    .line 612
    invoke-static {v0, v1, p2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    iput p2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 615
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v0, -0x1

    const-string/jumbo v1, "ui_night_mode_custom_type"

    invoke-static {p2, v1, v0, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    iput p2, p0, Lcom/android/server/UiModeManagerService;->mNightModeCustomType:I

    .line 617
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "ui_night_mode_override_on"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_47

    move p2, v0

    goto :goto_48

    :cond_47
    move p2, v1

    :goto_48
    iput-boolean p2, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOn:Z

    .line 619
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v2, "ui_night_mode_override_off"

    invoke-static {p2, v2, v1, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-eqz p2, :cond_59

    move p2, v0

    goto :goto_5a

    :cond_59
    move p2, v1

    :goto_5a
    iput-boolean p2, p0, Lcom/android/server/UiModeManagerService;->mOverrideNightModeOff:Z

    .line 622
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->DEFAULT_CUSTOM_NIGHT_START_TIME:Ljava/time/LocalTime;

    .line 624
    invoke-virtual {p0, v2}, Lcom/android/server/UiModeManagerService;->getCustomTimeToMinute(Ljava/time/LocalTime;)J

    move-result-wide v2

    const-string v4, "display_night_theme_on_time"

    .line 622
    invoke-static {p2, v4, v2, v3, p3}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v2

    .line 625
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->DEFAULT_CUSTOM_NIGHT_END_TIME:Ljava/time/LocalTime;

    .line 627
    invoke-virtual {p0, v4}, Lcom/android/server/UiModeManagerService;->getCustomTimeToMinute(Ljava/time/LocalTime;)J

    move-result-wide v4

    const-string v6, "display_night_theme_off_time"

    .line 625
    invoke-static {p2, v6, v4, v5, p3}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v4

    .line 628
    invoke-virtual {p0, v2, v3}, Lcom/android/server/UiModeManagerService;->getCustomTimeToNano(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeStartMilliseconds:Ljava/time/LocalTime;

    .line 629
    invoke-virtual {p0, v4, v5}, Lcom/android/server/UiModeManagerService;->getCustomTimeToNano(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/UiModeManagerService;->mCustomAutoNightModeEndMilliseconds:Ljava/time/LocalTime;

    .line 641
    iget p2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-nez p2, :cond_a4

    .line 642
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "ui_night_mode_last_computed"

    invoke-static {p1, p2, v1, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_a2

    move v1, v0

    :cond_a2
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 647
    :cond_a4
    sget-object p1, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateNightModeFromSettings : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " userID : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/UiModeManagerService$LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    invoke-virtual {p0, p3}, Lcom/android/server/UiModeManagerService;->persistNightModeSettingDB(I)V

    :cond_c8
    :goto_c8
    return-void
.end method

.method public final updateSystemProperties()V
    .registers 4

    .line 403
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    const-string/jumbo v1, "ui_night_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_17

    const/4 v0, 0x3

    if-ne p0, v0, :cond_18

    :cond_17
    const/4 p0, 0x2

    .line 408
    :cond_18
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "persist.sys.theme"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final updateThemeImmediately()V
    .registers 5

    .line 2157
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->isSetDarkTheme()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    if-nez v1, :cond_21

    .line 2161
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/UiModeManagerService;->isMinimalBatteryUseEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 2162
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/UiModeManagerService$14;

    invoke-direct {v1, p0}, Lcom/android/server/UiModeManagerService$14;-><init>(Lcom/android/server/UiModeManagerService;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2171
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2172
    iget-boolean p0, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    const/4 v1, -0x2

    const-string v2, "display_night_theme"

    .line 2171
    invoke-static {v0, v2, p0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public final verifySetupWizardCompleted()V
    .registers 5

    .line 567
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 569
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->setupWizardCompleteForCurrentUser()Z

    move-result v1

    if-nez v1, :cond_1f

    const/4 v1, 0x0

    .line 570
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    .line 571
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "user_setup_complete"

    .line 572
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x2

    .line 571
    invoke-virtual {v0, v2, v1, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_22

    :cond_1f
    const/4 v0, 0x1

    .line 575
    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSetupWizardComplete:Z

    :goto_22
    return-void
.end method
